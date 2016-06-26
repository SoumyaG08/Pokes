CREATE DATABASE  IF NOT EXISTS `pokedb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pokedb`;
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
  CONSTRAINT `fk_pokes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokes`
--

LOCK TABLES `pokes` WRITE;
/*!40000 ALTER TABLE `pokes` DISABLE KEYS */;
INSERT INTO `pokes` VALUES (1,3,1,'2016-06-26 15:46:15',1),(2,2,1,'2016-06-26 15:46:32',1),(3,1,1,'2016-06-26 15:49:32',2),(4,1,1,'2016-06-26 15:49:33',3),(5,1,1,'2016-06-26 15:49:34',4),(6,1,1,'2016-06-26 15:49:35',5),(7,1,1,'2016-06-26 15:49:36',4),(8,1,1,'2016-06-26 15:49:37',3),(9,1,1,'2016-06-26 15:49:41',2),(10,1,1,'2016-06-26 15:49:42',3),(11,1,1,'2016-06-26 15:49:43',4),(12,1,1,'2016-06-26 15:49:43',5),(13,1,1,'2016-06-26 15:49:44',5),(14,1,1,'2016-06-26 15:50:19',4),(15,1,1,'2016-06-26 15:50:20',5),(16,1,1,'2016-06-26 15:50:21',3),(17,1,1,'2016-06-26 15:50:22',2),(18,1,1,'2016-06-26 15:50:23',3),(19,1,1,'2016-06-26 15:50:25',4),(20,2,1,'2016-06-26 15:50:54',1),(21,2,1,'2016-06-26 15:50:57',5),(22,2,1,'2016-06-26 15:50:58',5),(23,2,1,'2016-06-26 15:51:01',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Soumya','Sam','soumyanatural@gmail.com','$2b$12$oAya6IlxHnpQtws4tEcPkOjyVthkUby1cgaXHWzHAYnS0Tt2Rt1p6','2016-06-26 15:33:45'),(2,'Jon Snow','Jon','jsnow@winterfell.com','$2b$12$2uZT8X48yQ3RSFG5t1OC1Oz7u869YzQBQnZV3XCB5b.OliuJLuYE2','2016-06-26 15:34:27'),(3,'aya kanda','Aya','akanda@gmail.com','$2b$12$DYwMMGSD7UyOCV6gwDp93u5kzoYsdUBGVsgxtqLKH0eOl6QVfkGty','2016-06-26 15:34:47'),(4,'Harry Potter','Harry','hpotter@hogwarts.edu','$2b$12$m3oi3bRJLyNqhEPvWFsOOuKSZjdzSW268yAA7RyX1AK9Mhjw0Tmru','2016-06-26 15:35:03'),(5,'Ned Stark','Neddy','nstark@winterfell.com','$2b$12$4iT0bVUPuMgQvK.I8LNHWOhWVqHBl04ToHFQbN5tVVY/nRDHjC0Wy','2016-06-26 15:35:27');
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

-- Dump completed on 2016-06-26 16:07:30
