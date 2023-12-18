package com.bf.bfadmin.Entity;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
/**
 *
 * 无证船舶实体类
 * bfdata_non_certified_vessel
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:27
 */

@Data
public class NonCertifiedVessel {
    private Integer id_;
    private String tenant_code_;
    private LocalDateTime build_date_;
    private String builders_;
    private String insert_man_;
    private LocalDateTime insert_time_;
    private String note_;
    private String other_vessel_material_;
    private String other_vessel_nature_;
    private String other_vessel_source_;
    private String other_vessel_use_;
    private String owner_;
    private String owner_addr_;
    private String owner_id_no_;
    private String owner_port_;
    private String owner_tel_;
    private String parking_addr_;
    private BigDecimal power_;
    private Integer risk_level_;
    private BigDecimal speed_;
    private BigDecimal tonnage_;
    private String update_man_;
    private LocalDateTime update_time_;
    private BigDecimal vessel_height_;
    private BigDecimal vessel_length_;
    private Integer vessel_material_;
    private String vessel_name_;
    private Integer vessel_nature_;
    private String vessel_photo_;
    private Integer vessel_source_;
    private Integer vessel_use_;
    private BigDecimal vessel_width_;
    private String record_police_;
    private String responsible_police_;
    private Integer manage_unit_;
    private Integer border_unit_;
    private Integer fishing_company_;
    private Integer is_recover_;
    private BigDecimal power2_;

    public NonCertifiedVessel() {
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

    public LocalDateTime getBuild_date_() {
        return build_date_;
    }

    public void setBuild_date_(LocalDateTime build_date_) {
        this.build_date_ = build_date_;
    }

    public String getBuilders_() {
        return builders_;
    }

    public void setBuilders_(String builders_) {
        this.builders_ = builders_;
    }

    public String getInsert_man_() {
        return insert_man_;
    }

    public void setInsert_man_(String insert_man_) {
        this.insert_man_ = insert_man_;
    }

    public LocalDateTime getInsert_time_() {
        return insert_time_;
    }

    public void setInsert_time_(LocalDateTime insert_time_) {
        this.insert_time_ = insert_time_;
    }

    public String getNote_() {
        return note_;
    }

    public void setNote_(String note_) {
        this.note_ = note_;
    }

    public String getOther_vessel_material_() {
        return other_vessel_material_;
    }

    public void setOther_vessel_material_(String other_vessel_material_) {
        this.other_vessel_material_ = other_vessel_material_;
    }

    public String getOther_vessel_nature_() {
        return other_vessel_nature_;
    }

    public void setOther_vessel_nature_(String other_vessel_nature_) {
        this.other_vessel_nature_ = other_vessel_nature_;
    }

    public String getOther_vessel_source_() {
        return other_vessel_source_;
    }

    public void setOther_vessel_source_(String other_vessel_source_) {
        this.other_vessel_source_ = other_vessel_source_;
    }

    public String getOther_vessel_use_() {
        return other_vessel_use_;
    }

    public void setOther_vessel_use_(String other_vessel_use_) {
        this.other_vessel_use_ = other_vessel_use_;
    }

    public String getOwner_() {
        return owner_;
    }

    public void setOwner_(String owner_) {
        this.owner_ = owner_;
    }

    public String getOwner_addr_() {
        return owner_addr_;
    }

    public void setOwner_addr_(String owner_addr_) {
        this.owner_addr_ = owner_addr_;
    }

    public String getOwner_id_no_() {
        return owner_id_no_;
    }

    public void setOwner_id_no_(String owner_id_no_) {
        this.owner_id_no_ = owner_id_no_;
    }

    public String getOwner_port_() {
        return owner_port_;
    }

    public void setOwner_port_(String owner_port_) {
        this.owner_port_ = owner_port_;
    }

    public String getOwner_tel_() {
        return owner_tel_;
    }

    public void setOwner_tel_(String owner_tel_) {
        this.owner_tel_ = owner_tel_;
    }

    public String getParking_addr_() {
        return parking_addr_;
    }

    public void setParking_addr_(String parking_addr_) {
        this.parking_addr_ = parking_addr_;
    }

    public BigDecimal getPower_() {
        return power_;
    }

    public void setPower_(BigDecimal power_) {
        this.power_ = power_;
    }

    public Integer getRisk_level_() {
        return risk_level_;
    }

    public void setRisk_level_(Integer risk_level_) {
        this.risk_level_ = risk_level_;
    }

    public BigDecimal getSpeed_() {
        return speed_;
    }

    public void setSpeed_(BigDecimal speed_) {
        this.speed_ = speed_;
    }

    public BigDecimal getTonnage_() {
        return tonnage_;
    }

    public void setTonnage_(BigDecimal tonnage_) {
        this.tonnage_ = tonnage_;
    }

    public String getUpdate_man_() {
        return update_man_;
    }

    public void setUpdate_man_(String update_man_) {
        this.update_man_ = update_man_;
    }

    public LocalDateTime getUpdate_time_() {
        return update_time_;
    }

    public void setUpdate_time_(LocalDateTime update_time_) {
        this.update_time_ = update_time_;
    }

    public BigDecimal getVessel_height_() {
        return vessel_height_;
    }

    public void setVessel_height_(BigDecimal vessel_height_) {
        this.vessel_height_ = vessel_height_;
    }

    public BigDecimal getVessel_length_() {
        return vessel_length_;
    }

    public void setVessel_length_(BigDecimal vessel_length_) {
        this.vessel_length_ = vessel_length_;
    }

    public Integer getVessel_material_() {
        return vessel_material_;
    }

    public void setVessel_material_(Integer vessel_material_) {
        this.vessel_material_ = vessel_material_;
    }

    public String getVessel_name_() {
        return vessel_name_;
    }

    public void setVessel_name_(String vessel_name_) {
        this.vessel_name_ = vessel_name_;
    }

    public Integer getVessel_nature_() {
        return vessel_nature_;
    }

    public void setVessel_nature_(Integer vessel_nature_) {
        this.vessel_nature_ = vessel_nature_;
    }

    public String getVessel_photo_() {
        return vessel_photo_;
    }

    public void setVessel_photo_(String vessel_photo_) {
        this.vessel_photo_ = vessel_photo_;
    }

    public Integer getVessel_source_() {
        return vessel_source_;
    }

    public void setVessel_source_(Integer vessel_source_) {
        this.vessel_source_ = vessel_source_;
    }

    public Integer getVessel_use_() {
        return vessel_use_;
    }

    public void setVessel_use_(Integer vessel_use_) {
        this.vessel_use_ = vessel_use_;
    }

    public BigDecimal getVessel_width_() {
        return vessel_width_;
    }

    public void setVessel_width_(BigDecimal vessel_width_) {
        this.vessel_width_ = vessel_width_;
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

    public Integer getFishing_company_() {
        return fishing_company_;
    }

    public void setFishing_company_(Integer fishing_company_) {
        this.fishing_company_ = fishing_company_;
    }

    public Integer getIs_recover_() {
        return is_recover_;
    }

    public void setIs_recover_(Integer is_recover_) {
        this.is_recover_ = is_recover_;
    }

    public BigDecimal getPower2_() {
        return power2_;
    }

    public void setPower2_(BigDecimal power2_) {
        this.power2_ = power2_;
    }
}
