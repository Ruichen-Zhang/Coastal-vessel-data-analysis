/*
Navicat MySQL Data Transfer

Source Server         : bfdata
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : bfdata

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2023-03-29 14:15:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bfdata_affiliated_area
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_affiliated_area`;
CREATE TABLE `bfdata_affiliated_area` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `area_type_` int(11) DEFAULT NULL,
  `display_order_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `parent_id_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_affiliated_area_copy
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_affiliated_area_copy`;
CREATE TABLE `bfdata_affiliated_area_copy` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `area_type_` int(11) DEFAULT NULL,
  `display_order_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `parent_id_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_berthing_info
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_berthing_info`;
CREATE TABLE `bfdata_berthing_info` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `port_name_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `nonlocal_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_berthing_info_nonlocal_vessel_` (`nonlocal_vessel_`),
  KEY `FK_bfdata_berthing_info_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_berthing_info_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_berthing_info_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_boatman
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_boatman`;
CREATE TABLE `bfdata_boatman` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `addr_` varchar(500) DEFAULT NULL,
  `birthday_` datetime DEFAULT NULL,
  `boater_certificate_no_` varchar(50) DEFAULT NULL,
  `duties_` int(11) DEFAULT NULL,
  `education_degree_` int(11) DEFAULT NULL,
  `effective_date_end_` datetime DEFAULT NULL,
  `effective_date_start_` datetime DEFAULT NULL,
  `family_id_no_` varchar(50) DEFAULT NULL,
  `family_name_` varchar(50) DEFAULT NULL,
  `family_occupation_` varchar(50) DEFAULT NULL,
  `family_relationship_` varchar(50) DEFAULT NULL,
  `family_tel_` varchar(50) DEFAULT NULL,
  `gender_` int(11) DEFAULT NULL,
  `household_register_addr_` varchar(500) DEFAULT NULL,
  `id_card_photo_` varchar(255) DEFAULT NULL,
  `id_no_` varchar(18) DEFAULT NULL,
  `import_note_` varchar(200) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `issue_date_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `nation_` int(11) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permit_date_` datetime DEFAULT NULL,
  `political_status_` int(11) DEFAULT NULL,
  `regional_property_` int(11) DEFAULT NULL,
  `subordinate_vessel_` varchar(50) DEFAULT NULL,
  `telephone_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `non_local_vessel_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  `crime_check_` varchar(50) DEFAULT NULL,
  `refresh_time_` datetime DEFAULT NULL,
  `id_no_check_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_boatman_vessel_` (`vessel_`),
  CONSTRAINT `FK_bfdata_boatman_vessel_` FOREIGN KEY (`vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_boatman_appr
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_boatman_appr`;
CREATE TABLE `bfdata_boatman_appr` (
  `id_` int(11) NOT NULL,
  `addr_` varchar(500) DEFAULT NULL,
  `approve_status_` varchar(10) DEFAULT NULL,
  `birthday_` datetime DEFAULT NULL,
  `boater_certificate_no_` varchar(50) DEFAULT NULL,
  `dsj_id_` varchar(50) DEFAULT NULL,
  `duties_` int(11) DEFAULT NULL,
  `education_degree_` int(11) DEFAULT NULL,
  `effective_date_end_` datetime DEFAULT NULL,
  `effective_date_start_` datetime DEFAULT NULL,
  `family_id_no_` varchar(1000) DEFAULT NULL,
  `family_name_` varchar(1000) DEFAULT NULL,
  `family_occupation_` varchar(1000) DEFAULT NULL,
  `family_relationship_` varchar(1000) DEFAULT NULL,
  `family_tel_` varchar(1000) DEFAULT NULL,
  `gender_` int(11) DEFAULT NULL,
  `household_register_addr_` varchar(500) DEFAULT NULL,
  `id_card_photo_` varchar(255) DEFAULT NULL,
  `id_no_` varchar(18) DEFAULT NULL,
  `import_note_` varchar(200) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `issue_date_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `nation_` int(11) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permit_date_` datetime DEFAULT NULL,
  `political_status_` int(11) DEFAULT NULL,
  `regional_property_` int(11) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `submit_id_` varchar(50) DEFAULT NULL,
  `submit_name_` varchar(50) DEFAULT NULL,
  `submit_time_` datetime DEFAULT NULL,
  `subordinate_vessel_` varchar(50) DEFAULT NULL,
  `telephone_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `wjw_id_` varchar(50) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `non_local_vessel_` int(11) DEFAULT NULL,
  `vessel_` int(11) DEFAULT NULL,
  `crime_check_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_boatman_appr_manage_unit_` (`manage_unit_`),
  KEY `FK_bfdata_boatman_appr_non_local_vessel_` (`non_local_vessel_`),
  KEY `FK_bfdata_boatman_appr_vessel_` (`vessel_`),
  CONSTRAINT `FK_bfdata_boatman_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_boatman_appr_non_local_vessel_` FOREIGN KEY (`non_local_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_boatman_appr_vessel_` FOREIGN KEY (`vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_boatman_his
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_boatman_his`;
CREATE TABLE `bfdata_boatman_his` (
  `id_` int(11) NOT NULL,
  `record_time_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `id_no_` varchar(50) DEFAULT NULL,
  `org_subordinate_vessel_` varchar(50) DEFAULT NULL,
  `new_subordinate_vessel_` varchar(50) DEFAULT NULL,
  `org_manage_unit_` int(11) DEFAULT NULL,
  `new_manage_unit_` int(11) DEFAULT NULL,
  `note_` varchar(255) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_data_mapping
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_data_mapping`;
CREATE TABLE `bfdata_data_mapping` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `data_mapping_` varchar(100) DEFAULT NULL,
  `data_type_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `third_data_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_fishing_company
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_fishing_company`;
CREATE TABLE `bfdata_fishing_company` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `company_address_` varchar(500) DEFAULT NULL,
  `company_type_` int(11) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `leg_per_addr_` varchar(500) DEFAULT NULL,
  `leg_per_id_card_` varchar(50) DEFAULT NULL,
  `leg_person_contact_` varchar(50) DEFAULT NULL,
  `legal_person_` varchar(100) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `opt4oce_ope_` varchar(100) DEFAULT NULL,
  `other_company_type_` varchar(100) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `res_man_contact_` varchar(50) DEFAULT NULL,
  `res_man_id_card_` varchar(50) DEFAULT NULL,
  `res_man_per_addr_` varchar(500) DEFAULT NULL,
  `responsible_man_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `scope_of_operation_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `is_border_` int(11) DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_fishing_company_manage_unit_` (`manage_unit_`),
  KEY `FK_bfdata_fishing_company_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_fishing_company_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_fishing_company_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_foreign_fishing
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_foreign_fishing`;
CREATE TABLE `bfdata_foreign_fishing` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `display_order_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_fun_project
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_fun_project`;
CREATE TABLE `bfdata_fun_project` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operatin_number_` int(11) DEFAULT NULL,
  `operating_conditions_` varchar(1000) DEFAULT NULL,
  `operator_` varchar(100) DEFAULT NULL,
  `operator_id_card_` varchar(50) DEFAULT NULL,
  `operator_per_addr_` varchar(500) DEFAULT NULL,
  `operatorcontact_number_` varchar(50) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `project_level_` int(11) DEFAULT NULL,
  `project_name_` varchar(100) DEFAULT NULL,
  `res_man_contact_` varchar(50) DEFAULT NULL,
  `res_man_id_card_` varchar(50) DEFAULT NULL,
  `res_man_per_addr_` varchar(500) DEFAULT NULL,
  `responsible_man_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `unit_addr_` varchar(500) DEFAULT NULL,
  `unit_name_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `is_border_` int(11) DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_fun_project_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_fun_project_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_involved_personne
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_involved_personne`;
CREATE TABLE `bfdata_involved_personne` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `id_card_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `involved_personal_type_` int(11) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `maritime_case_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_involved_personne_maritime_case_` (`maritime_case_`),
  CONSTRAINT `FK_bfdata_involved_personne_maritime_case_` FOREIGN KEY (`maritime_case_`) REFERENCES `bfdata_maritime_case` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_local_vessel
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_local_vessel`;
CREATE TABLE `bfdata_local_vessel` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `build_date_` datetime DEFAULT NULL,
  `builders_` varchar(100) DEFAULT NULL,
  `person_in_charge_tel_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `local_vessel_type_` int(11) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `operator_id_no_` varchar(18) DEFAULT NULL,
  `operator_pre_addr_` varchar(500) DEFAULT NULL,
  `operator_now_addr_` varchar(500) DEFAULT NULL,
  `operator_tel_` varchar(50) DEFAULT NULL,
  `other_vessel_material_` varchar(100) DEFAULT NULL,
  `other_vessel_nature_` varchar(100) DEFAULT NULL,
  `other_vessel_source_` varchar(100) DEFAULT NULL,
  `other_vessel_use_` varchar(100) DEFAULT NULL,
  `owner_port_` varchar(100) DEFAULT NULL,
  `parking_addr_` varchar(500) DEFAULT NULL,
  `person_in_charge_id_` varchar(30) DEFAULT NULL,
  `person_in_charge_` varchar(100) DEFAULT NULL,
  `power_` decimal(10,2) DEFAULT NULL,
  `rated_crew_` int(11) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `risk_level_` int(11) DEFAULT NULL,
  `sea_caurse_` varchar(500) DEFAULT NULL,
  `shipping_company_` varchar(50) DEFAULT NULL,
  `speed_` decimal(10,1) DEFAULT NULL,
  `tonnage_` decimal(10,1) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_height_` decimal(10,2) DEFAULT NULL,
  `vessel_length_` decimal(10,2) DEFAULT NULL,
  `vessel_material_` int(11) DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int(11) DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int(11) DEFAULT NULL,
  `vessel_use_` int(11) DEFAULT NULL,
  `vessel_width_` decimal(10,2) DEFAULT NULL,
  `work_area_` varchar(500) DEFAULT NULL,
  `fishing_company_` int(11) DEFAULT NULL,
  `foreign_fishing_` int(11) DEFAULT NULL,
  `vessel_agency_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  `sate_phone_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_local_vessel_foreign_fishing_` (`foreign_fishing_`),
  KEY `FK_bfdata_local_vessel_fishing_company_` (`fishing_company_`),
  KEY `FK_bfdata_local_vessel_vessel_agency_` (`vessel_agency_`),
  CONSTRAINT `FK_bfdata_local_vessel_fishing_company_` FOREIGN KEY (`fishing_company_`) REFERENCES `bfdata_fishing_company` (`id_`),
  CONSTRAINT `FK_bfdata_local_vessel_foreign_fishing_` FOREIGN KEY (`foreign_fishing_`) REFERENCES `bfdata_foreign_fishing` (`id_`),
  CONSTRAINT `FK_bfdata_local_vessel_vessel_agency_` FOREIGN KEY (`vessel_agency_`) REFERENCES `bfdata_vessel_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_local_vessel_appr
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_local_vessel_appr`;
CREATE TABLE `bfdata_local_vessel_appr` (
  `id_` int(11) NOT NULL,
  `approve_status_` varchar(10) DEFAULT NULL,
  `build_date_` datetime DEFAULT NULL,
  `builders_` varchar(100) DEFAULT NULL,
  `contact_number_` varchar(100) DEFAULT NULL,
  `dsj_id_` varchar(255) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `local_vessel_type_` int(11) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `operator_id_no_` varchar(18) DEFAULT NULL,
  `operator_now_addr_` varchar(500) DEFAULT NULL,
  `operator_pre_addr_` varchar(500) DEFAULT NULL,
  `operator_tel_` varchar(50) DEFAULT NULL,
  `other_vessel_material_` varchar(100) DEFAULT NULL,
  `other_vessel_nature_` varchar(100) DEFAULT NULL,
  `other_vessel_source_` varchar(100) DEFAULT NULL,
  `other_vessel_use_` varchar(100) DEFAULT NULL,
  `owner_port_` varchar(100) DEFAULT NULL,
  `parking_addr_` varchar(500) DEFAULT NULL,
  `person_in_charge_` varchar(100) DEFAULT NULL,
  `person_in_charge_id_` varchar(30) DEFAULT NULL,
  `person_in_charge_tel_` varchar(50) DEFAULT NULL,
  `power_` decimal(10,2) DEFAULT NULL,
  `rated_crew_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `risk_level_` int(11) DEFAULT NULL,
  `sate_phone_` varchar(100) DEFAULT NULL,
  `sea_caurse_` varchar(500) DEFAULT NULL,
  `shipping_company_` varchar(50) DEFAULT NULL,
  `speed_` decimal(10,1) DEFAULT NULL,
  `submit_id_` varchar(50) DEFAULT NULL,
  `submit_name_` varchar(50) DEFAULT NULL,
  `submit_time_` datetime DEFAULT NULL,
  `tonnage_` decimal(10,1) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_height_` decimal(10,2) DEFAULT NULL,
  `vessel_length_` decimal(10,2) DEFAULT NULL,
  `vessel_material_` int(11) DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int(11) DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int(11) DEFAULT NULL,
  `vessel_use_` int(11) DEFAULT NULL,
  `vessel_width_` decimal(10,2) DEFAULT NULL,
  `wjw_id_` varchar(255) DEFAULT NULL,
  `work_area_` varchar(500) DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `fishing_company_` int(11) DEFAULT NULL,
  `foreign_fishing_` int(11) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `vessel_agency_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_local_vessel_appr_fishing_company_` (`fishing_company_`),
  KEY `FK_bfdata_local_vessel_appr_border_unit_` (`border_unit_`),
  KEY `FK_bfdata_local_vessel_appr_vessel_agency_` (`vessel_agency_`),
  KEY `FK_bfdata_local_vessel_appr_manage_unit_` (`manage_unit_`),
  KEY `FK_bfdata_local_vessel_appr_foreign_fishing_` (`foreign_fishing_`),
  CONSTRAINT `FK_bfdata_local_vessel_appr_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_local_vessel_appr_fishing_company_` FOREIGN KEY (`fishing_company_`) REFERENCES `bfdata_fishing_company` (`id_`),
  CONSTRAINT `FK_bfdata_local_vessel_appr_foreign_fishing_` FOREIGN KEY (`foreign_fishing_`) REFERENCES `bfdata_foreign_fishing` (`id_`),
  CONSTRAINT `FK_bfdata_local_vessel_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_local_vessel_appr_vessel_agency_` FOREIGN KEY (`vessel_agency_`) REFERENCES `bfdata_vessel_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_local_vessel_owner
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_local_vessel_owner`;
CREATE TABLE `bfdata_local_vessel_owner` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `id_card_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `landing_tel_` varchar(100) DEFAULT NULL,
  `main_owner_` tinyint(1) DEFAULT '0',
  `mobile_tel_` varchar(100) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `place_of_origin_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `local_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_local_vessel_owner_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_local_vessel_owner_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_maritime_case
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_maritime_case`;
CREATE TABLE `bfdata_maritime_case` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `detail_` varchar(1000) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_type_` varchar(100) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_maritime_case_vessel_rela
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_maritime_case_vessel_rela`;
CREATE TABLE `bfdata_maritime_case_vessel_rela` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `local_vessel_` int(11) DEFAULT NULL,
  `maritime_case_` int(11) DEFAULT NULL,
  `non_certified_vessel_` int(11) DEFAULT NULL,
  `nonlocal_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_maritime_case_vessel_rela_local_vessel_` (`local_vessel_`),
  KEY `bfdata_maritime_case_vessel_rela_nonlocal_vessel_` (`nonlocal_vessel_`),
  KEY `bfdatamaritimecasevessel_relanon_certified_vessel_` (`non_certified_vessel_`),
  KEY `FK_bfdata_maritime_case_vessel_rela_maritime_case_` (`maritime_case_`),
  CONSTRAINT `FK_bfdata_maritime_case_vessel_rela_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_maritime_case_vessel_rela_maritime_case_` FOREIGN KEY (`maritime_case_`) REFERENCES `bfdata_maritime_case` (`id_`),
  CONSTRAINT `bfdata_maritime_case_vessel_rela_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`),
  CONSTRAINT `bfdatamaritimecasevessel_relanon_certified_vessel_` FOREIGN KEY (`non_certified_vessel_`) REFERENCES `bfdata_non_certified_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_nonlocal_vessel
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_nonlocal_vessel`;
CREATE TABLE `bfdata_nonlocal_vessel` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `captain_` varchar(100) DEFAULT NULL,
  `captain_addr_` varchar(500) DEFAULT NULL,
  `captain_contact_number_` varchar(50) DEFAULT NULL,
  `captain_id_card_` varchar(50) DEFAULT NULL,
  `captain_per_addr_` varchar(500) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_vessel_material_` varchar(100) DEFAULT NULL,
  `other_vessel_nature_` varchar(100) DEFAULT NULL,
  `other_vessel_source_` varchar(100) DEFAULT NULL,
  `other_vessel_use_` varchar(100) DEFAULT NULL,
  `owner_port_` varchar(100) DEFAULT NULL,
  `power_` decimal(10,2) DEFAULT NULL,
  `risk_level_` int(11) DEFAULT NULL,
  `ship_booklet_no_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_material_` int(11) DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int(11) DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int(11) DEFAULT NULL,
  `vessel_use_` int(11) DEFAULT NULL,
  `affiliated_area_` int(11) DEFAULT NULL,
  `foreign_fishing_` int(11) DEFAULT NULL,
  `vessel_agency_` int(11) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `owner_port_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  `fishing_company_` int(11) DEFAULT NULL,
  `sate_phone_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_nonlocal_vessel_affiliated_area_` (`affiliated_area_`),
  KEY `FK_bfdata_nonlocal_vessel_vessel_agency_` (`vessel_agency_`),
  KEY `FK_bfdata_nonlocal_vessel_foreign_fishing_` (`foreign_fishing_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_affiliated_area_` FOREIGN KEY (`affiliated_area_`) REFERENCES `bfdata_affiliated_area` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_foreign_fishing_` FOREIGN KEY (`foreign_fishing_`) REFERENCES `bfdata_foreign_fishing` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_vessel_agency_` FOREIGN KEY (`vessel_agency_`) REFERENCES `bfdata_vessel_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_nonlocal_vessel_appr
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_nonlocal_vessel_appr`;
CREATE TABLE `bfdata_nonlocal_vessel_appr` (
  `id_` int(11) NOT NULL,
  `approve_status_` varchar(10) DEFAULT NULL,
  `captain_` varchar(100) DEFAULT NULL,
  `captain_addr_` varchar(500) DEFAULT NULL,
  `captain_contact_number_` varchar(50) DEFAULT NULL,
  `captain_id_card_` varchar(50) DEFAULT NULL,
  `captain_per_addr_` varchar(500) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_vessel_material_` varchar(100) DEFAULT NULL,
  `other_vessel_nature_` varchar(100) DEFAULT NULL,
  `other_vessel_source_` varchar(100) DEFAULT NULL,
  `other_vessel_use_` varchar(100) DEFAULT NULL,
  `owner_port_` varchar(100) DEFAULT NULL,
  `owner_port_unit_` varchar(100) DEFAULT NULL,
  `power_` decimal(10,2) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `risk_level_` int(11) DEFAULT NULL,
  `sate_phone_` varchar(100) DEFAULT NULL,
  `ship_booklet_no_` varchar(50) DEFAULT NULL,
  `submit_id_` varchar(50) DEFAULT NULL,
  `submit_name_` varchar(50) DEFAULT NULL,
  `submit_time_` datetime DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_material_` int(11) DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int(11) DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int(11) DEFAULT NULL,
  `vessel_use_` int(11) DEFAULT NULL,
  `wjw_id_` varchar(255) DEFAULT NULL,
  `affiliated_area_` int(11) DEFAULT NULL,
  `foreign_fishing_` int(11) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `vessel_agency_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_nonlocal_vessel_appr_affiliated_area_` (`affiliated_area_`),
  KEY `FK_bfdata_nonlocal_vessel_appr_vessel_agency_` (`vessel_agency_`),
  KEY `FK_bfdata_nonlocal_vessel_appr_foreign_fishing_` (`foreign_fishing_`),
  KEY `FK_bfdata_nonlocal_vessel_appr_manage_unit_` (`manage_unit_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_appr_affiliated_area_` FOREIGN KEY (`affiliated_area_`) REFERENCES `bfdata_affiliated_area` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_appr_foreign_fishing_` FOREIGN KEY (`foreign_fishing_`) REFERENCES `bfdata_foreign_fishing` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_appr_vessel_agency_` FOREIGN KEY (`vessel_agency_`) REFERENCES `bfdata_vessel_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_nonlocal_vessel_operator
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_nonlocal_vessel_operator`;
CREATE TABLE `bfdata_nonlocal_vessel_operator` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `contact_number_` varchar(500) DEFAULT NULL,
  `id_card_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `nonlocal_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `bfdata_nonlocal_vessel_operator_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `bfdata_nonlocal_vessel_operator_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_nonlocal_vessel_owner
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_nonlocal_vessel_owner`;
CREATE TABLE `bfdata_nonlocal_vessel_owner` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `contact_number_` varchar(500) DEFAULT NULL,
  `id_card_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `nonlocal_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_nonlocal_vessel_owner_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_owner_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_non_certified_vessel
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_non_certified_vessel`;
CREATE TABLE `bfdata_non_certified_vessel` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `build_date_` datetime DEFAULT NULL,
  `builders_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_vessel_material_` varchar(100) DEFAULT NULL,
  `other_vessel_nature_` varchar(100) DEFAULT NULL,
  `other_vessel_source_` varchar(100) DEFAULT NULL,
  `other_vessel_use_` varchar(100) DEFAULT NULL,
  `owner_` varchar(50) DEFAULT NULL,
  `owner_addr_` varchar(500) DEFAULT NULL,
  `owner_id_no_` varchar(18) DEFAULT NULL,
  `owner_port_` varchar(100) DEFAULT NULL,
  `owner_tel_` varchar(50) DEFAULT NULL,
  `parking_addr_` varchar(500) DEFAULT NULL,
  `power_` decimal(10,2) DEFAULT NULL,
  `risk_level_` int(11) DEFAULT NULL,
  `speed_` decimal(10,2) DEFAULT NULL,
  `tonnage_` decimal(10,2) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_height_` decimal(10,2) DEFAULT NULL,
  `vessel_length_` decimal(10,2) DEFAULT NULL,
  `vessel_material_` int(11) DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int(11) DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int(11) DEFAULT NULL,
  `vessel_use_` int(11) DEFAULT NULL,
  `vessel_width_` decimal(10,2) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `fishing_company_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  `power2_` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_notified_unit
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_notified_unit`;
CREATE TABLE `bfdata_notified_unit` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `contact_man_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `time_` datetime DEFAULT NULL,
  `type_` varchar(100) DEFAULT NULL,
  `unit_name_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `non_certified_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_notified_unit_non_certified_vessel_` (`non_certified_vessel_`),
  CONSTRAINT `FK_bfdata_notified_unit_non_certified_vessel_` FOREIGN KEY (`non_certified_vessel_`) REFERENCES `bfdata_non_certified_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_operate_log`;
CREATE TABLE `bfdata_operate_log` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `ogin_name_` varchar(100) DEFAULT NULL,
  `operate_content_` varchar(200) DEFAULT NULL,
  `operate_time_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_port
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_port`;
CREATE TABLE `bfdata_port` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `access_service_` tinyint(1) DEFAULT '0',
  `berths_` int(11) DEFAULT NULL,
  `contact_` varchar(50) DEFAULT NULL,
  `guard_num_` int(11) DEFAULT NULL,
  `id_card_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `introduction_` varchar(500) DEFAULT NULL,
  `location_coordinate_` varchar(50) DEFAULT NULL,
  `location_introduction_` varchar(500) DEFAULT NULL,
  `monitor_quantity_` int(11) DEFAULT NULL,
  `monitor_type_` int(11) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `name_pin_yin_full_` varchar(200) DEFAULT NULL,
  `name_pin_yin_initial_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(100) DEFAULT NULL,
  `operator_id_card_` varchar(50) DEFAULT NULL,
  `operator_per_addr_` varchar(500) DEFAULT NULL,
  `operatorcontact_number_` varchar(50) DEFAULT NULL,
  `other_port_nature_` varchar(100) DEFAULT NULL,
  `other_port_type_` varchar(100) DEFAULT NULL,
  `other_port_use_` varchar(100) DEFAULT NULL,
  `perennial_berths_` int(11) DEFAULT NULL,
  `permanent_address_` varchar(50) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `port_addr_` varchar(500) DEFAULT NULL,
  `port_nature_` int(11) DEFAULT NULL,
  `port_owner_` varchar(50) DEFAULT NULL,
  `port_type_` int(11) DEFAULT NULL,
  `port_use_` int(11) DEFAULT NULL,
  `responsible_police_` varchar(50) DEFAULT NULL,
  `risk_level_` int(11) DEFAULT NULL,
  `smuggling_case_detail_` varchar(1000) DEFAULT NULL,
  `smuggling_cases_` tinyint(1) DEFAULT '0',
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_port_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_port_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_port_dispatch`;
CREATE TABLE `bfdata_port_dispatch` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `gender_` int(11) DEFAULT NULL,
  `id_card_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(200) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `port_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_dispatch_port_` (`port_`),
  KEY `FK_bfdata_port_dispatch_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_port_dispatch_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_port_dispatch_port_` FOREIGN KEY (`port_`) REFERENCES `bfdata_port` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_port_port_supply_rela
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_port_port_supply_rela`;
CREATE TABLE `bfdata_port_port_supply_rela` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `port_` int(11) DEFAULT NULL,
  `port_supply_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_port_supply_rela_port_` (`port_`),
  KEY `FK_bfdata_port_port_supply_rela_port_supply_` (`port_supply_`),
  CONSTRAINT `FK_bfdata_port_port_supply_rela_port_` FOREIGN KEY (`port_`) REFERENCES `bfdata_port` (`id_`),
  CONSTRAINT `FK_bfdata_port_port_supply_rela_port_supply_` FOREIGN KEY (`port_supply_`) REFERENCES `bfdata_port_supply` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_port_store
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_port_store`;
CREATE TABLE `bfdata_port_store` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `id_card_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_type_` varchar(100) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `responsible_man_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(50) DEFAULT NULL,
  `store_type_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `port_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_store_border_unit_` (`border_unit_`),
  KEY `FK_bfdata_port_store_port_` (`port_`),
  CONSTRAINT `FK_bfdata_port_store_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_port_store_port_` FOREIGN KEY (`port_`) REFERENCES `bfdata_port` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_port_supply
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_port_supply`;
CREATE TABLE `bfdata_port_supply` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `id_card_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_type_` varchar(100) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `responsible_man_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_supply_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_port_supply_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_reporting_crew_info
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_reporting_crew_info`;
CREATE TABLE `bfdata_reporting_crew_info` (
  `id_` int(11) NOT NULL,
  `id_no_` varchar(30) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `tel_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `reporting_info_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_reporting_crew_info_appr
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_reporting_crew_info_appr`;
CREATE TABLE `bfdata_reporting_crew_info_appr` (
  `id_` int(11) NOT NULL,
  `id_no_` varchar(30) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `tel_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `reporting_info_appr_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `bfdatareporting_crew_info_apprreporting_info_appr_` (`reporting_info_appr_`),
  CONSTRAINT `bfdatareporting_crew_info_apprreporting_info_appr_` FOREIGN KEY (`reporting_info_appr_`) REFERENCES `bfdata_reporting_info_appr` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_reporting_info
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_reporting_info`;
CREATE TABLE `bfdata_reporting_info` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `from_port_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `method_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(100) DEFAULT NULL,
  `time_` datetime DEFAULT NULL,
  `to_port_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `visa_unit_` varchar(100) DEFAULT NULL,
  `nonlocal_vessel_` int(11) DEFAULT NULL,
  `local_vessel_` int(11) DEFAULT NULL,
  `cause_` varchar(500) DEFAULT NULL,
  `crew_` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_reporting_info_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `FK_bfdata_reporting_info_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_reporting_info_appr
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_reporting_info_appr`;
CREATE TABLE `bfdata_reporting_info_appr` (
  `crime_check_` varchar(50) DEFAULT NULL,
  `id_` int(11) NOT NULL,
  `approve_status_` varchar(10) DEFAULT NULL,
  `cause_` varchar(500) DEFAULT NULL,
  `dsj_id_` varchar(255) DEFAULT NULL,
  `from_port_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `method_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `submit_id_` varchar(50) DEFAULT NULL,
  `submit_name_` varchar(50) DEFAULT NULL,
  `submit_time_` datetime DEFAULT NULL,
  `time_` datetime DEFAULT NULL,
  `to_port_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `visa_unit_` varchar(100) DEFAULT NULL,
  `wjw_id_` varchar(255) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_reporting_info_appr_manage_unit_` (`manage_unit_`),
  CONSTRAINT `FK_bfdata_reporting_info_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_sailor
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_sailor`;
CREATE TABLE `bfdata_sailor` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `id_card_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `nation_` int(11) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `regeit_time_` datetime DEFAULT NULL,
  `service_vessel_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_score
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_score`;
CREATE TABLE `bfdata_score` (
  `id_` int(11) NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_score_` int(11) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `month_` varchar(10) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `search_score_` int(11) DEFAULT NULL,
  `sum_score_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_score_` int(11) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `user_id_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_search_log
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_search_log`;
CREATE TABLE `bfdata_search_log` (
  `id_` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `insert_man_` varchar(50) NOT NULL DEFAULT '',
  `insert_time_` datetime DEFAULT NULL,
  `search_name_` varchar(255) NOT NULL DEFAULT '',
  `number_` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for bfdata_sea_labour_agency
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_sea_labour_agency`;
CREATE TABLE `bfdata_sea_labour_agency` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `addr_` varchar(200) DEFAULT NULL,
  `business_license_no_` varchar(50) DEFAULT NULL,
  `charger_current_addr_` varchar(200) DEFAULT NULL,
  `charger_id_card_no_` varchar(50) DEFAULT NULL,
  `charger_name_` varchar(50) DEFAULT NULL,
  `charger_regist_addr_` varchar(200) DEFAULT NULL,
  `charger_tel_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `manager_id_card_no_` varchar(50) DEFAULT NULL,
  `manager_name_` varchar(50) DEFAULT NULL,
  `manager_regist_addr_` varchar(200) DEFAULT NULL,
  `manager_tel_` varchar(50) DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `is_border_` int(11) DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_sea_labour_agency_sailor
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_sea_labour_agency_sailor`;
CREATE TABLE `bfdata_sea_labour_agency_sailor` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `id_card_no_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `nationality_` int(11) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `regist_date_` datetime DEFAULT NULL,
  `seve_vessel_` varchar(100) DEFAULT NULL,
  `tel_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `sea_labour_agency_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `bfdata_sea_labour_agency_sailor_sea_labour_agency_` (`sea_labour_agency_`),
  CONSTRAINT `bfdata_sea_labour_agency_sailor_sea_labour_agency_` FOREIGN KEY (`sea_labour_agency_`) REFERENCES `bfdata_sea_labour_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_ship_repair_industry
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_ship_repair_industry`;
CREATE TABLE `bfdata_ship_repair_industry` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `company_type_` int(11) DEFAULT NULL,
  `employee_number_` int(11) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `leg_person_contact_` varchar(50) DEFAULT NULL,
  `leg_person_id_card_` varchar(50) DEFAULT NULL,
  `leg_person_per_addr_` varchar(500) DEFAULT NULL,
  `legal_person_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_company_type_` varchar(100) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `res_man_contact_` varchar(50) DEFAULT NULL,
  `res_man_id_card_` varchar(50) DEFAULT NULL,
  `res_man_per_addr_` varchar(500) DEFAULT NULL,
  `responsible_man_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `unit_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `is_border_` int(11) DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_ship_repair_industry_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_ship_repair_industry_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_ship_repair_industry_appr
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_ship_repair_industry_appr`;
CREATE TABLE `bfdata_ship_repair_industry_appr` (
  `id_` int(11) NOT NULL,
  `approve_status_` varchar(10) DEFAULT NULL,
  `company_type_` int(11) DEFAULT NULL,
  `employee_number_` int(11) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `is_border_` tinyint(1) DEFAULT '0',
  `leg_person_contact_` varchar(50) DEFAULT NULL,
  `leg_person_id_card_` varchar(50) DEFAULT NULL,
  `leg_person_per_addr_` varchar(500) DEFAULT NULL,
  `legal_person_` varchar(100) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_company_type_` varchar(100) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `res_man_contact_` varchar(50) DEFAULT NULL,
  `res_man_id_card_` varchar(50) DEFAULT NULL,
  `res_man_per_addr_` varchar(500) DEFAULT NULL,
  `responsible_man_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `ship_name_` varchar(2000) DEFAULT NULL,
  `ship_note_` varchar(2000) DEFAULT NULL,
  `ship_reform_detail_` varchar(2000) DEFAULT NULL,
  `ship_regist_date_` datetime DEFAULT NULL,
  `ship_staff_num_` varchar(2000) DEFAULT NULL,
  `ship_type_` int(11) DEFAULT NULL,
  `submit_id_` varchar(50) DEFAULT NULL,
  `submit_name_` varchar(50) DEFAULT NULL,
  `submit_time_` datetime DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `unit_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `wjw_id_` varchar(50) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_ship_repair_industry_appr_manage_unit_` (`manage_unit_`),
  CONSTRAINT `FK_bfdata_ship_repair_industry_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_ship_repair_penalty
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_ship_repair_penalty`;
CREATE TABLE `bfdata_ship_repair_penalty` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `content_` varchar(1000) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `ship_repair_industry_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `bfdata_ship_repair_penalty_ship_repair_industry_` (`ship_repair_industry_`),
  CONSTRAINT `bfdata_ship_repair_penalty_ship_repair_industry_` FOREIGN KEY (`ship_repair_industry_`) REFERENCES `bfdata_ship_repair_industry` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_ship_repair_record
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_ship_repair_record`;
CREATE TABLE `bfdata_ship_repair_record` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `reform_detail_` varchar(500) DEFAULT NULL,
  `regist_date_` datetime DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `ship_repair_industry_` int(11) DEFAULT NULL,
  `staff_num_` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_ship_repair_record_ship_repair_industry_` (`ship_repair_industry_`),
  CONSTRAINT `FK_bfdata_ship_repair_record_ship_repair_industry_` FOREIGN KEY (`ship_repair_industry_`) REFERENCES `bfdata_ship_repair_industry` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_subordinate_unit
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_subordinate_unit`;
CREATE TABLE `bfdata_subordinate_unit` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `landing_tel_` varchar(100) DEFAULT NULL,
  `main_owner_` tinyint(1) DEFAULT '0',
  `mobile_tel_` varchar(100) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `local_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_subordinate_unit_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_subordinate_unit_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_tourist_driver
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_tourist_driver`;
CREATE TABLE `bfdata_tourist_driver` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `contact_nunber_` varchar(100) DEFAULT NULL,
  `id_card_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `tourist_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_tourist_driver_tourist_vessel_` (`tourist_vessel_`),
  CONSTRAINT `FK_bfdata_tourist_driver_tourist_vessel_` FOREIGN KEY (`tourist_vessel_`) REFERENCES `bfdata_tourist_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_tourist_vessel
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_tourist_vessel`;
CREATE TABLE `bfdata_tourist_vessel` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `power_` decimal(10,2) DEFAULT NULL,
  `tourist_vessel_type_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_use_` int(11) DEFAULT NULL,
  `fun_project_` int(11) DEFAULT NULL,
  `local_vessel_` int(11) DEFAULT NULL,
  `non_certified_vessel_` int(11) DEFAULT NULL,
  `non_local_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_tourist_vessel_fun_project_` (`fun_project_`),
  KEY `FK_bfdata_tourist_vessel_non_certified_vessel_` (`non_certified_vessel_`),
  KEY `FK_bfdata_tourist_vessel_non_local_vessel_` (`non_local_vessel_`),
  KEY `FK_bfdata_tourist_vessel_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_tourist_vessel_fun_project_` FOREIGN KEY (`fun_project_`) REFERENCES `bfdata_fun_project` (`id_`),
  CONSTRAINT `FK_bfdata_tourist_vessel_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_tourist_vessel_non_certified_vessel_` FOREIGN KEY (`non_certified_vessel_`) REFERENCES `bfdata_non_certified_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_tourist_vessel_non_local_vessel_` FOREIGN KEY (`non_local_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_vessel_agency
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_vessel_agency`;
CREATE TABLE `bfdata_vessel_agency` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `gender_` int(11) DEFAULT NULL,
  `id_card_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int(11) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int(11) DEFAULT NULL,
  `is_recover_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_agency_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_vessel_agency_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_vessel_certificates
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_vessel_certificates`;
CREATE TABLE `bfdata_vessel_certificates` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `certificate_number_` varchar(100) DEFAULT NULL,
  `certificates_type_` int(11) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `photo_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `local_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_certificates_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_vessel_certificates_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_vessel_equipment
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_vessel_equipment`;
CREATE TABLE `bfdata_vessel_equipment` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `host_number_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `install_date_` datetime DEFAULT NULL,
  `model_` varchar(100) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `number_` int(11) DEFAULT NULL,
  `param_one_` varchar(100) DEFAULT NULL,
  `param_three_` varchar(100) DEFAULT NULL,
  `param_two_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `local_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_equipment_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_vessel_equipment_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_vessel_his
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_vessel_his`;
CREATE TABLE `bfdata_vessel_his` (
  `id_` int(11) NOT NULL,
  `record_time_` datetime DEFAULT NULL,
  `vessel_name_` varchar(50) DEFAULT NULL,
  `org_person_in_charge_` varchar(255) DEFAULT NULL,
  `new_person_in_charge_` varchar(255) DEFAULT NULL,
  `org_operator_` varchar(255) DEFAULT NULL,
  `new_operator_` varchar(255) DEFAULT NULL,
  `org_manage_unit_` int(11) DEFAULT NULL,
  `new_manage_unit_` int(11) DEFAULT NULL,
  `note_` varchar(255) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_vessel_operator
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_vessel_operator`;
CREATE TABLE `bfdata_vessel_operator` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `contact_number_` varchar(500) DEFAULT NULL,
  `id_card_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `nonlocal_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_operator_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `FK_bfdata_vessel_operator_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bfdata_vessel_owner
-- ----------------------------
DROP TABLE IF EXISTS `bfdata_vessel_owner`;
CREATE TABLE `bfdata_vessel_owner` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `contact_number_` varchar(500) DEFAULT NULL,
  `id_card_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `nonlocal_vessel_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_owner_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `FK_bfdata_vessel_owner_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_bill_code
-- ----------------------------
DROP TABLE IF EXISTS `bifang_bill_code`;
CREATE TABLE `bifang_bill_code` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `class_name_` varchar(128) DEFAULT NULL,
  `feature_name_` varchar(128) DEFAULT NULL,
  `value_` int(11) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_groups_menu
-- ----------------------------
DROP TABLE IF EXISTS `bifang_groups_menu`;
CREATE TABLE `bifang_groups_menu` (
  `menu_id_` int(11) NOT NULL,
  `group_id_` int(11) NOT NULL,
  PRIMARY KEY (`menu_id_`,`group_id_`),
  KEY `FK_bifang_groups_menu_group_id_` (`group_id_`),
  CONSTRAINT `FK_bifang_groups_menu_group_id_` FOREIGN KEY (`group_id_`) REFERENCES `bifang_user_group` (`id_`),
  CONSTRAINT `FK_bifang_groups_menu_menu_id_` FOREIGN KEY (`menu_id_`) REFERENCES `bifang_menu` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_groups_role
-- ----------------------------
DROP TABLE IF EXISTS `bifang_groups_role`;
CREATE TABLE `bifang_groups_role` (
  `role_id_` int(11) NOT NULL,
  `group_id_` int(11) NOT NULL,
  PRIMARY KEY (`role_id_`,`group_id_`),
  KEY `FK_bifang_groups_role_group_id_` (`group_id_`),
  CONSTRAINT `FK_bifang_groups_role_group_id_` FOREIGN KEY (`group_id_`) REFERENCES `bifang_user_group` (`id_`),
  CONSTRAINT `FK_bifang_groups_role_role_id_` FOREIGN KEY (`role_id_`) REFERENCES `bifang_role` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_groups_user
-- ----------------------------
DROP TABLE IF EXISTS `bifang_groups_user`;
CREATE TABLE `bifang_groups_user` (
  `user_id_` int(11) NOT NULL,
  `group_id_` int(11) NOT NULL,
  PRIMARY KEY (`user_id_`,`group_id_`),
  KEY `FK_bifang_groups_user_group_id_` (`group_id_`),
  CONSTRAINT `FK_bifang_groups_user_group_id_` FOREIGN KEY (`group_id_`) REFERENCES `bifang_user_group` (`id_`),
  CONSTRAINT `FK_bifang_groups_user_user_id_` FOREIGN KEY (`user_id_`) REFERENCES `bifang_user` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_help_article
-- ----------------------------
DROP TABLE IF EXISTS `bifang_help_article`;
CREATE TABLE `bifang_help_article` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `attention_rate_` int(11) DEFAULT NULL,
  `content_` varchar(2000) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `menu_` varchar(100) DEFAULT NULL,
  `note_` varchar(50) DEFAULT NULL,
  `title_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_mail_record
-- ----------------------------
DROP TABLE IF EXISTS `bifang_mail_record`;
CREATE TABLE `bifang_mail_record` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `business_id_` varchar(50) DEFAULT NULL,
  `address_` varchar(255) NOT NULL,
  `attachment_type_` varchar(255) DEFAULT NULL,
  `attachmentContent_` longtext,
  `attachmentName_` varchar(255) DEFAULT NULL,
  `content_` longtext,
  `created_at_` datetime DEFAULT NULL,
  `err_cause_` varchar(1000) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `send_count_` int(11) DEFAULT NULL,
  `state_` varchar(255) DEFAULT NULL,
  `subject_` varchar(1000) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_menu
-- ----------------------------
DROP TABLE IF EXISTS `bifang_menu`;
CREATE TABLE `bifang_menu` (
  `id_` int(11) NOT NULL,
  `created_at_` datetime DEFAULT NULL,
  `display_order_` int(11) NOT NULL,
  `leaf_` tinyint(1) DEFAULT '0',
  `menu_name_` varchar(128) DEFAULT NULL,
  `menu_root_` varchar(255) DEFAULT NULL,
  `menu_url_` varchar(128) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `parent_id_` int(11) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_menus_tenant
-- ----------------------------
DROP TABLE IF EXISTS `bifang_menus_tenant`;
CREATE TABLE `bifang_menus_tenant` (
  `menu_id_` int(11) NOT NULL,
  `tenant_id_` int(11) NOT NULL,
  PRIMARY KEY (`menu_id_`,`tenant_id_`),
  KEY `FK_bifang_menus_tenant_tenant_id_` (`tenant_id_`),
  CONSTRAINT `FK_bifang_menus_tenant_menu_id_` FOREIGN KEY (`menu_id_`) REFERENCES `bifang_menu` (`id_`),
  CONSTRAINT `FK_bifang_menus_tenant_tenant_id_` FOREIGN KEY (`tenant_id_`) REFERENCES `bifang_tenant` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_message
-- ----------------------------
DROP TABLE IF EXISTS `bifang_message`;
CREATE TABLE `bifang_message` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `message_` varchar(300) DEFAULT NULL,
  `read_state_` int(11) DEFAULT NULL,
  `receiver_name_` varchar(255) DEFAULT NULL,
  `send_at_` datetime DEFAULT NULL,
  `sender_name_` varchar(255) DEFAULT NULL,
  `title_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_organization
-- ----------------------------
DROP TABLE IF EXISTS `bifang_organization`;
CREATE TABLE `bifang_organization` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `created_at_` datetime DEFAULT NULL,
  `display_order_` int(11) NOT NULL,
  `leaf_` tinyint(1) DEFAULT '0',
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `org_name_` varchar(128) DEFAULT NULL,
  `org_root_` varchar(255) DEFAULT NULL,
  `org_full_name_` varchar(500) DEFAULT NULL,
  `parent_id_` int(11) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  `user_group_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_param
-- ----------------------------
DROP TABLE IF EXISTS `bifang_param`;
CREATE TABLE `bifang_param` (
  `id_` int(11) NOT NULL,
  `code_` varchar(50) NOT NULL,
  `created_at_` datetime DEFAULT NULL,
  `desc_` varchar(200) DEFAULT NULL,
  `display_order_` int(11) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  `value_` varchar(50) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_role
-- ----------------------------
DROP TABLE IF EXISTS `bifang_role`;
CREATE TABLE `bifang_role` (
  `id_` int(11) NOT NULL,
  `created_at_` datetime DEFAULT NULL,
  `desc_` varchar(200) DEFAULT NULL,
  `name_` varchar(50) NOT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_roles_tenant
-- ----------------------------
DROP TABLE IF EXISTS `bifang_roles_tenant`;
CREATE TABLE `bifang_roles_tenant` (
  `role_id_` int(11) NOT NULL,
  `tenant_id_` int(11) NOT NULL,
  PRIMARY KEY (`role_id_`,`tenant_id_`),
  KEY `FK_bifang_roles_tenant_tenant_id_` (`tenant_id_`),
  CONSTRAINT `FK_bifang_roles_tenant_role_id_` FOREIGN KEY (`role_id_`) REFERENCES `bifang_role` (`id_`),
  CONSTRAINT `FK_bifang_roles_tenant_tenant_id_` FOREIGN KEY (`tenant_id_`) REFERENCES `bifang_tenant` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_tenant
-- ----------------------------
DROP TABLE IF EXISTS `bifang_tenant`;
CREATE TABLE `bifang_tenant` (
  `id_` int(11) NOT NULL,
  `created_at_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `status_` int(11) DEFAULT NULL,
  `tenant_code_` varchar(50) DEFAULT NULL,
  `tenant_name_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_user
-- ----------------------------
DROP TABLE IF EXISTS `bifang_user`;
CREATE TABLE `bifang_user` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `created_at_` datetime DEFAULT NULL,
  `last_login_time_` datetime DEFAULT NULL,
  `login_name_` varchar(50) DEFAULT NULL,
  `menu_style_` varchar(50) DEFAULT NULL,
  `name_` varchar(128) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `password_` varchar(50) DEFAULT NULL,
  `refresh_time_` int(11) DEFAULT NULL,
  `auto_show_message_` tinyint(1) DEFAULT NULL,
  `status_` int(11) DEFAULT NULL,
  `theme_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  `wall_paper_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_users_org
-- ----------------------------
DROP TABLE IF EXISTS `bifang_users_org`;
CREATE TABLE `bifang_users_org` (
  `org_id_` int(11) NOT NULL,
  `user_id_` int(11) NOT NULL,
  PRIMARY KEY (`org_id_`,`user_id_`),
  KEY `FK_bifang_users_org_user_id_` (`user_id_`),
  CONSTRAINT `FK_bifang_users_org_org_id_` FOREIGN KEY (`org_id_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bifang_users_org_user_id_` FOREIGN KEY (`user_id_`) REFERENCES `bifang_user` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bifang_user_group
-- ----------------------------
DROP TABLE IF EXISTS `bifang_user_group`;
CREATE TABLE `bifang_user_group` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `created_at_` datetime DEFAULT NULL,
  `group_code_` varchar(255) DEFAULT NULL,
  `group_desc_` varchar(255) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for changelog
-- ----------------------------
DROP TABLE IF EXISTS `changelog`;
CREATE TABLE `changelog` (
  `ID` decimal(20,0) NOT NULL,
  `APPLIED_AT` varchar(25) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for component_feedback_board
-- ----------------------------
DROP TABLE IF EXISTS `component_feedback_board`;
CREATE TABLE `component_feedback_board` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `answer_` varchar(500) DEFAULT NULL,
  `answer_date_` timestamp NULL DEFAULT NULL,
  `answer_man_` varchar(10) DEFAULT NULL,
  `ask_` varchar(500) DEFAULT NULL,
  `ask_date_` timestamp NULL DEFAULT NULL,
  `ask_man_` varchar(10) DEFAULT NULL,
  `cause_` int(11) DEFAULT NULL,
  `cost_hour_` int(11) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` timestamp NULL DEFAULT NULL,
  `level_` int(11) DEFAULT NULL,
  `menu_` varchar(100) DEFAULT NULL,
  `no_` int(11) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `status_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for component_full_text_retrieval
-- ----------------------------
DROP TABLE IF EXISTS `component_full_text_retrieval`;
CREATE TABLE `component_full_text_retrieval` (
  `id_` int(11) NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `class_name_` varchar(100) DEFAULT NULL,
  `class_name_cn_` varchar(10) DEFAULT NULL,
  `record_id_` int(11) DEFAULT NULL,
  `record_text_` longtext,
  PRIMARY KEY (`id_`),
  KEY `search` (`class_name_`,`record_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for component_goblin_sm
-- ----------------------------
DROP TABLE IF EXISTS `component_goblin_sm`;
CREATE TABLE `component_goblin_sm` (
  `id_` int(11) NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(20) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for component_goblin_sm_status
-- ----------------------------
DROP TABLE IF EXISTS `component_goblin_sm_status`;
CREATE TABLE `component_goblin_sm_status` (
  `id_` int(11) NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(20) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `order_num_` int(11) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `goblin_sm_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_component_goblin_sm_status_goblin_sm_` (`goblin_sm_`),
  CONSTRAINT `FK_component_goblin_sm_status_goblin_sm_` FOREIGN KEY (`goblin_sm_`) REFERENCES `component_goblin_sm` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for component_goblin_sm_transition
-- ----------------------------
DROP TABLE IF EXISTS `component_goblin_sm_transition`;
CREATE TABLE `component_goblin_sm_transition` (
  `id_` int(11) NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operation_` varchar(20) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `goblin_sm_` int(11) DEFAULT NULL,
  `current_status_` int(11) DEFAULT NULL,
  `next_status_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_component_goblin_sm_transition_current_status_` (`current_status_`),
  KEY `FK_component_goblin_sm_transition_next_status_` (`next_status_`),
  KEY `FK_component_goblin_sm_transition_goblin_sm_` (`goblin_sm_`),
  CONSTRAINT `FK_component_goblin_sm_transition_current_status_` FOREIGN KEY (`current_status_`) REFERENCES `component_goblin_sm_status` (`id_`),
  CONSTRAINT `FK_component_goblin_sm_transition_goblin_sm_` FOREIGN KEY (`goblin_sm_`) REFERENCES `component_goblin_sm` (`id_`),
  CONSTRAINT `FK_component_goblin_sm_transition_next_status_` FOREIGN KEY (`next_status_`) REFERENCES `component_goblin_sm_status` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for component_outer_inside_menu
-- ----------------------------
DROP TABLE IF EXISTS `component_outer_inside_menu`;
CREATE TABLE `component_outer_inside_menu` (
  `id_` int(11) NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `system_` int(11) DEFAULT NULL,
  `local_menu_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_component_outer_inside_menu_system_` (`system_`),
  KEY `FK_component_outer_inside_menu_local_menu_` (`local_menu_`),
  CONSTRAINT `FK_component_outer_inside_menu_local_menu_` FOREIGN KEY (`local_menu_`) REFERENCES `bifang_menu` (`id_`),
  CONSTRAINT `FK_component_outer_inside_menu_system_` FOREIGN KEY (`system_`) REFERENCES `component_outer_inside_system` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for component_outer_inside_system
-- ----------------------------
DROP TABLE IF EXISTS `component_outer_inside_system`;
CREATE TABLE `component_outer_inside_system` (
  `id_` int(11) NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `login_page_` varchar(200) DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `url_` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for component_outer_inside_user
-- ----------------------------
DROP TABLE IF EXISTS `component_outer_inside_user`;
CREATE TABLE `component_outer_inside_user` (
  `id_` int(11) NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `password_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `user_name_` varchar(50) DEFAULT NULL,
  `system_` int(11) DEFAULT NULL,
  `local_user_` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_component_outer_inside_user_system_` (`system_`),
  KEY `FK_component_outer_inside_user_local_user_` (`local_user_`),
  CONSTRAINT `FK_component_outer_inside_user_local_user_` FOREIGN KEY (`local_user_`) REFERENCES `bifang_user` (`id_`),
  CONSTRAINT `FK_component_outer_inside_user_system_` FOREIGN KEY (`system_`) REFERENCES `component_outer_inside_system` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for id_sequence
-- ----------------------------
DROP TABLE IF EXISTS `id_sequence`;
CREATE TABLE `id_sequence` (
  `key_id_` varchar(100) NOT NULL,
  `gen_value_` int(11) DEFAULT NULL,
  PRIMARY KEY (`key_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
