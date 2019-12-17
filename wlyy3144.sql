-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: wlyy3144
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `pattern` varchar(40) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT '2000',
  `sale` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,'显卡','GeForce RTX2080Ti-11G','NVIDIA',12481,1999,22),(2,'显卡','RX5700XT-8G','AMD',3298,1890,130),(3,'CPU','i5-8600K','Intel',1859,1990,10),(4,'CPU','i7-7700K','Intel',2259,1980,20),(5,'SSD','BX500-240G','Crucial',299,2000,0),(6,'SSD','A400 SATA-240G','金士顿',279,1799,208),(7,'内存','DDR4 2400 8G','三星',678,1998,5),(10,'主板','PRIME B365M-K','华硕',730,19999,1);
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neworder`
--

DROP TABLE IF EXISTS `neworder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neworder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neworder`
--

LOCK TABLES `neworder` WRITE;
/*!40000 ALTER TABLE `neworder` DISABLE KEYS */;
/*!40000 ALTER TABLE `neworder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oldorder`
--

DROP TABLE IF EXISTS `oldorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `date` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oldorder`
--

LOCK TABLES `oldorder` WRITE;
/*!40000 ALTER TABLE `oldorder` DISABLE KEYS */;
INSERT INTO `oldorder` VALUES (1,'王舞',9,2,'2019-12-16 01:56:17'),(2,'王舞',9,2,'2019-12-16 02:00:58'),(3,'王舞',9,2,'2019-12-16 02:06:49'),(4,'王舞',6,1,'2019-12-16 02:10:48'),(5,'王舞',6,1,'2019-12-16 02:10:48'),(6,'王舞',1,10,'2019-12-16 02:26:34'),(7,'王舞',1,1,'2019-12-16 11:02:51'),(8,'王舞',6,100,'2019-12-16 11:03:13'),(9,'王舞',2,10,'2019-12-16 11:06:12'),(10,'王舞',3,10,'2019-12-16 11:13:21'),(11,'王舞',4,10,'2019-12-16 11:13:21'),(12,'闻宝',4,10,'2019-12-16 12:46:23'),(13,'闻宝',7,4,'2019-12-16 12:46:37'),(14,'小海',9,8,'2019-12-16 12:47:34'),(15,'小海',6,100,'2019-12-16 12:47:50'),(16,'小海',2,100,'2019-12-16 12:47:50'),(17,'小何',6,1,'2019-12-16 13:05:29'),(18,'Ha',7,1,'2019-12-17 09:56:04'),(19,'Ha',10,1,'2019-12-17 09:56:04');
/*!40000 ALTER TABLE `oldorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `money` int(11) DEFAULT '1000',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ha','123','123@qq.com',98592),('小何','123','1357090984@qq.com',7210000),('小海','123','haha@qq.com',9634956),('王舞','123','135789@qq.com',704849),('王陆','123456','1357090984@qq.com',1000),('琉璃','123','123456@qq.com',1000),('闻宝','123','123@qq.com',74698);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-17 10:26:38
