package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Entity.Boatman;
import com.bf.bfadmin.Mapper.BoatmanMapper;
import com.bf.bfadmin.Service.BoatmanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 
 * 船员服务层实现
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:37
 */

@Service
public class BoatmanServiceImpl implements BoatmanService {

    @Autowired
    private BoatmanMapper boatmanMapper;


    public List<Map<String, Object>> countByDuty() {
        return boatmanMapper.countByDuty();
    }

    public List<Boatman> findAll(int pageSize, int pageNum) {
        int offset = (pageNum - 1) * pageSize;
        return boatmanMapper.findAll(pageSize, offset);
    }

    public List<Integer> getAgeList() {
        List<Integer> ageLists = new ArrayList<Integer>();
        ageLists.add(boatmanMapper.findBoatmanByAge(0, 25).size());
        ageLists.add(boatmanMapper.findBoatmanByAge(25, 30).size());
        ageLists.add(boatmanMapper.findBoatmanByAge(30, 35).size());
        ageLists.add(boatmanMapper.findBoatmanByAge(35, 40).size());
        ageLists.add(boatmanMapper.findBoatmanByAge(45, 50).size());
        ageLists.add(boatmanMapper.findBoatmanByAge(50, 55).size());
        ageLists.add(boatmanMapper.findBoatmanByAge(55, 200).size());
        return ageLists;
    }

    public List<Boatman> findByAgeRange(int minAge, int maxAge) {
        return boatmanMapper.findBoatmanByAge(minAge, maxAge);
    }

    public Integer countBoatman() {
        return boatmanMapper.countAll();
    }

    public int countKeyBoatman() {
        return boatmanMapper.countKeyBoatman();
    }

    public List<Boatman> findKeyBoatman() {
        return boatmanMapper.findKeyBoatman();
    }

    @Override
    public List<Map<String, Object>> findKeyBoatmanMap() {
        List<Boatman> keyBoatman = boatmanMapper.findKeyBoatman();
        List<Map<String, Object>> result = new ArrayList<>();
        for ( Boatman boatman : keyBoatman) {
            Map<String, Object> tempMap = new HashMap<>();
            tempMap.put("identityid", boatman.getId_no_());
            tempMap.put("name", boatman.getName_());
            tempMap.put("flagtime", boatman.getUpdate_time_());
            result.add(tempMap);
        }
        return result;
    }

    public int countDrugBoatman() {
        return boatmanMapper.countDrugBoatman();
    }

    public List<Boatman> findDrugBoatman() {
        return boatmanMapper.findDrugBoatman();
    }

    @Override
    public List<Map<String, Object>> findDrugBoatmanMap() {
        List<Boatman> keyBoatman = boatmanMapper.findDrugBoatman();
        List<Map<String, Object>> result = new ArrayList<>();
        for ( Boatman boatman : keyBoatman) {
            Map<String, Object> tempMap = new HashMap<>();
            tempMap.put("identityid", boatman.getId_no_());
            tempMap.put("name", boatman.getName_());
            tempMap.put("flagtime", boatman.getUpdate_time_());
            result.add(tempMap);
        }
        return result;
    }


    public int countEscapedBoatman(){
        return boatmanMapper.countEscapedBoatman();
    }

    public List<Boatman> findEscapedBoatman(){
        return boatmanMapper.findEscapedBoatman();
    }

    @Override
    public List<Map<String, Object>> findEscapeBoatmanMap() {
        List<Boatman> keyBoatman = boatmanMapper.findEscapedBoatman();
        List<Map<String, Object>> result = new ArrayList<>();
        for ( Boatman boatman : keyBoatman) {
            Map<String, Object> tempMap = new HashMap<>();
            tempMap.put("identityid", boatman.getId_no_());
            tempMap.put("name", boatman.getName_());
            tempMap.put("flagtime", boatman.getUpdate_time_());
            result.add(tempMap);
        }
        return result;
    }


    public int countRongchengBoatman() {
        return boatmanMapper.countBoatmanByAddress("荣成大队%");
    }

    public int countHuancuiBoatman() {
        return boatmanMapper.countBoatmanByAddress("环翠大队%");
    }

    public int countRushanBoatman() {
        return boatmanMapper.countBoatmanByAddress("乳山大队%");
    }

    public int countWendengBoatman() {
        return boatmanMapper.countBoatmanByAddress("文登大队%");
    }

    public int countJingquBoatman() {
        return boatmanMapper.countBoatmanByAddress("经区大队%");
    }

    public int countGaoquBoatman() {
        return boatmanMapper.countBoatmanByAddress("高区大队%");
    }

}
