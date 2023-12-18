package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Entity.LocalVessel;
import com.bf.bfadmin.Entity.NonCertifiedVessel;
import com.bf.bfadmin.Entity.NonlocalVessel;
import com.bf.bfadmin.Service.BoatmanService;
import com.bf.bfadmin.Service.LocalVesselService;
import com.bf.bfadmin.Service.NonCertifiedVesselService;
import com.bf.bfadmin.Service.NonlocalVesselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 
 * 基础数据板块接口实现
 * 
 * @author Wang Yishuo
 * @date 2023/5/29 11:25 
 */

@RestController
@RequestMapping
public class BaseDataCon {
    @Autowired
    private BoatmanService boatmanService;
    @Autowired
    private LocalVesselService localVesselService;
    @Autowired
    private NonlocalVesselService nonlocalVesselService;
    @Autowired
    private NonCertifiedVesselService nonCertifiedVesselService;


    @GetMapping("/boatman/countall")
    public Integer countBoatman() {
        return boatmanService.countBoatman();
    }

    @GetMapping("/noncertifiedvessel")
    public List<NonCertifiedVessel> findNonCertifiedVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonCertifiedVesselService.findAll(pageSize, pageNum);
    }

    @GetMapping("/noncertifiedvessel/countall")
    public int countNonCertifiedVessel() {
        return nonCertifiedVesselService.countNoncertifiedVessel();
    }

    @GetMapping("/nonlocalvessel")
    public List<NonlocalVessel> findNonlocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonlocalVesselService.findAll(pageSize, pageNum);
    }

    @GetMapping("/nonlocalvessel/countall")
    public int countNonlocalVessel() {
        return nonlocalVesselService.countNonlocalVessel();
    }


    @GetMapping("/localvessel/findlocalvessel")
    public List<LocalVessel> findLocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return localVesselService.findLocalVessel(pageSize, pageNum);
    }

    @GetMapping("/localvessel/countlocalvessel")
    public int countLocalVessel() {
        return localVesselService.countLocalVessel();
    }

    @GetMapping("/localvessel/findoceanvessel")
    public List<LocalVessel> findOceanVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return localVesselService.findOceanVessel(pageSize, pageNum);
    }

    @GetMapping("/localvessel/countoceanvessel")
    public int countOceanVessel() {
        return localVesselService.countOceanVessel();
    }


    @GetMapping("/vessel/typemap")
    public List<Map<String, Object>> getTypeMap() {
        List<Map<String, Object>> result = new ArrayList<>();

        String [] Type = new String[4];
        Type[0] = "本地船舶";
        Type[1] = "外地船舶";
        Type[2] = "无证船舶";
        Type[3] = "远洋船舶";


        Integer [] TypeNum = new Integer[4];
        TypeNum[0] = countLocalVessel();
        TypeNum[1] = countNonlocalVessel();
        TypeNum[2] = countNonCertifiedVessel();
        TypeNum[3] = countOceanVessel();

        for (int i = 0; i < Type.length; i++) {
            Map<String, Object> temp = new HashMap<>();
            temp.put("value", TypeNum[i]);
            temp.put("name", Type[i]);
            result.add(temp);
        }

        return result;
    }
}
