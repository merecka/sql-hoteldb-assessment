-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: alexmhoteldb
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `RoomNumber` smallint NOT NULL,
  `RoomType` varchar(10) NOT NULL,
  `AdaAccessible` tinyint(1) NOT NULL DEFAULT '0',
  `StandardOccupancy` tinyint NOT NULL,
  `MaximumOccupancy` tinyint NOT NULL,
  `BasePrice` decimal(5,2) NOT NULL,
  `ExtraPerson` tinyint NOT NULL,
  PRIMARY KEY (`RoomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (201,'Double',0,2,4,199.99,10),(202,'Double',1,2,4,174.99,10),(203,'Double',0,2,4,199.99,10),(204,'Double',1,2,4,174.99,10),(205,'Single',0,2,2,174.99,0),(206,'Single',1,2,2,149.99,0),(207,'Single',0,2,2,174.99,0),(208,'Single',1,2,2,149.99,0),(301,'Double',0,2,4,199.99,10),(302,'Double',1,2,4,174.99,10),(303,'Double',0,2,4,199.99,10),(304,'Double',1,2,4,174.99,10),(305,'Single',0,2,2,174.99,0),(306,'Single',1,2,2,149.99,0),(307,'Single',0,2,2,174.99,0),(308,'Single',1,2,2,149.99,0),(401,'Suite',1,3,8,399.99,20),(402,'Suite',1,3,8,399.99,20);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-29  0:38:48
