package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Entity.ReportingInfo;
import com.bf.bfadmin.Entity.ReportingInfoAppr;
import com.bf.bfadmin.Service.ReportingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * 船舶出入港报备板块接口实现
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:28
 * @date 2023/4/19 15:28 update
 * @date 2023/5/11 17:31 update
 */

@RestController
@RequestMapping
public class ReportingCon {
    @Autowired
    private ReportingService reportingService;

    @GetMapping("/reportinginfo")
    public List<ReportingInfo> findAll() {
        return reportingService.findAll();
    }

    // 查询今年12个月的的出入港报备
    @GetMapping("/reportinginfo/countinbymonth")
    public List<Integer> countInByMonthThisYear() {
        return reportingService.countInByMonthThisYear();
    }

    @GetMapping("/reportinginfo/countoutbymonth")
    public List<Integer> countOutByMonthThisYear() {
        return reportingService.countOutByMonthThisYear();
    }
    @GetMapping("/reportinginfo/countyear")
    public int countyear() {
        return reportingService.countyear();
    }
    @GetMapping("/reportinginfo/countday")
    public int countday() {
        return reportingService.countday();
    }

    // 查询之前12个月的出入港信息报备
//    @GetMapping("/reportinginfo/countinbymonth")
//    public List<Integer> countInByMonthLastYear() {
//        return reportingService.countInByMonthLastYear();
//    }
//
//    @GetMapping("/reportinginfo/countoutbymonth")
//    public List<Integer> countOutByMonthLastYear() {
//        return reportingService.countOutByMonthLastYear();
//    }

    // 查询各个地区报备数量 返回map
    @GetMapping("/reportinginfo/reportinglist")
    public List<Integer> getApprMap() {
        List<Integer> reportingList = new ArrayList<>();
        reportingList.add(reportingService.countRongchengReporting());
        reportingList.add(reportingService.countHuancuiReporting());
        reportingList.add(reportingService.countWendengReporting());
        reportingList.add(reportingService.countJingquReporting());
        reportingList.add(reportingService.countGaoquReporting());
        reportingList.add(reportingService.countRushanReporting());

        return reportingList;
    }
}
