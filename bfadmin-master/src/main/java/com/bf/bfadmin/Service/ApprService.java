package com.bf.bfadmin.Service;

import com.bf.bfadmin.Mapper.BoatmanApprMapper;
import com.bf.bfadmin.Mapper.LocalVesselApprMapper;
import com.bf.bfadmin.Mapper.NonlocalVesselApprMapper;
import com.bf.bfadmin.Mapper.ReportingInfoApprMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 
 * 审核信息服务类
 * 
 * @author SDU Wang Yishuo
 * @date 2023/4/19 12:07 
 */

public interface ApprService {
    public int countRongchengReportingInfoApprInLast3Months();

    public int countHuancuiReportingInfoApprInLast3Months() ;

    public int countRushanReportingInfoApprInLast3Months() ;

    public int countWendengReportingInfoApprInLast3Months() ;

    public int countJingquReportingInfoApprInLast3Months() ;

    public int countGaoquReportingInfoApprInLast3Months() ;








    public int countRongchengBoatmanApprInLast3Months() ;

    public int countHuancuiBoatmanApprInLast3Months() ;

    public int countRushanBoatmanApprInLast3Months();

    public int countWendengBoatmanApprInLast3Months() ;

    public int countJingquBoatmanApprInLast3Months();

    public int countGaoquBoatmanApprInLast3Months();



    public int countRongchengLocalVesselApprInLast3Months();

    public int countHuancuiLocalVesselApprInLast3Months() ;

    public int countRushanLocalVesselApprInLast3Months() ;

    public int countWendengLocalVesselApprInLast3Months() ;

    public int countJingquLocalVesselApprInLast3Months();

    public int countGaoquLocalVesselApprInLast3Months();


    public int countRongchengNonlocalVesselApprInLast3Months();

    public int countHuancuiNonlocalVesselApprInLast3Months();

    public int countRushanNonlocalVesselApprInLast3Months();

    public int countWendengNonlocalVesselApprInLast3Months();

    public int countJingquNonlocalVesselApprInLast3Months();

    public int countGaoquNonlocalVesselApprInLast3Months();

}
