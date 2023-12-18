package com.bf.bfadmin.Entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
/**
 *
 * 本地船舶实体类
 * bfdata_local_vessel
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:25
 */

@Data
public class LocalVessel {
    private int id_;
    private String tenant_code_;
    private Date build_date_;
    private String builders_;
    private String person_in_charge_tel_;
    private String insert_man_;
    private Date insert_time_;
    private int local_vessel_type_;
    private String note_;
    private String operator_;
    private String operator_id_no_;
    private String operator_pre_addr_;
    private String operator_now_addr_;
    private String operator_tel_;
    private String other_vessel_material_;
    private String other_vessel_nature_;
    private String other_vessel_source_;
    private String other_vessel_use_;
    private String owner_port_;
    private String parking_addr_;
    private String person_in_charge_id_;
    private String person_in_charge_;
    private BigDecimal power_;
    private int rated_crew_;
    private String responsible_police_;
    private int risk_level_;
    private String sea_caurse_;
    private String shipping_company_;
    private BigDecimal speed_;
    private BigDecimal tonnage_;
    private String update_man_;
    private Date update_time_;
    private BigDecimal vessel_height_;
    private BigDecimal vessel_length_;
    private int vessel_material_;
    private String vessel_name_;
    private int vessel_nature_;
    private String vessel_photo_;
    private int vessel_source_;
    private int vessel_use_;
    private BigDecimal vessel_width_;
    private String work_area_;
    private int fishing_company_;
    private int foreign_fishing_;
    private int vessel_agency_;
    private String record_police_;
    private int manage_unit_;
    private int border_unit_;
    private int is_recover_;
    private String sate_phone_;

