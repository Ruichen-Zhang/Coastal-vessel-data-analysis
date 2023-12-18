package com.bf.bfadmin.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 *
 * 船员待审核映射层实现
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:30
 * @date 2023/5/10 15:26 update 优化查询未审核船员
 */

@Mapper
public interface BoatmanApprMapper {

    @Select("select count(*) from bfdata.bfdata_boatman_appr\n" +
            "where approve_status_ = '未审核'\n" +
            "and submit_time_ BETWEEN DATE_SUB(NOW(), INTERVAL 3 MONTH) AND NOW()\n" +
            "and manage_unit_ in (\n" +
            "\tselect id_ from bfdata.bifang_organization\n" +
            "    where org_full_name_ like '${orgName}'\n" +
            ");")
    int countBoatmanApprInLast3Months(@Param("orgName") String orgName);


}

