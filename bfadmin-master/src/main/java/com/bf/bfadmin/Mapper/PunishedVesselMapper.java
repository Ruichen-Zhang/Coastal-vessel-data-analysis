package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.MaritimeCase;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 
 * 被处罚船舶（海上涉案事件）
 * 
 * @author Wang Yishuo
 * @date 2023/5/10 15:58 create
 * @date 2023/5/11 11:12 update 修正查询语句
 */

@Mapper
public interface PunishedVesselMapper {
    @Select("SELECT * FROM bfdata_maritime_case WHERE is_recover_ is null and note_ IS NOT NULL AND note_ != '' AND note_ != '空' and note_ != '无'")
    List<MaritimeCase> getMaritimeCase();

    @Select("select count(distinct local_vessel_) + count(distinct nonlocal_vessel_)" +
            " + count(distinct non_certified_vessel_) as num\n" +
            " from bfdata_maritime_case_vessel_rela;")
    int countMaritimeCaseVessel();

}
