package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Entity.ReportingInfoAppr;
import com.bf.bfadmin.Service.ReportingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 
 * 实时报备信息板块接口实现
 * 
 * @author Wang Yishuo
 * @date 2023/5/29 11:59 
 */

@RestController
@RequestMapping
public class RealTimeReportingCon {
    @Autowired
    private ReportingService reportingService;

    // 实时报备12条最新报备信息
    @GetMapping("/reportinginfo/recent12")
    public List<ReportingInfoAppr> findRecent12ReportingInfo() {
        return reportingService.findRecent12ReportingInfo();
    }

}
