package com.bf.bfadmin.Service.Impl;

import com.bf.bfadmin.Mapper.BoatmanApprMapper;
import com.bf.bfadmin.Mapper.LocalVesselApprMapper;
import com.bf.bfadmin.Mapper.NonlocalVesselApprMapper;
import com.bf.bfadmin.Mapper.ReportingInfoApprMapper;
import com.bf.bfadmin.Service.ApprService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 
 * 审核信息服务类
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/19 12:07 
 */

@Service
public class ApprServiceImpl implements ApprService {
    @Autowired
    private BoatmanApprMapper boatmanApprMapper;

    @Autowired
    private ReportingInfoApprMapper reportingInfoApprMapper;

    @Autowired
    private LocalVesselApprMapper localVesselApprMapper;

    @Autowired
    private NonlocalVesselApprMapper nonlocalVesselApprMapper;

    public int countRongchengReportingInfoApprInLast3Months() {
        return reportingInfoApprMapper.countReportingInfoApprInLast3Months("荣成大队%");
    }

    public int countHuancuiReportingInfoApprInLast3Months() {
        return reportingInfoApprMapper.countReportingInfoApprInLast3Months("环翠大队%");
    }

    public int countRushanReportingInfoApprInLast3Months() {
        return reportingInfoApprMapper.countReportingInfoApprInLast3Months("乳山大队%");
    }

    public int countWendengReportingInfoApprInLast3Months() {
        return reportingInfoApprMapper.countReportingInfoApprInLast3Months("文登大队%");
    }

    public int countJingquReportingInfoApprInLast3Months() {
        return reportingInfoApprMapper.countReportingInfoApprInLast3Months("经区大队%");
    }

    public int countGaoquReportingInfoApprInLast3Months() {
        return reportingInfoApprMapper.countReportingInfoApprInLast3Months("高区大队%");
    }








    public int countRongchengBoatmanApprInLast3Months() {
        return boatmanApprMapper.countBoatmanApprInLast3Months("荣成大队%");
    }

    public int countHuancuiBoatmanApprInLast3Months() {
        return boatmanApprMapper.countBoatmanApprInLast3Months("环翠大队%");
    }

    public int countRushanBoatmanApprInLast3Months() {
        return boatmanApprMapper.countBoatmanApprInLast3Months("乳山大队%");
    }

    public int countWendengBoatmanApprInLast3Months() {
        return boatmanApprMapper.countBoatmanApprInLast3Months("文登大队%");
    }

    public int countJingquBoatmanApprInLast3Months() {
        return boatmanApprMapper.countBoatmanApprInLast3Months("经区大队%");
    }

    public int countGaoquBoatmanApprInLast3Months() {
        return boatmanApprMapper.countBoatmanApprInLast3Months("高区大队%");
    }



    public int countRongchengLocalVesselApprInLast3Months() {
        return localVesselApprMapper.countLocalVesselApprInLast3Months("荣成大队%");
    }

    public int countHuancuiLocalVesselApprInLast3Months() {
        return localVesselApprMapper.countLocalVesselApprInLast3Months("环翠大队%");
    }

    public int countRushanLocalVesselApprInLast3Months() {
        return localVesselApprMapper.countLocalVesselApprInLast3Months("乳山大队%");
    }

    public int countWendengLocalVesselApprInLast3Months() {
        return localVesselApprMapper.countLocalVesselApprInLast3Months("文登大队%");
    }

    public int countJingquLocalVesselApprInLast3Months() {
        return localVesselApprMapper.countLocalVesselApprInLast3Months("经区大队%");
    }

    public int countGaoquLocalVesselApprInLast3Months() {
        return localVesselApprMapper.countLocalVesselApprInLast3Months("高区大队%");
    }


    public int countRongchengNonlocalVesselApprInLast3Months() {
        return nonlocalVesselApprMapper.countNonlocalVesselApprInLast3Months("荣成大队%");
    }

    public int countHuancuiNonlocalVesselApprInLast3Months() {
        return nonlocalVesselApprMapper.countNonlocalVesselApprInLast3Months("环翠大队%");
    }

    public int countRushanNonlocalVesselApprInLast3Months() {
        return nonlocalVesselApprMapper.countNonlocalVesselApprInLast3Months("乳山大队%");
    }

    public int countWendengNonlocalVesselApprInLast3Months() {
        return nonlocalVesselApprMapper.countNonlocalVesselApprInLast3Months("文登大队%");
    }

    public int countJingquNonlocalVesselApprInLast3Months() {
        return nonlocalVesselApprMapper.countNonlocalVesselApprInLast3Months("经区大队%");
    }

    public int countGaoquNonlocalVesselApprInLast3Months() {
        return nonlocalVesselApprMapper.countNonlocalVesselApprInLast3Months("高区大队%");
    }

}
