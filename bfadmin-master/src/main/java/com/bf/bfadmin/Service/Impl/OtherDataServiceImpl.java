package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Mapper.OtherDataMapper;
import com.bf.bfadmin.Service.OtherDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 
 * 其他数据的service层
 * 
 * @author Wang Yishuo
 * @date 2023/5/24 12:18 
 */

@Service
public class OtherDataServiceImpl implements OtherDataService {
    @Autowired
    private OtherDataMapper otherDataMapper;

    public int countAllPortDispatch() {
        return otherDataMapper.countAllPortDispatch();
    }

    public int countAllFunProject() {
        return otherDataMapper.countAllFunProject();
    }

    public int countAllLabourAgency() {
        return otherDataMapper.countAllLabourAgency();
    }

    public int countAllVesselAgency() {
        return otherDataMapper.countAllVesselAgency();
    }

    public int countAllShipIndustry() {
        return otherDataMapper.countAllShipIndustry();
    }

    public int countAllPortSupply() {
        return otherDataMapper.countAllPortSupply();
    }

    public int countAllPortStore() {
        return otherDataMapper.countAllPortStore();
    }
}
