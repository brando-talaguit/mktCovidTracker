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
-- Table structure for table `case_status`
--

DROP TABLE IF EXISTS `case_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `case_status` (
  `case_status_id` int(2) NOT NULL AUTO_INCREMENT,
  `StatusId` int(1) DEFAULT NULL,
  `CaseId` int(1) DEFAULT NULL,
  PRIMARY KEY (`case_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_status`
--

LOCK TABLES `case_status` WRITE;
/*!40000 ALTER TABLE `case_status` DISABLE KEYS */;
INSERT INTO `case_status` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3);
/*!40000 ALTER TABLE `case_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `case_id` int(1) NOT NULL AUTO_INCREMENT,
  `case_name` varchar(45) DEFAULT NULL,
  `case_is_actived` tinyint(1) DEFAULT '1',
  `case_created_at` datetime DEFAULT NULL,
  `case_updated_at` datetime DEFAULT NULL,
  `case_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (1,'Active',1,'2020-03-29 12:45:02','2020-03-29 12:45:02',NULL),(2,'Recovered',1,'2020-03-29 12:45:02','2020-03-29 12:45:02',NULL),(3,'Deaths',1,'2020-03-29 12:45:02','2020-03-29 12:45:02',NULL);
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'PUI','Patient under investigation',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(2,'PUM','Person under monitoring',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(3,'R','Recovered',1,'2020-03-29 12:45:02','2020-03-29 12:45:02',NULL),(4,'D','Deceased',1,'2020-03-29 12:45:02','2020-03-29 12:45:02',NULL);
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mkt_covid_tracker'
--
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmedCasesByAgeGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConfirmedCasesByAgeGroup`()
BEGIN
-- Confirmed Cases by age group 
select count(*) as "ConfirmedCases",
	CASE 
		WHEN age >= 10 AND age <= 19 THEN '10 to 19'
		WHEN age >= 20 AND age <= 29 THEN '20 to 29'
		WHEN age >= 30 AND age <= 39 THEN '30 to 39'
		WHEN age >= 40 AND age <= 49 THEN '40 to 49'
		WHEN age >= 50 AND age <= 59 THEN '50 to 59'
		WHEN age >= 60 AND age <= 69 THEN '60 to 69'
		WHEN age >= 70 AND age <= 79 THEN '70 to 79'
		WHEN age >= 80 AND age <= 89 THEN '80 to 89'
		WHEN age >= 90 AND age <= 99 THEN '90 to 99'
	END as age_group,
    SUM(IF(female = 0, 1, 0)) as Male,
	SUM(IF(female = 1, 1, 0)) as Female
from (
	select 
		DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(date_of_birth, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(date_of_birth, '00-%m-%d')) AS age,
        female
	from trans_info
		left join trans_data on trans_data_transId = trans_info_id
) as tbl
group by age_group
;

-- verification 
/*
select 
	DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(date_of_birth, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(date_of_birth, '00-%m-%d')) AS age,
    female
from trans_info
	left join trans_data on trans_data_transId = trans_info_id
where city = "Makati"
;
*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmedCasesByMktBarangay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConfirmedCasesByMktBarangay`()
BEGIN
-- Confirmed Cases by barangay 
select Barangay, count(*) as "ConfirmedCases", 
	count(CASE WHEN trans_info_statusId = 1 THEN 1 END) as "PUM",
    count(CASE WHEN trans_info_statusId = 2 THEN 1 END) as "PUI"
from trans_info
	left join trans_data on trans_data_transId = trans_info_id
where city = "Makati"
group by Barangay
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmedCasesByTrends` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConfirmedCasesByTrends`()
BEGIN
	-- Confirmed Cases by trends
	select date_of_last_exposure as "Date", 
		count(CASE WHEN trans_info_statusId = 1 THEN 1 END) as "PUM",
		count(CASE WHEN trans_info_statusId = 2 THEN 1 END) as "PUI",
		count(CASE WHEN trans_info_statusId = 3 THEN 1 END) as "Recovered",
		count(CASE WHEN trans_info_statusId = 4 THEN 1 END) as "Deaths"
	from trans_info
		left join trans_data on trans_data_transId = trans_info_id
	where city = "Makati"
	group by date_of_last_exposure
	;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-29 16:34:28
