package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * 地图相关数据接口层
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/21 11:01
 * @date 2023/4/24 13:32 update
 *
 * 特别声明：map中的reporting 数据为之前 12 个月内的数据
 */

@RestController
@RequestMapping
public class MapDataCon {
    @Autowired
    private PortService portService;
    @Autowired
    private BoatmanService boatmanService;
    @Autowired
    private LocalVesselService localVesselService;
    @Autowired
    private NonlocalVesselService nonlocalVesselService;
    @Autowired
    private ReportingService reportingService;

    @GetMapping("/map/getmapinfo")
    public List<Map<String, Object>> getApprMap() {
        List<Map<String, Object>> result = new ArrayList<>();

        String [] orgName = new String[6];
        orgName[0] = "荣成";
        orgName[1] = "环翠";
        orgName[2] = "文登";
        orgName[3] = "乳山";
        orgName[4] = "高区";
        orgName[5] = "经区";

        Integer [] portNum = new Integer[6];
        portNum[0] = portService.countRongchengPort();
        portNum[1] = portService.countHuancuiPort();
        portNum[2] = portService.countWendengPort();
        portNum[3] = portService.countRushanPort();
        portNum[4] = portService.countGaoquPort();
        portNum[5] = portService.countJingquPort();

        Integer [] boatmanNum = new Integer[6];
        boatmanNum[0] = boatmanService.countRongchengBoatman();
        boatmanNum[1] = boatmanService.countHuancuiBoatman();
        boatmanNum[2] = boatmanService.countWendengBoatman();
        boatmanNum[3] = boatmanService.countRushanBoatman();
        boatmanNum[4] = boatmanService.countGaoquBoatman();
        boatmanNum[5] = boatmanService.countJingquBoatman();

        Integer [] localVesselNum = new Integer[6];
        localVesselNum[0] = localVesselService.countRongchengLocalVessel();
        localVesselNum[1] = localVesselService.countHuancuiLocalVessel();
        localVesselNum[2] = localVesselService.countWendengLocalVessel();
        localVesselNum[3] = localVesselService.countRushanLocalVessel();
        localVesselNum[4] = localVesselService.countGaoquLocalVessel();
        localVesselNum[5] = localVesselService.countJingquLocalVessel();

        Integer [] nonlocalVesselNum = new Integer[6];
        nonlocalVesselNum[0] = nonlocalVesselService.countRongchengNonlocalVessel();
        nonlocalVesselNum[1] = nonlocalVesselService.countHuancuiNonlocalVessel();
        nonlocalVesselNum[2] = nonlocalVesselService.countWendengNonlocalVessel();
        nonlocalVesselNum[3] = nonlocalVesselService.countRushanNonlocalVessel();
        nonlocalVesselNum[4] = nonlocalVesselService.countGaoquNonlocalVessel();
        nonlocalVesselNum[5] = nonlocalVesselService.countJingquNonlocalVessel();

        Integer [] reportingInfoNum = new Integer[6];
        reportingInfoNum[0] = reportingService.countRongchengReporting();
        reportingInfoNum[1] = reportingService.countHuancuiReporting();
        reportingInfoNum[2] = reportingService.countWendengReporting();
        reportingInfoNum[3] = reportingService.countRushanReporting();
        reportingInfoNum[4] = reportingService.countGaoquReporting();
        reportingInfoNum[5] = reportingService.countJingquReporting();

        for (int i = 0; i < orgName.length; i++) {
            Map<String, Object> temp = new HashMap<>();
            Integer vesselNum = 0;
            if (localVesselNum[i] + nonlocalVesselNum[i] > 0) {
                vesselNum = localVesselNum[i] + nonlocalVesselNum[i];
            }
            temp.put("portNum", portNum[i]);
            temp.put("vesselNum", vesselNum);
            temp.put("boatmanNum", boatmanNum[i]);
            temp.put("reportingInfoNum", reportingInfoNum[i]);
            temp.put("name", orgName[i]);
            result.add(temp);
        }

        return result;
    }
}
