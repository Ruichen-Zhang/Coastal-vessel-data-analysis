package com.bf.bfadmin.Service;

import com.bf.bfadmin.Entity.LocalVessel;
import com.bf.bfadmin.Mapper.LocalVesselMapper;
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

public interface LocalVesselService {

    public int countPower60();

    public int countPower60to450();

    public int countPower450to960();

    public int countPower960() ;

    public List<Map<String, Object>> countVesselUse();

    public List<Map<String, Object>> countLocalVesselUse() ;

    public List<LocalVessel> findLocalVessel(int pageSize, int pageNum) ;

    public int countLocalVessel();


    public List<LocalVessel> findOceanVessel(int pageSize, int pageNum);
    public int countOceanVessel();

    public List<LocalVessel> getHighRiskVessels(int pageSize, int pageNum) ;

    public  int countHighRiskVessels();

    public  int countMediumRiskVessels();

    public List<LocalVessel> getNotLeave3Month(int pageSize, int pageNum) ;

    public  int countNotLeave3Month() ;

    public List<LocalVessel> getNotReturn3Month(int pageSize, int pageNum);

    public  int countNotReturn3Month();

    public int countRongchengLocalVessel();

    public int countHuancuiLocalVessel() ;

    public int countRushanLocalVessel();

    public int countWendengLocalVessel() ;

    public int countJingquLocalVessel();

    public int countGaoquLocalVessel() ;
}

