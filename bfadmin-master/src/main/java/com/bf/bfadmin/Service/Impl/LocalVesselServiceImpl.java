package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Entity.LocalVessel;
import com.bf.bfadmin.Mapper.LocalVesselMapper;
import com.bf.bfadmin.Service.LocalVesselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 
 * 本地船舶服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:35 
 * @date 2023/5/10 15:48 update
 */

@Service
public class LocalVesselServiceImpl implements LocalVesselService {
    @Autowired
    private LocalVesselMapper localVesselMapper;

    public int countPower60() {
        return localVesselMapper.countPower60();
    }

    public int countPower60to450() {
        return localVesselMapper.countPower60to450();
    }

    public int countPower450to960() {
        return localVesselMapper.countPower450to960();
    }

    public int countPower960() {
        return localVesselMapper.countPower960();
    }

    public List<Map<String, Object>> countVesselUse() {
        return localVesselMapper.countVesselUse();
    }

    public List<Map<String, Object>> countLocalVesselUse() {
        return localVesselMapper.countLocalVesselUse();
    }

    public List<LocalVessel> findLocalVessel(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return localVesselMapper.findLocalVessel(pageSize, offset);
    }

    public int countLocalVessel() {
        return localVesselMapper.countLocalVessel();
    }


    public List<LocalVessel> findOceanVessel(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return localVesselMapper.findOceanVessel(pageSize, offset);
    }

    public int countOceanVessel() {
        return localVesselMapper.countOceanVessel();
    }

    public List<LocalVessel> getHighRiskVessels(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return localVesselMapper.getHighRiskVessels(pageSize, offset);
    }

    public  int countHighRiskVessels() {
        return localVesselMapper.countHighRiskVessels();
    }

    public  int countMediumRiskVessels() {
        return localVesselMapper.countMediumRiskVessels();
    }

    public List<LocalVessel> getNotLeave3Month(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return localVesselMapper.getNotLeave3Month(pageSize, offset);
    }

    public  int countNotLeave3Month() {
        return localVesselMapper.countNotLeave3Month();
    }

    public List<LocalVessel> getNotReturn3Month(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return localVesselMapper.getNotReturn3Month(pageSize, offset);
    }

    public  int countNotReturn3Month() {
        return localVesselMapper.countNotReturn3Month();
    }

//    public List<LocalVessel> getNoReport6Month(int pageSize, int pageNum) {
//        int offset = (pageNum - 1) * pageSize;
//        return localVesselMapper.getNoReport6Month(pageSize, offset);
//    }
//
//    public  int countNoReport6Month() {
//        return localVesselMapper.countNoReport6Month();
//    }


    public int countRongchengLocalVessel() {
        return localVesselMapper.countLocalVesselByAddress("荣成大队%");
    }

    public int countHuancuiLocalVessel() {
        return localVesselMapper.countLocalVesselByAddress("环翠大队%");
    }

    public int countRushanLocalVessel() {
        return localVesselMapper.countLocalVesselByAddress("乳山大队%");
    }

    public int countWendengLocalVessel() {
        return localVesselMapper.countLocalVesselByAddress("文登大队%");
    }

    public int countJingquLocalVessel() {
        return localVesselMapper.countLocalVesselByAddress("经区大队%");
    }

    public int countGaoquLocalVessel() {
        return localVesselMapper.countLocalVesselByAddress("高区大队%");
    }
}

