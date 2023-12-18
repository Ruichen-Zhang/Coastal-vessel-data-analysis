package com.bf.bfadmin.Controller;

import com.bf.bfadmin.Entity.LocalVesselOwner;
import com.bf.bfadmin.Entity.NonlocalVesselOwner;
import com.bf.bfadmin.Service.LocalVesselOwnerService;
import com.bf.bfadmin.Service.NonlocalVesselOwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 
 * 已实现待使用的接口
 * 
 * @author Wang Yishuo
 * @date 2023/5/29 12:03 
 */


@RestController
@RequestMapping
public class ReadyForUseCon {
    @Autowired
    private LocalVesselOwnerService localVesselOwnerService;
    @Autowired
    private NonlocalVesselOwnerService nonlocalVesselOwnerService;

    // 驾驶外地船只的本地船主
    @GetMapping("/nonlocalvesselowner")
    public List<NonlocalVesselOwner> findAllNonlocalVesselOwner(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonlocalVesselOwnerService.findAll(pageSize, pageNum);
    }

    @GetMapping("/nonlocalvesselowner/findbynonidcard")
    public List<NonlocalVesselOwner> findNonlocalVesselOwnerByNonIdCard(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return nonlocalVesselOwnerService.findByNonIdCard(pageSize, pageNum);
    }

    @GetMapping("/nonlocalvesselowner/countbynonidcard")
    public int countNonlocalVesselOwnerByNonIdCard() {
        return nonlocalVesselOwnerService.countByNonIdCard();
    }

    // 驾驶本地船舶的外地船主
    @GetMapping("/localvesselowner")
    public List<LocalVesselOwner> findAllLocalVesselOwner(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return localVesselOwnerService.findAll(pageSize, pageNum);
    }

    @GetMapping("/localvesselowner/findbyidcard")
    public List<LocalVesselOwner> getLocalVesselOwnersByIdCard(@RequestParam("pageSize") int pageSize, @RequestParam("pageNum") int pageNum) {
        return localVesselOwnerService.findOwnersByIdCard(pageSize, pageNum);
    }

    @GetMapping("/localvesselowner/countbyidcard")
    public int countLocalVesselOwnersByIdCard() {
        return localVesselOwnerService.countOwnersByIdCard();
    }
}
