CREATE DATABASE  IF NOT EXISTS `mkt_covid_tracker` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mkt_covid_tracker`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mkt_covid_tracker
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `config_id` int(2) NOT NULL AUTO_INCREMENT,
  `system_start` datetime DEFAULT NULL,
  `system_end` datetime DEFAULT NULL,
  `system_is_actived` tinyint(1) DEFAULT '1',
  `system_created_at` datetime DEFAULT NULL,
  `system_updated_at` datetime DEFAULT NULL,
  `system_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'2020-03-27 10:07:57','2020-03-28 10:07:57',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exposure`
--

DROP TABLE IF EXISTS `exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure` (
  `exposure_id` int(11) NOT NULL AUTO_INCREMENT,
  `exposure_transId` int(9) NOT NULL,
  `exposure_CatId` int(3) DEFAULT NULL,
  `exposure_CharId` int(5) DEFAULT NULL,
  `exposure_answ` varchar(100) DEFAULT NULL,
  `exposure_is_actived` tinyint(1) DEFAULT '1',
  `exposure_created_at` datetime DEFAULT NULL,
  `exposure_updated_at` datetime DEFAULT NULL,
  `exposure_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`exposure_id`),
  KEY `nature_of_exposure_transId` (`exposure_transId`),
  KEY `exposureCatId` (`exposure_CatId`),
  KEY `exposureCharId` (`exposure_CharId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exposure`
--

LOCK TABLES `exposure` WRITE;
/*!40000 ALTER TABLE `exposure` DISABLE KEYS */;
INSERT INTO `exposure` VALUES (1,1,6,42,'Store',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,1,6,43,'S & R',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(3,1,6,44,'2020-02-27',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(4,1,6,45,'Taguig',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(5,1,6,46,'Metro Manila',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(6,1,6,47,'NCR',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(7,1,6,48,'1',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(8,1,6,49,'Cashier 07',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(9,2,7,50,'Hospital',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(10,2,7,51,'Makati Medical Center',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(11,2,7,52,'2020-02-29',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(12,2,7,53,'Makati',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(13,2,7,54,'Metro Manila',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(14,2,7,55,'NCR',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(15,2,7,56,'1',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(16,2,7,57,'Doc. Granger',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(17,3,9,60,'Goverment Office',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(18,3,9,61,'Senate of the Philippines',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(19,3,9,62,'Manila',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(20,3,9,63,'Metro Manila',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(21,3,9,64,'NCR',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(22,3,9,65,'2020-03-25',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `exposure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exposure_category`
--

DROP TABLE IF EXISTS `exposure_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_category` (
  `exposure_id` int(5) NOT NULL AUTO_INCREMENT,
  `exposure_name` varchar(100) DEFAULT NULL,
  `exposure_is_actived` tinyint(1) DEFAULT '1',
  `exposure_created_at` datetime DEFAULT NULL,
  `exposure_updated_at` datetime DEFAULT NULL,
  `exposure_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`exposure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exposure_category`
--

LOCK TABLES `exposure_category` WRITE;
/*!40000 ALTER TABLE `exposure_category` DISABLE KEYS */;
INSERT INTO `exposure_category` VALUES (1,'PLANE',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,'SEA VESSEL',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(3,'LAND VEHICLE',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(4,'ACCOMMODATION',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(5,'FOOD ESTABLISHMENT',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(6,'STORE',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(7,'HEALTH FACILITY',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(8,'EVENT',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(9,'WORK PLACE',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `exposure_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exposure_character`
--

DROP TABLE IF EXISTS `exposure_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_character` (
  `exposure_character_id` int(11) NOT NULL AUTO_INCREMENT,
  `exposure_character_CatId` int(5) DEFAULT NULL,
  `exposure_character_name` varchar(100) DEFAULT NULL,
  `exposure_character_type` int(1) DEFAULT NULL COMMENT '1 - TEXT (varchar 200)\n2 - TINYINT(1/0)\n3 - TINYINT(Yes/No)\n4 - DATE',
  `exposure_character_desc` varchar(100) DEFAULT NULL,
  `exposure_character_is_actived` tinyint(1) DEFAULT NULL,
  `exposure_character_created_at` datetime DEFAULT NULL,
  `exposure_character_updated_at` datetime DEFAULT NULL,
  `exposure_character_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`exposure_character_id`),
  KEY `exposureCatId` (`exposure_character_CatId`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exposure_character`
--

LOCK TABLES `exposure_character` WRITE;
/*!40000 ALTER TABLE `exposure_character` DISABLE KEYS */;
INSERT INTO `exposure_character` VALUES (1,1,'Airlane',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,1,'Flight No.',1,'',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(3,1,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(4,1,'Crew',2,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(5,1,'Passenger Seat No.',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(6,1,'Within 4-rows',3,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(7,1,'In-flight',2,'If crew',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(8,1,'Ground',2,'If crew',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(9,2,'Name of Sea Vessel',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(10,2,'Vessel No.',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(11,2,'Route',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(12,2,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(13,2,'Crew',2,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(14,2,'Passenger Seat No.',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(15,2,'Within 4-rows',3,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(16,2,'In-flight',2,'If crew',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(17,2,'Ground',2,'If crew',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(18,3,'Specific type',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(19,3,'Route',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(20,3,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(21,3,'Crew',2,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(22,3,'Passenger Seat No.',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(23,3,'Within 4-rows',3,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(24,3,'Driver',2,'If crew',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(25,3,'Conductor',2,'If crew',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(26,4,'Specific type',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(27,4,'Name',1,'',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(28,4,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(29,4,'Municipality/City',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(30,4,'Province',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(31,4,'Region',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(32,4,'Guest',2,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(33,4,'Hotel Worker',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(34,5,'Specific type',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(35,5,'Name',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(36,5,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(37,5,'Municipality/City',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(38,5,'Province',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(39,5,'Region',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(40,5,'Diner',2,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(41,5,'Crew',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(42,6,'Specific type',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(43,6,'Name',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(44,6,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(45,6,'Municipality/City',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(46,6,'Province',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(47,6,'Region',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(48,6,'Customer',2,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(49,6,'Worker',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(50,7,'Specific type',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(51,7,'Name',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(52,7,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(53,7,'Municipality/City',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(54,7,'Province',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(55,7,'Region',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(56,7,'Patient',2,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(57,7,'Health Worker',1,'If health worker, fill-out assessment of risk exposure WHO form',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(58,8,'Specific type',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(59,8,'Event place',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(60,8,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(61,9,'Company Name',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(62,9,'Municipality/City',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(63,9,'Province',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(64,9,'Region',1,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(65,9,'Date of Last Exposure',4,NULL,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `exposure_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `status_id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` varchar(10) DEFAULT NULL,
  `status_name` varchar(100) DEFAULT NULL,
  `status_is_active` tinyint(1) DEFAULT '1',
  `status_created_at` datetime DEFAULT NULL,
  `status_updated_at` datetime DEFAULT NULL,
  `status_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'PUI','Patient under investigation',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,'PUM','Person under monitoring',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_data`
--

DROP TABLE IF EXISTS `trans_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_data` (
  `trans_data_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `trans_data_transId` int(9) unsigned NOT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `firstname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `middlename` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nationality` varchar(100) CHARACTER SET latin1 NOT NULL,
  `age` int(2) NOT NULL DEFAULT '0',
  `female` tinyint(1) NOT NULL DEFAULT '0',
  `pregnant` tinyint(1) NOT NULL DEFAULT '0',
  `trimester` int(3) NOT NULL DEFAULT '0',
  `date_of_birth` date DEFAULT NULL,
  `civil_status` varchar(25) CHARACTER SET latin1 NOT NULL,
  `religion` varchar(45) CHARACTER SET latin1 NOT NULL,
  `home_no` varchar(100) CHARACTER SET latin1 NOT NULL,
  `barangay` varchar(100) CHARACTER SET latin1 NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 NOT NULL,
  `province` varchar(100) CHARACTER SET latin1 NOT NULL,
  `region` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email_address` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `contact_details` varchar(45) CHARACTER SET latin1 NOT NULL,
  `mobile_no` varchar(45) CHARACTER SET latin1 NOT NULL,
  `blood_type` varchar(10) CHARACTER SET latin1 NOT NULL,
  `date_of_last_exposure` date DEFAULT NULL,
  `trans_data_is_actived` tinyint(1) NOT NULL DEFAULT '1',
  `trans_data_created_at` datetime DEFAULT NULL,
  `trans_data_updated_at` datetime DEFAULT NULL,
  `trans_data_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`trans_data_id`),
  KEY `trans_data_transId` (`trans_data_transId`),
  KEY `lastname` (`lastname`),
  KEY `firstname` (`firstname`),
  KEY `local_address` (`barangay`,`city`,`province`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_data`
--

LOCK TABLES `trans_data` WRITE;
/*!40000 ALTER TABLE `trans_data` DISABLE KEYS */;
INSERT INTO `trans_data` VALUES (1,1,'Dela Cruz','Juan','Kalayaan','Filipino',34,0,0,0,'1985-06-24','S','Catholic','#12345','West Rembo','Makati','Metro Manila','NCR','dcjuan@test.com','8888-88-88','0901-0000000','O+','2020-02-29',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,2,'Balmond','Jeric','Valir','Filipino',42,0,0,0,'1977-06-24','M','Iglesia','#7','West Rembo','Makati','Metro Manila','NCR','mlegend@test.com','8888-88-88','0901-0000000','O','2020-02-27',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(3,3,'Kimmy','Nathalia','James','Filipino',41,1,0,0,'1978-06-24','M','Catholic','BLDG ABC ROOM 123','Cembo','Makati','Metro Manila','NCR','mlegend2@test.com','8888-88-88','0901-0000000','B','2020-02-07',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `trans_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_health_data`
--

DROP TABLE IF EXISTS `trans_health_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_health_data` (
  `health_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `health_data_transId` int(9) unsigned DEFAULT NULL,
  `medical_condition_history` text,
  `current_medication` text,
  `health_data_is_actived` tinyint(1) NOT NULL DEFAULT '1',
  `health_data_created_at` datetime DEFAULT NULL,
  `health_data_updated_at` datetime DEFAULT NULL,
  `health_data_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`health_data_id`),
  KEY `health_data_transId` (`health_data_transId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_health_data`
--

LOCK TABLES `trans_health_data` WRITE;
/*!40000 ALTER TABLE `trans_health_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_health_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_info`
--

DROP TABLE IF EXISTS `trans_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_info` (
  `trans_info_id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `trans_info_code` varchar(10) CHARACTER SET latin1 NOT NULL,
  `trans_info_statusId` int(1) NOT NULL DEFAULT '0',
  `trans_info_handler` int(5) unsigned NOT NULL DEFAULT '0',
  `trans_info_is_actived` tinyint(1) NOT NULL DEFAULT '1',
  `trans_info_created_at` datetime DEFAULT NULL,
  `trans_info_updated_at` datetime DEFAULT NULL,
  `trans_info_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`trans_info_id`),
  UNIQUE KEY `trans_info_code_UNIQUE` (`trans_info_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_info`
--

LOCK TABLES `trans_info` WRITE;
/*!40000 ALTER TABLE `trans_info` DISABLE KEYS */;
INSERT INTO `trans_info` VALUES (1,'MKT-00001',1,3,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,'MKT-00002',1,3,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(3,'MKT-00003',2,3,1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `trans_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_role_name` varchar(100) DEFAULT NULL,
  `user_role_code` varchar(10) DEFAULT NULL,
  `user_role_is_actived` tinyint(1) DEFAULT '1',
  `user_role_created_at` datetime DEFAULT NULL,
  `user_role_updated_at` datetime DEFAULT NULL,
  `user_role_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `user_role_code_UNIQUE` (`user_role_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Super Admin','SP-ADM',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,'Administrator','ADM',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(3,'User','MKT-USR',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_RoleId` int(1) unsigned DEFAULT NULL,
  `user_lname` varchar(100) DEFAULT NULL,
  `user_fname` varchar(100) DEFAULT NULL,
  `user_mname` varchar(100) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_passkey` varchar(200) DEFAULT NULL,
  `user_department` varchar(200) DEFAULT NULL,
  `user_deptcode` varchar(50) DEFAULT NULL,
  `user_emp_id` varchar(45) NOT NULL,
  `user_is_actived` tinyint(1) DEFAULT '1',
  `user_created_at` datetime DEFAULT NULL,
  `user_updated_at` datetime DEFAULT NULL,
  `user_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  KEY `RoleId` (`user_RoleId`),
  KEY `user_name` (`user_lname`,`user_fname`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Talaguit','Brando','Tausa','brando.talaguit','557cffca45e3e22a3668a4a837be2da4','University of Makati','UMak','ADM-C122',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,1,'Canapi','Jonathan','Binuluan','super_admin','be51e7808dda971f6d21a59c0a46b481','University of Makati','UMak','11111',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(3,2,'Diaz','John Denver',NULL,'denver','cbf0f86dc05fdcd574220a6bcca3c3cc','University of Makati','UMak','22222',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(4,2,'Bautista','Mc Kevin',NULL,'MasterJoker05','c51d84f62601cb9bcd79fa6344bc3f3e','University of Makati','UMak','33333',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(5,3,'Binay-Campos','Mari-len Abegail','M','abby','72f4fd183672b1d93cabade290b03ecb','City of Makati','MKT','00001',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-27 14:29:40