    public LocalVessel() {
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

    public Date getBuild_date_() {
        return build_date_;
    }

    public void setBuild_date_(Date build_date_) {
        this.build_date_ = build_date_;
    }

    public String getBuilders_() {
        return builders_;
    }

    public void setBuilders_(String builders_) {
        this.builders_ = builders_;
    }

    public String getPerson_in_charge_tel_() {
        return person_in_charge_tel_;
    }

    public void setPerson_in_charge_tel_(String person_in_charge_tel_) {
        this.person_in_charge_tel_ = person_in_charge_tel_;
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

    public int getLocal_vessel_type_() {
        return local_vessel_type_;
    }

    public void setLocal_vessel_type_(int local_vessel_type_) {
        this.local_vessel_type_ = local_vessel_type_;
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

    public String getOperator_id_no_() {
        return operator_id_no_;
    }

    public void setOperator_id_no_(String operator_id_no_) {
        this.operator_id_no_ = operator_id_no_;
    }

    public String getOperator_pre_addr_() {
        return operator_pre_addr_;
    }

    public void setOperator_pre_addr_(String operator_pre_addr_) {
        this.operator_pre_addr_ = operator_pre_addr_;
    }

    public String getOperator_now_addr_() {
        return operator_now_addr_;
    }

    public void setOperator_now_addr_(String operator_now_addr_) {
        this.operator_now_addr_ = operator_now_addr_;
    }

    public String getOperator_tel_() {
        return operator_tel_;
    }

    public void setOperator_tel_(String operator_tel_) {
        this.operator_tel_ = operator_tel_;
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

    public String getParking_addr_() {
        return parking_addr_;
    }

    public void setParking_addr_(String parking_addr_) {
        this.parking_addr_ = parking_addr_;
    }

    public String getPerson_in_charge_id_() {
        return person_in_charge_id_;
    }

    public void setPerson_in_charge_id_(String person_in_charge_id_) {
        this.person_in_charge_id_ = person_in_charge_id_;
    }

    public String getPerson_in_charge_() {
        return person_in_charge_;
    }

    public void setPerson_in_charge_(String person_in_charge_) {
        this.person_in_charge_ = person_in_charge_;
    }

    public BigDecimal getPower_() {
        return power_;
    }

    public void setPower_(BigDecimal power_) {
        this.power_ = power_;
    }

    public int getRated_crew_() {
        return rated_crew_;
    }

    public void setRated_crew_(int rated_crew_) {
        this.rated_crew_ = rated_crew_;
    }

    public String getResponsible_police_() {
        return responsible_police_;
    }

    public void setResponsible_police_(String responsible_police_) {
        this.responsible_police_ = responsible_police_;
    }

    public int getRisk_level_() {
        return risk_level_;
    }

    public void setRisk_level_(int risk_level_) {
        this.risk_level_ = risk_level_;
    }

    public String getSea_caurse_() {
        return sea_caurse_;
    }

    public void setSea_caurse_(String sea_caurse_) {
        this.sea_caurse_ = sea_caurse_;
    }

    public String getShipping_company_() {
        return shipping_company_;
    }

    public void setShipping_company_(String shipping_company_) {
        this.shipping_company_ = shipping_company_;
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

    public Date getUpdate_time_() {
        return update_time_;
    }

    public void setUpdate_time_(Date update_time_) {
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

    public int getVessel_material_() {
        return vessel_material_;
    }

    public void setVessel_material_(int vessel_material_) {
        this.vessel_material_ = vessel_material_;
    }

    public String getVessel_name_() {
        return vessel_name_;
    }

    public void setVessel_name_(String vessel_name_) {
        this.vessel_name_ = vessel_name_;
    }

    public int getVessel_nature_() {
        return vessel_nature_;
    }

    public void setVessel_nature_(int vessel_nature_) {
        this.vessel_nature_ = vessel_nature_;
    }

    public String getVessel_photo_() {
        return vessel_photo_;
    }

    public void setVessel_photo_(String vessel_photo_) {
        this.vessel_photo_ = vessel_photo_;
    }

    public int getVessel_source_() {
        return vessel_source_;
    }

    public void setVessel_source_(int vessel_source_) {
        this.vessel_source_ = vessel_source_;
    }

    public int getVessel_use_() {
        return vessel_use_;
    }

    public void setVessel_use_(int vessel_use_) {
        this.vessel_use_ = vessel_use_;
    }

    public BigDecimal getVessel_width_() {
        return vessel_width_;
    }

    public void setVessel_width_(BigDecimal vessel_width_) {
        this.vessel_width_ = vessel_width_;
    }

    public String getWork_area_() {
        return work_area_;
    }

    public void setWork_area_(String work_area_) {
        this.work_area_ = work_area_;
    }

    public int getFishing_company_() {
        return fishing_company_;
    }

    public void setFishing_company_(int fishing_company_) {
        this.fishing_company_ = fishing_company_;
    }

    public int getForeign_fishing_() {
        return foreign_fishing_;
    }

    public void setForeign_fishing_(int foreign_fishing_) {
        this.foreign_fishing_ = foreign_fishing_;
    }

    public int getVessel_agency_() {
        return vessel_agency_;
    }

    public void setVessel_agency_(int vessel_agency_) {
        this.vessel_agency_ = vessel_agency_;
    }

    public String getRecord_police_() {
        return record_police_;
    }

    public void setRecord_police_(String record_police_) {
        this.record_police_ = record_police_;
    }

    public int getManage_unit_() {
        return manage_unit_;
    }

    public void setManage_unit_(int manage_unit_) {
        this.manage_unit_ = manage_unit_;
    }

    public int getBorder_unit_() {
        return border_unit_;
    }

    public void setBorder_unit_(int border_unit_) {
        this.border_unit_ = border_unit_;
    }

    public int getIs_recover_() {
        return is_recover_;
    }

    public void setIs_recover_(int is_recover_) {
        this.is_recover_ = is_recover_;
    }

    public String getSate_phone_() {
        return sate_phone_;
    }

    public void setSate_phone_(String sate_phone_) {
        this.sate_phone_ = sate_phone_;
    }
}

