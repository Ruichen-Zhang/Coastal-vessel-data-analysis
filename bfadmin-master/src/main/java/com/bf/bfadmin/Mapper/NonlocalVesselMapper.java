package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.NonlocalVessel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * 
 * 外地船舶映射层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:35
 * @date 2023/5/10 15:35 update
 */

@Mapper
public interface NonlocalVesselMapper {
    // 查询依据马力分类
    @Select(" select distinct count(*) from bfdata_nonlocal_vessel\n" +
            "where power_ < 44 and is_recover_ is null;")
    int countPower60();

    @Select(" select distinct count(*) from bfdata_nonlocal_vessel\n" +
            "where power_ between 44 and 330 and is_recover_ is null;")
    int countPower60to450();

    @Select(" select distinct count(*) from bfdata_nonlocal_vessel\n" +
            "where power_ between 330 and 705 and is_recover_ is null;")
    int countPower450to960();

    @Select(" select distinct count(*) from bfdata_nonlocal_vessel\n" +
            "where power_ > 705 and is_recover_ is null;")
    int countPower960();

    @Select("select vessel_use_ as 'name', count(*) as 'value' from bfdata_nonlocal_vessel\n" +
            "where is_recover_ is null\n" +
            "group by vessel_use_;")
    List<Map<String, Object>> countNonlocalVesselUse();

    @Select("SELECT * FROM bfdata_nonlocal_vessel where is_recover_ is null ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<NonlocalVessel> findAll(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT count(*) FROM bfdata_nonlocal_vessel where is_recover_ is null")
    int countAll();

    @Select("SELECT * FROM bfdata_nonlocal_vessel WHERE risk_level_ = 2 and is_recover_ is null ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<NonlocalVessel> getHighRiskVessels(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT count(*) FROM bfdata_nonlocal_vessel WHERE risk_level_ = 2 and is_recover_ is null")
    int countHighRiskVessels();

    @Select("SELECT count(*) FROM bfdata_nonlocal_vessel WHERE risk_level_ = 1 and is_recover_ is null")
    int countMediumRiskVessels();

    @Select("select * from bfdata_nonlocal_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT nonlocal_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE method_ = '入港'\n" +
            "\tAND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)\n" +
            "\tAND nonlocal_vessel_ NOT IN (\n" +
            "\t\tSELECT nonlocal_vessel_ FROM bfdata_reporting_info t2\n" +
            "\t\tWHERE t2.method_ = '出港'\n" +
            "\t\tand t2.nonlocal_vessel_ = t1.nonlocal_vessel_\n" +
            "\t\tand t2.time_ > t1.time_\n" +
            "\t)\n" +
            ") ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<NonlocalVessel> getNotLeave3Month(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("select * from bfdata_nonlocal_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT nonlocal_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE method_ = '出港'\n" +
            "\tAND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)\n" +
            "\tAND nonlocal_vessel_ NOT IN (\n" +
            "\t\tSELECT nonlocal_vessel_ FROM bfdata_reporting_info t2\n" +
            "\t\tWHERE t2.method_ = '入港'\n" +
            "\t\tand t2.nonlocal_vessel_ = t1.nonlocal_vessel_\n" +
            "\t\tand t2.time_ > t1.time_\n" +
            "\t)\n" +
            ") ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<NonlocalVessel> getNotReturn3Month(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("select * from bfdata_nonlocal_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT DISTINCT nonlocal_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE t1.nonlocal_vessel_ not in (\n" +
            "\t\tSELECT distinct nonlocal_vessel_ FROM bfdata_reporting_info t2\n" +
            "\t\tWHERE t2.time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)\n" +
            "\t\tand t1.nonlocal_vessel_ = t2.nonlocal_vessel_\n" +
            "\t)\n" +
            ") ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<NonlocalVessel> getNoReport6Month(@Param("pageSize") int pageSize, @Param("offset") int offset);


    @Select("select count(*) from bfdata_nonlocal_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT nonlocal_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE method_ = '入港'\n" +
            "\tAND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)\n" +
            "\tAND nonlocal_vessel_ NOT IN (\n" +
            "\t\tSELECT nonlocal_vessel_ FROM bfdata_reporting_info t2\n" +
            "\t\tWHERE t2.method_ = '出港'\n" +
            "\t\tand t2.nonlocal_vessel_ = t1.nonlocal_vessel_\n" +
            "\t\tand t2.time_ > t1.time_\n" +
            "\t)\n" +
            ")")
    int countNotLeave3Month();

    @Select("select count(*) from bfdata_nonlocal_vessel\n" +
            "where id_ in (\n" +
            "\tSELECT nonlocal_vessel_ FROM bfdata_reporting_info t1\n" +
            "\tWHERE method_ = '出港'\n" +
            "\tAND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)\n" +
            "\tAND nonlocal_vessel_ NOT IN (\n" +
            "\t\tSELECT nonlocal_vessel_ FROM bfdata_reporting_info t2\n" +
            "\t\tWHERE t2.method_ = '入港'\n" +
            "\t\tand t2.nonlocal_vessel_ = t1.nonlocal_vessel_\n" +
            "\t\tand t2.time_ > t1.time_\n" +
            "\t)\n" +
            ")")
    int countNotReturn3Month();

    // 六个月未报备船舶在ReportingInfoApprMapper中查找
//    @Select("select count(*) from bfdata_nonlocal_vessel\n" +
//            "where id_ in (\n" +
//            "\tSELECT DISTINCT nonlocal_vessel_ FROM bfdata_reporting_info t1\n" +
//            "\tWHERE t1.nonlocal_vessel_ not in (\n" +
//            "\t\tSELECT distinct nonlocal_vessel_ FROM bfdata_reporting_info t2\n" +
//            "\t\tWHERE t2.time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)\n" +
//            "\t\tand t1.nonlocal_vessel_ = t2.nonlocal_vessel_\n" +
//            "\t)\n" +
//            ")")
//    int countNoReport6Month();

    @Select("select count(*) from bfdata.bfdata_nonlocal_vessel\n" +
            "where is_recover_ is null and border_unit_ in (\n" +
            "\tselect id_ from bfdata.bifang_organization\n" +
            "    where org_full_name_ like '${orgName}'\n" +
            ");")
    public int countNonlocalVesselByAddress(@Param("orgName") String orgName);
}


