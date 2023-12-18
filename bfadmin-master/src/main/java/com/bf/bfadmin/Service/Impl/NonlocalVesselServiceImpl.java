package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Entity.NonlocalVessel;
import com.bf.bfadmin.Mapper.NonlocalVesselMapper;
import com.bf.bfadmin.Service.NonlocalVesselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 
 * 外地船舶服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:37 create
 * @date 2023/5/10 15:38 update
 */

@Service
public class NonlocalVesselServiceImpl implements NonlocalVesselService {
    @Autowired
    private NonlocalVesselMapper nonlocalVesselMapper;

    public int countPower60() {
        return nonlocalVesselMapper.countPower60();
    }

    public int countPower60to450() {
        return nonlocalVesselMapper.countPower60to450();
    }

    public int countPower450to960() {
        return nonlocalVesselMapper.countPower450to960();
    }

    public int countPower960() {
        return nonlocalVesselMapper.countPower960();
    }

    public List<Map<String, Object>> countNonlocalVesselUse() {
        return nonlocalVesselMapper.countNonlocalVesselUse();
    }

    public List<NonlocalVessel> findAll(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonlocalVesselMapper.findAll(pageSize, offset);
    }

    public int countNonlocalVessel() {
        return nonlocalVesselMapper.countAll();
    }

    public List<NonlocalVessel> getHighRiskVessels(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonlocalVesselMapper.getHighRiskVessels(pageSize, offset);
    }

    public int countHighRiskVessels() {
        return nonlocalVesselMapper.countHighRiskVessels();
    }

    public int countMediumRiskVessels() {
        return nonlocalVesselMapper.countMediumRiskVessels();
    }


    public List<NonlocalVessel> getNotLeave3Month(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonlocalVesselMapper.getNotLeave3Month(pageSize, offset);
    }

    public  int countNotLeave3Month() {
        return nonlocalVesselMapper.countNotLeave3Month();
    }

    public List<NonlocalVessel> getNotReturn3Month(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonlocalVesselMapper.getNotReturn3Month(pageSize, offset);
    }

    public  int countNotReturn3Month() {
        return nonlocalVesselMapper.countNotReturn3Month();
    }

    public List<NonlocalVessel> getNoReport6Month(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonlocalVesselMapper.getNoReport6Month(pageSize, offset);
    }

//    public  int countNoReport6Month() {
//        return nonlocalVesselMapper.countNoReport6Month();
//    }


    public int countRongchengNonlocalVessel() {
        return nonlocalVesselMapper.countNonlocalVesselByAddress("荣成大队%");
    }

    public int countHuancuiNonlocalVessel() {
        return nonlocalVesselMapper.countNonlocalVesselByAddress("环翠大队%");
    }

    public int countRushanNonlocalVessel() {
        return nonlocalVesselMapper.countNonlocalVesselByAddress("乳山大队%");
    }

    public int countWendengNonlocalVessel() {
        return nonlocalVesselMapper.countNonlocalVesselByAddress("文登大队%");
    }

    public int countJingquNonlocalVessel() {
        return nonlocalVesselMapper.countNonlocalVesselByAddress("经区大队%");
    }

    public int countGaoquNonlocalVessel() {
        return nonlocalVesselMapper.countNonlocalVesselByAddress("高区大队%");
    }
}


