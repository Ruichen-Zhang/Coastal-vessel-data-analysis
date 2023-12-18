package com.bf.bfadmin.Service;

import com.bf.bfadmin.Entity.Boatman;
import com.bf.bfadmin.Mapper.BoatmanMapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 
 * 船员服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:37
 */

public interface BoatmanService {
    public List<Map<String, Object>> countByDuty();

    public List<Boatman> findAll(int pageSize, int pageNum) ;

    public List<Integer> getAgeList();

    public List<Boatman> findByAgeRange(int minAge, int maxAge);

    public Integer countBoatman() ;

    public int countKeyBoatman();

    public List<Boatman> findKeyBoatman();

    public List<Map<String, Object>> findKeyBoatmanMap();

    public int countDrugBoatman();


    public List<Boatman> findDrugBoatman();

    public List<Map<String, Object>> findDrugBoatmanMap();

    public int countEscapedBoatman();

    public List<Boatman> findEscapedBoatman();

    public List<Map<String, Object>> findEscapeBoatmanMap();

    public int countRongchengBoatman();

    public int countHuancuiBoatman();

    public int countRushanBoatman();

    public int countWendengBoatman();

    public int countJingquBoatman();

    public int countGaoquBoatman();

}
