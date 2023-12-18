package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.Boatman;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

/**
 * 
 * 船员映射层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:34
 */

@Mapper
public interface BoatmanMapper {
    @Select("select bfdata_duty_.duty as \"name\", bfdata_duty_.number as \"value\"\n" +
            "from bfdata_duty_;")
    List<Map<String, Object>> countByDuty();

    @Select("SELECT * FROM bfdata_boatman ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset} where is_recover_ is null")
    List<Boatman> findAll(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT distinct COUNT(*) FROM bfdata_boatman where is_recover_ is null")
    int countAll();

    @Select("SELECT * FROM bfdata_boatman WHERE DATEDIFF(CURDATE(), birthday_) / 365 BETWEEN #{minAge} AND #{maxAge}" +
            " and is_recover_ is null")
    List<Boatman> findBoatmanByAge(@Param("minAge") Integer minAge, @Param("maxAge") Integer maxAge);

    // 新增查询条件：一个月以内
    @Select("SELECT distinct COUNT(*) FROM bfdata_boatman WHERE crime_check_ = '重点' and is_recover_ is null\n" +
            "and abs(timestampdiff(month, update_time_, curtime())) < 1;")
    int countKeyBoatman();

    // 已修改——查询一个月以内的重点船员列表
    @Select("SELECT * FROM bfdata_boatman WHERE crime_check_ = '重点' and is_recover_ is null\n" +
            "and abs(timestampdiff(month, update_time_, curtime())) < 1;")
    List<Boatman> findKeyBoatman();

    // 新增查询条件：一个月以内
    @Select("SELECT distinct COUNT(*) FROM bfdata_boatman WHERE crime_check_ LIKE '%毒%' and is_recover_ is null\n" +
            "and abs(timestampdiff(month, update_time_, curtime())) < 1;")
    int countDrugBoatman();


    @Select("SELECT * FROM bfdata_boatman WHERE crime_check_ LIKE '%毒%' and is_recover_ is null\n" +
            "and abs(timestampdiff(month, update_time_, curtime())) < 1;")
    List<Boatman> findDrugBoatman();

    // 新增查询条件：一个月以内
    @Select("select distinct count(*) from bfdata_boatman where crime_check_ = '在逃' and is_recover_ is null\n" +
            "and abs(timestampdiff(month, update_time_, curtime())) < 1;")
    int countEscapedBoatman();

    @Select("SELECT * FROM bfdata_boatman WHERE crime_check_ = '在逃' and is_recover_ is null\n" +
            "and abs(timestampdiff(month, update_time_, curtime())) < 1;")
    List<Boatman> findEscapedBoatman();

    @Select("select distinct count(*) from bfdata.bfdata_boatman\n" +
            "where is_recover_ is null and border_unit_ in (\n" +
            "\tselect id_ from bfdata.bifang_organization\n" +
            "    where org_full_name_ like '${orgName}'\n" +
            ");")
    int countBoatmanByAddress(@Param("orgName") String orgName);
}

