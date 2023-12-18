package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Mapper.PortMapper;
import com.bf.bfadmin.Service.PortService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 
 * 港口信息服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:37 
 */

@Service
public class PortServiceImpl implements PortService {
    @Autowired
    private PortMapper portMapper;

    public int countAllPort() {
        return portMapper.countAllPort();
    }

    public int countRongchengPort() {
        return portMapper.countPortByAddress("荣成大队%");
    }

    public int countHuancuiPort() {
        return portMapper.countPortByAddress("环翠大队%");
    }

    public int countRushanPort() {
        return portMapper.countPortByAddress("乳山大队%");
    }

    public int countWendengPort() {
        return portMapper.countPortByAddress("文登大队%");
    }

    public int countJingquPort() {
        return portMapper.countPortByAddress("经区大队%");
    }

    public int countGaoquPort() {
        return portMapper.countPortByAddress("高区大队%");
    }

}
