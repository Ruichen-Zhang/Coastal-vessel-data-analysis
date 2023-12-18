package com.bf.bfadmin.Service;

import com.bf.bfadmin.Entity.ReportingInfo;
import com.bf.bfadmin.Entity.ReportingInfoAppr;
import com.bf.bfadmin.Mapper.ReportingInfoApprMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 *
 * 报备信息服务层实现
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:37
 * @date 2023/4/19 15:25 update:新增了依据地点查询出港船舶数量的服务
 * @date 2023/5/10 16:55 update 修正了查询六月未报备船舶
 */

public interface ReportingService {
    public List<Map<String, Object>> top10Org();

    public int countNoReport6Month() ;

    public int countReport6Month();

    public List<ReportingInfoAppr> findRecent12ReportingInfo() ;

    public List<ReportingInfo> findAll() ;

    public List<Integer> countInByMonthLastYear() ;

    public List<Integer> countOutByMonthLastYear();

    public List<Integer> countInByMonthThisYear();

    public List<Integer> countOutByMonthThisYear();
    public int countyear();

    public int countday() ;

    public int countRongchengReporting();

    public int countHuancuiReporting();

    public int countRushanReporting();

    public int countWendengReporting();

    public int countJingquReporting();

    public int countGaoquReporting();
}

