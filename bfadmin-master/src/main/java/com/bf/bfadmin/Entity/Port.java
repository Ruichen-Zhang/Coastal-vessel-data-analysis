package com.bf.bfadmin.Entity;

import lombok.Data;

import java.time.LocalDateTime;
/**
 * 
 * 港口实体类
 * bfdata_port
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:29 
 */

@Data
public class Port {
    private Integer id_;
    private String tenant_code_;
    private Integer access_service_;
    private Integer berths_;
    private String contact_;
    private Integer guard_num_;
    private String id_card_;
    private String insert_man_;
    private LocalDateTime insert_time_;
    private String introduction_;
    private String location_coordinate_;
    private String location_introduction_;
    private Integer monitor_quantity_;
    private Integer monitor_type_;
    private String name_;
    private String name_pin_yin_full_;
    private String name_pin_yin_initial_;
    private String note_;
    private String operator_;
    private String operator_id_card_;
    private String operator_per_addr_;
    private String operatorcontact_number_;
    private String other_port_nature_;
    private String other_port_type_;
    private String other_port_use_;
    private Integer perennial_berths_;
    private String permanent_address_;
    private String photo_;
    private String port_addr_;
    private Integer port_nature_;
    private String port_owner_;
    private Integer port_type_;
    private Integer port_use_;
    private String responsible_police_;
    private Integer risk_level_;
    private String smuggling_case_detail_;
    private Integer smuggling_cases_;
    private String update_man_;
    private LocalDateTime update_time_;
    private Integer border_unit_;
    private String record_police_;
    private Integer manage_unit_;
    private Integer is_recover_;

    public Port() {
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

    public Integer getAccess_service_() {
        return access_service_;
    }

    public void setAccess_service_(Integer access_service_) {
        this.access_service_ = access_service_;
    }

    public Integer getBerths_() {
        return berths_;
    }

    public void setBerths_(Integer berths_) {
        this.berths_ = berths_;
    }

    public String getContact_() {
        return contact_;
    }

    public void setContact_(String contact_) {
        this.contact_ = contact_;
    }

    public Integer getGuard_num_() {
        return guard_num_;
    }

    public void setGuard_num_(Integer guard_num_) {
        this.guard_num_ = guard_num_;
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

    public LocalDateTime getInsert_time_() {
        return insert_time_;
    }

    public void setInsert_time_(LocalDateTime insert_time_) {
        this.insert_time_ = insert_time_;
    }

    public String getIntroduction_() {
        return introduction_;
    }

    public void setIntroduction_(String introduction_) {
        this.introduction_ = introduction_;
    }

    public String getLocation_coordinate_() {
        return location_coordinate_;
    }

    public void setLocation_coordinate_(String location_coordinate_) {
        this.location_coordinate_ = location_coordinate_;
    }

    public String getLocation_introduction_() {
        return location_introduction_;
    }

    public void setLocation_introduction_(String location_introduction_) {
        this.location_introduction_ = location_introduction_;
    }

    public Integer getMonitor_quantity_() {
        return monitor_quantity_;
    }

    public void setMonitor_quantity_(Integer monitor_quantity_) {
        this.monitor_quantity_ = monitor_quantity_;
    }

    public Integer getMonitor_type_() {
        return monitor_type_;
    }

    public void setMonitor_type_(Integer monitor_type_) {
        this.monitor_type_ = monitor_type_;
    }

    public String getName_() {
        return name_;
    }

    public void setName_(String name_) {
        this.name_ = name_;
    }

    public String getName_pin_yin_full_() {
        return name_pin_yin_full_;
    }

    public void setName_pin_yin_full_(String name_pin_yin_full_) {
        this.name_pin_yin_full_ = name_pin_yin_full_;
    }

    public String getName_pin_yin_initial_() {
        return name_pin_yin_initial_;
    }

    public void setName_pin_yin_initial_(String name_pin_yin_initial_) {
        this.name_pin_yin_initial_ = name_pin_yin_initial_;
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

    public String getOperator_id_card_() {
        return operator_id_card_;
    }

    public void setOperator_id_card_(String operator_id_card_) {
        this.operator_id_card_ = operator_id_card_;
    }

    public String getOperator_per_addr_() {
        return operator_per_addr_;
    }

    public void setOperator_per_addr_(String operator_per_addr_) {
        this.operator_per_addr_ = operator_per_addr_;
    }

    public String getOperatorcontact_number_() {
        return operatorcontact_number_;
    }

    public void setOperatorcontact_number_(String operatorcontact_number_) {
        this.operatorcontact_number_ = operatorcontact_number_;
    }

    public String getOther_port_nature_() {
        return other_port_nature_;
    }

    public void setOther_port_nature_(String other_port_nature_) {
        this.other_port_nature_ = other_port_nature_;
    }

    public String getOther_port_type_() {
        return other_port_type_;
    }

    public void setOther_port_type_(String other_port_type_) {
        this.other_port_type_ = other_port_type_;
    }

    public String getOther_port_use_() {
        return other_port_use_;
    }

    public void setOther_port_use_(String other_port_use_) {
        this.other_port_use_ = other_port_use_;
    }

    public Integer getPerennial_berths_() {
        return perennial_berths_;
    }

    public void setPerennial_berths_(Integer perennial_berths_) {
        this.perennial_berths_ = perennial_berths_;
    }

    public String getPermanent_address_() {
        return permanent_address_;
    }

    public void setPermanent_address_(String permanent_address_) {
        this.permanent_address_ = permanent_address_;
    }

    public String getPhoto_() {
        return photo_;
    }

    public void setPhoto_(String photo_) {
        this.photo_ = photo_;
    }

    public String getPort_addr_() {
        return port_addr_;
    }

    public void setPort_addr_(String port_addr_) {
        this.port_addr_ = port_addr_;
    }

    public Integer getPort_nature_() {
        return port_nature_;
    }

    public void setPort_nature_(Integer port_nature_) {
        this.port_nature_ = port_nature_;
    }

    public String getPort_owner_() {
        return port_owner_;
    }

    public void setPort_owner_(String port_owner_) {
        this.port_owner_ = port_owner_;
    }

    public Integer getPort_type_() {
        return port_type_;
    }

    public void setPort_type_(Integer port_type_) {
        this.port_type_ = port_type_;
    }

    public Integer getPort_use_() {
        return port_use_;
    }

    public void setPort_use_(Integer port_use_) {
        this.port_use_ = port_use_;
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

    public String getSmuggling_case_detail_() {
        return smuggling_case_detail_;
    }

    public void setSmuggling_case_detail_(String smuggling_case_detail_) {
        this.smuggling_case_detail_ = smuggling_case_detail_;
    }

    public Integer getSmuggling_cases_() {
        return smuggling_cases_;
    }

    public void setSmuggling_cases_(Integer smuggling_cases_) {
        this.smuggling_cases_ = smuggling_cases_;
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

    public Integer getBorder_unit_() {
        return border_unit_;
    }

    public void setBorder_unit_(Integer border_unit_) {
        this.border_unit_ = border_unit_;
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

    public Integer getIs_recover_() {
        return is_recover_;
    }

    public void setIs_recover_(Integer is_recover_) {
        this.is_recover_ = is_recover_;
    }
}
