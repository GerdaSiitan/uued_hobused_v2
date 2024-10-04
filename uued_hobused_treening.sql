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
-- Table structure for table `treening`
--

DROP TABLE IF EXISTS `treening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treening` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Treeninguaeg` datetime NOT NULL,
  `hobuid` bigint unsigned NOT NULL,
  `treeningprogrammid` bigint unsigned NOT NULL,
  `Töötaja` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `treening_treeningprogrammid_foreign` (`treeningprogrammid`),
  KEY `treening_hobuid_foreign` (`hobuid`),
  CONSTRAINT `treening_hobuid_foreign` FOREIGN KEY (`hobuid`) REFERENCES `hobune` (`id`),
  CONSTRAINT `treening_treeningprogrammid_foreign` FOREIGN KEY (`treeningprogrammid`) REFERENCES `treeningprogramm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treening`
--

LOCK TABLES `treening` WRITE;
/*!40000 ALTER TABLE `treening` DISABLE KEYS */;
INSERT INTO `treening` VALUES (1,'2024-10-24 10:00:00',1,1,'1'),(2,'2024-10-24 11:00:00',2,2,'2'),(3,'2024-10-24 12:00:00',3,3,'3'),(4,'2024-10-24 13:00:00',4,4,'4'),(5,'2024-10-24 14:00:00',5,5,'5');
/*!40000 ALTER TABLE `treening` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-04  9:32:54
