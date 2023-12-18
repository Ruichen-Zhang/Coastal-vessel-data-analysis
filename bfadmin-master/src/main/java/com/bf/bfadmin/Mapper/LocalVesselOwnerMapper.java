package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.LocalVesselOwner;
import org.apache.ibatis.annotations.*;

import java.util.List;
/**
 * 
 * 本地船舶拥有者映射层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:35
 * @date 2023/5/11 12:09 update 优化查询
 */

@Mapper
public interface LocalVesselOwnerMapper {

    @Select("SELECT * FROM bfdata_local_vessel_owner ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<LocalVesselOwner> findAll(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT distinct count(id_) FROM bfdata_local_vessel_owner")
    int countAll();

    @Select("SELECT * FROM bfdata_local_vessel_owner WHERE id_card_ LIKE '3710%' ORDER BY id_ DESC LIMIT #{pageSize} OFFSET #{offset}")
    List<LocalVesselOwner> findOwnersByIdCard(@Param("pageSize") int pageSize, @Param("offset") int offset);

    @Select("SELECT distinct count(id_) FROM bfdata_local_vessel_owner WHERE id_card_ LIKE '3710%'")
    int countOwnersByIdCard();
}

