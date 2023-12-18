package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Entity.ReportingInfo;
import com.bf.bfadmin.Entity.ReportingInfoAppr;
import com.bf.bfadmin.Mapper.ReportingInfoApprMapper;
import com.bf.bfadmin.Service.ReportingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * 报备信息服务层实现
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:37
 * @date 2023/4/19 15:25 update:新增了依据地点查询出港船舶数量的服务
 * @date 2023/5/10 16:55 update 修正了查询六月未报备船舶
 */

@Service
public class ReportingServiceImpl implements ReportingService {
    @Autowired
    private ReportingInfoApprMapper reportingInfoApprMapper;

    public List<Map<String, Object>> top10Org() {
        List<Map<String, Object>> newList = new ArrayList<>();
        for (Map map: reportingInfoApprMapper.top10Org()) {
            String name = (String) map.get("name");
            name = name.substring(0, name.length() - 3);

            Object valueObj = map.get("value");
            Integer value = valueObj != null ? Integer.valueOf(valueObj.toString()) : null;

            Map<String, Object> temp = new HashMap<>();
            temp.put("name", name);
            temp.put("value", value);
            newList.add(temp);
        }
        return newList;
    }

    public int countNoReport6Month() {
        return reportingInfoApprMapper.countNoReport6Month();
    }

    public int countReport6Month() {
        return reportingInfoApprMapper.countReport6Month();
    }


    public List<ReportingInfoAppr> findRecent12ReportingInfo() {
        return reportingInfoApprMapper.findRecent12ReportingInfo();
    }

    public List<ReportingInfo> findAll() {
        return reportingInfoApprMapper.findAll();
    }

    public List<Integer> countInByMonthLastYear() {
        List<Map<String, Object>> list = reportingInfoApprMapper.countInByMonthLastYear();
        List<Integer> countList = new ArrayList<>();
        for (int i = 1; i <= 12; i++) {
            boolean flag = false;
            for (Map<String, Object> map : list) {
                if ((int) map.get("month") == i) {
                    countList.add(Integer.valueOf(map.get("count").toString()));
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                countList.add(0);
            }
        }
        return countList;
    }

    public List<Integer> countOutByMonthLastYear() {
        List<Map<String, Object>> list = reportingInfoApprMapper.countOutByMonthLastYear();
        List<Integer> countList = new ArrayList<>();
        for (int i = 1; i <= 12; i++) {
            boolean flag = false;
            for (Map<String, Object> map : list) {
                if ((int) map.get("month") == i) {
                    countList.add(Integer.valueOf(map.get("count").toString()));
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                countList.add(0);
            }
        }
        return countList;
    }

    public List<Integer> countInByMonthThisYear() {
        List<Map<String, Object>> list = reportingInfoApprMapper.countInByMonthThisYear();
        List<Integer> countList = new ArrayList<>();
        for (int i = 1; i <= 12; i++) {
            boolean flag = false;
            for (Map<String, Object> map : list) {
                if ((int) map.get("month") == i) {
                    countList.add(Integer.valueOf(map.get("count").toString()));
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                countList.add(0);
            }
        }
        return countList;
    }

    public List<Integer> countOutByMonthThisYear() {
        List<Map<String, Object>> list = reportingInfoApprMapper.countOutByMonthThisYear();
        List<Integer> countList = new ArrayList<>();
        for (int i = 1; i <= 12; i++) {
            boolean flag = false;
            for (Map<String, Object> map : list) {
                if ((int) map.get("month") == i) {
                    countList.add(Integer.valueOf(map.get("count").toString()));
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                countList.add(0);
            }
        }
        return countList;
    }
    public int countyear() {
        int num = reportingInfoApprMapper.countyear();

        return num;
    }

    public int countday() {
        int num = reportingInfoApprMapper.countday();

        return num;
    }

    public int countRongchengReporting() {
        return reportingInfoApprMapper.countYearReportingByAddress("荣成大队%");
    }

    public int countHuancuiReporting() {
        return reportingInfoApprMapper.countYearReportingByAddress("环翠大队%");
    }

    public int countRushanReporting() {
        return reportingInfoApprMapper.countYearReportingByAddress("乳山大队%");
    }

    public int countWendengReporting() {
        return reportingInfoApprMapper.countYearReportingByAddress("文登大队%");
    }

    public int countJingquReporting() {
        return reportingInfoApprMapper.countYearReportingByAddress("经区大队%");
    }

    public int countGaoquReporting() {
        return reportingInfoApprMapper.countYearReportingByAddress("高区大队%");
    }
}

