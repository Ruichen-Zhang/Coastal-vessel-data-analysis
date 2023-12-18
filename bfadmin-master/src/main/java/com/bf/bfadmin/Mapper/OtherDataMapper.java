package com.bf.bfadmin.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * 
 * 其他数据mapper
 * 
 * @author Wang Yishuo
 * @date 2023/5/24 11:52 
 */

@Mapper
public interface OtherDataMapper {
    // 码头调度
    @Select("select distinct count(*) from bfdata_port_dispatch\n" +
            "where is_recover_ is null;")
    int countAllPortDispatch();

    // 海上旅游项目
    @Select("select distinct count(*) from bfdata_fun_project\n" +
            "where is_recover_ is null;")
    int countAllFunProject();

    // 涉海中介项目
    @Select("select distinct count(name_) from bfdata_sea_labour_agency\n" +
            "where is_recover_ is null;")
    int countAllLabourAgency();

    // 船舶代理数量
    @Select("select distinct count(name_) from bfdata_vessel_agency\n" +
            "where is_recover_ is null;")
    int countAllVesselAgency();

    // 修造船行业数量
    @Select("select distinct count(name_) from bfdata_ship_repair_industry\n" +
            "where is_recover_ is null;")
    int countAllShipIndustry();

    // 油水补给数量
    @Select("select distinct count(name_) from bfdata_port_supply\n" +
            "where is_recover_ is null;")
    int countAllPortSupply();

    // 行业场所数量
    @Select("select distinct count(name_) from bfdata_port_store\n" +
            "where is_recover_ is null;")
    int countAllPortStore();

}
