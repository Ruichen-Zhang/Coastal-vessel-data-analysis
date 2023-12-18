package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Entity.Boatman;
import com.bf.bfadmin.Entity.LocalVessel;
import com.bf.bfadmin.Entity.NonCertifiedVessel;
import com.bf.bfadmin.Entity.NonlocalVessel;
import com.bf.bfadmin.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;
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
 * 重点人员、船舶预警板块接口实现
 *
 * @author Wang Yishuo
 * @date 2023/5/29 11:43 
 */


@RestController
@RequestMapping
public class WarnningCon {
    @Autowired
    private LocalVesselService localVesselService;
    @Autowired
    private NonlocalVesselService nonlocalVesselService;
    @Autowired
    private NonCertifiedVesselService nonCertifiedVesselService;
    @Autowired
    private PunishedVesselService punishedVesselService;
    @Autowired
    private ReportingService reportingService;
    @Autowired
    private BoatmanService boatmanService;

    @GetMapping("/boatman/findkeyboatmanmap")
    public List<Map<String, Object>> findKeyBoatmanMap() {
        return boatmanService.findKeyBoatmanMap();
    }

    @GetMapping("/boatman/finddrugboatmanmap")
    public List<Map<String, Object>> findDrugBoatmanMap() {
        return boatmanService.findDrugBoatmanMap();
    }

    @GetMapping("/boatman/findescapeboatmanmap")
    public List<Map<String, Object>> findEscapeBoatmanMap() {
        return boatmanService.findEscapeBoatmanMap();
    }

    // 所有船舶中六个月没有报备的船舶数量
    @GetMapping("/vessel/noreportfromall")
    public int countNoReportFromAll() {
        int vesselNum = localVesselService.countLocalVessel() + nonlocalVesselService.countNonlocalVessel();
        int reportVesselNum = reportingService.countReport6Month();
        int noReportNum = vesselNum - reportVesselNum;
        return noReportNum;
    }

    // 返回预警人员的map
    @GetMapping("/boatman/crimemap")
    public List<Map<String, Object>> countCrimeBoatman() {
        List<Map<String, Object>> result = new ArrayList<>();

        Map<String, Object> temp1 = new HashMap<>();
        temp1.put("value", boatmanService.countDrugBoatman());
        temp1.put("name", "吸毒人员");
        result.add(temp1);

        Map<String, Object> temp2 = new HashMap<>();
        temp2.put("value", boatmanService.countKeyBoatman());
        temp2.put("name", "重点人员");
        result.add(temp2);

        Map<String, Object> temp3 = new HashMap<>();
        temp3.put("value", boatmanService.countEscapedBoatman());
        temp3.put("name", "在逃人员");
        result.add(temp3);

        return result;
    }

    // 返回重点人员数量
    @GetMapping("/boatman/countkey")
    public int countKeyBoatman() {
        return boatmanService.countKeyBoatman();
    }

    // 返回重点人员列表
    @GetMapping("/boatman/findkey")
    public List<Boatman> findKeyBoatman() {
        return boatmanService.findKeyBoatman();
    }

    // 返回吸毒人员数量
    @GetMapping("/boatman/countdrug")
    public int countDrugBoatman() {
        return boatmanService.countDrugBoatman();
    }

    // 返回吸毒人员列表
    @GetMapping("/boatman/finddrug")
    public List<Boatman> findDrugBoatman() {
        return boatmanService.findDrugBoatman();
    }

    // 返回在逃人员数量
    @GetMapping("/boatman/countescaped")
    public int countEscapedBoatman(){
        return boatmanService.countEscapedBoatman();
    }

    // 返回在逃人员列表
    @GetMapping("/boatman/findescaped")
    public List<Boatman> findEscapedBoatman(){
        return boatmanService.findEscapedBoatman();
    }

    // 返回预警船舶map
    @GetMapping("/vessel/warnmap")
    public List<Map<String, Object>> getWarnMap() {
        List<Map<String, Object>> result = new ArrayList<>();

        String [] warn = new String[4];
        warn[0] = "黄色预警船舶";
        warn[1] = "红色高危船舶";
        warn[2] = "超过6月未报备船舶";
        warn[3] = "被处罚过船舶";


        Integer [] warnNum = new Integer[4];
        warnNum[0] = countMediumRiskVessels();
        warnNum[1] = countHighRiskVessels();
        warnNum[2] = countNoReport6Month();
        warnNum[3] = countPunishedVessel();

        for (int i = 0; i < warn.length; i++) {
            Map<String, Object> temp = new HashMap<>();
            temp.put("value", warnNum[i]);
            temp.put("name", warn[i]);
            result.add(temp);
        }

        return result;
    }

