package com.bf.bfadmin.Service;

import com.bf.bfadmin.Entity.LocalVessel;
import com.bf.bfadmin.Entity.NonCertifiedVessel;
import com.bf.bfadmin.Mapper.NonCertifiedVesselMapper;
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

public interface NonCertifiedVesselService {
    public List<NonCertifiedVessel> findAll(int pageSize, int pageNum);

    public int countNoncertifiedVessel() ;
    public List<NonCertifiedVessel> getHighRiskVessels(int pageSize, int pageNum);

    public  int countMediumRiskVessels();

    public  int countHighRiskVessels();



}