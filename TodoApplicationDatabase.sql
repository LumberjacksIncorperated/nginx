-- MySQL dump 10.16  Distrib 10.3.9-MariaDB, for osx10.12 (x86_64)
--
-- Host: localhost    Database: TodoApplication
-- ------------------------------------------------------
-- Server version	10.3.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password_sha1` varchar(64) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'JohnCitizen','5BAA61E4C9B93F3F0682250B6CF8331B7EE68FD8'),(2,'Bob','9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `todo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `todo_text` text NOT NULL,
  `time` text DEFAULT NULL,
  `place` text DEFAULT NULL,
  `people` text DEFAULT NULL,
  `topic` text DEFAULT NULL,
  PRIMARY KEY (`todo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL,
  `session_key_sha1` varchar(64) NOT NULL,
  `last_session_renewal` datetime NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,'5BAA61E4C9B93F3F0682250B6CF8331B7EE68FD8','2018-08-28 22:35:23'),(2,2,'9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684','2018-08-31 20:04:39'),(3,2,'55f134460b02329f4e7b9b110252e90e94cf017d','2018-09-01 14:06:18'),(4,2,'d3a243f5b047e7cef46c1b3f6cdd82d3883cc77f','2018-09-01 14:07:44'),(5,2,'c5c82304db164ebf12e4baa233172039cc6bc966','2018-09-01 14:19:32'),(6,2,'80764ab693b6db2c940e628666cf279b9bc66b30','2018-09-02 17:58:10'),(7,2,'3eda4d234df7ba33ff8ac7025a95b271c00b16dc','2018-09-02 17:58:11'),(8,2,'0dd8983f2c375b6af7a95de1daa0b870837e8208','2018-09-02 17:58:18'),(9,2,'314c53e158e0b9ed87ac718c2640e9b8a22c39d2','2018-09-02 17:59:11'),(10,2,'e808059459eb120044523aa07142626186b4f407','2018-09-02 17:59:25'),(11,2,'5a38822355f80f9d565c032d1a3e171590eef319','2018-09-02 17:59:28'),(12,2,'c163c83fe40f98bf68b9f9809d8718faa2bc7dcc','2018-09-02 18:00:29'),(13,2,'3167d366bfc60ecd4fd6995cf34883fbb5633761','2018-09-02 18:02:16'),(14,2,'d4d62531b3c52d739d3503f404ebdacf5a902895','2018-09-02 18:06:17'),(15,2,'a9d0ae8d37a3676346f204010774f20299368420','2018-09-02 18:24:01'),(16,2,'3cd9454e1649afef4b53bb4c9651dd8d98559b07','2018-09-02 18:51:52'),(17,2,'bc2c3a483dc8f6076bd0bc6e4c1bd70aeb83162b','2018-09-02 19:09:18'),(18,2,'a2361234c2fa7b92895b226816ab4a5b05e68c18','2018-09-02 19:57:20'),(19,2,'922b9d4265a057f0bf2a16668a446829380fb346','2018-09-02 20:12:18'),(20,2,'a2d3450750f001daad377c1cb7c0156304412c83','2018-09-02 20:20:36'),(21,2,'e67a294f6289b7166562c31a556d73d121d01c8c','2018-09-02 20:35:02'),(22,2,'b20c6162dd8d76ff5b8a78fe55b8c3d6844921ea','2018-09-04 15:02:38'),(23,2,'333440f88e0eabef463d754d634add716f4f639d','2018-09-04 19:40:41'),(24,2,'cf9cb20de7d1e0b4bee87750483504c205fcd048','2018-09-04 19:46:31'),(25,2,'74e8dc141b5ad1bf7d8d544e77f6c9e7521503a4','2018-09-04 19:46:39'),(26,2,'0aea4c81c7ef372d7d133996b8cccac53b3ff992','2018-09-04 19:46:56'),(27,2,'fad4d665ec429e4332e0c2a9cc8c9a183ae75148','2018-09-04 19:51:40'),(28,2,'d8fbb0f70bb8fb114d83c9941991843bf869c434','2018-09-04 19:52:10'),(29,2,'ba85d1498b2859aaa2ee2a1e325c60d295ee80ea','2018-09-04 19:52:27'),(30,2,'d15604ac38de612c7e0ed1c9ee3d502e1c126796','2018-09-04 19:55:39'),(31,2,'86cf628e1112a181be4611a389056a599ecd4c63','2018-09-04 19:55:43'),(32,2,'32f9138326d35e0153b9c754c7312c6c9ea44fb5','2018-09-04 19:57:49'),(33,2,'b4f6d99f8a5ee55d4dbfd3d536ed799b4e9f44f1','2018-09-04 19:58:07'),(34,2,'b3191ca67dc1d6a992a5fde5fefd7ab79cba6a88','2018-09-04 19:58:24'),(35,2,'23d7604468816d7bfba7ceaf118ec20f221a51f4','2018-09-04 19:58:51');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-04 20:33:13
