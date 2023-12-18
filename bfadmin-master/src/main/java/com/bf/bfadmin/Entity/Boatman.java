package com.bf.bfadmin.Entity;

import lombok.Data;

import java.util.Date;
/**
 *
 * 船员实体类
 * bfdata_boatman
 *
 * @author SDU Wang Yishuo
 * @date 2023/4/17 22:24
 */

@Data
public class Boatman {
    private int id_;
    private String tenant_code_;
    private String addr_;
    private Date birthday_;
    private String boater_certificate_no_;
    private int duties_;
    private int education_degree_;
    private Date effective_date_end_;
    private Date effective_date_start_;
    private String family_id_no_;
    private String family_name_;
    private String family_occupation_;
    private String family_relationship_;
    private String family_tel_;
    private int gender_;
    private String household_register_addr_;
    private String id_card_photo_;
    private String id_no_;
    private String import_note_;
    private String insert_man_;
    private Date insert_time_;
    private Date issue_date_;
    private String name_;
    private int nation_;
    private String note_;
    private Date permit_date_;
    private int political_status_;
    private int regional_property_;
    private String subordinate_vessel_;
    private String telephone_;
    private String update_man_;
    private Date update_time_;
    private int vessel_;
    private String record_police_;
    private String responsible_police_;
    private int manage_unit_;
    private int border_unit_;
    private int non_local_vessel_;
    private int is_recover_;
    private String crime_check_;
    private Date refresh_time_;
    private int id_no_check_;

    public Boatman() {
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

    public String getAddr_() {
        return addr_;
    }

    public void setAddr_(String addr_) {
        this.addr_ = addr_;
    }

    public Date getBirthday_() {
        return birthday_;
    }

    public void setBirthday_(Date birthday_) {
        this.birthday_ = birthday_;
    }

    public String getBoater_certificate_no_() {
        return boater_certificate_no_;
    }

    public void setBoater_certificate_no_(String boater_certificate_no_) {
        this.boater_certificate_no_ = boater_certificate_no_;
    }

    public int getDuties_() {
        return duties_;
    }

    public void setDuties_(int duties_) {
        this.duties_ = duties_;
    }

    public int getEducation_degree_() {
        return education_degree_;
    }

    public void setEducation_degree_(int education_degree_) {
        this.education_degree_ = education_degree_;
    }

    public Date getEffective_date_end_() {
        return effective_date_end_;
    }

    public void setEffective_date_end_(Date effective_date_end_) {
        this.effective_date_end_ = effective_date_end_;
    }

    public Date getEffective_date_start_() {
        return effective_date_start_;
    }

    public void setEffective_date_start_(Date effective_date_start_) {
        this.effective_date_start_ = effective_date_start_;
    }

    public String getFamily_id_no_() {
        return family_id_no_;
    }

    public void setFamily_id_no_(String family_id_no_) {
        this.family_id_no_ = family_id_no_;
    }

    public String getFamily_name_() {
        return family_name_;
    }

    public void setFamily_name_(String family_name_) {
        this.family_name_ = family_name_;
    }

    public String getFamily_occupation_() {
        return family_occupation_;
    }

    public void setFamily_occupation_(String family_occupation_) {
        this.family_occupation_ = family_occupation_;
    }

    public String getFamily_relationship_() {
        return family_relationship_;
    }

    public void setFamily_relationship_(String family_relationship_) {
        this.family_relationship_ = family_relationship_;
    }

    public String getFamily_tel_() {
        return family_tel_;
    }

    public void setFamily_tel_(String family_tel_) {
        this.family_tel_ = family_tel_;
    }

    public int getGender_() {
        return gender_;
    }

    public void setGender_(int gender_) {
        this.gender_ = gender_;
    }

    public String getHousehold_register_addr_() {
        return household_register_addr_;
    }

    public void setHousehold_register_addr_(String household_register_addr_) {
        this.household_register_addr_ = household_register_addr_;
    }

    public String getId_card_photo_() {
        return id_card_photo_;
    }

    public void setId_card_photo_(String id_card_photo_) {
        this.id_card_photo_ = id_card_photo_;
    }

    public String getId_no_() {
        return id_no_;
    }

    public void setId_no_(String id_no_) {
        this.id_no_ = id_no_;
    }

    public String getImport_note_() {
        return import_note_;
    }

    public void setImport_note_(String import_note_) {
        this.import_note_ = import_note_;
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

    public Date getIssue_date_() {
        return issue_date_;
    }

    public void setIssue_date_(Date issue_date_) {
        this.issue_date_ = issue_date_;
    }

    public String getName_() {
        return name_;
    }

    public void setName_(String name_) {
        this.name_ = name_;
    }

    public int getNation_() {
        return nation_;
    }

    public void setNation_(int nation_) {
        this.nation_ = nation_;
    }

    public String getNote_() {
        return note_;
    }

    public void setNote_(String note_) {
        this.note_ = note_;
    }

    public Date getPermit_date_() {
        return permit_date_;
    }

    public void setPermit_date_(Date permit_date_) {
        this.permit_date_ = permit_date_;
    }

    public int getPolitical_status_() {
        return political_status_;
    }

    public void setPolitical_status_(int political_status_) {
        this.political_status_ = political_status_;
    }

    public int getRegional_property_() {
        return regional_property_;
    }

    public void setRegional_property_(int regional_property_) {
        this.regional_property_ = regional_property_;
    }

    public String getSubordinate_vessel_() {
        return subordinate_vessel_;
    }

    public void setSubordinate_vessel_(String subordinate_vessel_) {
        this.subordinate_vessel_ = subordinate_vessel_;
    }

    public String getTelephone_() {
        return telephone_;
    }

    public void setTelephone_(String telephone_) {
        this.telephone_ = telephone_;
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

    public int getVessel_() {
        return vessel_;
    }

    public void setVessel_(int vessel_) {
        this.vessel_ = vessel_;
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

    public int getNon_local_vessel_() {
        return non_local_vessel_;
    }

    public void setNon_local_vessel_(int non_local_vessel_) {
        this.non_local_vessel_ = non_local_vessel_;
    }

    public int getIs_recover_() {
        return is_recover_;
    }

    public void setIs_recover_(int is_recover_) {
        this.is_recover_ = is_recover_;
    }

    public String getCrime_check_() {
        return crime_check_;
    }

    public void setCrime_check_(String crime_check_) {
        this.crime_check_ = crime_check_;
    }

    public Date getRefresh_time_() {
        return refresh_time_;
    }

    public void setRefresh_time_(Date refresh_time_) {
        this.refresh_time_ = refresh_time_;
    }

    public int getId_no_check_() {
        return id_no_check_;
    }

    public void setId_no_check_(int id_no_check_) {
        this.id_no_check_ = id_no_check_;
    }
}
