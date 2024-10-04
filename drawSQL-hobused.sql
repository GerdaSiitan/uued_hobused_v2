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

--
-- Table structure for table `omanik`
--

DROP TABLE IF EXISTS `omanik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `omanik` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `aadress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omanik`
--

LOCK TABLES `omanik` WRITE;
/*!40000 ALTER TABLE `omanik` DISABLE KEYS */;
INSERT INTO `omanik` VALUES (1,'nimi1','aadress1'),(2,'nimi2','aadress2'),(3,'nimi3','aadress3'),(4,'nimi4','aadress4'),(5,'nimi5','aadress5');
/*!40000 ALTER TABLE `omanik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seisund`
--

DROP TABLE IF EXISTS `seisund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seisund` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Kirjeldus` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seisund`
--

LOCK TABLES `seisund` WRITE;
/*!40000 ALTER TABLE `seisund` DISABLE KEYS */;
INSERT INTO `seisund` VALUES (1,'mingi kirjeldus1'),(2,'mingi kirjeldus2'),(3,'mingi kirjeldus3'),(4,'mingi kirjeldus4'),(5,'mingi kirjeldus5');
/*!40000 ALTER TABLE `seisund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tall`
--

DROP TABLE IF EXISTS `tall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tall` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kood` varchar(255) NOT NULL,
  `aadress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tall`
--

LOCK TABLES `tall` WRITE;
/*!40000 ALTER TABLE `tall` DISABLE KEYS */;
INSERT INTO `tall` VALUES (1,'1','aadress1'),(2,'2','aadress2'),(3,'3','aadress3'),(4,'4','aadress4'),(5,'5','aadress5');
/*!40000 ALTER TABLE `tall` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `treeningprogramm`
--

DROP TABLE IF EXISTS `treeningprogramm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treeningprogramm` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Programmikood` varchar(255) NOT NULL,
  `Kirjeldus` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treeningprogramm`
--

LOCK TABLES `treeningprogramm` WRITE;
/*!40000 ALTER TABLE `treeningprogramm` DISABLE KEYS */;
INSERT INTO `treeningprogramm` VALUES (1,'1','midagi1'),(2,'2','midagi2'),(3,'3','midagi3'),(4,'4','midagi4'),(5,'5','midagi5');
/*!40000 ALTER TABLE `treeningprogramm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ülevaatus`
--

DROP TABLE IF EXISTS `ülevaatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ülevaatus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Ülevaatuseaeg` datetime NOT NULL,
  `Kirjeldus` varchar(255) NOT NULL,
  `Arst` varchar(255) NOT NULL,
  `Hobuid` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Ülevaatus_hobuid_foreign` (`Hobuid`),
  CONSTRAINT `Ülevaatus_hobuid_foreign` FOREIGN KEY (`Hobuid`) REFERENCES `hobune` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ülevaatus`
--

LOCK TABLES `ülevaatus` WRITE;
/*!40000 ALTER TABLE `ülevaatus` DISABLE KEYS */;
INSERT INTO `ülevaatus` VALUES (1,'2024-09-24 10:00:00','kirjeldus1','arst1',1),(2,'2024-09-24 11:00:00','kirjeldus2','arst2',2),(3,'2024-09-24 13:00:00','kirjeldus3','arst3',3),(4,'2024-09-24 14:00:00','kirjeldus4','arst4',4),(5,'2024-09-24 15:00:00','kirjeldus5','arst5',5);
/*!40000 ALTER TABLE `ülevaatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-04  9:35:04
