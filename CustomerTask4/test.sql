-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: customerTask
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custid` varchar(50) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `customercreditcard` varchar(100) DEFAULT NULL,
  `GENDER` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'Taod549','Tanvi','Bansod','2020-01-22','Visa',0),(3,'Smai88','Smit','Desai','2020-01-23','Master',0),(4,'Smai2','Smit','Desai','2020-01-23','Master',0),(5,'Smai862','Smit','Desai','2020-01-23','Master',0),(6,'Hara955','Harshita','Gandra','2020-01-23','Visa',0),(8,'Vili188','Virat','Kohli','2020-01-23','Master',0),(10,'Raal791','Rahul','Goyal','2020-01-23','Amex',0),(11,'Umar571','Uma','Shankar','2020-01-23','Visa',0),(14,'Ragh292','Ranveer','SIngh','2020-01-23','Master',0),(15,'Ragh800','Ranveer','Singh','2020-01-23','Master',0),(16,'Soar563','Sourabh','Kumbhar','2020-01-23','Visa',0),(17,'Soya567','Sourya','Sourya','2020-01-23','Master',0),(21,'Taod885','Tanvi','Bansod','2020-01-24','Master',0),(22,'Apak563','Aprajitha','Pathak','2020-01-24','Amex',0),(24,'Jaah788','Jaspreet','Bumrah','2020-01-27','Visa',0),(25,'Jaah703','Jaspreet','Bumrah','2020-01-27','Visa',0),(26,'Kont142','Kobe','Bryant','1987-04-13','Master',0),(27,'Sole120','Soumitra','Bhosale','1995-02-13','Master',0),(28,'Taod773','Tanvi','Bansod','1992-01-12','Visa',0),(29,'Skhi222','Skashi','Bakshi','1992-01-12','Master',0),(30,'Sahi496','Sarthak','Bakshi','1222-01-12','Master',0),(31,'Sane784','Santosh','Mane','1212-01-12','Master',1),(32,'Rama804','Ram','Sharma','1991-07-22','Amex',1),(33,'Sahi343','Sanjana','Bakshi','1990-06-08','Master',0),(34,'Rama694','Ram','Sharma','1991-07-22','Amex',1),(35,'Lama512','Laxman','Sharma','1991-08-10','Master',1),(36,'Saar434','Sayali','Dabholkar','1994-09-16','Master',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2020-01-28 21:04:20
