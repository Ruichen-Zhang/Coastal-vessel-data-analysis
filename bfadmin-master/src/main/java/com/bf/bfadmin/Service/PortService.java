package com.bf.bfadmin.Service;

import com.bf.bfadmin.Mapper.PortMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 
 * 港口信息服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:37 
 */

public interface PortService {

    public int countAllPort();

    public int countRongchengPort();

    public int countHuancuiPort();
    public int countRushanPort();
    public int countWendengPort();

    public int countJingquPort();
    public int countGaoquPort();

}
