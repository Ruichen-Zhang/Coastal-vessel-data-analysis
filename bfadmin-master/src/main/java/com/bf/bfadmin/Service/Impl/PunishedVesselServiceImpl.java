package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Entity.MaritimeCase;
import com.bf.bfadmin.Mapper.PunishedVesselMapper;
import com.bf.bfadmin.Service.PunishedVesselService;
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

@Service
public class PunishedVesselServiceImpl implements PunishedVesselService {
    @Autowired
    private PunishedVesselMapper punishedVesselMapper;

    // 去重查询被处罚过的船舶
    public int countPunishedVesselByNote() {
        Set<String> vessels = new HashSet<>();
        int ret = 0;
        List<MaritimeCase> maritimeCases = punishedVesselMapper.getMaritimeCase();
        for (MaritimeCase maritimeCase : maritimeCases) {
            String[] notes = maritimeCase.getNote_().split(String.valueOf(','), -1);
            for (String tempNote : notes){
                tempNote = tempNote.replaceAll("\\s", "");
                vessels.add(tempNote);
            }
        }
        ret = vessels.size();
        return ret;
    }

    public int countPunishedVessel() {
        return punishedVesselMapper.countMaritimeCaseVessel();
    }

}
