package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Entity.NonCertifiedVessel;
import com.bf.bfadmin.Mapper.NonCertifiedVesselMapper;
import com.bf.bfadmin.Service.NonCertifiedVesselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * 
 * 无证船舶服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:36 
 */

@Service
public class NonCertifiedVesselServiceImpl implements NonCertifiedVesselService {

    @Autowired
    private NonCertifiedVesselMapper nonCertifiedVesselMapper;

    public List<NonCertifiedVessel> findAll(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonCertifiedVesselMapper.findAll(pageSize, offset);
    }

    public int countNoncertifiedVessel() {
        return nonCertifiedVesselMapper.countAll();
    }

    public List<NonCertifiedVessel> getHighRiskVessels(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonCertifiedVesselMapper.getHighRiskVessels(pageSize, offset);
    }

    public  int countMediumRiskVessels() {
        return nonCertifiedVesselMapper.countMediumRiskVessels();
    }

    public  int countHighRiskVessels() {
        return nonCertifiedVesselMapper.countHighRiskVessels();
    }



}