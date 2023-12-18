package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.NonlocalVesselOwner;
import org.apache.ibatis.annotations.*;

import java.util.List;
/**
 * 
 * 外地船舶拥有者映射层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:36
 */

@Mapper
public interface NonlocalVesselOwnerMapper {
    @Select("SELECT * FROM bfdata_nonlocal_vessel_owner")
    List<NonlocalVesselOwner> findAll(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT count(*) FROM bfdata_nonlocal_vessel_owner")
    int countAll();

    @Select("SELECT * FROM bfdata_nonlocal_vessel_owner WHERE id_card_ NOT LIKE '3710%'")
    List<NonlocalVesselOwner> findByNonIdCard(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT count(*) FROM bfdata_nonlocal_vessel_owner WHERE id_card_ NOT LIKE '3710%'")
    int countByNonIdCard();
}


