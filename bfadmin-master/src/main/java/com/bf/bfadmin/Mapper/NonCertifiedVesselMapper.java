package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.NonCertifiedVessel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
/**
 * 
 * 无证船舶映射层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:35
 * @date 2023/5/10 15:37 update
 */

@Mapper
public interface NonCertifiedVesselMapper {

    @Select("SELECT * FROM bfdata_non_certified_vessel where is_recover_ is null ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<NonCertifiedVessel> findAll(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT distinct count(id_) FROM bfdata_non_certified_vessel where is_recover_ is null")
    int countAll();

    @Select("SELECT * FROM bfdata_non_certified_vessel WHERE risk_level_ = 2 and is_recover_ is null ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<NonCertifiedVessel> getHighRiskVessels(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT distinct count(id_) FROM bfdata_non_certified_vessel WHERE risk_level_ = 2 and is_recover_ is null")
    int countHighRiskVessels();

    @Select("SELECT distinct count(id_) FROM bfdata_non_certified_vessel WHERE risk_level_ = 1 and is_recover_ is null")
    int countMediumRiskVessels();
}

