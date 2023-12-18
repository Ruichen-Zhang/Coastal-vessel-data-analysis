package com.bf.bfadmin.Service;

import com.bf.bfadmin.Entity.MaritimeCase;
import com.bf.bfadmin.Mapper.PunishedVesselMapper;
import com.bf.bfadmin.Mapper.ReportingInfoApprMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 
 * 海上涉案船舶数量计算
 *
 * @author Wang Yishuo
 * @date 2023/5/10 16:28 
 * @date 2023/5/11 11:53 update 更新去重功能
 */

public interface PunishedVesselService {
    // 去重查询被处罚过的船舶
    public int countPunishedVesselByNote();

    public int countPunishedVessel();

}
