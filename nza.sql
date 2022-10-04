CREATE DATABASE  IF NOT EXISTS `nza_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `nza_db`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: nza_db
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `appUser_TB`
--

DROP TABLE IF EXISTS `appUser_TB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appUser_TB` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `isMilitar` tinyint(4) NOT NULL,
  `timeCreate` datetime NOT NULL,
  `isTemporal` tinyint(4) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `emailVerified` varchar(45) NOT NULL,
  `verificationToken` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appUser_TB`
--

LOCK TABLES `appUser_TB` WRITE;
/*!40000 ALTER TABLE `appUser_TB` DISABLE KEYS */;
INSERT INTO `appUser_TB` VALUES (1,'Lavado','Carlos',0,'2022-10-03 08:10:00',1,'namaki','$2a$10$8Wo0DA4k9qpclswt8wema.U9fuFn4e73.bmUfin0fGGR.t6sw4IY.','carlos@hotmail.com','carlos@hotmail.com','317h71379h137'),(2,'Olivero','Eduardo',1,'2022-10-04 06:09:00',0,'ichisaki','$2a$10$jcIvfVlSZEGatiLHIRaAM.FoD.Spcuv.hQHNsxlOms2qQagsK4UN2','eduardo@hotmail.com','eduardo@hotmail.com','13jd1398jf138'),(5,'Olivero','Carlos',1,'2022-10-04 06:09:00',0,'caredlav','$2a$10$jUSw1sbfx21OTyMnidm3C.euXuwzfM8Jk595bq6kfOHa931ZZpGpi','olivero@hotmail.com','olivero@hotmail.com','3nu91ngu1hg8113'),(6,'Olivero','Sebastian',0,'2022-10-04 07:37:00',1,'seba','$2a$10$.rexv/t.WidDRclAAnBT9.M5pPTsNgSqu8UgRWviihwb.o376t0P2','seba@hotmail.com','seba@hotmail.com','3nf13183891jfs');
/*!40000 ALTER TABLE `appUser_TB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactInfo_TB`
--

DROP TABLE IF EXISTS `contactInfo_TB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactInfo_TB` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(60) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `celPhone` varchar(20) NOT NULL,
  `emergencyName` varchar(100) NOT NULL,
  `emergencyPhone` varchar(20) NOT NULL,
  `appUser_TB_id` int(11) NOT NULL,
  `country_TB_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`appUser_TB_id`,`country_TB_id`),
  KEY `fk_contactInfo_TB_appUser_TB1_idx` (`appUser_TB_id`),
  KEY `fk_contactInfo_TB_country_TB1_idx` (`country_TB_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactInfo_TB`
--

LOCK TABLES `contactInfo_TB` WRITE;
/*!40000 ALTER TABLE `contactInfo_TB` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactInfo_TB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_TB`
--

DROP TABLE IF EXISTS `country_TB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_TB` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryCode` varchar(4) NOT NULL,
  `countryName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_TB`
--

LOCK TABLES `country_TB` WRITE;
/*!40000 ALTER TABLE `country_TB` DISABLE KEYS */;
INSERT INTO `country_TB` VALUES (1,'0101','Colombia'),(2,'0202','Venezuela');
/*!40000 ALTER TABLE `country_TB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeDocument_TB`
--

DROP TABLE IF EXISTS `typeDocument_TB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeDocument_TB` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameTypeDocument` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeDocument_TB`
--

LOCK TABLES `typeDocument_TB` WRITE;
/*!40000 ALTER TABLE `typeDocument_TB` DISABLE KEYS */;
INSERT INTO `typeDocument_TB` VALUES (1,'Pasaporte'),(2,'Cedula de identidad');
/*!40000 ALTER TABLE `typeDocument_TB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userDocument_TB`
--

DROP TABLE IF EXISTS `userDocument_TB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userDocument_TB` (
  `document` varchar(20) NOT NULL,
  `placeExpedition` varchar(60) NOT NULL,
  `dateExpedition` date NOT NULL,
  `typeDocument_TB_id` int(11) NOT NULL,
  `appUser_TB_id` int(11) NOT NULL,
  PRIMARY KEY (`typeDocument_TB_id`,`appUser_TB_id`),
  KEY `fk_userDocument_TB_appUser_TB1_idx` (`appUser_TB_id`),
  CONSTRAINT `fk_userDocument_TB_appUser_TB1` FOREIGN KEY (`appUser_TB_id`) REFERENCES `appUser_TB` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_userDocument_TB_typeDcoument_TB` FOREIGN KEY (`typeDocument_TB_id`) REFERENCES `typedocument_tb` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userDocument_TB`
--

LOCK TABLES `userDocument_TB` WRITE;
/*!40000 ALTER TABLE `userDocument_TB` DISABLE KEYS */;
INSERT INTO `userDocument_TB` VALUES ('1433020','Colombia','2013-06-10',2,5),('22049299','Colombia','2015-12-01',2,6);
/*!40000 ALTER TABLE `userDocument_TB` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-04 16:15:53