    // 返回高风险船舶数量
    @GetMapping("/vessel/risk/highriskcount")
    public int countHighRiskVessels() {
        int riskLocalVessels = localVesselService.countHighRiskVessels();
        int riskNonlocalVessels = nonlocalVesselService.countHighRiskVessels();
        int riskNonCertifiedVessels = nonCertifiedVesselService.countHighRiskVessels();
        int highRiskNum = riskLocalVessels + riskNonCertifiedVessels + riskNonlocalVessels;
        return highRiskNum;
    }

    // 返回中风险船舶数量
    @GetMapping("/vessel/risk/mediumriskcount")
    public int countMediumRiskVessels() {
        int riskLocalVessels = localVesselService.countMediumRiskVessels();
        int riskNonlocalVessels = nonlocalVesselService.countMediumRiskVessels();
        int riskNonCertifiedVessels = nonCertifiedVesselService.countMediumRiskVessels();
        int mediumRiskNum = riskLocalVessels + riskNonCertifiedVessels + riskNonlocalVessels;
        return mediumRiskNum;
    }

    // 返回被处罚过渔船数量
    @GetMapping("/vessel/risk/punishedvessel")
    public int countPunishedVessel() {
        return punishedVesselService.countPunishedVessel();
    }

    // 返回高风险本地渔船列表
    @GetMapping("/vessel/risk/localvessel")
    public List<LocalVessel> getHighRiskLocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return localVesselService.getHighRiskVessels(pageSize, pageNum);
    }

    // 返回高风险非本地渔船列表
    @GetMapping("/vessel/risk/nonlocalvessel")
    public List<NonlocalVessel> getHighRiskNonlocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonlocalVesselService.getHighRiskVessels(pageSize, pageNum);
    }

    // 返回高风险无证船舶列表
    @GetMapping("/vessel/risk/noncertifiedvessel")
    public List<NonCertifiedVessel> getHighRiskNonCertifiedVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonCertifiedVesselService.getHighRiskVessels(pageSize, pageNum);
    }

    // 查询入港后三个月内未离港的船舶数量
    @GetMapping("/vessel/notleave3month/count")
    public int countNotLeave3Month() {
        int notLeave3MonthLocalVessels = localVesselService.countNotLeave3Month();
        int notLeave3MonthNonlocalVessels = nonlocalVesselService.countNotLeave3Month();
        int notLeave3MonthNum = notLeave3MonthLocalVessels + notLeave3MonthNonlocalVessels;
        return notLeave3MonthNum;
    }

    // 查询入港后三个月内未离港的本地船舶列表
    @GetMapping("/vessel/notleave3month/localvessel")
    public List<LocalVessel> getNotLeave3MonthLocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return localVesselService.getNotLeave3Month(pageSize, pageNum);
    }

    // 查询入港后三个月内未离港的外地船舶列表
    @GetMapping("/vessel/notleave3month/nonlocalvessel")
    public List<NonlocalVessel> getNotLeave3MonthNonlocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonlocalVesselService.getNotLeave3Month(pageSize, pageNum);
    }

    // 查询出港后后三个月内未归港的船舶数量
    @GetMapping("/vessel/notreturn3month/count")
    public int countNotReturn3Month() {
        int notReturn3MonthLocalVessels = localVesselService.countNotReturn3Month();
        int notReturn3MonthNonlocalVessels = nonlocalVesselService.countNotReturn3Month();
        int notReturn3MonthNum = notReturn3MonthLocalVessels + notReturn3MonthNonlocalVessels;
        return notReturn3MonthNum;
    }

    // 查询出港后后三个月内未归港的本地船舶列表
    @GetMapping("/vessel/notreturn3month/localvessel")
    public List<LocalVessel> getNotReturn3MonthLocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return localVesselService.getNotReturn3Month(pageSize, pageNum);
    }

    // 查询出港后后三个月内未归港的外地船舶列表
    @GetMapping("/vessel/notreturn3month/nonlocalvessel")
    public List<NonlocalVessel> getNotReturn3MonthNonlocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonlocalVesselService.getNotReturn3Month(pageSize, pageNum);
    }

    // 查询有过报备信息后六个月没有再次报备的船舶数量
    @GetMapping("/vessel/noreport6month/count")
    public int countNoReport6Month() {
        return reportingService.countNoReport6Month();
    }

    /*
    @GetMapping("/vessel/noreport6month/count")
    public int countNoReport6Month() {
        int noReport6MonthLocalVessels = localVesselService.countNoReport6Month();
        int noReport6MonthNonlocalVessels = nonlocalVesselService.countNoReport6Month();
        int noReport6MonthNum = noReport6MonthLocalVessels + noReport6MonthNonlocalVessels;
        return noReport6MonthNum;
    }

    @GetMapping("/vessel/noreport6month/localvessel")
    public List<LocalVessel> getNoReport3MonthLocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return localVesselService.getNoReport6Month(pageSize, pageNum);
    }

    @GetMapping("/vessel/noreport6month/nonlocalvessel")
    public List<NonlocalVessel> getNoReport3MonthNonlocalVessel(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonlocalVesselService.getNoReport6Month(pageSize, pageNum);
    }
     */
}
