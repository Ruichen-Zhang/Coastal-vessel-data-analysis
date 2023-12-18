package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Entity.NonlocalVesselOwner;
import com.bf.bfadmin.Mapper.NonlocalVesselOwnerMapper;
import com.bf.bfadmin.Service.NonlocalVesselOwnerService;
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

@Service
public class NonlocalVesselOwnerServiceImpl implements NonlocalVesselOwnerService {
    @Autowired
    private NonlocalVesselOwnerMapper nonlocalVesselOwnerMapper;

    public List<NonlocalVesselOwner> findAll(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonlocalVesselOwnerMapper.findAll(pageSize, offset);
    }

    public List<NonlocalVesselOwner> findByNonIdCard(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return nonlocalVesselOwnerMapper.findByNonIdCard(pageSize, offset);
    }

    public int countByNonIdCard() {
        return nonlocalVesselOwnerMapper.countByNonIdCard();
    }
}

