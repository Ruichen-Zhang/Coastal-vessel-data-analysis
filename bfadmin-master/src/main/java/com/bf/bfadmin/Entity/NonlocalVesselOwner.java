package com.bf.bfadmin.Entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
/**
 *
 * 外地船舶拥有者实体类
 * bfdata_nonlocal_vessel_appr
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:28
 */

@Data
public class NonlocalVesselOwner {
    private Integer id_;
    private String tenant_code_;
    private String address_;
    private String contact_number_;
    private String id_card_;
    private String insert_man_;
    private Date insert_time_;
    private String name_;
    private String note_;
    private String permanent_address_;
    private String update_man_;
    private Date update_time_;
    private Integer nonlocal_vessel_;

    public NonlocalVesselOwner() {
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

    public String getAddress_() {
        return address_;
    }

    public void setAddress_(String address_) {
        this.address_ = address_;
    }

    public String getContact_number_() {
        return contact_number_;
    }

    public void setContact_number_(String contact_number_) {
        this.contact_number_ = contact_number_;
    }

    public String getId_card_() {
        return id_card_;
    }

    public void setId_card_(String id_card_) {
        this.id_card_ = id_card_;
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

    public String getPermanent_address_() {
        return permanent_address_;
    }

    public void setPermanent_address_(String permanent_address_) {
        this.permanent_address_ = permanent_address_;
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

    public Integer getNonlocal_vessel_() {
        return nonlocal_vessel_;
    }

    public void setNonlocal_vessel_(Integer nonlocal_vessel_) {
        this.nonlocal_vessel_ = nonlocal_vessel_;
    }
}

