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
INSERT INTO `users` VALUES (7,1,'Talaguit','Brando','Tausa','brando.talaguit','557cffca45e3e22a3668a4a837be2da4','University of Makati','UMak','ADM-C122',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(8,1,'Canapi','Jonathan','Binuluan','super_admin','be51e7808dda971f6d21a59c0a46b481','University of Makati','UMak','11111',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(9,2,'Diaz','John Denver',NULL,'denver','cbf0f86dc05fdcd574220a6bcca3c3cc','University of Makati','UMak','22222',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(10,2,'Bautista','Mc Kevin',NULL,'mckevin','c51d84f62601cb9bcd79fa6344bc3f3e','University of Makati','UMak','33333',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL),(11,3,'Binay-Campos','Mari-len Abegail','M','abby','72f4fd183672b1d93cabade290b03ecb','City of Makati','MKT','00001',1,'2020-03-27 10:07:57','2020-03-27 10:07:57',NULL);
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

-- Dump completed on 2020-03-27 12:43:46
