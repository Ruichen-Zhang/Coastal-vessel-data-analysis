-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: bfdata
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bfdata_affiliated_area`
--

DROP TABLE IF EXISTS `bfdata_affiliated_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_affiliated_area` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `area_type_` int DEFAULT NULL,
  `display_order_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `parent_id_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_affiliated_area`
--

LOCK TABLES `bfdata_affiliated_area` WRITE;
/*!40000 ALTER TABLE `bfdata_affiliated_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_affiliated_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_affiliated_area_copy`
--

DROP TABLE IF EXISTS `bfdata_affiliated_area_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_affiliated_area_copy` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `area_type_` int DEFAULT NULL,
  `display_order_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `parent_id_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_affiliated_area_copy`
--

LOCK TABLES `bfdata_affiliated_area_copy` WRITE;
/*!40000 ALTER TABLE `bfdata_affiliated_area_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_affiliated_area_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_berthing_info`
--

DROP TABLE IF EXISTS `bfdata_berthing_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_berthing_info` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `port_name_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `nonlocal_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_berthing_info_nonlocal_vessel_` (`nonlocal_vessel_`),
  KEY `FK_bfdata_berthing_info_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_berthing_info_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_berthing_info_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_berthing_info`
--

LOCK TABLES `bfdata_berthing_info` WRITE;
/*!40000 ALTER TABLE `bfdata_berthing_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_berthing_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_boatman`
--

DROP TABLE IF EXISTS `bfdata_boatman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_boatman` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `addr_` varchar(500) DEFAULT NULL,
  `birthday_` datetime DEFAULT NULL,
  `boater_certificate_no_` varchar(50) DEFAULT NULL,
  `duties_` int DEFAULT NULL,
  `education_degree_` int DEFAULT NULL,
  `effective_date_end_` datetime DEFAULT NULL,
  `effective_date_start_` datetime DEFAULT NULL,
  `family_id_no_` varchar(50) DEFAULT NULL,
  `family_name_` varchar(50) DEFAULT NULL,
  `family_occupation_` varchar(50) DEFAULT NULL,
  `family_relationship_` varchar(50) DEFAULT NULL,
  `family_tel_` varchar(50) DEFAULT NULL,
  `gender_` int DEFAULT NULL,
  `household_register_addr_` varchar(500) DEFAULT NULL,
  `id_card_photo_` varchar(255) DEFAULT NULL,
  `id_no_` varchar(18) DEFAULT NULL,
  `import_note_` varchar(200) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `issue_date_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `nation_` int DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permit_date_` datetime DEFAULT NULL,
  `political_status_` int DEFAULT NULL,
  `regional_property_` int DEFAULT NULL,
  `subordinate_vessel_` varchar(50) DEFAULT NULL,
  `telephone_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `non_local_vessel_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  `crime_check_` varchar(50) DEFAULT NULL,
  `refresh_time_` datetime DEFAULT NULL,
  `id_no_check_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_boatman_vessel_` (`vessel_`),
  CONSTRAINT `FK_bfdata_boatman_vessel_` FOREIGN KEY (`vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_boatman`
--

LOCK TABLES `bfdata_boatman` WRITE;
/*!40000 ALTER TABLE `bfdata_boatman` DISABLE KEYS */;
INSERT INTO `bfdata_boatman` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-11 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'重点',NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-10 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'吸毒',NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-06-04 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'涉毒',NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-07 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'在逃',NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-05 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'重点',NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-07-10 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'重点',NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-03-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'涉毒',NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-02 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'涉毒',NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-10 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'在逃',NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-09 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'在逃',NULL,NULL);
/*!40000 ALTER TABLE `bfdata_boatman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_boatman_appr`
--

DROP TABLE IF EXISTS `bfdata_boatman_appr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_boatman_appr` (
  `id_` int NOT NULL,
  `addr_` varchar(500) DEFAULT NULL,
  `approve_status_` varchar(10) DEFAULT NULL,
  `birthday_` datetime DEFAULT NULL,
  `boater_certificate_no_` varchar(50) DEFAULT NULL,
  `dsj_id_` varchar(50) DEFAULT NULL,
  `duties_` int DEFAULT NULL,
  `education_degree_` int DEFAULT NULL,
  `effective_date_end_` datetime DEFAULT NULL,
  `effective_date_start_` datetime DEFAULT NULL,
  `family_id_no_` varchar(1000) DEFAULT NULL,
  `family_name_` varchar(1000) DEFAULT NULL,
  `family_occupation_` varchar(1000) DEFAULT NULL,
  `family_relationship_` varchar(1000) DEFAULT NULL,
  `family_tel_` varchar(1000) DEFAULT NULL,
  `gender_` int DEFAULT NULL,
  `household_register_addr_` varchar(500) DEFAULT NULL,
  `id_card_photo_` varchar(255) DEFAULT NULL,
  `id_no_` varchar(18) DEFAULT NULL,
  `import_note_` varchar(200) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `issue_date_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `nation_` int DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permit_date_` datetime DEFAULT NULL,
  `political_status_` int DEFAULT NULL,
  `regional_property_` int DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `submit_id_` varchar(50) DEFAULT NULL,
  `submit_name_` varchar(50) DEFAULT NULL,
  `submit_time_` datetime DEFAULT NULL,
  `subordinate_vessel_` varchar(50) DEFAULT NULL,
  `telephone_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `wjw_id_` varchar(50) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `non_local_vessel_` int DEFAULT NULL,
  `vessel_` int DEFAULT NULL,
  `crime_check_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_boatman_appr_manage_unit_` (`manage_unit_`),
  KEY `FK_bfdata_boatman_appr_non_local_vessel_` (`non_local_vessel_`),
  KEY `FK_bfdata_boatman_appr_vessel_` (`vessel_`),
  CONSTRAINT `FK_bfdata_boatman_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_boatman_appr_non_local_vessel_` FOREIGN KEY (`non_local_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_boatman_appr_vessel_` FOREIGN KEY (`vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_boatman_appr`
--

LOCK TABLES `bfdata_boatman_appr` WRITE;
/*!40000 ALTER TABLE `bfdata_boatman_appr` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_boatman_appr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_boatman_his`
--

DROP TABLE IF EXISTS `bfdata_boatman_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_boatman_his` (
  `id_` int NOT NULL,
  `record_time_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `id_no_` varchar(50) DEFAULT NULL,
  `org_subordinate_vessel_` varchar(50) DEFAULT NULL,
  `new_subordinate_vessel_` varchar(50) DEFAULT NULL,
  `org_manage_unit_` int DEFAULT NULL,
  `new_manage_unit_` int DEFAULT NULL,
  `note_` varchar(255) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_boatman_his`
--

LOCK TABLES `bfdata_boatman_his` WRITE;
/*!40000 ALTER TABLE `bfdata_boatman_his` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_boatman_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_data_mapping`
--

DROP TABLE IF EXISTS `bfdata_data_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_data_mapping` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `data_mapping_` varchar(100) DEFAULT NULL,
  `data_type_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `third_data_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_data_mapping`
--

LOCK TABLES `bfdata_data_mapping` WRITE;
/*!40000 ALTER TABLE `bfdata_data_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_data_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_fishing_company`
--

DROP TABLE IF EXISTS `bfdata_fishing_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_fishing_company` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `company_address_` varchar(500) DEFAULT NULL,
  `company_type_` int DEFAULT NULL,
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
  `border_unit_` int DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `is_border_` int DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_fishing_company_manage_unit_` (`manage_unit_`),
  KEY `FK_bfdata_fishing_company_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_fishing_company_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_fishing_company_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_fishing_company`
--

LOCK TABLES `bfdata_fishing_company` WRITE;
/*!40000 ALTER TABLE `bfdata_fishing_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_fishing_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_foreign_fishing`
--

DROP TABLE IF EXISTS `bfdata_foreign_fishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_foreign_fishing` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `display_order_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_foreign_fishing`
--

LOCK TABLES `bfdata_foreign_fishing` WRITE;
/*!40000 ALTER TABLE `bfdata_foreign_fishing` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_foreign_fishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_fun_project`
--

DROP TABLE IF EXISTS `bfdata_fun_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_fun_project` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operatin_number_` int DEFAULT NULL,
  `operating_conditions_` varchar(1000) DEFAULT NULL,
  `operator_` varchar(100) DEFAULT NULL,
  `operator_id_card_` varchar(50) DEFAULT NULL,
  `operator_per_addr_` varchar(500) DEFAULT NULL,
  `operatorcontact_number_` varchar(50) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `project_level_` int DEFAULT NULL,
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
  `border_unit_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `is_border_` int DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_fun_project_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_fun_project_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_fun_project`
--

LOCK TABLES `bfdata_fun_project` WRITE;
/*!40000 ALTER TABLE `bfdata_fun_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_fun_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_involved_personne`
--

DROP TABLE IF EXISTS `bfdata_involved_personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_involved_personne` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `id_card_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `involved_personal_type_` int DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `permanent_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `maritime_case_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_involved_personne_maritime_case_` (`maritime_case_`),
  CONSTRAINT `FK_bfdata_involved_personne_maritime_case_` FOREIGN KEY (`maritime_case_`) REFERENCES `bfdata_maritime_case` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_involved_personne`
--

LOCK TABLES `bfdata_involved_personne` WRITE;
/*!40000 ALTER TABLE `bfdata_involved_personne` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_involved_personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_local_vessel`
--

DROP TABLE IF EXISTS `bfdata_local_vessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_local_vessel` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `build_date_` datetime DEFAULT NULL,
  `builders_` varchar(100) DEFAULT NULL,
  `person_in_charge_tel_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `local_vessel_type_` int DEFAULT NULL,
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
  `rated_crew_` int DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `risk_level_` int DEFAULT NULL,
  `sea_caurse_` varchar(500) DEFAULT NULL,
  `shipping_company_` varchar(50) DEFAULT NULL,
  `speed_` decimal(10,1) DEFAULT NULL,
  `tonnage_` decimal(10,1) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_height_` decimal(10,2) DEFAULT NULL,
  `vessel_length_` decimal(10,2) DEFAULT NULL,
  `vessel_material_` int DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int DEFAULT NULL,
  `vessel_use_` int DEFAULT NULL,
  `vessel_width_` decimal(10,2) DEFAULT NULL,
  `work_area_` varchar(500) DEFAULT NULL,
  `fishing_company_` int DEFAULT NULL,
  `foreign_fishing_` int DEFAULT NULL,
  `vessel_agency_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  `sate_phone_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_local_vessel_foreign_fishing_` (`foreign_fishing_`),
  KEY `FK_bfdata_local_vessel_fishing_company_` (`fishing_company_`),
  KEY `FK_bfdata_local_vessel_vessel_agency_` (`vessel_agency_`),
  CONSTRAINT `FK_bfdata_local_vessel_fishing_company_` FOREIGN KEY (`fishing_company_`) REFERENCES `bfdata_fishing_company` (`id_`),
  CONSTRAINT `FK_bfdata_local_vessel_foreign_fishing_` FOREIGN KEY (`foreign_fishing_`) REFERENCES `bfdata_foreign_fishing` (`id_`),
  CONSTRAINT `FK_bfdata_local_vessel_vessel_agency_` FOREIGN KEY (`vessel_agency_`) REFERENCES `bfdata_vessel_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_local_vessel`
--

LOCK TABLES `bfdata_local_vessel` WRITE;
/*!40000 ALTER TABLE `bfdata_local_vessel` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_local_vessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_local_vessel_appr`
--

DROP TABLE IF EXISTS `bfdata_local_vessel_appr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_local_vessel_appr` (
  `id_` int NOT NULL,
  `approve_status_` varchar(10) DEFAULT NULL,
  `build_date_` datetime DEFAULT NULL,
  `builders_` varchar(100) DEFAULT NULL,
  `contact_number_` varchar(100) DEFAULT NULL,
  `dsj_id_` varchar(255) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `local_vessel_type_` int DEFAULT NULL,
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
  `rated_crew_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `risk_level_` int DEFAULT NULL,
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
  `vessel_material_` int DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int DEFAULT NULL,
  `vessel_use_` int DEFAULT NULL,
  `vessel_width_` decimal(10,2) DEFAULT NULL,
  `wjw_id_` varchar(255) DEFAULT NULL,
  `work_area_` varchar(500) DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `fishing_company_` int DEFAULT NULL,
  `foreign_fishing_` int DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `vessel_agency_` int DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_local_vessel_appr`
--

LOCK TABLES `bfdata_local_vessel_appr` WRITE;
/*!40000 ALTER TABLE `bfdata_local_vessel_appr` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_local_vessel_appr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_local_vessel_owner`
--

DROP TABLE IF EXISTS `bfdata_local_vessel_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_local_vessel_owner` (
  `id_` int NOT NULL,
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
  `local_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_local_vessel_owner_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_local_vessel_owner_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_local_vessel_owner`
--

LOCK TABLES `bfdata_local_vessel_owner` WRITE;
/*!40000 ALTER TABLE `bfdata_local_vessel_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_local_vessel_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_maritime_case`
--

DROP TABLE IF EXISTS `bfdata_maritime_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_maritime_case` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `detail_` varchar(1000) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `other_type_` varchar(100) DEFAULT NULL,
  `type_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_maritime_case`
--

LOCK TABLES `bfdata_maritime_case` WRITE;
/*!40000 ALTER TABLE `bfdata_maritime_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_maritime_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_maritime_case_vessel_rela`
--

DROP TABLE IF EXISTS `bfdata_maritime_case_vessel_rela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_maritime_case_vessel_rela` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `local_vessel_` int DEFAULT NULL,
  `maritime_case_` int DEFAULT NULL,
  `non_certified_vessel_` int DEFAULT NULL,
  `nonlocal_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_maritime_case_vessel_rela_local_vessel_` (`local_vessel_`),
  KEY `bfdata_maritime_case_vessel_rela_nonlocal_vessel_` (`nonlocal_vessel_`),
  KEY `bfdatamaritimecasevessel_relanon_certified_vessel_` (`non_certified_vessel_`),
  KEY `FK_bfdata_maritime_case_vessel_rela_maritime_case_` (`maritime_case_`),
  CONSTRAINT `bfdata_maritime_case_vessel_rela_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`),
  CONSTRAINT `bfdatamaritimecasevessel_relanon_certified_vessel_` FOREIGN KEY (`non_certified_vessel_`) REFERENCES `bfdata_non_certified_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_maritime_case_vessel_rela_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_maritime_case_vessel_rela_maritime_case_` FOREIGN KEY (`maritime_case_`) REFERENCES `bfdata_maritime_case` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_maritime_case_vessel_rela`
--

LOCK TABLES `bfdata_maritime_case_vessel_rela` WRITE;
/*!40000 ALTER TABLE `bfdata_maritime_case_vessel_rela` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_maritime_case_vessel_rela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_non_certified_vessel`
--

DROP TABLE IF EXISTS `bfdata_non_certified_vessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_non_certified_vessel` (
  `id_` int NOT NULL,
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
  `risk_level_` int DEFAULT NULL,
  `speed_` decimal(10,2) DEFAULT NULL,
  `tonnage_` decimal(10,2) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_height_` decimal(10,2) DEFAULT NULL,
  `vessel_length_` decimal(10,2) DEFAULT NULL,
  `vessel_material_` int DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int DEFAULT NULL,
  `vessel_use_` int DEFAULT NULL,
  `vessel_width_` decimal(10,2) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `fishing_company_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  `power2_` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_non_certified_vessel`
--

LOCK TABLES `bfdata_non_certified_vessel` WRITE;
/*!40000 ALTER TABLE `bfdata_non_certified_vessel` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_non_certified_vessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_nonlocal_vessel`
--

DROP TABLE IF EXISTS `bfdata_nonlocal_vessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_nonlocal_vessel` (
  `id_` int NOT NULL,
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
  `risk_level_` int DEFAULT NULL,
  `ship_booklet_no_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_material_` int DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int DEFAULT NULL,
  `vessel_use_` int DEFAULT NULL,
  `affiliated_area_` int DEFAULT NULL,
  `foreign_fishing_` int DEFAULT NULL,
  `vessel_agency_` int DEFAULT NULL,
  `responsible_police_` varchar(100) DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `owner_port_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  `fishing_company_` int DEFAULT NULL,
  `sate_phone_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_nonlocal_vessel_affiliated_area_` (`affiliated_area_`),
  KEY `FK_bfdata_nonlocal_vessel_vessel_agency_` (`vessel_agency_`),
  KEY `FK_bfdata_nonlocal_vessel_foreign_fishing_` (`foreign_fishing_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_affiliated_area_` FOREIGN KEY (`affiliated_area_`) REFERENCES `bfdata_affiliated_area` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_foreign_fishing_` FOREIGN KEY (`foreign_fishing_`) REFERENCES `bfdata_foreign_fishing` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_vessel_agency_` FOREIGN KEY (`vessel_agency_`) REFERENCES `bfdata_vessel_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_nonlocal_vessel`
--

LOCK TABLES `bfdata_nonlocal_vessel` WRITE;
/*!40000 ALTER TABLE `bfdata_nonlocal_vessel` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_nonlocal_vessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_nonlocal_vessel_appr`
--

DROP TABLE IF EXISTS `bfdata_nonlocal_vessel_appr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_nonlocal_vessel_appr` (
  `id_` int NOT NULL,
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
  `risk_level_` int DEFAULT NULL,
  `sate_phone_` varchar(100) DEFAULT NULL,
  `ship_booklet_no_` varchar(50) DEFAULT NULL,
  `submit_id_` varchar(50) DEFAULT NULL,
  `submit_name_` varchar(50) DEFAULT NULL,
  `submit_time_` datetime DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_material_` int DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_nature_` int DEFAULT NULL,
  `vessel_photo_` varchar(255) DEFAULT NULL,
  `vessel_source_` int DEFAULT NULL,
  `vessel_use_` int DEFAULT NULL,
  `wjw_id_` varchar(255) DEFAULT NULL,
  `affiliated_area_` int DEFAULT NULL,
  `foreign_fishing_` int DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `vessel_agency_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_nonlocal_vessel_appr_affiliated_area_` (`affiliated_area_`),
  KEY `FK_bfdata_nonlocal_vessel_appr_vessel_agency_` (`vessel_agency_`),
  KEY `FK_bfdata_nonlocal_vessel_appr_foreign_fishing_` (`foreign_fishing_`),
  KEY `FK_bfdata_nonlocal_vessel_appr_manage_unit_` (`manage_unit_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_appr_affiliated_area_` FOREIGN KEY (`affiliated_area_`) REFERENCES `bfdata_affiliated_area` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_appr_foreign_fishing_` FOREIGN KEY (`foreign_fishing_`) REFERENCES `bfdata_foreign_fishing` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_appr_vessel_agency_` FOREIGN KEY (`vessel_agency_`) REFERENCES `bfdata_vessel_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_nonlocal_vessel_appr`
--

LOCK TABLES `bfdata_nonlocal_vessel_appr` WRITE;
/*!40000 ALTER TABLE `bfdata_nonlocal_vessel_appr` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_nonlocal_vessel_appr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_nonlocal_vessel_operator`
--

DROP TABLE IF EXISTS `bfdata_nonlocal_vessel_operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_nonlocal_vessel_operator` (
  `id_` int NOT NULL,
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
  `nonlocal_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `bfdata_nonlocal_vessel_operator_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `bfdata_nonlocal_vessel_operator_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_nonlocal_vessel_operator`
--

LOCK TABLES `bfdata_nonlocal_vessel_operator` WRITE;
/*!40000 ALTER TABLE `bfdata_nonlocal_vessel_operator` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_nonlocal_vessel_operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_nonlocal_vessel_owner`
--

DROP TABLE IF EXISTS `bfdata_nonlocal_vessel_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_nonlocal_vessel_owner` (
  `id_` int NOT NULL,
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
  `nonlocal_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_nonlocal_vessel_owner_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `FK_bfdata_nonlocal_vessel_owner_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_nonlocal_vessel_owner`
--

LOCK TABLES `bfdata_nonlocal_vessel_owner` WRITE;
/*!40000 ALTER TABLE `bfdata_nonlocal_vessel_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_nonlocal_vessel_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_notified_unit`
--

DROP TABLE IF EXISTS `bfdata_notified_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_notified_unit` (
  `id_` int NOT NULL,
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
  `non_certified_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_notified_unit_non_certified_vessel_` (`non_certified_vessel_`),
  CONSTRAINT `FK_bfdata_notified_unit_non_certified_vessel_` FOREIGN KEY (`non_certified_vessel_`) REFERENCES `bfdata_non_certified_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_notified_unit`
--

LOCK TABLES `bfdata_notified_unit` WRITE;
/*!40000 ALTER TABLE `bfdata_notified_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_notified_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_operate_log`
--

DROP TABLE IF EXISTS `bfdata_operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_operate_log` (
  `id_` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_operate_log`
--

LOCK TABLES `bfdata_operate_log` WRITE;
/*!40000 ALTER TABLE `bfdata_operate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_operate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_port`
--

DROP TABLE IF EXISTS `bfdata_port`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_port` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `access_service_` tinyint(1) DEFAULT '0',
  `berths_` int DEFAULT NULL,
  `contact_` varchar(50) DEFAULT NULL,
  `guard_num_` int DEFAULT NULL,
  `id_card_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `introduction_` varchar(500) DEFAULT NULL,
  `location_coordinate_` varchar(50) DEFAULT NULL,
  `location_introduction_` varchar(500) DEFAULT NULL,
  `monitor_quantity_` int DEFAULT NULL,
  `monitor_type_` int DEFAULT NULL,
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
  `perennial_berths_` int DEFAULT NULL,
  `permanent_address_` varchar(50) DEFAULT NULL,
  `photo_` varchar(200) DEFAULT NULL,
  `port_addr_` varchar(500) DEFAULT NULL,
  `port_nature_` int DEFAULT NULL,
  `port_owner_` varchar(50) DEFAULT NULL,
  `port_type_` int DEFAULT NULL,
  `port_use_` int DEFAULT NULL,
  `responsible_police_` varchar(50) DEFAULT NULL,
  `risk_level_` int DEFAULT NULL,
  `smuggling_case_detail_` varchar(1000) DEFAULT NULL,
  `smuggling_cases_` tinyint(1) DEFAULT '0',
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_port_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_port`
--

LOCK TABLES `bfdata_port` WRITE;
/*!40000 ALTER TABLE `bfdata_port` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_port` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_port_dispatch`
--

DROP TABLE IF EXISTS `bfdata_port_dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_port_dispatch` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `gender_` int DEFAULT NULL,
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
  `border_unit_` int DEFAULT NULL,
  `port_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_dispatch_port_` (`port_`),
  KEY `FK_bfdata_port_dispatch_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_port_dispatch_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_port_dispatch_port_` FOREIGN KEY (`port_`) REFERENCES `bfdata_port` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_port_dispatch`
--

LOCK TABLES `bfdata_port_dispatch` WRITE;
/*!40000 ALTER TABLE `bfdata_port_dispatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_port_dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_port_port_supply_rela`
--

DROP TABLE IF EXISTS `bfdata_port_port_supply_rela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_port_port_supply_rela` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `port_` int DEFAULT NULL,
  `port_supply_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_port_supply_rela_port_` (`port_`),
  KEY `FK_bfdata_port_port_supply_rela_port_supply_` (`port_supply_`),
  CONSTRAINT `FK_bfdata_port_port_supply_rela_port_` FOREIGN KEY (`port_`) REFERENCES `bfdata_port` (`id_`),
  CONSTRAINT `FK_bfdata_port_port_supply_rela_port_supply_` FOREIGN KEY (`port_supply_`) REFERENCES `bfdata_port_supply` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_port_port_supply_rela`
--

LOCK TABLES `bfdata_port_port_supply_rela` WRITE;
/*!40000 ALTER TABLE `bfdata_port_port_supply_rela` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_port_port_supply_rela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_port_store`
--

DROP TABLE IF EXISTS `bfdata_port_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_port_store` (
  `id_` int NOT NULL,
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
  `store_type_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `port_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_store_border_unit_` (`border_unit_`),
  KEY `FK_bfdata_port_store_port_` (`port_`),
  CONSTRAINT `FK_bfdata_port_store_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bfdata_port_store_port_` FOREIGN KEY (`port_`) REFERENCES `bfdata_port` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_port_store`
--

LOCK TABLES `bfdata_port_store` WRITE;
/*!40000 ALTER TABLE `bfdata_port_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_port_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_port_supply`
--

DROP TABLE IF EXISTS `bfdata_port_supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_port_supply` (
  `id_` int NOT NULL,
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
  `type_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_port_supply_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_port_supply_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_port_supply`
--

LOCK TABLES `bfdata_port_supply` WRITE;
/*!40000 ALTER TABLE `bfdata_port_supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_port_supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_reporting_crew_info`
--

DROP TABLE IF EXISTS `bfdata_reporting_crew_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_reporting_crew_info` (
  `id_` int NOT NULL,
  `id_no_` varchar(30) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `tel_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `reporting_info_` int DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_reporting_crew_info`
--

LOCK TABLES `bfdata_reporting_crew_info` WRITE;
/*!40000 ALTER TABLE `bfdata_reporting_crew_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_reporting_crew_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_reporting_crew_info_appr`
--

DROP TABLE IF EXISTS `bfdata_reporting_crew_info_appr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_reporting_crew_info_appr` (
  `id_` int NOT NULL,
  `id_no_` varchar(30) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `tel_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `reporting_info_appr_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `bfdatareporting_crew_info_apprreporting_info_appr_` (`reporting_info_appr_`),
  CONSTRAINT `bfdatareporting_crew_info_apprreporting_info_appr_` FOREIGN KEY (`reporting_info_appr_`) REFERENCES `bfdata_reporting_info_appr` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_reporting_crew_info_appr`
--

LOCK TABLES `bfdata_reporting_crew_info_appr` WRITE;
/*!40000 ALTER TABLE `bfdata_reporting_crew_info_appr` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_reporting_crew_info_appr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_reporting_info`
--

DROP TABLE IF EXISTS `bfdata_reporting_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_reporting_info` (
  `id_` int NOT NULL,
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
  `nonlocal_vessel_` int DEFAULT NULL,
  `local_vessel_` int DEFAULT NULL,
  `cause_` varchar(500) DEFAULT NULL,
  `crew_` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_reporting_info_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `FK_bfdata_reporting_info_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_reporting_info`
--

LOCK TABLES `bfdata_reporting_info` WRITE;
/*!40000 ALTER TABLE `bfdata_reporting_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_reporting_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_reporting_info_appr`
--

DROP TABLE IF EXISTS `bfdata_reporting_info_appr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_reporting_info_appr` (
  `crime_check_` varchar(50) DEFAULT NULL,
  `id_` int NOT NULL,
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
  `manage_unit_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_reporting_info_appr_manage_unit_` (`manage_unit_`),
  CONSTRAINT `FK_bfdata_reporting_info_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_reporting_info_appr`
--

LOCK TABLES `bfdata_reporting_info_appr` WRITE;
/*!40000 ALTER TABLE `bfdata_reporting_info_appr` DISABLE KEYS */;
INSERT INTO `bfdata_reporting_info_appr` VALUES (NULL,1,'通过',NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2023-07-05 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,1),(NULL,2,'通过',NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2023-07-05 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,2),(NULL,3,'通过',NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2023-07-05 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,2),(NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2023-07-05 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,2),(NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2023-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,2),(NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2023-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,3),(NULL,7,'通过',NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2022-02-02 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,4),(NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2022-02-02 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,5),(NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,'出港',NULL,NULL,NULL,NULL,NULL,'2021-03-06 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,2),(NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,'入港',NULL,NULL,NULL,NULL,NULL,'2023-06-07 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,2),(NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,'入港',NULL,NULL,NULL,NULL,NULL,'2023-01-04 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,2),(NULL,12,'通过',NULL,NULL,NULL,NULL,NULL,'入港',NULL,NULL,NULL,NULL,NULL,'2023-06-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,2),(NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,'入港',NULL,NULL,NULL,NULL,NULL,'2023-07-05 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,1),(NULL,14,'通过',NULL,NULL,NULL,NULL,NULL,'入港',NULL,NULL,NULL,NULL,NULL,'2000-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,3),(NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,'入港',NULL,NULL,NULL,NULL,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,3),(NULL,16,'通过',NULL,NULL,NULL,NULL,NULL,'入港',NULL,NULL,NULL,NULL,NULL,'2000-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `bfdata_reporting_info_appr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_sailor`
--

DROP TABLE IF EXISTS `bfdata_sailor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_sailor` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `id_card_` varchar(50) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `nation_` int DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `regeit_time_` datetime DEFAULT NULL,
  `service_vessel_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_sailor`
--

LOCK TABLES `bfdata_sailor` WRITE;
/*!40000 ALTER TABLE `bfdata_sailor` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_sailor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_score`
--

DROP TABLE IF EXISTS `bfdata_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_score` (
  `id_` int NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_score_` int DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `month_` varchar(10) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `search_score_` int DEFAULT NULL,
  `sum_score_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_score_` int DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `user_id_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_score`
--

LOCK TABLES `bfdata_score` WRITE;
/*!40000 ALTER TABLE `bfdata_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_sea_labour_agency`
--

DROP TABLE IF EXISTS `bfdata_sea_labour_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_sea_labour_agency` (
  `id_` int NOT NULL,
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
  `manage_unit_` int DEFAULT NULL,
  `border_unit_` int DEFAULT NULL,
  `is_border_` int DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_sea_labour_agency`
--

LOCK TABLES `bfdata_sea_labour_agency` WRITE;
/*!40000 ALTER TABLE `bfdata_sea_labour_agency` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_sea_labour_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_sea_labour_agency_sailor`
--

DROP TABLE IF EXISTS `bfdata_sea_labour_agency_sailor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_sea_labour_agency_sailor` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `id_card_no_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `nationality_` int DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `regist_date_` datetime DEFAULT NULL,
  `seve_vessel_` varchar(100) DEFAULT NULL,
  `tel_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `sea_labour_agency_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `bfdata_sea_labour_agency_sailor_sea_labour_agency_` (`sea_labour_agency_`),
  CONSTRAINT `bfdata_sea_labour_agency_sailor_sea_labour_agency_` FOREIGN KEY (`sea_labour_agency_`) REFERENCES `bfdata_sea_labour_agency` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_sea_labour_agency_sailor`
--

LOCK TABLES `bfdata_sea_labour_agency_sailor` WRITE;
/*!40000 ALTER TABLE `bfdata_sea_labour_agency_sailor` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_sea_labour_agency_sailor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_search_log`
--

DROP TABLE IF EXISTS `bfdata_search_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_search_log` (
  `id_` int unsigned NOT NULL AUTO_INCREMENT,
  `insert_man_` varchar(50) NOT NULL DEFAULT '',
  `insert_time_` datetime DEFAULT NULL,
  `search_name_` varchar(255) NOT NULL DEFAULT '',
  `number_` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_search_log`
--

LOCK TABLES `bfdata_search_log` WRITE;
/*!40000 ALTER TABLE `bfdata_search_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_search_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_ship_repair_industry`
--

DROP TABLE IF EXISTS `bfdata_ship_repair_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_ship_repair_industry` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `company_type_` int DEFAULT NULL,
  `employee_number_` int DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `leg_person_contact_` varchar(50) DEFAULT NULL,
  `leg_person_id_card_` varchar(50) DEFAULT NULL,
  `leg_person_per_addr_` varchar(500) DEFAULT NULL,
  `legal_person_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
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
  `border_unit_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `is_border_` int DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_ship_repair_industry_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_ship_repair_industry_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_ship_repair_industry`
--

LOCK TABLES `bfdata_ship_repair_industry` WRITE;
/*!40000 ALTER TABLE `bfdata_ship_repair_industry` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_ship_repair_industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_ship_repair_industry_appr`
--

DROP TABLE IF EXISTS `bfdata_ship_repair_industry_appr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_ship_repair_industry_appr` (
  `id_` int NOT NULL,
  `approve_status_` varchar(10) DEFAULT NULL,
  `company_type_` int DEFAULT NULL,
  `employee_number_` int DEFAULT NULL,
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
  `ship_type_` int DEFAULT NULL,
  `submit_id_` varchar(50) DEFAULT NULL,
  `submit_name_` varchar(50) DEFAULT NULL,
  `submit_time_` datetime DEFAULT NULL,
  `un_border_unit_` varchar(100) DEFAULT NULL,
  `unit_address_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `wjw_id_` varchar(50) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_ship_repair_industry_appr_manage_unit_` (`manage_unit_`),
  CONSTRAINT `FK_bfdata_ship_repair_industry_appr_manage_unit_` FOREIGN KEY (`manage_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_ship_repair_industry_appr`
--

LOCK TABLES `bfdata_ship_repair_industry_appr` WRITE;
/*!40000 ALTER TABLE `bfdata_ship_repair_industry_appr` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_ship_repair_industry_appr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_ship_repair_penalty`
--

DROP TABLE IF EXISTS `bfdata_ship_repair_penalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_ship_repair_penalty` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `content_` varchar(1000) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `ship_repair_industry_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `bfdata_ship_repair_penalty_ship_repair_industry_` (`ship_repair_industry_`),
  CONSTRAINT `bfdata_ship_repair_penalty_ship_repair_industry_` FOREIGN KEY (`ship_repair_industry_`) REFERENCES `bfdata_ship_repair_industry` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_ship_repair_penalty`
--

LOCK TABLES `bfdata_ship_repair_penalty` WRITE;
/*!40000 ALTER TABLE `bfdata_ship_repair_penalty` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_ship_repair_penalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_ship_repair_record`
--

DROP TABLE IF EXISTS `bfdata_ship_repair_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_ship_repair_record` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `reform_detail_` varchar(500) DEFAULT NULL,
  `regist_date_` datetime DEFAULT NULL,
  `type_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `ship_repair_industry_` int DEFAULT NULL,
  `staff_num_` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_ship_repair_record_ship_repair_industry_` (`ship_repair_industry_`),
  CONSTRAINT `FK_bfdata_ship_repair_record_ship_repair_industry_` FOREIGN KEY (`ship_repair_industry_`) REFERENCES `bfdata_ship_repair_industry` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_ship_repair_record`
--

LOCK TABLES `bfdata_ship_repair_record` WRITE;
/*!40000 ALTER TABLE `bfdata_ship_repair_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_ship_repair_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_subordinate_unit`
--

DROP TABLE IF EXISTS `bfdata_subordinate_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_subordinate_unit` (
  `id_` int NOT NULL,
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
  `local_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_subordinate_unit_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_subordinate_unit_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_subordinate_unit`
--

LOCK TABLES `bfdata_subordinate_unit` WRITE;
/*!40000 ALTER TABLE `bfdata_subordinate_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_subordinate_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_tourist_driver`
--

DROP TABLE IF EXISTS `bfdata_tourist_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_tourist_driver` (
  `id_` int NOT NULL,
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
  `tourist_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_tourist_driver_tourist_vessel_` (`tourist_vessel_`),
  CONSTRAINT `FK_bfdata_tourist_driver_tourist_vessel_` FOREIGN KEY (`tourist_vessel_`) REFERENCES `bfdata_tourist_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_tourist_driver`
--

LOCK TABLES `bfdata_tourist_driver` WRITE;
/*!40000 ALTER TABLE `bfdata_tourist_driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_tourist_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_tourist_vessel`
--

DROP TABLE IF EXISTS `bfdata_tourist_vessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_tourist_vessel` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `power_` decimal(10,2) DEFAULT NULL,
  `tourist_vessel_type_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `vessel_name_` varchar(100) DEFAULT NULL,
  `vessel_use_` int DEFAULT NULL,
  `fun_project_` int DEFAULT NULL,
  `local_vessel_` int DEFAULT NULL,
  `non_certified_vessel_` int DEFAULT NULL,
  `non_local_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_tourist_vessel_fun_project_` (`fun_project_`),
  KEY `FK_bfdata_tourist_vessel_non_certified_vessel_` (`non_certified_vessel_`),
  KEY `FK_bfdata_tourist_vessel_non_local_vessel_` (`non_local_vessel_`),
  KEY `FK_bfdata_tourist_vessel_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_tourist_vessel_fun_project_` FOREIGN KEY (`fun_project_`) REFERENCES `bfdata_fun_project` (`id_`),
  CONSTRAINT `FK_bfdata_tourist_vessel_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_tourist_vessel_non_certified_vessel_` FOREIGN KEY (`non_certified_vessel_`) REFERENCES `bfdata_non_certified_vessel` (`id_`),
  CONSTRAINT `FK_bfdata_tourist_vessel_non_local_vessel_` FOREIGN KEY (`non_local_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_tourist_vessel`
--

LOCK TABLES `bfdata_tourist_vessel` WRITE;
/*!40000 ALTER TABLE `bfdata_tourist_vessel` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_tourist_vessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_vessel_agency`
--

DROP TABLE IF EXISTS `bfdata_vessel_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_vessel_agency` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `address_` varchar(500) DEFAULT NULL,
  `contact_number_` varchar(50) DEFAULT NULL,
  `gender_` int DEFAULT NULL,
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
  `border_unit_` int DEFAULT NULL,
  `record_police_` varchar(100) DEFAULT NULL,
  `manage_unit_` int DEFAULT NULL,
  `is_recover_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_agency_border_unit_` (`border_unit_`),
  CONSTRAINT `FK_bfdata_vessel_agency_border_unit_` FOREIGN KEY (`border_unit_`) REFERENCES `bifang_organization` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_vessel_agency`
--

LOCK TABLES `bfdata_vessel_agency` WRITE;
/*!40000 ALTER TABLE `bfdata_vessel_agency` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_vessel_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_vessel_certificates`
--

DROP TABLE IF EXISTS `bfdata_vessel_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_vessel_certificates` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `certificate_number_` varchar(100) DEFAULT NULL,
  `certificates_type_` int DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `photo_` varchar(500) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `local_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_certificates_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_vessel_certificates_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_vessel_certificates`
--

LOCK TABLES `bfdata_vessel_certificates` WRITE;
/*!40000 ALTER TABLE `bfdata_vessel_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_vessel_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_vessel_equipment`
--

DROP TABLE IF EXISTS `bfdata_vessel_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_vessel_equipment` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `host_number_` varchar(100) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `install_date_` datetime DEFAULT NULL,
  `model_` varchar(100) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `number_` int DEFAULT NULL,
  `param_one_` varchar(100) DEFAULT NULL,
  `param_three_` varchar(100) DEFAULT NULL,
  `param_two_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `local_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_equipment_local_vessel_` (`local_vessel_`),
  CONSTRAINT `FK_bfdata_vessel_equipment_local_vessel_` FOREIGN KEY (`local_vessel_`) REFERENCES `bfdata_local_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_vessel_equipment`
--

LOCK TABLES `bfdata_vessel_equipment` WRITE;
/*!40000 ALTER TABLE `bfdata_vessel_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_vessel_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_vessel_his`
--

DROP TABLE IF EXISTS `bfdata_vessel_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_vessel_his` (
  `id_` int NOT NULL,
  `record_time_` datetime DEFAULT NULL,
  `vessel_name_` varchar(50) DEFAULT NULL,
  `org_person_in_charge_` varchar(255) DEFAULT NULL,
  `new_person_in_charge_` varchar(255) DEFAULT NULL,
  `org_operator_` varchar(255) DEFAULT NULL,
  `new_operator_` varchar(255) DEFAULT NULL,
  `org_manage_unit_` int DEFAULT NULL,
  `new_manage_unit_` int DEFAULT NULL,
  `note_` varchar(255) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_vessel_his`
--

LOCK TABLES `bfdata_vessel_his` WRITE;
/*!40000 ALTER TABLE `bfdata_vessel_his` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_vessel_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_vessel_operator`
--

DROP TABLE IF EXISTS `bfdata_vessel_operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_vessel_operator` (
  `id_` int NOT NULL,
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
  `nonlocal_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_operator_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `FK_bfdata_vessel_operator_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_vessel_operator`
--

LOCK TABLES `bfdata_vessel_operator` WRITE;
/*!40000 ALTER TABLE `bfdata_vessel_operator` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_vessel_operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bfdata_vessel_owner`
--

DROP TABLE IF EXISTS `bfdata_vessel_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bfdata_vessel_owner` (
  `id_` int NOT NULL,
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
  `nonlocal_vessel_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_bfdata_vessel_owner_nonlocal_vessel_` (`nonlocal_vessel_`),
  CONSTRAINT `FK_bfdata_vessel_owner_nonlocal_vessel_` FOREIGN KEY (`nonlocal_vessel_`) REFERENCES `bfdata_nonlocal_vessel` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bfdata_vessel_owner`
--

LOCK TABLES `bfdata_vessel_owner` WRITE;
/*!40000 ALTER TABLE `bfdata_vessel_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bfdata_vessel_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_bill_code`
--

DROP TABLE IF EXISTS `bifang_bill_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_bill_code` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `class_name_` varchar(128) DEFAULT NULL,
  `feature_name_` varchar(128) DEFAULT NULL,
  `value_` int NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_bill_code`
--

LOCK TABLES `bifang_bill_code` WRITE;
/*!40000 ALTER TABLE `bifang_bill_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_bill_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_groups_menu`
--

DROP TABLE IF EXISTS `bifang_groups_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_groups_menu` (
  `menu_id_` int NOT NULL,
  `group_id_` int NOT NULL,
  PRIMARY KEY (`menu_id_`,`group_id_`),
  KEY `FK_bifang_groups_menu_group_id_` (`group_id_`),
  CONSTRAINT `FK_bifang_groups_menu_group_id_` FOREIGN KEY (`group_id_`) REFERENCES `bifang_user_group` (`id_`),
  CONSTRAINT `FK_bifang_groups_menu_menu_id_` FOREIGN KEY (`menu_id_`) REFERENCES `bifang_menu` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_groups_menu`
--

LOCK TABLES `bifang_groups_menu` WRITE;
/*!40000 ALTER TABLE `bifang_groups_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_groups_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_groups_role`
--

DROP TABLE IF EXISTS `bifang_groups_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_groups_role` (
  `role_id_` int NOT NULL,
  `group_id_` int NOT NULL,
  PRIMARY KEY (`role_id_`,`group_id_`),
  KEY `FK_bifang_groups_role_group_id_` (`group_id_`),
  CONSTRAINT `FK_bifang_groups_role_group_id_` FOREIGN KEY (`group_id_`) REFERENCES `bifang_user_group` (`id_`),
  CONSTRAINT `FK_bifang_groups_role_role_id_` FOREIGN KEY (`role_id_`) REFERENCES `bifang_role` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_groups_role`
--

LOCK TABLES `bifang_groups_role` WRITE;
/*!40000 ALTER TABLE `bifang_groups_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_groups_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_groups_user`
--

DROP TABLE IF EXISTS `bifang_groups_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_groups_user` (
  `user_id_` int NOT NULL,
  `group_id_` int NOT NULL,
  PRIMARY KEY (`user_id_`,`group_id_`),
  KEY `FK_bifang_groups_user_group_id_` (`group_id_`),
  CONSTRAINT `FK_bifang_groups_user_group_id_` FOREIGN KEY (`group_id_`) REFERENCES `bifang_user_group` (`id_`),
  CONSTRAINT `FK_bifang_groups_user_user_id_` FOREIGN KEY (`user_id_`) REFERENCES `bifang_user` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_groups_user`
--

LOCK TABLES `bifang_groups_user` WRITE;
/*!40000 ALTER TABLE `bifang_groups_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_groups_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_help_article`
--

DROP TABLE IF EXISTS `bifang_help_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_help_article` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `attention_rate_` int DEFAULT NULL,
  `content_` varchar(2000) DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `menu_` varchar(100) DEFAULT NULL,
  `note_` varchar(50) DEFAULT NULL,
  `title_` varchar(100) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_help_article`
--

LOCK TABLES `bifang_help_article` WRITE;
/*!40000 ALTER TABLE `bifang_help_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_help_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_mail_record`
--

DROP TABLE IF EXISTS `bifang_mail_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_mail_record` (
  `id_` int NOT NULL,
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
  `send_count_` int DEFAULT NULL,
  `state_` varchar(255) DEFAULT NULL,
  `subject_` varchar(1000) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_mail_record`
--

LOCK TABLES `bifang_mail_record` WRITE;
/*!40000 ALTER TABLE `bifang_mail_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_mail_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_menu`
--

DROP TABLE IF EXISTS `bifang_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_menu` (
  `id_` int NOT NULL,
  `created_at_` datetime DEFAULT NULL,
  `display_order_` int NOT NULL,
  `leaf_` tinyint(1) DEFAULT '0',
  `menu_name_` varchar(128) DEFAULT NULL,
  `menu_root_` varchar(255) DEFAULT NULL,
  `menu_url_` varchar(128) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `parent_id_` int DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_menu`
--

LOCK TABLES `bifang_menu` WRITE;
/*!40000 ALTER TABLE `bifang_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_menus_tenant`
--

DROP TABLE IF EXISTS `bifang_menus_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_menus_tenant` (
  `menu_id_` int NOT NULL,
  `tenant_id_` int NOT NULL,
  PRIMARY KEY (`menu_id_`,`tenant_id_`),
  KEY `FK_bifang_menus_tenant_tenant_id_` (`tenant_id_`),
  CONSTRAINT `FK_bifang_menus_tenant_menu_id_` FOREIGN KEY (`menu_id_`) REFERENCES `bifang_menu` (`id_`),
  CONSTRAINT `FK_bifang_menus_tenant_tenant_id_` FOREIGN KEY (`tenant_id_`) REFERENCES `bifang_tenant` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_menus_tenant`
--

LOCK TABLES `bifang_menus_tenant` WRITE;
/*!40000 ALTER TABLE `bifang_menus_tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_menus_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_message`
--

DROP TABLE IF EXISTS `bifang_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_message` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `message_` varchar(300) DEFAULT NULL,
  `read_state_` int DEFAULT NULL,
  `receiver_name_` varchar(255) DEFAULT NULL,
  `send_at_` datetime DEFAULT NULL,
  `sender_name_` varchar(255) DEFAULT NULL,
  `title_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_message`
--

LOCK TABLES `bifang_message` WRITE;
/*!40000 ALTER TABLE `bifang_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_organization`
--

DROP TABLE IF EXISTS `bifang_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_organization` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `created_at_` datetime DEFAULT NULL,
  `display_order_` int NOT NULL,
  `leaf_` tinyint(1) DEFAULT '0',
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `org_name_` varchar(128) DEFAULT NULL,
  `org_root_` varchar(255) DEFAULT NULL,
  `org_full_name_` varchar(500) DEFAULT NULL,
  `parent_id_` int DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  `user_group_` int DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_organization`
--

LOCK TABLES `bifang_organization` WRITE;
/*!40000 ALTER TABLE `bifang_organization` DISABLE KEYS */;
INSERT INTO `bifang_organization` VALUES (1,NULL,NULL,1,0,NULL,NULL,NULL,NULL,'环翠大队 1',NULL,NULL,NULL),(2,NULL,NULL,2,0,NULL,NULL,NULL,NULL,'荣成大队 2',NULL,NULL,NULL),(3,NULL,NULL,3,0,NULL,NULL,NULL,NULL,'乳山大队 3',NULL,NULL,NULL),(4,NULL,NULL,4,0,NULL,NULL,NULL,NULL,'文登大队 4',NULL,NULL,NULL),(5,NULL,NULL,5,0,NULL,NULL,NULL,NULL,'经区大队 5',NULL,NULL,NULL),(6,NULL,NULL,6,0,NULL,NULL,NULL,NULL,'高区大队 6',NULL,NULL,NULL);
/*!40000 ALTER TABLE `bifang_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_param`
--

DROP TABLE IF EXISTS `bifang_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_param` (
  `id_` int NOT NULL,
  `code_` varchar(50) NOT NULL,
  `created_at_` datetime DEFAULT NULL,
  `desc_` varchar(200) DEFAULT NULL,
  `display_order_` int DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  `value_` varchar(50) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_param`
--

LOCK TABLES `bifang_param` WRITE;
/*!40000 ALTER TABLE `bifang_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_role`
--

DROP TABLE IF EXISTS `bifang_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_role` (
  `id_` int NOT NULL,
  `created_at_` datetime DEFAULT NULL,
  `desc_` varchar(200) DEFAULT NULL,
  `name_` varchar(50) NOT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_role`
--

LOCK TABLES `bifang_role` WRITE;
/*!40000 ALTER TABLE `bifang_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_roles_tenant`
--

DROP TABLE IF EXISTS `bifang_roles_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_roles_tenant` (
  `role_id_` int NOT NULL,
  `tenant_id_` int NOT NULL,
  PRIMARY KEY (`role_id_`,`tenant_id_`),
  KEY `FK_bifang_roles_tenant_tenant_id_` (`tenant_id_`),
  CONSTRAINT `FK_bifang_roles_tenant_role_id_` FOREIGN KEY (`role_id_`) REFERENCES `bifang_role` (`id_`),
  CONSTRAINT `FK_bifang_roles_tenant_tenant_id_` FOREIGN KEY (`tenant_id_`) REFERENCES `bifang_tenant` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_roles_tenant`
--

LOCK TABLES `bifang_roles_tenant` WRITE;
/*!40000 ALTER TABLE `bifang_roles_tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_roles_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_tenant`
--

DROP TABLE IF EXISTS `bifang_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_tenant` (
  `id_` int NOT NULL,
  `created_at_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `status_` int DEFAULT NULL,
  `tenant_code_` varchar(50) DEFAULT NULL,
  `tenant_name_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_tenant`
--

LOCK TABLES `bifang_tenant` WRITE;
/*!40000 ALTER TABLE `bifang_tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_user`
--

DROP TABLE IF EXISTS `bifang_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_user` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `created_at_` datetime DEFAULT NULL,
  `last_login_time_` datetime DEFAULT NULL,
  `login_name_` varchar(50) DEFAULT NULL,
  `menu_style_` varchar(50) DEFAULT NULL,
  `name_` varchar(128) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `password_` varchar(50) DEFAULT NULL,
  `refresh_time_` int DEFAULT NULL,
  `auto_show_message_` tinyint(1) DEFAULT NULL,
  `status_` int DEFAULT NULL,
  `theme_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  `wall_paper_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_user`
--

LOCK TABLES `bifang_user` WRITE;
/*!40000 ALTER TABLE `bifang_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_user_group`
--

DROP TABLE IF EXISTS `bifang_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_user_group` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `created_at_` datetime DEFAULT NULL,
  `group_code_` varchar(255) DEFAULT NULL,
  `group_desc_` varchar(255) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operator_` varchar(50) DEFAULT NULL,
  `updated_at_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_user_group`
--

LOCK TABLES `bifang_user_group` WRITE;
/*!40000 ALTER TABLE `bifang_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bifang_users_org`
--

DROP TABLE IF EXISTS `bifang_users_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bifang_users_org` (
  `org_id_` int NOT NULL,
  `user_id_` int NOT NULL,
  PRIMARY KEY (`org_id_`,`user_id_`),
  KEY `FK_bifang_users_org_user_id_` (`user_id_`),
  CONSTRAINT `FK_bifang_users_org_org_id_` FOREIGN KEY (`org_id_`) REFERENCES `bifang_organization` (`id_`),
  CONSTRAINT `FK_bifang_users_org_user_id_` FOREIGN KEY (`user_id_`) REFERENCES `bifang_user` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bifang_users_org`
--

LOCK TABLES `bifang_users_org` WRITE;
/*!40000 ALTER TABLE `bifang_users_org` DISABLE KEYS */;
/*!40000 ALTER TABLE `bifang_users_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changelog` (
  `ID` decimal(20,0) NOT NULL,
  `APPLIED_AT` varchar(25) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelog`
--

LOCK TABLES `changelog` WRITE;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_feedback_board`
--

DROP TABLE IF EXISTS `component_feedback_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_feedback_board` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `answer_` varchar(500) DEFAULT NULL,
  `answer_date_` timestamp NULL DEFAULT NULL,
  `answer_man_` varchar(10) DEFAULT NULL,
  `ask_` varchar(500) DEFAULT NULL,
  `ask_date_` timestamp NULL DEFAULT NULL,
  `ask_man_` varchar(10) DEFAULT NULL,
  `cause_` int DEFAULT NULL,
  `cost_hour_` int DEFAULT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` timestamp NULL DEFAULT NULL,
  `level_` int DEFAULT NULL,
  `menu_` varchar(100) DEFAULT NULL,
  `no_` int DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `status_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_feedback_board`
--

LOCK TABLES `component_feedback_board` WRITE;
/*!40000 ALTER TABLE `component_feedback_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_feedback_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_full_text_retrieval`
--

DROP TABLE IF EXISTS `component_full_text_retrieval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_full_text_retrieval` (
  `id_` int NOT NULL,
  `tenant_code_` varchar(31) DEFAULT NULL,
  `class_name_` varchar(100) DEFAULT NULL,
  `class_name_cn_` varchar(10) DEFAULT NULL,
  `record_id_` int DEFAULT NULL,
  `record_text_` longtext,
  PRIMARY KEY (`id_`),
  KEY `search` (`class_name_`,`record_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_full_text_retrieval`
--

LOCK TABLES `component_full_text_retrieval` WRITE;
/*!40000 ALTER TABLE `component_full_text_retrieval` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_full_text_retrieval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_goblin_sm`
--

DROP TABLE IF EXISTS `component_goblin_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_goblin_sm` (
  `id_` int NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(20) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_goblin_sm`
--

LOCK TABLES `component_goblin_sm` WRITE;
/*!40000 ALTER TABLE `component_goblin_sm` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_goblin_sm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_goblin_sm_status`
--

DROP TABLE IF EXISTS `component_goblin_sm_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_goblin_sm_status` (
  `id_` int NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `name_` varchar(20) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `order_num_` int DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `goblin_sm_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_component_goblin_sm_status_goblin_sm_` (`goblin_sm_`),
  CONSTRAINT `FK_component_goblin_sm_status_goblin_sm_` FOREIGN KEY (`goblin_sm_`) REFERENCES `component_goblin_sm` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_goblin_sm_status`
--

LOCK TABLES `component_goblin_sm_status` WRITE;
/*!40000 ALTER TABLE `component_goblin_sm_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_goblin_sm_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_goblin_sm_transition`
--

DROP TABLE IF EXISTS `component_goblin_sm_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_goblin_sm_transition` (
  `id_` int NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `operation_` varchar(20) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `goblin_sm_` int DEFAULT NULL,
  `current_status_` int DEFAULT NULL,
  `next_status_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_component_goblin_sm_transition_current_status_` (`current_status_`),
  KEY `FK_component_goblin_sm_transition_next_status_` (`next_status_`),
  KEY `FK_component_goblin_sm_transition_goblin_sm_` (`goblin_sm_`),
  CONSTRAINT `FK_component_goblin_sm_transition_current_status_` FOREIGN KEY (`current_status_`) REFERENCES `component_goblin_sm_status` (`id_`),
  CONSTRAINT `FK_component_goblin_sm_transition_goblin_sm_` FOREIGN KEY (`goblin_sm_`) REFERENCES `component_goblin_sm` (`id_`),
  CONSTRAINT `FK_component_goblin_sm_transition_next_status_` FOREIGN KEY (`next_status_`) REFERENCES `component_goblin_sm_status` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_goblin_sm_transition`
--

LOCK TABLES `component_goblin_sm_transition` WRITE;
/*!40000 ALTER TABLE `component_goblin_sm_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_goblin_sm_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_outer_inside_menu`
--

DROP TABLE IF EXISTS `component_outer_inside_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_outer_inside_menu` (
  `id_` int NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `system_` int DEFAULT NULL,
  `local_menu_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_component_outer_inside_menu_system_` (`system_`),
  KEY `FK_component_outer_inside_menu_local_menu_` (`local_menu_`),
  CONSTRAINT `FK_component_outer_inside_menu_local_menu_` FOREIGN KEY (`local_menu_`) REFERENCES `bifang_menu` (`id_`),
  CONSTRAINT `FK_component_outer_inside_menu_system_` FOREIGN KEY (`system_`) REFERENCES `component_outer_inside_system` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_outer_inside_menu`
--

LOCK TABLES `component_outer_inside_menu` WRITE;
/*!40000 ALTER TABLE `component_outer_inside_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_outer_inside_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_outer_inside_system`
--

DROP TABLE IF EXISTS `component_outer_inside_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_outer_inside_system` (
  `id_` int NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `login_page_` varchar(200) DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `url_` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_outer_inside_system`
--

LOCK TABLES `component_outer_inside_system` WRITE;
/*!40000 ALTER TABLE `component_outer_inside_system` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_outer_inside_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_outer_inside_user`
--

DROP TABLE IF EXISTS `component_outer_inside_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_outer_inside_user` (
  `id_` int NOT NULL,
  `insert_man_` varchar(50) DEFAULT NULL,
  `insert_time_` datetime DEFAULT NULL,
  `note_` varchar(200) DEFAULT NULL,
  `password_` varchar(50) DEFAULT NULL,
  `update_man_` varchar(50) DEFAULT NULL,
  `update_time_` datetime DEFAULT NULL,
  `user_name_` varchar(50) DEFAULT NULL,
  `system_` int DEFAULT NULL,
  `local_user_` int DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FK_component_outer_inside_user_system_` (`system_`),
  KEY `FK_component_outer_inside_user_local_user_` (`local_user_`),
  CONSTRAINT `FK_component_outer_inside_user_local_user_` FOREIGN KEY (`local_user_`) REFERENCES `bifang_user` (`id_`),
  CONSTRAINT `FK_component_outer_inside_user_system_` FOREIGN KEY (`system_`) REFERENCES `component_outer_inside_system` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_outer_inside_user`
--

LOCK TABLES `component_outer_inside_user` WRITE;
/*!40000 ALTER TABLE `component_outer_inside_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_outer_inside_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_sequence`
--

DROP TABLE IF EXISTS `id_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_sequence` (
  `key_id_` varchar(100) NOT NULL,
  `gen_value_` int DEFAULT NULL,
  PRIMARY KEY (`key_id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_sequence`
--

LOCK TABLES `id_sequence` WRITE;
/*!40000 ALTER TABLE `id_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `id_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11 14:20:56
