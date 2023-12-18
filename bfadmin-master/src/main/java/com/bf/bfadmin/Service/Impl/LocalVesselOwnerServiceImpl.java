package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Entity.LocalVesselOwner;
import com.bf.bfadmin.Mapper.LocalVesselOwnerMapper;
import com.bf.bfadmin.Service.LocalVesselOwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * 
 * 本地船舶拥有者服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:35 
 */

@Service
public class LocalVesselOwnerServiceImpl implements LocalVesselOwnerService {

    @Autowired
    private LocalVesselOwnerMapper localVesselOwnerMapper;

    public List<LocalVesselOwner> findAll(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return localVesselOwnerMapper.findAll(pageSize, offset);
    }

    public List<LocalVesselOwner> findOwnersByIdCard(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return localVesselOwnerMapper.findOwnersByIdCard(pageSize, offset);
    }

    public int countOwnersByIdCard() {
        return localVesselOwnerMapper.countOwnersByIdCard();
    }
}

