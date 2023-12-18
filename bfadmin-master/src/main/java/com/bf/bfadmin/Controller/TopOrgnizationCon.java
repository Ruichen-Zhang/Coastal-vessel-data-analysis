package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Service.ReportingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 
 * 报备总数前十派出所板块接口实现
 * 
 * @author Wang Yishuo
 * @date 2023/5/29 12:07 
 */

@RestController
@RequestMapping
public class TopOrgnizationCon {
    @Autowired
    private ReportingService reportingService;

    @GetMapping("/reportinginfo/top10org")
    public List<Map<String, Object>> top10org() {
        return reportingService.top10Org();
    }
}
