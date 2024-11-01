-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: j11c205.p.ssafy.io    Database: user_database
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `follower_id` bigint DEFAULT NULL,
  `following_id` bigint DEFAULT NULL,
  `status` enum('FOLLOWING','UNFOLLOWED') DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `follower_id` (`follower_id`),
  KEY `following_id` (`following_id`),
  CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES (2,2891,2880,'FOLLOWING','2024-10-06 02:51:50','2024-10-06 02:51:50'),(3,2891,2896,'FOLLOWING','2024-10-07 15:16:17','2024-10-07 15:16:17'),(4,2892,2891,'FOLLOWING','2024-10-07 06:50:07','2024-10-07 06:50:07'),(5,2896,2892,'UNFOLLOWED','2024-10-07 11:27:14','2024-10-07 11:38:43'),(12,2896,2891,'FOLLOWING','2024-10-09 08:19:30','2024-10-09 08:19:30'),(13,2896,2893,'FOLLOWING','2024-10-09 08:19:31','2024-10-09 08:19:31'),(14,2896,2895,'FOLLOWING','2024-10-09 08:19:31','2024-10-09 08:19:31'),(15,2896,2896,'FOLLOWING','2024-10-09 08:19:32','2024-10-09 08:19:32'),(18,2893,2896,'FOLLOWING','2024-10-09 08:31:11','2024-10-09 08:31:11'),(19,2896,2893,'FOLLOWING','2024-10-09 08:31:16','2024-10-09 08:31:16'),(20,2891,52,'UNFOLLOWED','2024-10-09 13:49:44','2024-10-09 13:49:47'),(21,2896,1,'UNFOLLOWED','2024-10-10 01:05:02','2024-10-10 01:05:03'),(22,2891,2893,'UNFOLLOWED','2024-10-10 21:25:52','2024-10-10 21:25:54');
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11  8:53:22
