package com.bf.bfadmin.Mapper;

import com.bf.bfadmin.Entity.Port;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
/**
 * 
 * 港口信息映射层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:36
 * @date 2023/4/19 10:36 修改文件
 */

@Mapper
public interface PortMapper {
    @Select("select distinct count(*) from bfdata.bfdata_port\n" +
            "where is_recover_ is null and border_unit_ in (\n" +
            "\tselect id_ from bfdata.bifang_organization\n" +
            "    where org_full_name_ like '${orgName}'\n" +
            ");")
    int countPortByAddress(@Param("orgName") String orgName);

    @Select("select distinct count(*) from bfdata.bfdata_port\n" +
            "where is_recover_ is null")
    int countAllPort();

}
