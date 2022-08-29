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
-- Table structure for table `roomamenities`
--

DROP TABLE IF EXISTS `roomamenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomamenities` (
  `RoomNumber` smallint NOT NULL,
  `AmenityName` varchar(15) NOT NULL,
  KEY `fk_RoomAmenities_RoomNumber` (`RoomNumber`),
  KEY `fk_RoomAmenities_AmenityName` (`AmenityName`),
  CONSTRAINT `roomamenities_ibfk_1` FOREIGN KEY (`RoomNumber`) REFERENCES `room` (`RoomNumber`),
  CONSTRAINT `roomamenities_ibfk_2` FOREIGN KEY (`AmenityName`) REFERENCES `amenities` (`AmenityName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomamenities`
--

LOCK TABLES `roomamenities` WRITE;
/*!40000 ALTER TABLE `roomamenities` DISABLE KEYS */;
INSERT INTO `roomamenities` VALUES (201,'Microwave'),(201,'Jacuzzi'),(202,'Refrigerator'),(203,'Microwave'),(203,'Jacuzzi'),(204,'Refrigerator'),(205,'Microwave'),(205,'Refrigerator'),(205,'Jacuzzi'),(206,'Microwave'),(206,'Refrigerator'),(207,'Microwave'),(207,'Refrigerator'),(207,'Jacuzzi'),(208,'Microwave'),(208,'Refrigerator'),(301,'Microwave'),(301,'Jacuzzi'),(302,'Refrigerator'),(303,'Microwave'),(303,'Jacuzzi'),(304,'Refrigerator'),(305,'Microwave'),(305,'Refrigerator'),(305,'Jacuzzi'),(306,'Microwave'),(306,'Refrigerator'),(307,'Microwave'),(307,'Refrigerator'),(307,'Jacuzzi'),(308,'Microwave'),(308,'Refrigerator'),(401,'Microwave'),(401,'Refrigerator'),(401,'Oven'),(402,'Microwave'),(402,'Refrigerator'),(402,'Oven');
/*!40000 ALTER TABLE `roomamenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-29  8:03:46
