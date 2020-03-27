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
-- Table structure for table `exposure`
--

DROP TABLE IF EXISTS `exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure` (
  `exposure_id` int(5) NOT NULL,
  `exposure_name` varchar(100) DEFAULT NULL,
  `exposure_is_actived` tinyint(1) DEFAULT '1',
  `exposure_created_at` datetime DEFAULT NULL,
  `exposure_updated_at` datetime DEFAULT NULL,
  `exposure_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`exposure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exposure`
--

LOCK TABLES `exposure` WRITE;
/*!40000 ALTER TABLE `exposure` DISABLE KEYS */;
/*!40000 ALTER TABLE `exposure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exposure_character`
--

DROP TABLE IF EXISTS `exposure_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_character` (
  `exposure_character_id` int(11) NOT NULL AUTO_INCREMENT,
  `exposureId` int(5) DEFAULT NULL,
  `exposure_character_name` varchar(100) DEFAULT NULL,
  `exposure_character_type` int(1) DEFAULT NULL COMMENT '1 - TEXT (varchar 200)\n2 - TINYINT(1/0)\n3 - TINYINT(Yes/No)\n4 - DATE',
  `exposure_character_desc` varchar(100) DEFAULT NULL,
  `exposure_character_is_actived` tinyint(1) DEFAULT NULL,
  `exposure_character_created_at` datetime DEFAULT NULL,
  `exposure_character_updated_at` datetime DEFAULT NULL,
  `exposure_character_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`exposure_character_id`),
  KEY `exposureId` (`exposureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exposure_character`
--

LOCK TABLES `exposure_character` WRITE;
/*!40000 ALTER TABLE `exposure_character` DISABLE KEYS */;
/*!40000 ALTER TABLE `exposure_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nature_of_exposure`
--

DROP TABLE IF EXISTS `nature_of_exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nature_of_exposure` (
  `nature_of_exposure_id` int(11) NOT NULL AUTO_INCREMENT,
  `nature_of_exposure_transId` int(9) NOT NULL,
  `exposureId` int(3) DEFAULT NULL,
  `exposureCharId` int(5) DEFAULT NULL,
  `exposureAnsw` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nature_of_exposure_is_actived` tinyint(1) DEFAULT '1',
  `nature_of_exposure_created_at` datetime DEFAULT NULL,
  `nature_of_exposure_updated_at` datetime DEFAULT NULL,
  `nature_of_exposure_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`nature_of_exposure_id`),
  KEY `nature_of_exposure_transId` (`nature_of_exposure_transId`),
  KEY `exposureId` (`exposureId`),
  KEY `exposureCatId` (`exposureCharId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nature_of_exposure`
--

LOCK TABLES `nature_of_exposure` WRITE;
/*!40000 ALTER TABLE `nature_of_exposure` DISABLE KEYS */;
/*!40000 ALTER TABLE `nature_of_exposure` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_data`
--

LOCK TABLES `trans_data` WRITE;
/*!40000 ALTER TABLE `trans_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_details`
--

DROP TABLE IF EXISTS `trans_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_details` (
  `id_trans_detail_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `trans_detail_transId` int(9) unsigned NOT NULL,
  `trans_detail_qn_id` int(2) unsigned NOT NULL DEFAULT '0',
  `trans_detail_answ_id` int(1) unsigned NOT NULL DEFAULT '0',
  `trans_detail_is_actived` tinyint(1) NOT NULL DEFAULT '1',
  `trans_detail_created_at` datetime NOT NULL,
  `trans_detail_updated_at` datetime NOT NULL,
  `trans_detail_deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id_trans_detail_id`),
  KEY `trans_detail_transId` (`trans_detail_transId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_details`
--

LOCK TABLES `trans_details` WRITE;
/*!40000 ALTER TABLE `trans_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_details` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_info`
--

LOCK TABLES `trans_info` WRITE;
/*!40000 ALTER TABLE `trans_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-26 19:26:57
