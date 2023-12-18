package com.bf.bfadmin.Service;

import com.bf.bfadmin.Mapper.OtherDataMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 
 * 其他数据的service层
 * 
 * @author Wang Yishuo
 * @date 2023/5/24 12:18 
 */

public interface OtherDataService {
    public int countAllPortDispatch();

    public int countAllFunProject();

    public int countAllLabourAgency() ;

    public int countAllVesselAgency() ;

    public int countAllShipIndustry() ;

    public int countAllPortSupply();

    public int countAllPortStore();
}
