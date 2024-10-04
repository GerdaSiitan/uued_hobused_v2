-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hobused
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
-- Table structure for table `too_graafik`
--

DROP TABLE IF EXISTS `too_graafik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `too_graafik` (
  `nimi` varchar(255) NOT NULL,
  `esmaspaev` varchar(255) NOT NULL,
  `teisipaev` varchar(255) NOT NULL,
  `kolmapaev` varchar(255) NOT NULL,
  `neljapaev` varchar(255) NOT NULL,
  `reede` varchar(255) NOT NULL,
  `laupaev` varchar(255) NOT NULL,
  `puhapaev` varchar(255) NOT NULL,
  PRIMARY KEY (`nimi`),
  KEY `too_graafik_nimi_index` (`nimi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `too_graafik`
--

LOCK TABLES `too_graafik` WRITE;
/*!40000 ALTER TABLE `too_graafik` DISABLE KEYS */;
INSERT INTO `too_graafik` VALUES ('Aadu Laid','-','-','8-18:00','-','8-18:00','8-18:00','8-18:00'),('Ester Teeveer','-','-','8-18:00','-','8-18:00','8-18:00','8-18:00'),('Karin Hallas','-','-','8-18:00','-','8-18:00','8-18:00','8-18:00'),('Mihkel Soo','-','-','8-18:00','-','8-18:00','8-18:00','8-18:00'),('Oskar Vallik','-','-','8-18:00','-','8-18:00','8-18:00','8-18:00'),('Paavo Neihaus','-','-','8-18:00','-','8-18:00','8-18:00','8-18:00'),('Raul Väli','-','-','8-18:00','-','8-18:00','8-18:00','8-18:00');
/*!40000 ALTER TABLE `too_graafik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 10:41:05
