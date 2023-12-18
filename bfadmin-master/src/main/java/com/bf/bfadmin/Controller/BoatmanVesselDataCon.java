package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Entity.Boatman;
import com.bf.bfadmin.Service.BoatmanService;
import com.bf.bfadmin.Service.LocalVesselService;
import com.bf.bfadmin.Service.NonlocalVesselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 
 * 船员职务分类、渔船马力分类、船舶和渔民情况板块接口实现
 * 
 * @author Wang Yishuo
 * @date 2023/5/29 11:40
 */

@RestController
@RequestMapping
public class BoatmanVesselDataCon {
    @Autowired
    private LocalVesselService localVesselService;
    @Autowired
    private NonlocalVesselService nonlocalVesselService;
    @Autowired
    private BoatmanService boatmanService;

    // 船员根据职责分类
    @GetMapping("/boatman/dutymap")
    public List<Map<String, Object>> countByDuty() {
        return boatmanService.countByDuty();
    }

    // 船员根据年龄分类
    @GetMapping("/boatman/agemap")
    public List<Map<String, Object>> getAgeMap() {
        String [] ageRanges = new String[8];
        ageRanges[0] = "25岁以下";
        ageRanges[1] = "25-30岁";
        ageRanges[2] = "30-35岁";
        ageRanges[3] = "35-40岁";
        ageRanges[4] = "40-45岁";
        ageRanges[5] = "45-50岁";
        ageRanges[6] = "50-55岁";
        ageRanges[7] = "55岁以上";

        List<Map<String, Object>> result = new ArrayList<>();
        for (int i = 0; i < boatmanService.getAgeList().size(); i++) {
            Map<String, Object> temp = new HashMap<>();
            temp.put("value", boatmanService.getAgeList().get(i));
            temp.put("name", ageRanges[i]);
            result.add(temp);
        }
        return result;
    }


    @GetMapping("/boatman/ageselect/{minAge}-{maxAge}")
    public List<Boatman> findByAgeRange(@PathVariable Integer minAge, @PathVariable Integer maxAge) {
        return boatmanService.findByAgeRange(minAge, maxAge);
    }

    // 根据马力分类
    @GetMapping("/vessel/powermap")
    public List<Map<String, Object>> getPowerMap() {
        List<Map<String, Object>> result = new ArrayList<>();

        String [] power = new String[4];
        power[0] = "60马力以下";
        power[1] = "60-450马力";
        power[2] = "450-960马力";
        power[3] = "960马力以上";


        Integer [] powerNum = new Integer[4];
        powerNum[0] = localVesselService.countPower60() + nonlocalVesselService.countPower60();
        powerNum[1] = localVesselService.countPower60to450() + nonlocalVesselService.countPower60to450();
        powerNum[2] = localVesselService.countPower450to960() + nonlocalVesselService.countPower450to960();
        powerNum[3] = localVesselService.countPower960() + nonlocalVesselService.countPower960();

        for (int i = 0; i < power.length; i++) {
            Map<String, Object> temp = new HashMap<>();
            temp.put("value", powerNum[i]);
            temp.put("name", power[i]);
            result.add(temp);
        }

        return result;
    }



    // 获得数字表示的船舶用途
    @GetMapping("/vessel/useTagmap")
    public List<Map<String, Object>> countVesselUseTag() {
        return localVesselService.countVesselUse();
    }

    // 获得中文表示的船舶用途
    @GetMapping("/vessel/usemap")
    public List<Map<String, Object>> countVesselUseType() {
        List<Map<String, Object>> uses = localVesselService.countVesselUse();
        List<Map<String, Object>> newuse = new ArrayList<>();

        String [] useType = new String[10];
        useType[0] = "渔业";
        useType[1] = "养殖";
        useType[2] = "运输";
        useType[3] = "工程";
        useType[4] = "港务";
        useType[5] = "特种";
        useType[6] = "旅游观光";
        useType[7] = "垂钓";
        useType[8] = "救生";
        useType[9] = "其他";

        int other = 0;

        for (Map<String, Object> use : uses) {
            Object useName = use.get("name");
            Object useValue = use.get("value");
            if (useName instanceof Integer) {
                // 新增合并项：工程、港务、特种、救生合并入其他
                int useNameNum = (Integer) useName;
                if (useNameNum == 3 || useNameNum == 4 || useNameNum == 5 || useNameNum == 8 || useNameNum == 9) {
                    int useValueNum = Integer.parseInt(useValue.toString());
                    other = useValueNum + other;
                    continue;
                }

                Map<String, Object> temp = new HashMap<>();
                temp.put("name", useType[useNameNum]);
                temp.put("value", use.get("value"));
                newuse.add(temp);
            }
        }

        //  单独处理其他用途船舶
        Map<String, Object> temp = new HashMap<>();
        temp.put("name", useType[9]);
        temp.put("value", other);
        newuse.add(temp);
        return newuse;
    }
}
