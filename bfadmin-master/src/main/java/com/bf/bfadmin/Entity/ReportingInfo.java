package com.bf.bfadmin.Entity;

import lombok.Data;

import java.util.Date;
/**
 *
 * 报备信息实体类
 * bfdata_reporting_info
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:29
 */

@Data
public class ReportingInfo {
    private Integer id_;
    private String tenant_code_;
    private String from_port_;
    private String insert_man_;
    private Date insert_time_;
    private String method_;
    private String note_;
    private String operator_;
    private Date time_;
    private String to_port_;
    private String update_man_;
    private Date update_time_;
    private String visa_unit_;
    private Integer nonlocal_vessel_;
    private Integer local_vessel_;
    private String cause_;
    private String crew_;

    public ReportingInfo() {
    }

    public Integer getId_() {
        return id_;
    }

    public void setId_(Integer id_) {
        this.id_ = id_;
    }

    public String getTenant_code_() {
        return tenant_code_;
    }

    public void setTenant_code_(String tenant_code_) {
        this.tenant_code_ = tenant_code_;
    }

    public String getFrom_port_() {
        return from_port_;
    }

    public void setFrom_port_(String from_port_) {
        this.from_port_ = from_port_;
    }

    public String getInsert_man_() {
        return insert_man_;
    }

    public void setInsert_man_(String insert_man_) {
        this.insert_man_ = insert_man_;
    }

    public Date getInsert_time_() {
        return insert_time_;
    }

    public void setInsert_time_(Date insert_time_) {
        this.insert_time_ = insert_time_;
    }

    public String getMethod_() {
        return method_;
    }

    public void setMethod_(String method_) {
        this.method_ = method_;
    }

    public String getNote_() {
        return note_;
    }

    public void setNote_(String note_) {
        this.note_ = note_;
    }

    public String getOperator_() {
        return operator_;
    }

    public void setOperator_(String operator_) {
        this.operator_ = operator_;
    }

    public Date getTime_() {
        return time_;
    }

    public void setTime_(Date time_) {
        this.time_ = time_;
    }

    public String getTo_port_() {
        return to_port_;
    }

    public void setTo_port_(String to_port_) {
        this.to_port_ = to_port_;
    }

    public String getUpdate_man_() {
        return update_man_;
    }

    public void setUpdate_man_(String update_man_) {
        this.update_man_ = update_man_;
    }

    public Date getUpdate_time_() {
        return update_time_;
    }

    public void setUpdate_time_(Date update_time_) {
        this.update_time_ = update_time_;
    }

    public String getVisa_unit_() {
        return visa_unit_;
    }

    public void setVisa_unit_(String visa_unit_) {
        this.visa_unit_ = visa_unit_;
    }

    public Integer getNonlocal_vessel_() {
        return nonlocal_vessel_;
    }

    public void setNonlocal_vessel_(Integer nonlocal_vessel_) {
        this.nonlocal_vessel_ = nonlocal_vessel_;
    }

    public Integer getLocal_vessel_() {
        return local_vessel_;
    }

    public void setLocal_vessel_(Integer local_vessel_) {
        this.local_vessel_ = local_vessel_;
    }

    public String getCause_() {
        return cause_;
    }

    public void setCause_(String cause_) {
        this.cause_ = cause_;
    }

    public String getCrew_() {
        return crew_;
    }

    public void setCrew_(String crew_) {
        this.crew_ = crew_;
    }
}
