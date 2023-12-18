package com.bf.bfadmin.Entity;

import lombok.Data;

import java.util.Date;

/**
 * 
 * 海上涉案事件
 * 
 * @author Wang Yishuo
 * @date 2023/5/10 16:21 
 */

@Data
public class MaritimeCase {
    private Integer id_;
    private String tenant_code_;
    private String detail_;
    private String insert_man_;
    private Date insert_time_;
    private String name_;
    private String note_;
    private String other_type_;
    private Integer type_;
    private String update_man_;
    private Date update_time_;
    private String record_police_;
    private String responsible_police_;
    private Integer manage_unit_;
    private Integer border_unit_;
    private Integer is_recover_;

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

    public String getDetail_() {
        return detail_;
    }

    public void setDetail_(String detail_) {
        this.detail_ = detail_;
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

    public String getName_() {
        return name_;
    }

    public void setName_(String name_) {
        this.name_ = name_;
    }

    public String getNote_() {
        return note_;
    }

    public void setNote_(String note_) {
        this.note_ = note_;
    }

    public String getOther_type_() {
        return other_type_;
    }

    public void setOther_type_(String other_type_) {
        this.other_type_ = other_type_;
    }

    public Integer getType_() {
        return type_;
    }

    public void setType_(Integer type_) {
        this.type_ = type_;
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

    public String getRecord_police_() {
        return record_police_;
    }

    public void setRecord_police_(String record_police_) {
        this.record_police_ = record_police_;
    }

    public String getResponsible_police_() {
        return responsible_police_;
    }

    public void setResponsible_police_(String responsible_police_) {
        this.responsible_police_ = responsible_police_;
    }

    public Integer getManage_unit_() {
        return manage_unit_;
    }

    public void setManage_unit_(Integer manage_unit_) {
        this.manage_unit_ = manage_unit_;
    }

    public Integer getBorder_unit_() {
        return border_unit_;
    }

    public void setBorder_unit_(Integer border_unit_) {
        this.border_unit_ = border_unit_;
    }

    public Integer getIs_recover_() {
        return is_recover_;
    }

    public void setIs_recover_(Integer is_recover_) {
        this.is_recover_ = is_recover_;
    }
}
