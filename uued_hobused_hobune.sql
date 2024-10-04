-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: uued_hobused
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `hobune`
--

DROP TABLE IF EXISTS `hobune`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobune` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `sünniaasta` year DEFAULT NULL,
  `tallid` bigint unsigned NOT NULL,
  `omanikid` bigint unsigned NOT NULL,
  `Seisundid` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hobune_tallid_foreign` (`tallid`),
  KEY `hobune_seisundid_foreign` (`Seisundid`),
  KEY `hobune_omanikid_foreign` (`omanikid`),
  CONSTRAINT `hobune_omanikid_foreign` FOREIGN KEY (`omanikid`) REFERENCES `omanik` (`id`),
  CONSTRAINT `hobune_seisundid_foreign` FOREIGN KEY (`Seisundid`) REFERENCES `seisund` (`id`),
  CONSTRAINT `hobune_tallid_foreign` FOREIGN KEY (`tallid`) REFERENCES `tall` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobune`
--

LOCK TABLES `hobune` WRITE;
/*!40000 ALTER TABLE `hobune` DISABLE KEYS */;
INSERT INTO `hobune` VALUES (1,'nimi1',2010,1,1,1),(2,'nimi2',2010,2,2,2),(3,'nimi3',2010,3,3,3),(4,'nimi4',2010,4,4,4),(5,'nimi5',2010,5,5,5);
/*!40000 ALTER TABLE `hobune` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-04  9:32:53
