-- MySQL dump 10.16  Distrib 10.1.45-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: attendance
-- ------------------------------------------------------
-- Server version	10.1.45-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `infoStu`
--

DROP TABLE IF EXISTS `infoStu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoStu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RFID` text,
  `Name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoStu`
--

LOCK TABLES `infoStu` WRITE;
/*!40000 ALTER TABLE `infoStu` DISABLE KEYS */;
INSERT INTO `infoStu` VALUES (1,'349166857859','Noppanat Ampas'),(2,'831679590139','Pooh'),(3,'5284982615','Possathorn');
/*!40000 ALTER TABLE `infoStu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RFID` text,
  `Name` text,
  `Time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'42040406719','I AM A HORSE','2021-03-16 11:54:36'),(2,'795990929821','ggg','2021-03-16 11:55:38'),(3,'795990929821','ggg','2021-03-16 11:56:19'),(4,'795990929821','ggg','2021-03-16 11:58:15'),(5,'795990929821','ggg','2021-03-16 12:00:29'),(6,'795990929821','ggg','2021-03-16 12:00:37'),(7,'795990929821','Icy_Boi','2021-03-17 12:37:02'),(8,'42040406719','Noppanat Ampas','2021-03-17 12:51:51'),(9,'349166857859','Noppanat Ampas',NULL),(10,'349166857859','Noppanat Ampas','2021-03-24 11:45:03'),(11,'831679590139','Pooh','2021-03-24 11:48:41'),(12,'5284982615','Possathorn','2021-03-24 11:51:29');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 12:00:24
