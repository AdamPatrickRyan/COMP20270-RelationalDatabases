-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: ryan14395076
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(6) DEFAULT NULL,
  `first_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hired` tinyint(1) NOT NULL DEFAULT '0',
  `hire_status_last_update_date` date DEFAULT (curdate()),
  `address_1` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address_2` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address_3` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `county` varchar(30) NOT NULL,
  `country` varchar(70) NOT NULL,
  `post_code` varchar(8) DEFAULT NULL,
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`candidate_id`),
  UNIQUE KEY `email_address` (`email_address`),
  UNIQUE KEY `candidate_id_UNIQUE` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Mr','Adam','Ryan','353834240698','adam.ryan@ucdconnect.ie',1,'2020-11-11','158 Block A','Smithfield Market','Dublin 7','Dublin','Ireland','D07YK52','2020-10-01','2020-10-01 00:00:00','2020-11-11 00:00:00'),(2,'Ms','Abbie','Kelly','353834240699','sample_email+2gmail.com',0,'2020-11-02','5 Dunlaoighre Road','Prairietown','Dublin 6','Dublin','Ireland','D06YK53','2020-10-02','2020-10-02 00:00:00','2020-10-02 00:00:00'),(3,'Miss','John','Byrne','353834240700','sample_email+3gmail.com',0,'2020-11-03','6 Whitehtorn Avenue','Grantstown Village','','Waterford','Ireland','X91YK54','2020-10-03','2020-10-03 00:00:00','2020-10-03 00:00:00'),(4,'Dr','Peter','Walsh','353834240701','sample_email+4gmail.com',1,'2020-11-04','8 Maytown','Glasnevin','Dublin 4','Dublin','Ireland','D04YK55','2020-10-04','2020-10-04 00:00:00','2020-11-04 00:00:00'),(5,'Prof','Paul','McCarthy','353834240702','sample_email+5gmail.com',0,'2020-11-05','9 Park Road','Glenville','','Wicklow','Ireland','A670011','2020-10-05','2020-10-05 00:00:00','2020-10-05 00:00:00'),(6,'Mr','Seán','Grogan','353834240703','sample_email+6gmail.com',0,'2020-11-06','6 Cork Road','','','Sligo','Ireland','F910011','2020-10-06','2020-10-06 00:00:00','2020-10-06 00:00:00'),(7,'Ms','Paddy','Kelly','353834240704','sample_email+7gmail.com',0,'2020-11-07','9 Depreciation Avenue','','','Letterkenny','Ireland','F920011','2020-10-07','2020-10-07 00:00:00','2020-10-07 00:00:00'),(8,'Dr','Adam','Byrne','353834240705','sample_email+8gmail.com',0,'2020-11-08','176 Block B','Cavans Lane Apartment','','Cavan','Ireland','H120011','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(9,'Dr','Sadbh','Walsh','353834240706','sample_email+9gmail.com',0,'2020-11-09','19 Queen Street','Galway Square','','Galway','Ireland','H910011','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(10,'Prof','Siobhán','McCarthy','353834240707','sample_email+10gmail.com',0,'2020-11-10','21 South Anne Street','','','Athlone','Ireland','N370011','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(11,'Mr','Paddy','Grogan','353834240708','sample_email+11gmail.com',0,'2020-11-11','7 Pearse Street','Longford Road','','Longford','Ireland','N390011','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(12,'Mr','Patrick','Kelly','353834240709','sample_email+12gmail.com',0,'2020-11-12','123 Mullingar Street','','','Mullingar','Ireland','N910011','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(13,'Miss','Mary','Byrne','353834240710','sample_email+13gmail.com',0,'2020-11-13','123 Kildare Road','','','Kildare','Ireland','R510011','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(14,'Dr','Joseph','Walsh','353834240711','sample_email+14gmail.com',0,'2020-11-14','123 Kilkenny Road','','','Kilkenny','Ireland','R950011','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(15,'Prof','Saoirse','McCarthy','353834240712','sample_email+15gmail.com',0,'2020-11-15','124 Limerick Way','','','Limerick','Ireland','V940011','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(16,'Mr','Liam','Grogan','353834240713','sample_email+16gmail.com',0,'2020-11-16','126 Waterford Lane','','','Waterford','Ireland','X910012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(17,'Ms','Oliver','Kelly','353834240714','sample_email+17gmail.com',0,'2020-11-17','4 Wexford Waterway','Ennis','','Wexford','Ireland','Y350012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(18,'Mr','Henry','Byrne','353834240715','sample_email+18gmail.com',0,'2020-11-18','5 Petersborough','Cavan City','','Cavan','Ireland','H120012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(19,'Dr','Ava','Walsh','353834240716','sample_email+19gmail.com',0,'2020-11-19','125 Galway Glenville','Ardkluas Road','','Galway','Ireland','H910012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(20,'Prof','Olivia','McCarthy','353834240717','sample_email+20gmail.com',0,'2020-11-20','21 Athlone Street','','','Athlone','Ireland','N370012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(21,'Ms','Hazel','Grogan','353834240718','sample_email+21gmail.com',0,'2020-11-21','9 Fake Lane','Longford Avenue','','Longford','Ireland','N390012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(22,'Ms','Nora','Kelly','353834240719','sample_email+22gmail.com',0,'2020-11-22','Mullingar Close','Ballymhuire','','Mullingar','Ireland','N910012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(23,'Mr','Cormac','Byrne','353834240720','sample_email+23gmail.com',0,'2020-11-23','5 Angel Lane','Heavens Gate Square','','Kildare','Ireland','R510012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(24,'Dr','Emmett','Walsh','353834240721','sample_email+24gmail.com',0,'2020-11-24','7 Medical Lane','Scalpel Square','Kilkenny City','Kilkenny','Ireland','R950012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(25,'Prof','Benjamin','McCarthy','353834240722','sample_email+25gmail.com',0,'2020-11-25','8 Landly Road','Peters Block','','Limerick','Ireland','V940012','2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skill`
--

DROP TABLE IF EXISTS `candidate_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skill` (
  `candidate_skill_id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`candidate_skill_id`),
  UNIQUE KEY `candidate_skill_id_UNIQUE` (`candidate_skill_id`),
  KEY `candidate_skill_ibfk_2` (`skill_id`),
  KEY `candidate_skill_ibfk_1` (`candidate_id`),
  CONSTRAINT `candidate_skill_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `candidate_skill_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skill`
--

LOCK TABLES `candidate_skill` WRITE;
/*!40000 ALTER TABLE `candidate_skill` DISABLE KEYS */;
INSERT INTO `candidate_skill` VALUES (1,1,1,'2020-10-01','2020-10-01 00:00:00','2020-10-01 00:00:00'),(2,1,2,'2020-10-01','2020-10-01 00:00:00','2020-10-01 00:00:00'),(3,1,4,'2020-10-01','2020-10-01 00:00:00','2020-10-01 00:00:00'),(4,2,6,'2020-10-02','2020-10-02 00:00:00','2020-10-02 00:00:00'),(5,3,7,'2020-10-03','2020-10-03 00:00:00','2020-10-03 00:00:00'),(6,4,9,'2020-10-04','2020-10-04 00:00:00','2020-10-04 00:00:00'),(7,2,7,'2020-10-02','2020-10-02 00:00:00','2020-10-02 00:00:00'),(8,2,9,'2020-10-02','2020-10-02 00:00:00','2020-10-02 00:00:00'),(9,4,7,'2020-10-04','2020-10-04 00:00:00','2020-10-04 00:00:00'),(10,6,10,'2020-10-06','2020-10-06 00:00:00','2020-10-06 00:00:00'),(11,7,4,'2020-10-07','2020-10-07 00:00:00','2020-10-07 00:00:00'),(12,8,5,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(13,9,6,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(14,9,7,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(15,10,8,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(16,10,3,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(17,10,5,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(18,11,2,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(19,12,4,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(20,12,5,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(21,12,6,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(22,12,7,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(23,13,4,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(24,14,1,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(25,14,2,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(26,14,3,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(27,14,4,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(28,14,5,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(29,14,6,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(30,14,7,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(31,14,8,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(32,14,9,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(33,14,10,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(34,15,5,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(35,16,7,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(36,16,8,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(37,16,9,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(38,17,9,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(39,17,10,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(40,18,3,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(41,18,5,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(42,18,10,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(43,18,8,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(44,18,7,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(45,19,6,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(46,19,7,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(47,19,8,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(48,20,10,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(49,21,9,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(50,21,4,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(51,21,3,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(52,21,6,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(53,22,8,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(54,22,9,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(55,23,4,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(56,24,3,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00'),(57,25,2,'2020-11-08','2020-11-08 00:00:00','2020-11-08 00:00:00');
/*!40000 ALTER TABLE `candidate_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `hospital_id` int NOT NULL AUTO_INCREMENT,
  `hospital_code` varchar(6) DEFAULT NULL,
  `hospital_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_1` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address_2` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address_3` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `county` varchar(30) NOT NULL,
  `country` varchar(70) NOT NULL,
  `post_code` varchar(8) DEFAULT NULL,
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hospital_id`),
  UNIQUE KEY `hospital_id_UNIQUE` (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'LAO001','Midland Regional Hospital Portlaoise','35351353861','hse_hosp+1gmail.com','1 Portlaoise','','','Laois','Ireland','R32RW61','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(2,'OFF001','Midland Regional Hospital Tullamore','35351353862','hse_hosp+2gmail.com','1 Tullamore','','','Offaly','Ireland','R35NY51','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(3,'DUB001','St James\'s Hospital Dublin','35351353863','hse_hosp+3gmail.com','1 St James Gate','','','Dublin','Ireland','D08NHY1','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(4,'KLD001','Naas General Hospital','35351353864','hse_hosp+4gmail.com','2 Naas','','','Kildare','Ireland','W91AE76','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(5,'DUB002','The Adelaide & Meath Hospital (Tallaght Hospital) Dublin','35351353865','hse_hosp+5gmail.com','1 The adelaide','','','Dublin','Ireland','D01TH01','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(6,'CAV001','Cavan General Hospital','35351353866','hse_hosp+6gmail.com','3 Cavan','','','Cavan','Ireland','H12A5D7','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(7,'LTH001','Louth County Hospital Dundalk','35351353867','hse_hosp+7gmail.com','4 Dundalk','','','Louth','Ireland','A9100001','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(8,'MON001','Monaghan Hospital','35351353868','hse_hosp+8gmail.com','5 Monaghan','','','Monaghan','Ireland','H18NV91','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(9,'MTH003','Our Lady of Lourdes Hospital Drogheda','35351353869','hse_hosp+9gmail.com','6 Lourdes Street','','','Drogheda','Ireland','A92VW28','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(10,'DUB003','Connolly Hospital Dublin','35351353870','hse_hosp+10gmail.com','1 Connolly','','','Dublin','Ireland','D15X40D','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(11,'DUB004','Beaumont Hospital','35351353871','hse_hosp+11gmail.com','1 Beaumont','','','Dublin','Ireland','D09C562','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(12,'KIL001','St Luke\'s General Hospital Kilkenny','35351353872','hse_hosp+12gmail.com','1 Luke General','','','Kilkenny','Ireland','R95FY71','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(13,'WEX001','Wexford General Hospital','35351353873','hse_hosp+13gmail.com','10 Wexford','','','Wexford','Ireland','Y3500001','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(14,'MTH001','Our Lady\'s Hospital Navan','35351353874','hse_hosp+14gmail.com','6 Navan Road','','','Meath','Ireland','C15RK7Y','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(15,'WMH001','Midland Regional Hospital Mullingar','35351353875','hse_hosp+15gmail.com','11 Mulingar Street','','','West Meath','Ireland','N91NA43','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(16,'DUB005','St Columcille\'s Hospital','35351353876','hse_hosp+16gmail.com','10 Dublin Road','','','Dublin','Ireland','D18V9K1','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(17,'DUB006','St Vincent\'s University Hospital','35351353877','hse_hosp+17gmail.com','1 Vincent Lane','','','Dublin','Ireland','D04T6F4','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(18,'DUB007','St Michael\'s Hospital Dun Laoghaire','35351353878','hse_hosp+18gmail.com','6 Dunlaoighre Druids','','','Dublin','Ireland','A96P902','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(19,'DUB008','Mater Misericordiae Hospital','35351353879','hse_hosp+19gmail.com','7 Phibsborough','','','Dublin','Ireland','D07R2WY','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(20,'TIP001','South Tipperary General Hospital','35351353880','hse_hosp+20gmail.com','1 Stipple Road','','','Tipperary','Ireland','E91VY40','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_comments`
--

DROP TABLE IF EXISTS `interview_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_comments` (
  `interview_comment_id` int NOT NULL AUTO_INCREMENT,
  `interview_detail_id` int NOT NULL,
  `interview_score` int DEFAULT NULL,
  `interview_comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `interviewer_firstname` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `interviewer_lastname` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `successful_interview` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `candidate_hired` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`interview_comment_id`),
  UNIQUE KEY `interview_comment_id` (`interview_comment_id`),
  UNIQUE KEY `interview_detail_id` (`interview_detail_id`),
  CONSTRAINT `interview_comments_ibfk_1` FOREIGN KEY (`interview_detail_id`) REFERENCES `interview_detail` (`interview_detail_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_comments`
--

LOCK TABLES `interview_comments` WRITE;
/*!40000 ALTER TABLE `interview_comments` DISABLE KEYS */;
INSERT INTO `interview_comments` VALUES (1,1,10,'Good Interview proceeding to next stage','Jane','Doe',1,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00',0),(2,2,10,'Good Interview proceeding to next stage - has lots of medical experience','Jane','Doe',1,'2020-11-01','2020-11-01 00:00:00','2020-11-01 00:00:00',0),(3,3,10,'Final project went well, proceeded to offer candidate job','Jane','Doe',1,'2020-11-02','2020-11-02 00:00:00','2020-11-02 00:00:00',1),(4,4,5,'Medium interview continue searching','Jane','Doe',0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00',0),(5,5,5,'Medium interview continue searching','Jane','Doe',0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00',0),(6,6,5,'Medium interview continue searching','Jane','Doe',0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00',0),(7,7,10,'Excellent Interview offering without second stage','Jane','Doe',1,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00',1),(8,8,0,'Bad interview, candidate did not show up','Jane','Doe',0,'2020-11-04','2020-11-04 00:00:00','2020-11-04 00:00:00',0),(9,9,1,'Bad interview candidate did not have required skills','Jane','Doe',0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00',0),(10,10,3,'Poor experience for the role','Jane','Doe',0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00',0);
/*!40000 ALTER TABLE `interview_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_detail`
--

DROP TABLE IF EXISTS `interview_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_detail` (
  `interview_detail_id` int NOT NULL AUTO_INCREMENT,
  `interview_line_no` int NOT NULL DEFAULT '1',
  `interview_header_id` int NOT NULL,
  `interview_date` date NOT NULL,
  `interview_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`interview_detail_id`),
  UNIQUE KEY `interview_detail_id` (`interview_detail_id`),
  KEY `interview_header_id` (`interview_header_id`),
  CONSTRAINT `interview_detail_ibfk_1` FOREIGN KEY (`interview_header_id`) REFERENCES `interview_header` (`interview_header_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_detail`
--

LOCK TABLES `interview_detail` WRITE;
/*!40000 ALTER TABLE `interview_detail` DISABLE KEYS */;
INSERT INTO `interview_detail` VALUES (1,1,2,'2020-11-01','Initial Interview','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(2,2,2,'2020-11-02','Second Interview','2020-11-01','2020-11-01 00:00:00','2020-11-01 00:00:00'),(3,3,2,'2020-11-11','Final Interview','2020-11-02','2020-11-02 00:00:00','2020-11-02 00:00:00'),(4,1,2,'2020-01-01','Initial Interview','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(5,1,4,'2020-01-01','Initial Interview','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(6,1,5,'2020-01-01','Initial Interview','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(7,1,6,'2020-01-01','Initial Interview','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(8,1,7,'2020-11-04','Initial Interview','2020-11-04','2020-11-04 00:00:00','2020-11-04 00:00:00'),(9,1,8,'2020-01-01','Initial Interview','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(10,1,8,'2020-01-01','Initial Interview','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `interview_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_header`
--

DROP TABLE IF EXISTS `interview_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_header` (
  `interview_header_id` int NOT NULL AUTO_INCREMENT,
  `position_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `candidate_hired` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`interview_header_id`),
  UNIQUE KEY `interview_header_id_UNIQUE` (`interview_header_id`),
  KEY `interview_header_ibfk_1` (`candidate_id`),
  KEY `interview_header_ibfk_2` (`position_id`),
  CONSTRAINT `interview_header_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`) ON UPDATE CASCADE,
  CONSTRAINT `interview_header_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_header`
--

LOCK TABLES `interview_header` WRITE;
/*!40000 ALTER TABLE `interview_header` DISABLE KEYS */;
INSERT INTO `interview_header` VALUES (1,1,1,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(2,2,1,1,'2020-01-01','2020-01-01 00:00:00','2020-11-11 00:00:00'),(3,3,1,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(4,4,2,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(5,9,14,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(6,10,14,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(7,2,4,1,'2020-01-01','2020-01-01 00:00:00','2020-11-04 00:00:00'),(8,5,17,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(9,6,18,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(10,6,25,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(11,7,14,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(12,8,14,0,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `interview_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `hospital_id` int NOT NULL,
  `position_code` varchar(6) NOT NULL,
  `position_type` varchar(20) NOT NULL,
  `position_active` tinyint(1) NOT NULL DEFAULT '1',
  `short_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `long_description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`position_id`),
  UNIQUE KEY `position_id_UNIQUE` (`position_id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `position_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,1,'POS001','Junior Nurse',1,'Ward Nurse','Junior nurse to work on wards','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(2,3,'POS002','Junior Doctor',1,'Ward Doctor','Junior doctor to work on ward rounds','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(3,2,'POS003','Junior Surgeon',1,'Surgeon Assistant','Junior surgeon to assist in surgeries','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(4,6,'POS004','Graduate Nurse',1,'General Nurse','Newly trained nurse to assist with general duties','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(5,7,'POS005','Graduate Doctor',1,'General Doctor','Newly trained doctor to assist with general medical needs','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(6,2,'POS006','Graduate Surgeon',1,'General Surgeon','Newly trained doctor to assist with general surgical duties','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(7,8,'POS007','Senior Nurse',1,'General Nurse','Senior nurse to help with nurse management','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(8,1,'POS008','Senior Doctor',1,'General Doctor','Senior doctor to help with advanced medical practices','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(9,9,'POS009','Senior Surgeon',1,'General Surgeon','Senior surgeon to lead surgeries','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(10,4,'POS010','Consultant Surgeon',1,'Consultant Surgeon','Consultant surgeon required to lead orthopaedics team','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skill`
--

DROP TABLE IF EXISTS `position_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skill` (
  `position_skill_id` int NOT NULL AUTO_INCREMENT,
  `position_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`position_skill_id`),
  UNIQUE KEY `position_skill_id_UNIQUE` (`position_skill_id`),
  KEY `position_skill_ibfk_1` (`position_id`),
  KEY `position_skill_ibfk_2` (`skill_id`),
  CONSTRAINT `position_skill_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`) ON UPDATE CASCADE,
  CONSTRAINT `position_skill_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skill`
--

LOCK TABLES `position_skill` WRITE;
/*!40000 ALTER TABLE `position_skill` DISABLE KEYS */;
INSERT INTO `position_skill` VALUES (1,1,1,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(2,1,2,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(3,1,4,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(4,2,6,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(5,3,7,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(6,4,2,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(7,4,4,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(8,5,6,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(9,6,7,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(10,6,9,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(11,7,3,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(12,7,5,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(13,8,10,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(14,8,8,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(15,9,7,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(16,9,9,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(17,10,8,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(18,10,9,'2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `position_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_code` varchar(6) NOT NULL,
  `short_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `long_description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` date DEFAULT (curdate()),
  `created_date_ts` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified_ts` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`skill_id`),
  UNIQUE KEY `skill_id_UNIQUE` (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'NUR001','Nursing','Non-specific nursing skills','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(2,'NUR002','Nurse Surgery','Nursing surgical skills','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(3,'ADM001','Administration','Non-specific administration skills','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(4,'TEA001','Teamwork','Ability to work with a team','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(5,'TEA002','Communication','Effective communication','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(6,'MED001','Medical Skills','Non-specific medical skills','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(7,'SUR001','Surgery','Non-specific surgical skills','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(8,'LEA001','Leadership','Team leadership skills','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(9,'SUR002','Orthopaedic','Orthopaedic surgerical skill','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00'),(10,'MED002','Imaging','MRI, CT, or XRAY skills','2020-01-01','2020-01-01 00:00:00','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ryan14395076'
--

--
-- Dumping routines for database 'ryan14395076'
--
/*!50003 DROP PROCEDURE IF EXISTS `ins_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_candidate`(
	IN	tle VARCHAR(6)
	,IN	fname VARCHAR(35)
	,IN	sname VARCHAR(35)
    ,IN phone VARCHAR(15)
    ,IN email VARCHAR(255)
    ,IN al_1 VARCHAR(70)
    ,IN al_2 VARCHAR(70)
    ,IN	al_3 VARCHAR(70)
	,IN cnty VARCHAR(30)
    ,IN cntry VARCHAR(70)
    ,IN pcod VARCHAR(8)
)
BEGIN

	INSERT INTO `candidate`(
		candidate_id
        ,title
        ,first_name
        ,last_name
        ,telephone
		,email_address
		,hired
        ,hire_status_last_update_date
        ,address_1
        ,address_2
        ,address_3
        ,county
        ,country
        ,post_code
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
    )
    
    VALUES
    (
		 DEFAULT
        ,tle
        ,fname
        ,lname
        ,phone
		,email
		,DEFAULT
        ,DEFAULT
        ,al_1
        ,al_2
        ,al_3
        ,cnty
        ,cntry
        ,pcdode
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
    );
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_candidate_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_candidate_skill`(
	IN	cand_id INT
	,IN	skill_id INT
)
BEGIN

	INSERT INTO `candidate_skill`(
		candidate_skill_id
        ,candidate_id
        ,skill_id
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
    )
    
    VALUES
    (
		 DEFAULT
        ,cand_id
        ,skill_id
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
    );
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_hospital`(
	IN	hcode VARCHAR(6)
	,IN	hname VARCHAR(255)
    ,IN phone VARCHAR(15)
    ,IN email VARCHAR(255)
    ,IN al_1 VARCHAR(70)
    ,IN al_2 VARCHAR(70)
    ,IN	al_3 VARCHAR(70)
	,IN cnty VARCHAR(30)
    ,IN cntry VARCHAR(70)
    ,IN pcod VARCHAR(8)
)
BEGIN

	INSERT INTO `hospital`(
		hospital_id
        ,hospital_code
        ,hospital_name
        ,telephone
		,email_address
        ,address_1
        ,address_2
        ,address_3
        ,county
        ,country
        ,post_code
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
    )
    
    VALUES
    (
		 DEFAULT
        ,hcode
        ,hname
        ,phone
		,email
        ,al_1
        ,al_2
        ,al_3
        ,cnty
        ,cntry
        ,pcdode
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
    );
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_interview_comment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_interview_comment`(
	IN	d_id INT
    ,IN	score INT
    ,IN icom VARCHAR(500)
    ,IN fname VARCHAR(35)
    ,IN lname VARCHAR(35)
    ,IN succ BOOLEAN
    ,IN chire BOOLEAN
    )
BEGIN

	INSERT INTO `interview_comment`(
		interview_comment_id
        ,interview_detail_id
        ,interview_score
        ,interview_comments
        ,interviewer_firstname
        ,interviewer_lastname
        ,successful_interview
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
        ,candidate_hired
    )
    
    VALUES
    (
		DEFAULT
        ,d_id
        ,score
        ,icom
        ,fname
        ,lname
        ,succ
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
        ,chire
    );



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_interview_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_interview_detail`(
	IN	i_h INT
    ,In	i_date DATE
    ,IN idesc VARCHAR(500))
BEGIN
	DECLARE line_no INT DEFAULT 1;
    
    SET line_no = (SELECT 
						COALESCE(MAX(interview_line_no)+1,1) 
					FROM 
						`interview_detail` 
					WHERE 
						interview_header_id=i_h
					LIMIT 1);
	

	INSERT INTO `interview_detail`(
		interview_detail_id
        ,interview_line_no
        ,interview_header_id
        ,interview_date
        ,interview_desc
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
    )
    
    VALUES
    (
		 DEFAULT
		,line_no
        ,i_h
        ,i_date
        ,idesc
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
    );



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_interview_header` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_interview_header`(
	IN	p_id INT
    ,In	c_id INT
	,IN	c_h TINYINT
)
BEGIN

	INSERT INTO `interview_header`(
		interview_header_id
        ,position_id
        ,candidate_id
        ,candidate_hired
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
    )
    
    VALUES
    (
		 DEFAULT
        ,p_id
        ,c_id
        ,c_h
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
    );
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_position`(
	IN	h_id INT
	,IN	pcode VARCHAR(6)
    ,IN ptype VARCHAR(20)
    ,IN pact TINYINT
    ,IN sdesc VARCHAR(50)
    ,IN ldesc VARCHAR(500)
)
BEGIN

	INSERT INTO `position`(
		position_id
        ,hospital_id
        ,position_code
        ,position_type
        ,position_active
        ,short_description
        ,long_description
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
    )
    
    VALUES
    (
		 DEFAULT
        ,h_id
        ,pcode
        ,ptype
        ,pact
        ,sdesc
        ,ldesc
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
    );
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_position_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_position_skill`(
	IN	pos_id INT
	,IN	skil_id INT
)
BEGIN

	INSERT INTO `position_skill`(
		position_skill_id
        ,position_id
        ,skill_id
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
    )
    
    VALUES
    (
		 DEFAULT
        ,pos_id
        ,skil_id
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
    );
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_skill`(
	IN	sc VARCHAR(6)
	,IN	sdesc VARCHAR(50)
    ,IN ldesc VARCHAR(500)
)
BEGIN

	INSERT INTO `skill`(
		skill_id
        ,skill_code
        ,short_description
        ,long_description
        ,created_date
        ,created_date_ts
        ,date_last_modified_ts
    )
    
    VALUES
    (
		 DEFAULT
        ,sc
        ,sdesc
        ,ldesc
        ,DEFAULT
        ,DEFAULT
        ,DEFAULT
    );
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp10_interview_candidates_by_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp10_interview_candidates_by_date`(IN chosen_date DATE)
BEGIN

	SELECT DISTINCT
		inthead.candidate_id
	FROM
		(SELECT
			id.interview_detail_id
			,id.interview_header_id										
		FROM
			interview_detail id
		WHERE
			id.interview_date=chosen_date) intdet

	INNER JOIN
		(SELECT
			interview_header_id
			,candidate_id
		 FROM
			interview_header ih) inthead
	ON
		inthead.interview_header_id=intdet.interview_header_id
	
    WHERE
		inthead.candidate_id NOT IN (SELECT
										z.candidate_id
									 FROM
                                      (
										SELECT
											candidate_id								
										FROM
											interview_detail id
										INNER JOIN
											(SELECT
												interview_header_id
												,candidate_id
											FROM
												interview_header ih) inthead
										ON
											inthead.interview_header_id=intdet.interview_header_id
										WHERE
											id.interview_date<>chosen_date) z )
        ;

			
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp11_p1_interviewed_twice_for_one_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp11_p1_interviewed_twice_for_one_position`()
BEGIN

	SELECT DISTINCT
		cnd.candidate_id as `Candidate ID`
		,cnd.`Candidate Name`
	FROM
		(SELECT DISTINCT
			id.interview_header_id	
		FROM
			interview_detail id
		WHERE
			id.interview_line_no > 1) intdet

	INNER JOIN
		(SELECT
			interview_header_id
			,candidate_id
		 FROM
			interview_header ih) inthead
	ON
		inthead.interview_header_id=intdet.interview_header_id
		
	INNER JOIN
		(SELECT 
			c.candidate_id			
			,CONCAT(c.title," ",c.first_name," ",c.last_name)			AS 		`Candidate Name`
		FROM
			candidate c) cnd
	ON
		inthead.candidate_id=cnd.candidate_id;

        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp11_p2_interviewed_twice_ever` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp11_p2_interviewed_twice_ever`()
BEGIN

	SELECT DISTINCT
		fnl.`Candidate ID`
        ,fnl.`Candidate Name`
	FROM
		(SELECT
			cnd.candidate_id as `Candidate ID`
			,cnd.`Candidate Name`
			,ROW_NUMBER() OVER (PARTITION BY cnd.candidate_id ORDER BY cnd.created_date DESC) AS `Number_of_Interviews`
		FROM
			(SELECT
				id.interview_header_id
			FROM
				interview_detail id) intdet

		INNER JOIN
			(SELECT
				interview_header_id
				,candidate_id
			 FROM
				interview_header ih) inthead
		ON
			inthead.interview_header_id=intdet.interview_header_id
			
		INNER JOIN
			(SELECT 
				c.candidate_id			
				,CONCAT(c.title," ",c.first_name," ",c.last_name)			AS 		`Candidate Name`
                ,created_date
			FROM
				candidate c) cnd
		ON
			inthead.candidate_id=cnd.candidate_id) fnl
		
		WHERE
			fnl.`Number_of_Interviews`>1 
        ;

        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp1_hospital_from_pk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp1_hospital_from_pk`(IN hosp_id INT)
BEGIN

	SELECT 
		*
	FROM
		hospital hosp
	WHERE   
		hosp.hospital_id=hosp_id;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp2_hospital_from_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp2_hospital_from_name`(IN hosp_name varchar(255))
BEGIN

	SELECT 
		*
	FROM
		hospital hosp
	WHERE   
		hosp.hospital_name=hosp_name;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp3_candidate_from_surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp3_candidate_from_surname`(IN cand_sname varchar(35))
BEGIN

	SELECT 
		*
	FROM
		candidate cst
	WHERE   
		cst.last_name=cand_sname;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp4_cand_with_poskill_from_posid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp4_cand_with_poskill_from_posid`(IN pos_id INT)
BEGIN

	SELECT DISTINCT
		cst.*
	FROM
		candidate cst
	WHERE
		cst.candidate_id IN (SELECT
									csk.candidate_id
							FROM
								(Select
									skill_id
								FROM
									position_skill pos
								WHERE
									pos.position_id=pos_id) poskill
									
							INNER JOIN
								(Select
									candidate_id
									,skill_id
								FROM
									candidate_skill) csk
							ON
								poskill.skill_id=csk.skill_id
									)
	;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp5_position_offered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp5_position_offered`()
BEGIN

	SELECT
		COUNT(DISTINCT inthead.candidate_id) as `Number of Distinct Candidates Offered Position`
	FROM
		(SELECT DISTINCT
			id.interview_header_id
		FROM
			interview_detail id
            
		INNER JOIN  
			(SELECT	
				com.interview_detail_id
			FROM
				interview_comments com
			WHERE
				com.candidate_hired=1) ic
		ON
			ic.interview_detail_id=id.interview_detail_id
            
            ) intdet

	INNER JOIN
		(SELECT
			interview_header_id
			,candidate_id
		 FROM
			interview_header ih) inthead
	ON
		intdet.interview_header_id=inthead.interview_header_id
        ;

        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp6_pos_req_skill_from_skill_sdesc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp6_pos_req_skill_from_skill_sdesc`(IN skill_sdesc varchar(50))
BEGIN

	SELECT
		pos.*
	FROM
		`position` pos
	
    INNER JOIN
		(SELECT
			position_id
		FROM
			position_skill pskill
		INNER JOIN
			(SELECT
				skill_id
			FROM
				skill s
			WHERE
				s.short_description=skill_sdesc) sk
		ON
			sk.skill_id=pskill.skill_id ) pskill
	ON
		pos.position_id=pskill.position_id
	;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp7_count_pos_nursing_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp7_count_pos_nursing_skill`()
BEGIN

	SELECT
		COUNT(DISTINCT pos.position_id) as `Number of Positions Requiring Nursing`
	FROM
		`position` pos
	
    INNER JOIN
		(SELECT
			position_id
		FROM
			position_skill pskill
		INNER JOIN
			(SELECT
				skill_id
			FROM
				skill s
			WHERE
				s.short_description='Nursing') sk
		ON
			sk.skill_id=pskill.skill_id ) pskill
	ON
		pos.position_id=pskill.position_id
	;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp8_positions_by_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp8_positions_by_hospital`()
BEGIN

	Select 
		hosp.hospital_name 				AS				`Hospital Name`
		,pos.position_id				AS				`Position ID`
		,pos.position_code				AS				`Position Code`
		,pos.position_type				AS				`Position Type`
		,CASE
			WHEN
				pos.position_active=1
			THEN
				'True'
			ELSE
				'False'
			END							AS				`Position Active`
		,pos.short_description			AS				`Short Position Description`
		,pos.long_description			AS				`Long Position Description`
		,pos.created_date 				AS				`Position Create Date`
		,pos.date_last_modified_ts		AS				`Position Last Modified`
	FROM
		`position` pos
        
	INNER JOIN
		(SELECT
			hospital_id
			,hospital_name
		 FROM
			hospital) hosp
	ON
		pos.hospital_id=hosp.hospital_id

	ORDER BY
		pos.hospital_id
	DESC;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp9_interviews_by_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp9_interviews_by_date`(IN chosen_date DATE)
BEGIN

	SELECT
	`Candidate Name`
    ,`Interview Stage`
    ,`Interview Date`
    ,`Interview Description`
    ,`Interviewer`
    ,`Interview Score`
    ,`Interview Assessment`
    ,`Passed Stage`
	FROM
		(SELECT
			id.interview_detail_id
			,id.interview_line_no										AS	`Interview Stage`
			,id.interview_header_id										
			,id.interview_date											AS	`Interview Date`
			,id.interview_desc											as  `Interview Description`
			,ic.interview_score											AS	`Interview Score`
			,ic.interview_comments										AS	`Interview Assessment`
			,CONCAT(interviewer_firstname," ",interviewer_lastname) 	AS	`Interviewer`
			,CASE
				WHEN	
					ic.successful_interview=1
				THEN
					'True'
				ELSE
					'False'
				END
																		AS	`Passed Stage`
			,CASE
				WHEN	
					ic.candidate_hired=1
				THEN	
					'Yes'
				ELSE	
					'No'
			END															AS	`Candidate Hired at Interview Stage`
		 FROM
			interview_detail id
			
		LEFT JOIN
			interview_comments ic
		ON
			id.interview_detail_id=ic.interview_detail_id
		WHERE
			id.interview_date=chosen_date) intdet

	INNER JOIN
		(SELECT
			interview_header_id
			,candidate_id
		 FROM
			interview_header ih) inthead
	ON
		inthead.interview_header_id=intdet.interview_header_id
		
	INNER JOIN
		(SELECT 
			c.candidate_id			
			,CONCAT(c.title," ",c.first_name," ",c.last_name)			AS 		`Candidate Name`
		FROM
			candidate c) cnd
	ON
		inthead.candidate_id=cnd.candidate_id;

			
        
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

-- Dump completed on 2020-11-24 13:38:57
