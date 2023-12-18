package com.bf.bfadmin.Entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 *
 * 外地船舶实体类
 * bfdata_nonlocal_vessel
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:27
 */

@Data
public class NonlocalVessel {
    private int id_;
    private String tenant_code_;
    private String captain_;
    private String captain_addr_;
    private String captain_contact_number_;
    private String captain_id_card_;
    private String captain_per_addr_;
    private String insert_man_;
    private Date insert_time_;
    private String note_;
    private String other_vessel_material_;
    private String other_vessel_nature_;
    private String other_vessel_source_;
    private String other_vessel_use_;
    private String owner_port_;
    private BigDecimal power_;
    private Integer risk_level_;
    private String ship_booklet_no_;
    private String update_man_;
    private Date update_time_;
    private Integer vessel_material_;
    private String vessel_name_;
    private Integer vessel_nature_;
    private String vessel_photo_;
    private Integer vessel_source_;
    private Integer vessel_use_;
    private Integer affiliated_area_;
    private Integer foreign_fishing_;
    private Integer vessel_agency_;
    private String responsible_police_;
    private String record_police_;
    private Integer manage_unit_;
    private Integer border_unit_;
    private String owner_port_unit_;
    private Integer is_recover_;
    private Integer fishing_company_;
    private String sate_phone_;

    public NonlocalVessel() {
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

    public String getCaptain_() {
        return captain_;
    }

    public void setCaptain_(String captain_) {
        this.captain_ = captain_;
    }

    public String getCaptain_addr_() {
        return captain_addr_;
    }

    public void setCaptain_addr_(String captain_addr_) {
        this.captain_addr_ = captain_addr_;
    }

    public String getCaptain_contact_number_() {
        return captain_contact_number_;
    }

    public void setCaptain_contact_number_(String captain_contact_number_) {
        this.captain_contact_number_ = captain_contact_number_;
    }

    public String getCaptain_id_card_() {
        return captain_id_card_;
    }

    public void setCaptain_id_card_(String captain_id_card_) {
        this.captain_id_card_ = captain_id_card_;
    }

    public String getCaptain_per_addr_() {
        return captain_per_addr_;
    }

    public void setCaptain_per_addr_(String captain_per_addr_) {
        this.captain_per_addr_ = captain_per_addr_;
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

    public String getOwner_port_() {
        return owner_port_;
    }

    public void setOwner_port_(String owner_port_) {
        this.owner_port_ = owner_port_;
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

    public String getShip_booklet_no_() {
        return ship_booklet_no_;
    }

    public void setShip_booklet_no_(String ship_booklet_no_) {
        this.ship_booklet_no_ = ship_booklet_no_;
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

    public Integer getAffiliated_area_() {
        return affiliated_area_;
    }

    public void setAffiliated_area_(Integer affiliated_area_) {
        this.affiliated_area_ = affiliated_area_;
    }

    public Integer getForeign_fishing_() {
        return foreign_fishing_;
    }

    public void setForeign_fishing_(Integer foreign_fishing_) {
        this.foreign_fishing_ = foreign_fishing_;
    }

    public Integer getVessel_agency_() {
        return vessel_agency_;
    }

    public void setVessel_agency_(Integer vessel_agency_) {
        this.vessel_agency_ = vessel_agency_;
    }

    public String getResponsible_police_() {
        return responsible_police_;
    }

    public void setResponsible_police_(String responsible_police_) {
        this.responsible_police_ = responsible_police_;
    }

    public String getRecord_police_() {
        return record_police_;
    }

    public void setRecord_police_(String record_police_) {
        this.record_police_ = record_police_;
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

    public String getOwner_port_unit_() {
        return owner_port_unit_;
    }

    public void setOwner_port_unit_(String owner_port_unit_) {
        this.owner_port_unit_ = owner_port_unit_;
    }

    public Integer getIs_recover_() {
        return is_recover_;
    }

    public void setIs_recover_(Integer is_recover_) {
        this.is_recover_ = is_recover_;
    }

    public Integer getFishing_company_() {
        return fishing_company_;
    }

    public void setFishing_company_(Integer fishing_company_) {
        this.fishing_company_ = fishing_company_;
    }

    public String getSate_phone_() {
        return sate_phone_;
    }

    public void setSate_phone_(String sate_phone_) {
        this.sate_phone_ = sate_phone_;
    }
}
