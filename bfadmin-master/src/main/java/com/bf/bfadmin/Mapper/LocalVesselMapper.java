package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.LocalVessel;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

/**
 * 
 * 本地船舶映射层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:34
 * @date 2023/5/10 15:32 update
 */

@Mapper
public interface LocalVesselMapper {
    // 查询依据马力分类
    @Select(" select distinct count(*) from bfdata_local_vessel\n" +
            "where power_ < 44 and is_recover_ is null;")
    int countPower60();

    @Select(" select distinct count(*) from bfdata_local_vessel\n" +
            "where power_ between 44 and 330 and is_recover_ is null;")
    int countPower60to450();

    @Select(" select distinct count(*) from bfdata_local_vessel\n" +
            "where power_ between 330 and 705 and is_recover_ is null;")
    int countPower450to960();

    @Select(" select distinct count(*) from bfdata_local_vessel\n" +
            "where power_ > 705 and is_recover_ is null;")
    int countPower960();

    // 联合查询各个船只用途的数量
    @Select("SELECT vessel_use_ as 'name', SUM(total_count) AS 'value'\n" +
            "FROM ( SELECT vessel_use_, COUNT(*) AS total_count\n" +
            "FROM ( SELECT vessel_use_ FROM bfdata_local_vessel where is_recover_ is null\n" +
            "UNION ALL SELECT vessel_use_ FROM bfdata_nonlocal_vessel where is_recover_ is null\n" +
            ") AS combined_vessels\n" +
            "GROUP BY vessel_use_)\n" +
            "AS grouped_vessels\n" +
            "GROUP BY vessel_use_;")
    List<Map<String, Object>> countVesselUse();

    // 查询各个船只用途的数量
    @Select("select vessel_use_ as 'name', count(*) as 'value' from bfdata_local_vessel\n" +
            "where is_recover_ is null\n" +
            "group by vessel_use_;")
    List<Map<String, Object>> countLocalVesselUse();

    @Select("SELECT * FROM bfdata_local_vessel where local_vessel_type_ = 1 and is_recover_ is null ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<LocalVessel> findLocalVessel(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT distinct count(*) FROM bfdata_local_vessel where local_vessel_type_ = 1 and is_recover_ is null")
    int countLocalVessel();

    @Select("SELECT * FROM bfdata_local_vessel where local_vessel_type_ = 0 and is_recover_ is null ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<LocalVessel> findOceanVessel(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT distinct count(*) FROM bfdata_local_vessel where local_vessel_type_ = 0 and is_recover_ is null")
    int countOceanVessel();

    @Select("SELECT * FROM bfdata_local_vessel WHERE id_ = #{id}")
    LocalVessel findById(int id);

    @Select("SELECT * FROM bfdata_local_vessel WHERE risk_level_ = 2 and is_recover_ is null ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<LocalVessel> getHighRiskVessels(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT distinct count(*) FROM bfdata_local_vessel WHERE risk_level_ = 2 and is_recover_ is null")
    int countHighRiskVessels();

    @Select("SELECT distinct count(*) FROM bfdata_local_vessel WHERE risk_level_ = 1 and is_recover_ is null")
    int countMediumRiskVessels();

    @Select("select * from bfdata_local_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT local_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE method_ = '入港'\n" +
            "\tAND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)\n" +
            "\tAND local_vessel_ NOT IN (\n" +
            "\t\tSELECT local_vessel_ FROM bfdata_reporting_info t2\n" +
            "\t\tWHERE t2.method_ = '出港'\n" +
            "\t\tand t2.local_vessel_ = t1.local_vessel_\n" +
            "\t\tand t2.time_ > t1.time_\n" +
            "\t)\n" +
            ") ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<LocalVessel> getNotLeave3Month(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("select distinct count(*) from bfdata_local_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT local_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE method_ = '入港'\n" +
            "\tAND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)\n" +
            "\tAND local_vessel_ NOT IN (\n" +
            "\t\tSELECT local_vessel_ FROM bfdata_reporting_info t2\n" +
            "\t\tWHERE t2.method_ = '出港'\n" +
            "\t\tand t2.local_vessel_ = t1.local_vessel_\n" +
            "\t\tand t2.time_ > t1.time_\n" +
            "\t)\n" +
            ")")
    int countNotLeave3Month();

    @Select("select * from bfdata_local_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT local_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE method_ = '出港'\n" +
            "\tAND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)\n" +
            "\tAND local_vessel_ NOT IN (\n" +
            "\t\tSELECT local_vessel_ FROM bfdata_reporting_info t2 \n" +
            "\t\tWHERE t2.method_ = '入港'\n" +
            "\t\tand t2.local_vessel_ = t1.local_vessel_\n" +
            "\t\tand t2.time_ > t1.time_\n" +
            "\t)\n" +
            ") ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<LocalVessel> getNotReturn3Month(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("select distinct count(*) from bfdata_local_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT local_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE method_ = '出港'\n" +
            "\tAND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)\n" +
            "\tAND local_vessel_ NOT IN (\n" +
            "\t\tSELECT local_vessel_ FROM bfdata_reporting_info t2 \n" +
            "        WHERE t2.method_ = '入港'\n" +
            "\t\tand t2.local_vessel_ = t1.local_vessel_\n" +
            "\t\tand t2.time_ > t1.time_\n" +
            "\t)\n" +
            ")")
    int countNotReturn3Month();

    // 在ReportingInfoApprMapper中实现查询六个月未进行报备的船舶
//    @Select("select * from bfdata_local_vessel\n" +
//            "where id_ in (\n" +
//            "\tSELECT DISTINCT local_vessel_ FROM bfdata_reporting_info t1\n" +
//            "\tWHERE t1.local_vessel_ NOT IN (\n" +
//            "\t\tSELECT distinct local_vessel_ FROM bfdata_reporting_info t2\n" +
//            "\t\tWHERE t2.time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)\n" +
//            "\t\tand t1.local_vessel_ = t2.local_vessel_\n" +
//            "\t)\n" +
//            ") ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
//    List<LocalVessel> getNoReport6Month(@Param("pageSize") int pageSize, @Param("offset") int offset);
//
//    @Select("select distinct count(*) from bfdata_local_vessel\n" +
//            "where id_ in (\n" +
//            "\tSELECT DISTINCT local_vessel_ FROM bfdata_reporting_info t1\n" +
//            "\tWHERE t1.local_vessel_ NOT IN (\n" +
//            "\t\tSELECT distinct local_vessel_ FROM bfdata_reporting_info t2\n" +
//            "\t\tWHERE t2.time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)\n" +
//            "\t\tand t1.local_vessel_ = t2.local_vessel_\n" +
//            "\t)\n" +
//            ")")
//    int countNoReport6Month();


    @Select("select distinct count(*) from bfdata.bfdata_local_vessel\n" +
            "where is_recover_ is null and border_unit_ in (\n" +
            "\tselect id_ from bfdata.bifang_organization\n" +
            "    where org_full_name_ like '${orgName}'\n" +
            ");")
    int countLocalVesselByAddress(@Param("orgName") String orgName);

}

