package com.bf.bfadmin.Entity;

import lombok.Data;

import java.util.Date;

@Data
public class ReportingInfoAppr {
    private String crime_check_;
    private int id_;
    private String approve_status_;
    private String cause_;
    private String dsj_id_;
    private String from_port_;
    private String insert_man_;
    private Date insert_time_;
    private String method_;
    private String note_;
    private String responsible_police_;
    private String submit_id_;
    private String submit_name_;
    private Date submit_time_;
    private Date time_;
    private String to_port_;
    private String update_man_;
    private Date update_time_;
    private String vessel_name_;
    private String visa_unit_;
    private String wjw_id_;
    private Integer manage_unit_;

    public String getCrime_check_() {
        return crime_check_;
    }

    public void setCrime_check_(String crime_check_) {
        this.crime_check_ = crime_check_;
    }

    public int getId_() {
        return id_;
    }

    public void setId_(int id_) {
        this.id_ = id_;
    }

    public String getApprove_status_() {
        return approve_status_;
    }

    public void setApprove_status_(String approve_status_) {
        this.approve_status_ = approve_status_;
    }

    public String getCause_() {
        return cause_;
    }

    public void setCause_(String cause_) {
        this.cause_ = cause_;
    }

    public String getDsj_id_() {
        return dsj_id_;
    }

    public void setDsj_id_(String dsj_id_) {
        this.dsj_id_ = dsj_id_;
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

    public String getResponsible_police_() {
        return responsible_police_;
    }

    public void setResponsible_police_(String responsible_police_) {
        this.responsible_police_ = responsible_police_;
    }

    public String getSubmit_id_() {
        return submit_id_;
    }

    public void setSubmit_id_(String submit_id_) {
        this.submit_id_ = submit_id_;
    }

    public String getSubmit_name_() {
        return submit_name_;
    }

    public void setSubmit_name_(String submit_name_) {
        this.submit_name_ = submit_name_;
    }

    public Date getSubmit_time_() {
        return submit_time_;
    }

    public void setSubmit_time_(Date submit_time_) {
        this.submit_time_ = submit_time_;
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

    public String getVessel_name_() {
        return vessel_name_;
    }

    public void setVessel_name_(String vessel_name_) {
        this.vessel_name_ = vessel_name_;
    }

    public String getVisa_unit_() {
        return visa_unit_;
    }

    public void setVisa_unit_(String visa_unit_) {
        this.visa_unit_ = visa_unit_;
    }

    public String getWjw_id_() {
        return wjw_id_;
    }

    public void setWjw_id_(String wjw_id_) {
        this.wjw_id_ = wjw_id_;
    }

    public Integer getManage_unit_() {
        return manage_unit_;
    }

    public void setManage_unit_(Integer manage_unit_) {
        this.manage_unit_ = manage_unit_;
    }
}
