package com.bf.bfadmin.Entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
/**
 *
 * 本地船舶待审核实体类
 * bfdata_local_vessel_appr
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:26
 */

@Data
public class LocalVesselAppr {

    private int id_;
    private String approve_status_;
    private Date build_date_;
    private String builders_;
    private String contact_number_;
    private String dsj_id_;
    private String insert_man_;
    private Date insert_time_;
    private Integer local_vessel_type_;
    private String note_;
    private String operator_;
    private String operator_id_no_;
    private String operator_now_addr_;
    private String operator_pre_addr_;
    private String operator_tel_;
    private String other_vessel_material_;
    private String other_vessel_nature_;
    private String other_vessel_source_;
    private String other_vessel_use_;
    private String owner_port_;
    private String parking_addr_;
    private String person_in_charge_;
    private String person_in_charge_id_;
    private String person_in_charge_tel_;
    private BigDecimal power_;
    private Integer rated_crew_;
    private String record_police_;
    private String responsible_police_;
    private Integer risk_level_;
    private String sate_phone_;
    private String sea_caurse_;
    private String shipping_company_;
    private BigDecimal speed_;
    private String submit_id_;
    private String submit_name_;
    private Date submit_time_;
    private BigDecimal tonnage_;
    private String update_man_;
    private Date update_time_;
    private BigDecimal vessel_height_;
    private BigDecimal vessel_length_;
    private Integer vessel_material_;
    private String vessel_name_;
    private Integer vessel_nature_;
    private String vessel_photo_;
    private Integer vessel_source_;
    private Integer vessel_use_;
    private BigDecimal vessel_width_;
    private String wjw_id_;
    private String work_area_;
    private Integer border_unit_;
    private Integer fishing_company_;
    private Integer foreign_fishing_;
    private Integer manage_unit_;
    private Integer vessel_agency_;

    public LocalVesselAppr() {
    }

    //省略 setter 和 getter

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

    public String getContact_number_() {
        return contact_number_;
    }

    public void setContact_number_(String contact_number_) {
        this.contact_number_ = contact_number_;
    }

    public String getDsj_id_() {
        return dsj_id_;
    }

    public void setDsj_id_(String dsj_id_) {
        this.dsj_id_ = dsj_id_;
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

    public Integer getLocal_vessel_type_() {
        return local_vessel_type_;
    }

    public void setLocal_vessel_type_(Integer local_vessel_type_) {
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

    public String getOperator_now_addr_() {
        return operator_now_addr_;
    }

    public void setOperator_now_addr_(String operator_now_addr_) {
        this.operator_now_addr_ = operator_now_addr_;
    }

    public String getOperator_pre_addr_() {
        return operator_pre_addr_;
    }

    public void setOperator_pre_addr_(String operator_pre_addr_) {
        this.operator_pre_addr_ = operator_pre_addr_;
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

    public String getPerson_in_charge_() {
        return person_in_charge_;
    }

    public void setPerson_in_charge_(String person_in_charge_) {
        this.person_in_charge_ = person_in_charge_;
    }

    public String getPerson_in_charge_id_() {
        return person_in_charge_id_;
    }

    public void setPerson_in_charge_id_(String person_in_charge_id_) {
        this.person_in_charge_id_ = person_in_charge_id_;
    }

    public String getPerson_in_charge_tel_() {
        return person_in_charge_tel_;
    }

    public void setPerson_in_charge_tel_(String person_in_charge_tel_) {
        this.person_in_charge_tel_ = person_in_charge_tel_;
    }

    public BigDecimal getPower_() {
        return power_;
    }

    public void setPower_(BigDecimal power_) {
        this.power_ = power_;
    }

    public Integer getRated_crew_() {
        return rated_crew_;
    }

    public void setRated_crew_(Integer rated_crew_) {
        this.rated_crew_ = rated_crew_;
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

    public Integer getRisk_level_() {
        return risk_level_;
    }

    public void setRisk_level_(Integer risk_level_) {
        this.risk_level_ = risk_level_;
    }

    public String getSate_phone_() {
        return sate_phone_;
    }

    public void setSate_phone_(String sate_phone_) {
        this.sate_phone_ = sate_phone_;
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

    public String getWjw_id_() {
        return wjw_id_;
    }

    public void setWjw_id_(String wjw_id_) {
        this.wjw_id_ = wjw_id_;
    }

    public String getWork_area_() {
        return work_area_;
    }

    public void setWork_area_(String work_area_) {
        this.work_area_ = work_area_;
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

    public Integer getForeign_fishing_() {
        return foreign_fishing_;
    }

    public void setForeign_fishing_(Integer foreign_fishing_) {
        this.foreign_fishing_ = foreign_fishing_;
    }

    public Integer getManage_unit_() {
        return manage_unit_;
    }

    public void setManage_unit_(Integer manage_unit_) {
        this.manage_unit_ = manage_unit_;
    }

    public Integer getVessel_agency_() {
        return vessel_agency_;
    }

    public void setVessel_agency_(Integer vessel_agency_) {
        this.vessel_agency_ = vessel_agency_;
    }
}
