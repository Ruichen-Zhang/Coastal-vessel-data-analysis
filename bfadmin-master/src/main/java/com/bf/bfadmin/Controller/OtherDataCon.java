package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Service.OtherDataService;
import com.bf.bfadmin.Service.PortService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
/**
 *
 * 其他数据板块接口实现
 * 除船舶、船员外其他数据统计
 * 包含港口调度、油水补给、行业场所、船舶代理、涉海中介
 *      海上旅游、修造船企业等数据统计
 *
 * @author Wang Yishuo
 * @date 2023/5/24 11:13
 */


@RestController
@RequestMapping
public class OtherDataCon {
    @Autowired
    private PortService portService;
    @Autowired
    private OtherDataService otherDataService;

    @GetMapping("/port/countall")
    public int countAllPort() {
        return portService.countAllPort();
    }

    // 港口调度数量
    @GetMapping("/otherdata/portdispatch")
    public int countAllPortDispatch() {
        return otherDataService.countAllPortDispatch();
    }

    // 海上旅游项目数量
    @GetMapping("/otherdata/funproject")
    public int countAllFunProject() {
        return otherDataService.countAllFunProject();
    }

    // 涉海中介数量
    @GetMapping("/otherdata/labouragency")
    public int countAllLabourAgency() {
        return otherDataService.countAllLabourAgency();
    }

    // 船舶代理数量
    @GetMapping("/otherdata/vesselagency")
    public int countAllVesselAgency() {
        return otherDataService.countAllVesselAgency();
    }

    // 船舶工厂数量
    @GetMapping("/otherdata/shipindustry")
    public int countAllShipIndustry() {
        return otherDataService.countAllShipIndustry();
    }

    // 油水补给数量
    @GetMapping("/otherdata/portsupply")
    public int countAllPortSupply() {
        return otherDataService.countAllPortSupply();
    }

    // 行业场所数量
    @GetMapping("/otherdata/portstore")
    public int countAllPortStore() {
        return otherDataService.countAllPortStore();
    }

}
