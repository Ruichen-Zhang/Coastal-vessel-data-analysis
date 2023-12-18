package com.bf.bfadmin.Service;

import com.bf.bfadmin.Entity.NonlocalVessel;
import com.bf.bfadmin.Entity.NonlocalVesselOwner;
import com.bf.bfadmin.Mapper.NonlocalVesselOwnerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * 
 * 外地船舶拥有者服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:36 
 */

public interface NonlocalVesselOwnerService {
    public List<NonlocalVesselOwner> findAll(int pageSize, int pageNum);

    public List<NonlocalVesselOwner> findByNonIdCard(int pageSize, int pageNum);

    public int countByNonIdCard();
}

