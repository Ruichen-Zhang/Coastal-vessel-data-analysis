package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.ReportingInfo;
import com.bf.bfadmin.Entity.ReportingInfoAppr;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;
/**
 *
 * 报备信息映射层实现
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:36
 * @date 2023/4/19 14:54 update:新增各地出港船舶功能
 * @date 2023/4/24 17:12 update
 * @date 2023/5/11 18:37 update 新增前十派出所功能
 */

@Mapper
public interface ReportingInfoApprMapper {
    // 查询三个月内未审核报备信息
    @Select("select count(*) from bfdata.bfdata_reporting_info_appr\n" +
            "where approve_status_ = '未审核'\n" +
            "  and time_ BETWEEN DATE_SUB(NOW(), INTERVAL 3 MONTH) AND NOW()\n" +
            "and manage_unit_ in (\n" +
            "\tselect id_ from bfdata.bifang_organization\n" +
            "    where org_full_name_ like '${orgName}'\n" +
            ");")
    int countReportingInfoApprInLast3Months(@Param("orgName") String orgName);

    // 查询前报备前十数量的派出所
    @Select("SELECT org.org_name_ as 'name', COUNT(*) AS 'value' FROM bifang_organization AS org\n" +
            "JOIN bfdata_reporting_info_appr AS appr ON org.id_ = appr.manage_unit_\n" +
            "GROUP BY org.org_name_\n" +
            "ORDER BY COUNT(*) DESC\n" +
            "LIMIT 10;")
    List<Map<String, Object>> top10Org();

    // 查询6个月内进行过报备船舶数量
    @Select("select count(distinct vessel_name_) from bfdata_reporting_info_appr\n" +
            "where approve_status_ = '通过';")
    int countReport6Month();

    // 查询产生过报备记录之后6个月未报备的船舶数量
    @Select("SELECT COUNT(DISTINCT t1.vessel_name_) FROM bfdata_reporting_info_appr t1 LEFT JOIN (\n" +
            "    SELECT DISTINCT vessel_name_ FROM bfdata_reporting_info_appr\n" +
            "    WHERE time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)\n" +
            ") t2 ON t1.vessel_name_ = t2.vessel_name_\n" +
            "WHERE t2.vessel_name_ IS NULL and approve_status_ = '通过';")
    int countNoReport6Month();

    @Select("SELECT * FROM bfdata_reporting_info_appr")
    List<ReportingInfo> findAll();

    @Select("SELECT COUNT(*) FROM bfdata_reporting_info_appr WHERE YEAR(time_) = #{year} AND MONTH(time_) = #{month}")
    int countByMonth(@Param("year") int year, @Param("month") int month);

    // 查询 之前 出海
    @Select("SELECT MONTH(time_) as month, COUNT(*) as count FROM bfdata_reporting_info_appr " +
            "WHERE method_ = '出港' and time_ BETWEEN DATE_SUB(NOW(), INTERVAL 12 MONTH) AND NOW() " +
            "GROUP BY YEAR(time_), MONTH(time_)")
    List<Map<String, Object>> countOutByMonthLastYear();

    // 查询 今日 所有
    @Select("SELECT  COUNT(*) FROM bfdata_reporting_info_appr " +
            "WHERE time_ = CURDATE() " )
    int countday();

    // 查询 今年 所有
    @Select("SELECT  COUNT(*) as count FROM bfdata_reporting_info_appr " +
            "WHERE YEAR(time_) = YEAR(CURDATE()) " )
    int countyear();

    // 查询 今年 出海
    @Select("SELECT MONTH(insert_time_) as month, COUNT(*) as count FROM bfdata_reporting_info_appr " +
            "WHERE method_ = '出港' AND YEAR(insert_time_) = YEAR(CURDATE()) " +
            "GROUP BY YEAR(insert_time_), MONTH(insert_time_)")
    List<Map<String, Object>> countOutByMonthThisYear();


    // 查询 之前 归港
    @Select("SELECT MONTH(time_) as month, COUNT(*) as count FROM bfdata_reporting_info_appr " +
            "WHERE method_ = '入港' and time_ BETWEEN DATE_SUB(NOW(), INTERVAL 12 MONTH) AND NOW() " +
            "GROUP BY YEAR(time_), MONTH(time_)")
    List<Map<String, Object>> countInByMonthLastYear();

    // 查询 今年 归港
    @Select("SELECT MONTH(insert_time_) as month, COUNT(*) as count FROM bfdata_reporting_info_appr " +
            "WHERE method_ = '入港' AND YEAR(insert_time_) = YEAR(CURDATE()) " +
            "GROUP BY YEAR(insert_time_), MONTH(insert_time_)")
    List<Map<String, Object>> countInByMonthThisYear();

    //  依据时间查询最近的12条reportingInfo
    @Select("SELECT * FROM bfdata_reporting_info_appr " +
            "WHERE approve_status_ = '通过'" +
            "ORDER BY insert_time_ DESC LIMIT 12")
    List<ReportingInfoAppr> findRecent12ReportingInfo();

    //  查询12个月内的各个地方的报备数量
    @Select("select count(*) from bfdata.bfdata_reporting_info_appr\n" +
            "where time_ BETWEEN DATE_SUB(NOW(), INTERVAL 12 MONTH) AND NOW()\n" +
            "and manage_unit_ in (\n" +
            "\tselect id_ from bfdata.bifang_organization\n" +
            "    where org_full_name_ like '${orgName}'\n" +
            ");")
    int countYearReportingByAddress(@Param("orgName") String orgName);
}

