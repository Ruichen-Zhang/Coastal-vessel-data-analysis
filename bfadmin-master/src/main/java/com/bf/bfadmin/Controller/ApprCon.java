package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Service.ApprService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 待审核数据统计板块接口
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:16
 */


@RestController
@RequestMapping
public class ApprCon {
    @Autowired
    private ApprService apprService;

    @GetMapping("/appr/apprmap")
    public List<Map<String, Object>> getApprMap() {
        List<Map<String, Object>> result = new ArrayList<>();

        String [] orgName = new String[6];
        orgName[0] = "荣成";
        orgName[1] = "环翠";
        orgName[2] = "文登";
        orgName[3] = "乳山";
        orgName[4] = "高区";
        orgName[5] = "经区";

        Integer [] boatmanApprNum = new Integer[6];
        boatmanApprNum[0] = apprService.countRongchengBoatmanApprInLast3Months();
        boatmanApprNum[1] = apprService.countHuancuiBoatmanApprInLast3Months();
        boatmanApprNum[2] = apprService.countWendengBoatmanApprInLast3Months();
        boatmanApprNum[3] = apprService.countRushanBoatmanApprInLast3Months();
        boatmanApprNum[4] = apprService.countGaoquBoatmanApprInLast3Months();
        boatmanApprNum[5] = apprService.countJingquBoatmanApprInLast3Months();

        Integer [] localVesselApprNum = new Integer[6];
        localVesselApprNum[0] = apprService.countRongchengLocalVesselApprInLast3Months();
        localVesselApprNum[1] = apprService.countHuancuiLocalVesselApprInLast3Months();
        localVesselApprNum[2] = apprService.countWendengLocalVesselApprInLast3Months();
        localVesselApprNum[3] = apprService.countRushanLocalVesselApprInLast3Months();
        localVesselApprNum[4] = apprService.countGaoquLocalVesselApprInLast3Months();
        localVesselApprNum[5] = apprService.countJingquLocalVesselApprInLast3Months();

        Integer [] nonlocalVesselApprNum = new Integer[6];
        nonlocalVesselApprNum[0] = apprService.countRongchengNonlocalVesselApprInLast3Months();
        nonlocalVesselApprNum[1] = apprService.countHuancuiNonlocalVesselApprInLast3Months();
        nonlocalVesselApprNum[2] = apprService.countWendengNonlocalVesselApprInLast3Months();
        nonlocalVesselApprNum[3] = apprService.countRushanNonlocalVesselApprInLast3Months();
        nonlocalVesselApprNum[4] = apprService.countGaoquNonlocalVesselApprInLast3Months();
        nonlocalVesselApprNum[5] = apprService.countJingquNonlocalVesselApprInLast3Months();

        Integer [] reportingInfoApprNum = new Integer[6];
        reportingInfoApprNum[0] = apprService.countRongchengReportingInfoApprInLast3Months();
        reportingInfoApprNum[1] = apprService.countHuancuiReportingInfoApprInLast3Months();
        reportingInfoApprNum[2] = apprService.countWendengReportingInfoApprInLast3Months();
        reportingInfoApprNum[3] = apprService.countRushanReportingInfoApprInLast3Months();
        reportingInfoApprNum[4] = apprService.countGaoquReportingInfoApprInLast3Months();
        reportingInfoApprNum[5] = apprService.countJingquReportingInfoApprInLast3Months();

        for (int i = 0; i < orgName.length; i++) {
            Map<String, Object> temp = new HashMap<>();
            int tempNum = nonlocalVesselApprNum[i] + localVesselApprNum[i] + boatmanApprNum[i] + reportingInfoApprNum[i];
            temp.put("value", tempNum);
            temp.put("name", orgName[i]);
            result.add(temp);
        }

        return result;
    }

}
