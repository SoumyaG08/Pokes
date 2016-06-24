-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: pokedb
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `pokes`
--

DROP TABLE IF EXISTS `pokes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poked_by` int(11) DEFAULT NULL,
  `poke_number` int(11) DEFAULT NULL,
  `poked_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pokes_users_idx` (`user_id`),
  CONSTRAINT `fk_pokes_users` FOREIGN KEY (`user_id`) REFERENCES `mydb`.`users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokes`
--

LOCK TABLES `pokes` WRITE;
/*!40000 ALTER TABLE `pokes` DISABLE KEYS */;
INSERT INTO `pokes` VALUES (1,2,1,'2016-06-24 10:37:26',1),(2,3,1,'2016-06-24 10:37:37',1),(3,6,1,'2016-06-24 10:37:44',1),(4,6,1,'2016-06-24 10:37:51',2),(5,7,1,'2016-06-24 10:38:07',3),(6,2,1,'2016-06-24 12:18:05',1),(7,2,1,'2016-06-24 12:18:06',1),(8,3,1,'2016-06-24 12:18:07',1),(9,3,1,'2016-06-24 12:18:08',1),(10,3,1,'2016-06-24 12:18:08',1),(11,2,1,'2016-06-24 12:18:09',1),(12,2,1,'2016-06-24 12:18:10',1),(13,2,1,'2016-06-24 12:18:10',1),(14,3,1,'2016-06-24 12:18:11',1),(15,3,1,'2016-06-24 12:18:11',1),(16,3,1,'2016-06-24 12:18:12',1),(17,2,1,'2016-06-24 12:18:13',1),(18,2,1,'2016-06-24 12:18:13',1),(19,1,1,'2016-06-24 12:22:42',2),(20,1,1,'2016-06-24 12:22:47',2),(21,1,1,'2016-06-24 12:22:47',2),(22,1,1,'2016-06-24 12:22:48',2),(23,1,1,'2016-06-24 12:22:49',2),(24,1,1,'2016-06-24 12:22:51',2),(25,1,1,'2016-06-24 12:22:52',2),(26,1,1,'2016-06-24 12:22:56',3),(27,1,1,'2016-06-24 12:22:58',3),(28,1,1,'2016-06-24 12:23:05',2),(29,1,1,'2016-06-24 12:24:51',3),(30,1,1,'2016-06-24 12:24:52',3),(31,1,1,'2016-06-24 12:24:59',3),(32,1,1,'2016-06-24 12:28:41',3),(33,1,1,'2016-06-24 12:28:42',3),(34,1,1,'2016-06-24 12:31:59',2),(35,1,1,'2016-06-24 12:32:00',2),(36,1,1,'2016-06-24 12:32:01',3),(37,1,1,'2016-06-24 12:32:01',3),(38,1,1,'2016-06-24 12:32:01',3),(39,1,1,'2016-06-24 12:32:02',3),(40,1,1,'2016-06-24 12:32:04',3),(41,1,1,'2016-06-24 12:32:05',2),(42,1,1,'2016-06-24 12:32:06',2),(43,1,1,'2016-06-24 12:32:07',3),(44,1,1,'2016-06-24 12:32:08',2),(45,1,1,'2016-06-24 12:32:09',2),(47,1,1,'2016-06-24 12:42:26',2),(48,1,1,'2016-06-24 12:42:28',3),(51,1,1,'2016-06-24 12:46:44',2),(52,1,1,'2016-06-24 12:46:45',3),(55,5,1,'2016-06-24 12:49:44',1);
/*!40000 ALTER TABLE `pokes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pw_hash` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Soumya Gatti','Sam','soumyanatural@gmail.com','$2b$12$60FBTFlBnTbjrlw9Py2pvu0zX3UPvd7VIQLk7G8vqsoLI4CmAA2pm','2016-06-24 10:12:30'),(2,'Andrew Johnson','Andy','ajohnson@gmail.com','$2b$12$jcu9N.jp3QgMmdm9mJrFweMtlD5qUwau9FNdf/.meNVaplbHUZ6g6','2016-06-24 10:13:45'),(3,'Harry Potter','Harry','hpotter@hogwarts.edu','$2b$12$oHv4ijbrnvXHEImTG0ulTOoGh0XepHqDhIHHz4in1Kltkgma38/De','2016-06-24 10:14:29'),(4,'Jon Snow','Jon','jsnow@winterfell.com','$2b$12$o1m.bLxzlJVGmTU6SsnXeeU31qyzRbeQVprJZ2gajEE0zyhd97oUK','2016-06-24 10:33:21'),(5,'Danaerys T','Danny','danny@mereen.com','$2b$12$C4y57bLYaRjVqAioqHPTX.QRYNuSae2hzB.CkdQcP.aRQwQz91xDG','2016-06-24 10:33:44'),(6,'Alan Johnson','Alan','alanj@yahoo.com','$2b$12$c5SU42c94H9V2pyP1WaFZu1HlozanX.obU2k2BsrnzT6RtkydpGjO','2016-06-24 10:34:08'),(7,'Riya Khan','Ri','rkhan@gmail.com','$2b$12$4k47CqteO9Dbo7kdnjBZWeq3/8LcVQo8M3gsZG5q.tYPdwOvxqf3O','2016-06-24 10:34:33'),(8,'Lady Crane','Lady','lcrane@guild.com','$2b$12$K2naZbtxEjL1XbyYWcQaS.mrxfrf6aD1/g/85qB8GCIJsOnAlMvQS','2016-06-24 10:35:09'),(9,'Ned Stark','Neddy','nstark@winterfell.com','$2b$12$Szlcpbs.mFY7rB48K76HkeuArpSCcDz5ZLdCo77o.pM6xVfKYooyW','2016-06-24 10:35:37'),(10,'aya kanda','Aya','akanda@gmail.com','$2b$12$3k2SmF3QJAa.dgxAdxtupORZJ9ttQof1UT5qDry2fiZEgudZSBu8S','2016-06-24 10:36:35');
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

-- Dump completed on 2016-06-24 12:54:04
