package com.bf.bfadmin.Service;

import com.bf.bfadmin.Entity.LocalVesselOwner;
import com.bf.bfadmin.Mapper.LocalVesselOwnerMapper;
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

public interface LocalVesselOwnerService {
    public List<LocalVesselOwner> findAll(int pageSize, int pageNum);

    public List<LocalVesselOwner> findOwnersByIdCard(int pageSize, int pageNum);

    public int countOwnersByIdCard();
}

