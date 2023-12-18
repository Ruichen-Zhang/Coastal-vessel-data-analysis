package com.bf.bfadmin.Service;

import com.bf.bfadmin.Entity.LocalVessel;
import com.bf.bfadmin.Entity.NonlocalVessel;
import com.bf.bfadmin.Mapper.NonlocalVesselMapper;
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

public interface NonlocalVesselService {
    public int countPower60();

    public int countPower60to450();

    public int countPower450to960();

    public int countPower960() ;

    public List<Map<String, Object>> countNonlocalVesselUse();

    public List<NonlocalVessel> findAll(int pageSize, int pageNum);

    public int countNonlocalVessel();

    public List<NonlocalVessel> getHighRiskVessels(int pageSize, int pageNum);

    public int countHighRiskVessels();

    public int countMediumRiskVessels() ;

    public List<NonlocalVessel> getNotLeave3Month(int pageSize, int pageNum) ;

    public  int countNotLeave3Month() ;
    public List<NonlocalVessel> getNotReturn3Month(int pageSize, int pageNum) ;

    public  int countNotReturn3Month();

    public List<NonlocalVessel> getNoReport6Month(int pageSize, int pageNum) ;



    public int countRongchengNonlocalVessel() ;

    public int countHuancuiNonlocalVessel() ;

    public int countRushanNonlocalVessel();

    public int countWendengNonlocalVessel() ;

    public int countJingquNonlocalVessel();

    public int countGaoquNonlocalVessel();
}


