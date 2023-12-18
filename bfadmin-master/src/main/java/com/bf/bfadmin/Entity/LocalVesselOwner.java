package com.bf.bfadmin.Entity;

import lombok.Data;

import java.util.Date;
/**
 * 
 * 本地船舶拥有者实体类
 * bfdata_local_vessel_owner
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:26 
 */

@Data
public class LocalVesselOwner {
    private int id_;
    private String tenant_code_;
    private String address_;
    private String id_card_;
    private String insert_man_;
    private Date insert_time_;
    private String landing_tel_;
    private boolean main_owner_;
    private String mobile_tel_;
    private String name_;
    private String note_;
    private String place_of_origin_;
    private String update_man_;
    private Date update_time_;
    private int local_vessel_;

    public LocalVesselOwner() {
    }

    public int getId_() {
        return id_;
    }

    public void setId_(int id_) {
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

    public String getLanding_tel_() {
        return landing_tel_;
    }

    public void setLanding_tel_(String landing_tel_) {
        this.landing_tel_ = landing_tel_;
    }

    public boolean isMain_owner_() {
        return main_owner_;
    }

    public void setMain_owner_(boolean main_owner_) {
        this.main_owner_ = main_owner_;
    }

    public String getMobile_tel_() {
        return mobile_tel_;
    }

    public void setMobile_tel_(String mobile_tel_) {
        this.mobile_tel_ = mobile_tel_;
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

    public String getPlace_of_origin_() {
        return place_of_origin_;
    }

    public void setPlace_of_origin_(String place_of_origin_) {
        this.place_of_origin_ = place_of_origin_;
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

    public int getLocal_vessel_() {
        return local_vessel_;
    }

    public void setLocal_vessel_(int local_vessel_) {
        this.local_vessel_ = local_vessel_;
    }
}

