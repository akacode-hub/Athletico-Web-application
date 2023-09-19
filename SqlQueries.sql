CREATE DATABASE  IF NOT EXISTS `athletico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `athletico`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: discoverathlete
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `athlete`
--

DROP TABLE IF EXISTS `athlete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athlete` (
  `athlete_id` int NOT NULL AUTO_INCREMENT,
  `athlete_team_id` int DEFAULT NULL,
  `athlete_sports_id` int NOT NULL,
  `athlete_first_name` varchar(50) NOT NULL,
  `athlete_last_name` varchar(50) NOT NULL,
  `athlete_mail_id` varchar(50) DEFAULT NULL,
  `athlete_contact_no` varchar(10) DEFAULT NULL,
  `athlete_nationality` varchar(15) NOT NULL,
  `athlete_age` int NOT NULL,
  `athlete_gender` varchar(20) NOT NULL,
  `athlete_net_worth` int NOT NULL,
  `athlete_address` varchar(100) DEFAULT NULL,
  `athlete_turned_pro` date DEFAULT NULL,
  `athlete_health_score` int NOT NULL,
  `athlete_perf_score` int NOT NULL,
  `athlete_position` varchar(50) NOT NULL,
  PRIMARY KEY (`athlete_id`),
  KEY `athlete_team_id` (`athlete_team_id`),
  KEY `athlete_sports_id` (`athlete_sports_id`),
  CONSTRAINT `athlete_ibfk_1` FOREIGN KEY (`athlete_team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `athlete_ibfk_2` FOREIGN KEY (`athlete_sports_id`) REFERENCES `sports` (`sports_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athlete`
--

LOCK TABLES `athlete` WRITE;
/*!40000 ALTER TABLE `athlete` DISABLE KEYS */;
INSERT INTO `athlete` VALUES (1,1,1,'Grant','Williams','g_williams@gmail.com','6578129804','American',24,'Male',250000,'Tennessee','2019-03-01',7,7,'Forward'),(3,4,1,'Jason','Strong','j_str@gmail.com','1212341254','American',23,'Male',100000,'American','2018-03-01',8,9,'Forward'),(4,2,1,'Alec','Burks','ab@reddit.com','6578129807','American',30,'Male',2500000,'Colorado','2011-03-01',7,10,'Guard'),(5,2,1,'Jerico','Sims','j_sims@gmail.com','6578129201','American',23,'Male',80000,'Texas','2021-03-01',6,4,'Center'),(6,2,1,'Evan','Fournier','ev_f@gmail.com','5781257125','France',29,'Male',80000,'Texas','2012-03-01',8,10,'Guard-Forward'),(7,3,1,'Stephen','Curry','curry.s@gmail.com','6578129333','American',34,'Male',25000000,'California','2009-03-01',8,10,'Guard'),(8,3,1,'Jonathan','Kuminga','jk@gmail.com','8178129333','DR',19,'Male',25000,'Arizona','2021-03-01',5,3,'Forward'),(9,3,1,'Klay','Thompson',NULL,'8178569333','American',30,'Male',300000,'Washington','2011-03-01',8,10,'Guard'),(11,6,3,'Rohit','Sharma',NULL,'9823109836','Indian',30,'Male',2500000,'Aamchi Mumbai','2006-04-07',7,8,'Batsman'),(12,12,5,'Ron','Stanley',NULL,'8150972761','American',25,'Male',2500000,'Boston','2006-04-07',4,9,'Goalie'),(13,6,3,'ABD','Villiers',NULL,NULL,'South Africa',35,'Male',4500000,'South Africa','2002-02-21',8,9,'Batsman'),(14,7,3,'Hardik','Pandya',NULL,'9824567834','Indian',28,'Male',1500000,'Aamchi Mumbai','2006-04-07',9,9,'All-rounder'),(16,7,3,'MS','Dhoni',NULL,'9824713894','Indian',34,'Male',4900000,'Ranchi','1995-04-07',7,10,'Wicketkeeper-Batsman'),(17,7,3,'Dwayne','Bravo','bravo@gmail.com',NULL,'West Indies',38,'Male',3000000,'Santa Clara','2006-04-07',8,8,'Bowler'),(19,8,4,'Ryan','Giggs','rayan@gmail.com',NULL,'Wales ',29,'Male',4500000,'England','2006-04-07',7,8,'Mid-fielder'),(20,9,4,'Andrew','Robertson','andrew@gmail.com','1234567891','Scottish',40,'Male',4000000,'Italy','2001-04-01',9,8,'Goal-keeper'),(21,10,4,'Andreas','Christensen',NULL,NULL,'united states',35,'Male',2000000,'Itlay','2011-04-01',9,10,'Defender'),(22,11,5,'Martin','Biron',NULL,NULL,'Canadian',28,'Male',1800000,'new York','2018-04-01',10,7,'Defense'),(23,11,5,'Yann','Danis','yann@gmail.com',NULL,'Canadian',25,'Male',2000000,'Raleigh','2016-04-01',10,5,'Goalie'),(24,12,5,'Abbott','George','abbott@gmail.com','2345678345','Canadian',30,'Male',2500000,'Boston','2006-04-01',9,7,'Forward'),(25,13,5,'Rickard','Rakell',NULL,'9860096084','united states',30,'Male',3000000,'Pittsburgh','2005-04-01',7,9,'Goalie'),(26,14,2,'Cael','Hodge','c_hodge@gmail.com','6579029804','American',26,'Male',2500000,'Arizona','2015-03-01',7,9,'Center Wing'),(27,14,2,'Bryan','Bower','ryan_b@yahoo.com','8028910841','American',30,'Male',100000,'United Kingdom','2012-03-01',5,9,'Prop'),(28,6,3,'raksha','ramkumar','rr@gmail.com','1872096782','india',25,'female',20000,'boston','2012-08-04',8,10,'bowler'),(29,6,3,'Ashish','Tiwari','atiwari@gmail.com','8723946592','Indian',30,'Male',500000,'Vadodara','2007-06-24',5,5,'Bowler'),(30,19,4,'Sergio','Aguero','saguero@gmail.com','8230947399','Argentinian',34,'Male',50000000,'Sao Paulo','2002-09-30',7,9,'Forward'),(31,19,4,'Kevin ','Debryune','ookdb@gmail.com','8347209343','Belgian',33,'Male',7000000,'Alderly Edge','2004-04-03',9,9,'Midfielder'),(32,17,2,'Rob ','Williams','Robwll123@gmail.com','8329473989','Australian',28,'Male',4000000,'Sydney','2010-08-09',8,7,'Midfielder'),(33,17,2,'Chris','Robbie','robbiec@gmail.com','8316431733','Italian',27,'Male',3000000,'Monaco','2015-03-23',7,8,'Defender'),(34,18,3,'Rinku','Singh','rikujiya@gmail.com','2938192473','Indian',26,'Male',100000,'Mulund west','2021-01-19',6,9,'Batsman'),(35,18,3,'Nitish','Rana','nrfh@yahoo.com','2337826453','Indian',28,'Male',400000,'Gurgaon','2017-08-19',7,7,'Batsman'),(36,20,4,'Gabriel','Jesus','jesusgod@gmail.com','3838219120','Brazilian',27,'Male',2000000,'Rio De Janeiro','2019-09-04',8,8,'Forward'),(37,20,4,'Martin','Odegaard','mtotheod@gmail.com','3498257444','Norwegian',21,'Male',3000000,'Stromgodset','2018-02-21',9,9,'Midfielder'),(38,21,1,'Nikola','Jokic','joker@gmail.com','2343432222','Serbian',23,'Male',900000,'Coors Field','2015-08-30',7,9,'Center'),(39,21,1,'Jamal','Murray','Jmurray@gmail.com','1234345555','Canadian',26,'Male',850000,'Kitchener','2014-09-13',8,8,'Point Guard'),(40,22,5,'Hunter','McDonald','mcdhunter@gmail.com','3894839438','American',20,'Male',20000,'Fairport','2022-03-13',6,7,'Defense'),(42,22,5,'Justin','Hryckowian','jjhryckwhagtever@gmail.com','3890385039','Canadian',21,'Male',10000,'Quebec','2022-09-11',7,6,'Forward'),(43,1,1,'Jaylen','Brown ','JB@gmail.com','3141251333','American',33,'Male',340000,'Seaport','2015-09-30',5,4,'Point Guard'),(44,4,1,'John','Doe','john.doe@example.com','1234567890','USA',30,'Male',5000000,'123 Main St, Anytown, USA','2017-01-01',4,5,'Point Guard'),(45,4,1,'Michael','Johnson','michael.johnson@example.com','9876543210','Australia',32,'Male',7000000,'789 Beach Rd, Sydney, Australia','2018-05-10',3,6,'Shooting Guard'),(46,5,3,'Alex','Kim','alex.kim@example.com','2123456789','South Korea',31,'Male',5500000,'987 Seoul St, Seoul, South Korea','2019-11-05',2,4,'Batsman'),(47,5,3,'Liam','Nguyen','liam.nguyen@example.com','9898765432','Spain',29,'Male',5200000,'456 Pine St, Madrid, Spain','2017-02-08',5,5,'Bowler'),(48,8,4,'Noah','Chen','noah.chen@example.com','3434567890','USA',32,'Male',6800000,'567 Birch St, Anytown, USA','2019-12-01',2,6,'Defender'),(49,8,4,'Aiden','Garcia','aiden.garcia@example.com','7789876543','UK',27,'Male',3500000,'123 Oak St, London, UK','2020-09-05',3,4,'Midfielder'),(50,10,4,'Ethan','Martinez','ethan.martinez@example.com','9991234567','Australia',28,'Male',3200000,'123 Palm Rd, Sydney, Australia','2018-06-12',4,2,'Defender'),(51,10,4,'Benjamin','Wilson','benjamin.wilson@example.com','3491234567','Spain',29,'Male',4500000,'321 Calle Principal, Madrid, Spain','2017-12-20',6,3,'Forward'),(52,13,5,'James','Smith','james.smith@example.com','8765432109','USA',27,'Male',4000000,'567 Oak Lane, Anytown, USA','2018-03-25',5,5,'Center'),(53,13,5,'William','Brown','william.brown@example.com','4651237890','UK',30,'Male',6000000,'789 Maple St, London, UK','2019-08-18',6,4,'Defenseman');
/*!40000 ALTER TABLE `athlete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_end`
--

DROP TABLE IF EXISTS `brand_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_end` (
  `be_adv_id` int NOT NULL AUTO_INCREMENT,
  `be_athlete_id` int NOT NULL,
  `be_brand_name` varchar(100) NOT NULL,
  `be_ad_prize` int NOT NULL,
  PRIMARY KEY (`be_adv_id`),
  KEY `be_athlete_id` (`be_athlete_id`),
  CONSTRAINT `brand_end_ibfk_1` FOREIGN KEY (`be_athlete_id`) REFERENCES `athlete` (`athlete_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_end`
--

LOCK TABLES `brand_end` WRITE;
/*!40000 ALTER TABLE `brand_end` DISABLE KEYS */;
INSERT INTO `brand_end` VALUES (1,27,'Nike',5000),(2,27,'Nike',5000),(3,13,'BMW Cars',300000),(4,14,'Old Navy',3500000),(5,16,'Adidas',300000),(6,17,'Google',3200000),(8,19,'Nike',2100000),(9,20,'BlackDog',180000),(10,21,'Hollister',150000),(11,22,'Puma',16000000),(12,23,'Dior',24000),(13,24,'Google',34000),(14,25,'Dunkin Donuts',27000),(15,13,'BMW Cars',300000),(16,14,'Old Navy',3500000),(17,16,'Adidas',300000),(18,17,'Google',3200000),(20,19,'Nike',2100000),(21,20,'BlackDog',180000),(22,21,'Hollister',150000),(23,22,'Puma',16000000),(24,23,'Dior',24000),(25,24,'Google',34000),(26,25,'Dunkin Donuts',27000),(27,28,'adidas',20000000);
/*!40000 ALTER TABLE `brand_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `coach_id` int NOT NULL AUTO_INCREMENT,
  `coach_team_id` int NOT NULL,
  `coach_first_name` varchar(50) NOT NULL,
  `coach_last_name` varchar(50) DEFAULT NULL,
  `coach_nationality` varchar(50) DEFAULT NULL,
  `coach_contact_no` varchar(10) DEFAULT NULL,
  `coach_email_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `coach_team_id` (`coach_team_id`),
  CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`coach_team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,1,'Ime','Udoka',NULL,'9973609153','coach@bceltics.com'),(2,2,'Tom','Thibodeau',NULL,'9973609159','coach@nyk.com'),(3,3,'Steve','Kerr',NULL,'9973600159','coach@gsw.com'),(4,4,'Bill','Coen',NULL,'8273600159','coach@hh.com'),(5,6,'Ravi','Shastry',NULL,'7489279876',NULL),(6,8,'Pep','Guerardo',NULL,'8569267836','pep@gmail.com'),(7,13,'Mike','Sullivan',NULL,NULL,'mik@gmail.com'),(8,5,'Trent','Woodhill',NULL,'8270652489','tre@gmail.com'),(9,7,'Stephen','Fleming',NULL,'9658257638','ste@gmail.com'),(10,9,'John','Achterberg',NULL,NULL,'john@gmail.com'),(11,10,'Maurizio','Sarri',NULL,NULL,'sarri@gmail.com'),(12,11,'Jim','Hiller',NULL,NULL,'jim@gmail.com'),(13,12,'Bruce','Cassidy',NULL,NULL,'bru@gmail.com'),(14,14,'Agustin ','Cavalieri','Argentian',NULL,'augustin@gmail.com'),(15,17,' Edgar ','Marutlulle',NULL,NULL,NULL),(16,18,'Chandrakant ','Pandit','Indian',NULL,NULL),(17,16,'Blake  ','Bradford','American',NULL,NULL);
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet`
--

DROP TABLE IF EXISTS `diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diet` (
  `diet_id` int NOT NULL AUTO_INCREMENT,
  `diet_athlete_id` int DEFAULT NULL,
  `diet_calorie_count` int DEFAULT NULL,
  `diet_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`diet_id`),
  KEY `diet_athlete_id` (`diet_athlete_id`),
  CONSTRAINT `diet_ibfk_1` FOREIGN KEY (`diet_athlete_id`) REFERENCES `athlete` (`athlete_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet`
--

LOCK TABLES `diet` WRITE;
/*!40000 ALTER TABLE `diet` DISABLE KEYS */;
INSERT INTO `diet` VALUES (1,7,100,'Vegan'),(2,7,190,'Protien'),(4,26,100,'Vegan'),(7,13,4500,'Vegetarian'),(8,14,3500,'Gluten-free'),(9,16,4800,'Protien-Rich'),(10,17,3678,'Normal'),(12,19,4200,'Low Fat'),(13,20,3700,'Organic'),(14,21,3456,'Normal'),(15,22,3298,'Vegetarian'),(16,23,4567,'Meat-based'),(17,24,3456,'No-Sugar'),(18,25,3500,'Organic'),(19,28,1000,'vegan');
/*!40000 ALTER TABLE `diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL,
  `event_sports_id` int NOT NULL,
  `event_team_id` int NOT NULL,
  `event_name` varchar(14) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_country` varchar(13) DEFAULT NULL,
  `event_venue` varchar(7) DEFAULT NULL,
  `event_level` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event_sports_id` (`event_sports_id`),
  KEY `event_team_id` (`event_team_id`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`event_sports_id`) REFERENCES `sports` (`sports_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `event_ibfk_2` FOREIGN KEY (`event_team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,4,12,'Tour de France','2022-06-26','Argentina','Madrid','state level'),(2,3,12,'NBA Finals','2022-10-08','Russia','Cairo','international'),(3,3,12,'NBA Finals','2022-12-29','India','Cairo','state level'),(4,2,14,'World Series','2023-01-22','United States','London','national'),(5,4,22,'Tour de France','2022-07-09','Indonesia','Madrid','international'),(6,4,15,'NBA Finals','2022-08-17','Brazil','Beijing','international'),(7,4,3,'Tour de France','2022-08-28','Russia','London','international'),(8,3,17,'World Series','2022-12-18','Mexico','Tokyo','national'),(9,4,8,'Tour de France','2022-10-22','Canada','London','state level'),(10,4,7,'World Series','2022-08-05','China','Ottawa','state level'),(11,1,12,'World Series','2022-11-06','Brazil','Madrid','international'),(12,4,22,'Stanley Cup','2022-11-01','India','Cairo','national'),(13,2,13,'Tour de France','2022-10-14','Canada','Madrid','international'),(14,4,8,'World Series','2023-03-17','Argentina','Cairo','national'),(15,4,15,'Tour de France','2022-11-18','Mexico','Beijing','state level'),(16,3,5,'Wimbledon','2023-02-20','Australia','Cairo','state level'),(17,3,3,'Tour de France','2023-05-17','Argentina','Berlin','state level'),(18,4,19,'World Series','2023-04-11','Indonesia','Rome','national'),(19,2,3,'World Series','2022-07-16','Mexico','Moscow','state level'),(20,4,10,'World Series','2023-05-23','Canada','London','national'),(21,4,4,'NBA Finals','2023-02-05','Mexico','Cairo','national'),(22,3,7,'World Series','2022-06-27','Russia','Beijing','state level'),(23,1,1,'Tour de France','2023-05-20','Australia','Paris','national'),(24,1,3,'Tour de France','2023-03-11','China','Ottawa','international'),(25,3,16,'World Series','2022-07-05','China','Cairo','international'),(26,3,21,'World Series','2023-05-08','India','London','national'),(27,1,17,'Stanley Cup','2022-08-01','Indonesia','Ottawa','international'),(28,4,18,'Stanley Cup','2023-03-31','Mexico','London','national'),(29,4,5,'NBA Finals','2022-07-07','Russia','Tokyo','state level'),(30,3,7,'World Series','2023-06-09','Indonesia','Ottawa','state level'),(31,1,2,'Super Bowl','2022-07-12','Argentina','Beijing','international'),(32,1,5,'Stanley Cup','2022-07-25','United States','Berlin','international'),(33,3,22,'NBA Finals','2023-02-06','Canada','London','national'),(34,4,17,'World Series','2022-08-26','Indonesia','Paris','state level'),(35,2,13,'World Series','2023-06-06','India','Tokyo','national'),(36,3,2,'World Series','2023-04-28','Brazil','Paris','national'),(37,2,1,'Stanley Cup','2022-07-10','Russia','Beijing','state level'),(38,4,21,'NBA Finals','2022-07-22','Indonesia','London','state level'),(39,1,10,'NBA Finals','2023-03-12','Argentina','Beijing','international'),(40,4,7,'Super Bowl','2022-09-25','Mexico','Moscow','international'),(41,4,9,'NBA Finals','2023-03-01','Russia','London','international'),(42,5,12,'World Series','2022-11-04','Argentina','Beijing','international'),(43,3,15,'NBA Finals','2023-01-28','United States','Ottawa','international'),(44,3,10,'Stanley Cup','2023-01-07','Australia','Rome','international'),(45,4,8,'Wimbledon','2022-08-22','Mexico','Moscow','state level'),(46,3,17,'Tour de France','2023-05-23','Mexico','Rome','national'),(47,4,10,'World Series','2023-06-05','Mexico','Rome','international'),(48,5,5,'World Series','2022-08-25','India','Tokyo','national'),(49,4,18,'Tour de France','2023-03-30','Mexico','Cairo','national'),(50,1,2,'NBA Finals','2023-05-09','China','Ottawa','international'),(51,4,15,'World Series','2022-11-21','China','London','international'),(52,4,20,'Tour de France','2023-06-14','Canada','Rome','state level'),(53,1,17,'Super Bowl','2022-07-03','Canada','Rome','international'),(54,3,12,'Tour de France','2022-09-12','Brazil','Paris','national'),(55,3,3,'World Series','2022-09-14','Indonesia','Berlin','international'),(56,5,11,'NBA Finals','2023-03-04','Indonesia','Rome','state level'),(57,2,20,'NBA Finals','2022-12-16','Indonesia','Madrid','national'),(58,4,19,'NBA Finals','2022-06-24','Canada','Ottawa','state level'),(59,4,4,'World Series','2022-08-06','Mexico','Paris','state level'),(60,4,19,'World Series','2023-01-27','Russia','Madrid','international'),(61,5,13,'World Series','2022-12-27','Australia','London','state level'),(62,4,4,'NBA Finals','2023-04-19','China','Ottawa','state level'),(63,3,19,'Super Bowl','2023-02-14','Mexico','Berlin','international'),(64,4,13,'Stanley Cup','2022-10-06','Canada','Ottawa','international'),(65,1,10,'World Series','2022-10-05','United States','Rome','state level'),(66,3,1,'Super Bowl','2022-10-13','Canada','London','international'),(67,1,5,'World Series','2023-01-09','Russia','Rome','national'),(68,1,18,'NBA Finals','2022-07-26','India','Ottawa','state level'),(69,4,3,'World Series','2022-06-13','United States','Rome','international'),(70,3,17,'World Series','2022-06-26','Australia','Moscow','international'),(71,2,11,'World Series','2023-04-20','India','Tokyo','international'),(72,3,8,'Tour de France','2022-08-10','Brazil','Paris','international'),(73,3,22,'Stanley Cup','2023-06-05','Argentina','Moscow','international'),(74,1,9,'World Series','2022-11-21','Brazil','Paris','national'),(75,4,15,'World Series','2023-05-22','Australia','Madrid','state level'),(76,1,9,'Tour de France','2022-08-14','United States','Ottawa','state level'),(77,3,7,'World Series','2022-10-12','India','Tokyo','international'),(78,4,22,'Tour de France','2023-02-28','China','Berlin','state level'),(79,2,19,'NBA Finals','2022-08-29','Brazil','London','national'),(80,3,7,'World Series','2022-11-20','Australia','Cairo','national'),(81,3,22,'Wimbledon','2023-02-10','India','Moscow','state level'),(82,4,15,'World Series','2023-03-23','United States','Berlin','international'),(83,3,5,'World Series','2022-11-22','Canada','Beijing','national'),(84,3,13,'NBA Finals','2022-10-12','Canada','Madrid','national'),(85,4,13,'World Series','2023-03-24','United States','Rome','national'),(86,3,7,'World Series','2023-05-24','Argentina','Paris','state level'),(87,3,6,'Wimbledon','2023-05-16','United States','Paris','national'),(88,3,15,'Super Bowl','2022-07-21','China','Rome','international'),(89,3,8,'Tour de France','2022-10-21','Mexico','Cairo','national'),(90,1,13,'NBA Finals','2022-06-29','Australia','Moscow','state level'),(91,3,11,'Tour de France','2022-09-18','Australia','Moscow','state level'),(92,2,21,'NBA Finals','2022-07-05','Brazil','Rome','international'),(93,4,9,'NBA Finals','2022-07-17','Australia','Moscow','international'),(94,3,11,'World Series','2022-12-25','Brazil','Moscow','international'),(95,3,16,'Tour de France','2023-05-29','United States','Rome','international'),(96,2,3,'Stanley Cup','2023-03-03','Canada','Moscow','international'),(97,1,1,'Stanley Cup','2023-05-30','Russia','Moscow','national'),(98,4,18,'Tour de France','2023-04-26','Argentina','Ottawa','national'),(99,4,1,'NBA Finals','2022-07-30','Argentina','Moscow','state level'),(100,4,20,'NBA Finals','2022-09-22','China','Paris','national'),(101,5,5,'Tour de France','2023-03-02','Brazil','Paris','state level'),(102,5,22,'NBA Finals','2022-11-12','Mexico','Moscow','international'),(103,4,3,'World Series','2023-01-11','Argentina','Tokyo','national'),(104,4,5,'NBA Finals','2022-11-01','China','Berlin','international'),(105,3,8,'NBA Finals','2023-05-22','Canada','London','state level'),(106,4,21,'Tour de France','2023-05-26','Russia','Cairo','state level'),(107,2,5,'World Series','2023-06-12','Canada','Madrid','international'),(108,4,5,'Super Bowl','2022-08-01','United States','Paris','national'),(109,4,17,'World Series','2022-11-11','Mexico','Cairo','national'),(110,1,19,'NBA Finals','2022-11-01','India','Ottawa','state level'),(111,4,15,'NBA Finals','2023-02-20','Canada','Paris','national'),(112,4,18,'World Series','2023-01-30','Australia','Cairo','state level'),(113,5,3,'World Series','2022-11-12','Russia','London','international'),(114,5,6,'Stanley Cup','2023-02-05','Indonesia','Ottawa','state level'),(115,3,19,'World Series','2022-12-31','Argentina','London','national'),(116,4,15,'World Series','2023-01-30','China','Beijing','state level'),(117,3,7,'World Series','2022-10-06','Australia','Paris','national'),(118,1,21,'NBA Finals','2023-02-13','China','London','international'),(119,3,5,'Tour de France','2022-12-06','India','Rome','state level'),(120,4,6,'NBA Finals','2022-10-22','Mexico','Beijing','state level'),(121,3,11,'NBA Finals','2022-11-20','Argentina','Paris','national'),(122,3,11,'World Series','2023-01-23','Australia','London','international'),(123,3,7,'World Series','2022-11-24','Canada','Madrid','national'),(124,3,19,'World Series','2022-09-04','United States','Berlin','state level'),(125,3,9,'NBA Finals','2022-12-17','Indonesia','Cairo','national'),(126,5,4,'NBA Finals','2022-09-04','India','Ottawa','national'),(127,3,3,'NBA Finals','2022-07-02','Argentina','Ottawa','international'),(128,3,6,'Tour de France','2022-08-06','China','Tokyo','state level'),(129,3,5,'NBA Finals','2023-03-24','India','Berlin','national'),(130,3,6,'Tour de France','2022-12-07','Brazil','London','national'),(131,1,19,'Stanley Cup','2022-08-10','Indonesia','Madrid','national'),(132,3,19,'World Series','2022-08-27','Canada','Beijing','national'),(133,3,8,'World Series','2022-10-10','Indonesia','Cairo','international'),(134,4,2,'World Series','2022-12-31','China','Paris','national'),(135,1,16,'NBA Finals','2022-06-21','Mexico','Moscow','international'),(136,3,21,'Stanley Cup','2022-08-19','Brazil','Rome','international'),(137,1,11,'NBA Finals','2023-02-16','Argentina','Rome','national'),(138,3,16,'Tour de France','2022-07-10','Argentina','Madrid','national'),(139,2,20,'World Series','2022-08-20','Canada','Beijing','international'),(140,2,14,'World Series','2023-01-10','Indonesia','Moscow','international'),(141,1,4,'NBA Finals','2023-06-15','India','Ottawa','international'),(142,4,3,'NBA Finals','2022-06-04','Indonesia','London','state level'),(143,3,13,'World Series','2022-09-04','Canada','Beijing','national'),(144,3,2,'World Series','2023-03-31','Indonesia','Paris','state level'),(145,1,7,'World Series','2022-11-09','Canada','Tokyo','international'),(146,4,20,'NBA Finals','2023-06-07','China','Paris','international'),(147,3,9,'World Series','2022-06-14','Russia','London','national'),(148,3,4,'Tour de France','2023-01-18','Indonesia','Madrid','national'),(149,2,20,'World Series','2022-12-19','India','Paris','national'),(150,5,20,'World Series','2022-08-10','Brazil','Moscow','national');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indivisual_competition`
--

DROP TABLE IF EXISTS `indivisual_competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indivisual_competition` (
  `home_team_name` varchar(60) NOT NULL,
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_sports_id` int NOT NULL,
  `event_team_id` int NOT NULL,
  `event_athlete_id` int DEFAULT NULL,
  `event_name` varchar(60) NOT NULL,
  `event_time` int DEFAULT NULL,
  `event_country` varchar(30) NOT NULL,
  `event_venue` varchar(30) NOT NULL,
  `event_level` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  CONSTRAINT `Indivisual_Competition_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indivisual_competition`
--

LOCK TABLES `indivisual_competition` WRITE;
/*!40000 ALTER TABLE `indivisual_competition` DISABLE KEYS */;
/*!40000 ALTER TABLE `indivisual_competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `manager_team_id` int DEFAULT NULL,
  `manager_first_name` varchar(50) NOT NULL,
  `manager_last_name` varchar(50) DEFAULT NULL,
  `manager_nationality` varchar(50) DEFAULT NULL,
  `manager_contact_no` varchar(10) DEFAULT NULL,
  `manager_email_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `manager_team_id` (`manager_team_id`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`manager_team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,1,'Brad','Stevens',NULL,'1234567891','manager@bc.com'),(2,2,'Leon','Rose',NULL,'1234567801','manager@nyk.com'),(3,3,'Ron','Adams',NULL,'1234987801','manager@gsw.com'),(4,4,'Tom','Murphy',NULL,'0934987801','manager@hh.com'),(5,6,'Bob','Biswas','Indian','90178','bb@yahoo.com'),(6,8,'Lisa','Wolff','Dutch','1234567891','lisa@yahoo.com'),(7,9,'Jürgen','Klopp','German','167309533','klopp@gmail.com'),(8,10,'Thomas','Tuchel','German','420840982','thomas@gmail.com'),(9,5,' Sanjay','Bangar','Indian','2635487615','rcbcoach@gmail.com'),(10,7,'Russell','Radhakrishnan','Indian','2345678645','rusi@gmail.com'),(11,11,'Barry','Trotz','Canadian','4567342569','trotz@gmail.com'),(12,12,'Don','Sweeney','Canadian','2345678913','don@gmail.com'),(13,13,'Ron','Hextall','Canadian','6783536842','ron@gmail.com'),(14,14,'Santiago',' Sodini','Argentina','1234567891','sodini@gmail.com'),(15,15,'James ','Semple','New England','2345678231','semple@gmail.com'),(16,16,'Stephen ','Brett ','American','1234563456','Brett@gmail.com'),(17,17,'Hennie ','Janse','England','2345773456','janse@gmail.com'),(18,18,'Wayne ','Bentley','Austrailan','1234567812','wayne@gmail.com'),(19,19,'Pep ','Guardiola','Spain','2346727578','pep@gmail.com'),(20,20,'Mikel Arteta ','Amatriain','Spain','2356346352','mikel@gmail.com'),(21,21,'Michael ','Malone ','American','1234563456','malone@gmail.com'),(22,22,'Colin ','Clarke','American',NULL,'colin@gmail.com');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `sports_id` int NOT NULL AUTO_INCREMENT,
  `sports_name` varchar(20) NOT NULL,
  `sports_description` text NOT NULL,
  `sports_arena` varchar(50) NOT NULL,
  `sports_athlete_count` int NOT NULL,
  PRIMARY KEY (`sports_id`),
  UNIQUE KEY `sports_name` (`sports_name`),
  UNIQUE KEY `sports_arena` (`sports_arena`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'Basketball','The primary objective of shooting a ball into the basket','Basketball Court',5),(2,'Rugby','It is a close-contact team sport that originated in England in the first half of the 19th century.','Pitch',15),(3,'Cricket','Cricket is a Sport played with bat and ball. It is very famous in India','Cricket Field',11),(4,'Soccer','It is played by approximately 250 million players in over 200 countries and dependencies, making it the most popular sport','Soccer field',11),(5,'Ice Hockey','It is a contact winter team sport played on ice skates','Ice Skating Rink',6);
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_sports_id` int NOT NULL,
  `team_name` varchar(60) NOT NULL,
  `team_mascot` varchar(30) DEFAULT NULL,
  `team_homeground` varchar(30) NOT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `team_name` (`team_name`),
  KEY `team_sports_id` (`team_sports_id`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`team_sports_id`) REFERENCES `sports` (`sports_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,1,'Boston Celtics','Lucky the Leprechaun','TD Garden'),(2,1,'New York Knicks','None','Madison Square Garden'),(3,1,'Golden State Warriors','None','Chase Center'),(4,1,'Husky Hoopers','Husky','TD Garden'),(5,3,'Royal Challengers Bangalore','Kingfisher Lion','Chinnaswamy Stadium'),(6,3,'Mumbai Indians','Ambani Ads','Wankhade Stadium'),(7,3,'Chennai Super Kings','Super Singham','M.A.Chidambaram Stadium'),(8,4,'Manchester United',' Fred the Red','Old Trafford'),(9,4,'Liverpool','Mighty Red ','Anfield '),(10,4,'Chelsea','Stamford the Lion','Stamford Bridge '),(11,5,'New York Islanders','Sparky the Dragon','UBS arena '),(12,5,'Boston Bruin','Blades the Bruin','TD Garden'),(13,5,'Pittsburgh Penguins','Iceburgh','PPG Paints Arena'),(14,2,'Dallas Jackals','Jax The Jackal','Choctaw Stadium'),(15,2,'Rugby New York','None','JFK Stadium'),(16,2,'Rugby ATL','The Atlanta Rattlers','Silverbacks Park'),(17,2,'Blue Bulls','Blue Bull','Loftus Versfeld Stadium'),(18,3,'Kolkata Knight Riders','Purple Knight','Eden Garden'),(19,4,'Manchester City','Moonchester','Etihad Stadium'),(20,4,'Arsenal','Gunnersaurus','Emirates Stadium'),(21,1,'Denver Nuggets','Ricky the Mountain Lion','Ball Arena'),(22,5,'Northeastern ','Husky','Matthews Arena');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_match`
--

DROP TABLE IF EXISTS `team_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_match` (
  `home_team_name` varchar(60) NOT NULL,
  `away_team_name` varchar(60) NOT NULL,
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_sports_id` int NOT NULL,
  `event_team_id` int NOT NULL,
  `event_name` varchar(60) NOT NULL,
  `event_time` int DEFAULT NULL,
  `event_country` varchar(30) NOT NULL,
  `event_venue` varchar(30) NOT NULL,
  `event_level` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  CONSTRAINT `TeamMatch_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_match`
--

LOCK TABLES `team_match` WRITE;
/*!40000 ALTER TABLE `team_match` DISABLE KEYS */;
INSERT INTO `team_match` VALUES ('Golden State Warriors','New York Knicks',1,1,4,'Super Bowl',NULL,'United States','Chicago','national'),('New York Knicks','Boston Celtics',2,1,1,'Super Bowl',NULL,'United States','San Diego','national'),('Boston Celtics','Golden State Warriors',3,1,1,'Super Bowl',NULL,'United States','New York City','national'),('Golden State Warriors','Husky Hoopers',4,1,3,'Super Bowl',NULL,'United States','Chicago','national');
/*!40000 ALTER TABLE `team_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'discoverathlete'
--

--
-- Dumping routines for database 'discoverathlete'
--
/*!50003 DROP FUNCTION IF EXISTS `HighestBE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `HighestBE`(brandname VARCHAR(30)) RETURNS varchar(30) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE readchar varchar(30);
    SELECT CONCAT(a.athlete_first_name, ' ', a.athlete_last_name) INTO readchar
    FROM athlete a
    JOIN brand_end be ON a.athlete_id = be.be_athlete_id
    WHERE be.be_brand_name = brandname
    AND be.be_ad_prize = (
    SELECT MAX(be2.be_ad_prize)
    FROM brand_end be2
    WHERE be2.be_athlete_id = a.athlete_id
    AND be2.be_brand_name = brandname
);
    RETURN readchar;
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `verify_athlete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verify_athlete`(a_fname VARCHAR(100), a_lname VARCHAR(100)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE athlete_count INT;
select count(*) into athlete_count from athlete 
	where athlete_first_name=a_fname and athlete_last_name=a_lname;
    
if athlete_count > 0 then return true;
else return false;
end if;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `verify_manager` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verify_manager`(m_fname VARCHAR(100), m_lname VARCHAR(100)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE manager_count INT;
select count(*) into manager_count from manager 
	where manager_first_name=m_fname and manager_last_name=m_lname;
if manager_count > 0 then return true;
else return false;
end if;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `verify_sport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verify_sport`(s_name VARCHAR(100)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE sport_count INT;
select count(*) into sport_count from sports 
	where sports_name=s_name;
    
if sport_count = 0 then return false;
else return true;
end if;        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `verify_team` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verify_team`(t_name VARCHAR(100)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE team_count INT;
select count(*) into team_count from team 
	where team_name=t_name;
    
if team_count = 0 then return false;
else return true;
end if;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cpm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `cpm`()
BEGIN
   SELECT
    CONCAT(c.coach_first_name, ' ', c.coach_last_name) AS coachname,
    t.team_name,
    COUNT(c.coach_id) AS no_of_athletes_produced
FROM
    coach c
JOIN athlete a ON a.athlete_team_id = c.coach_team_id
JOIN team t ON a.athlete_team_id = t.team_id
WHERE c.coach_team_id = (
    SELECT a.athlete_team_id FROM athlete a WHERE a.athlete_perf_score >= 9 GROUP BY a.athlete_team_id
    HAVING COUNT(a.athlete_id) >= ALL (
        SELECT COUNT(a2.athlete_id) FROM athlete a2 WHERE a2.athlete_perf_score >= 9 GROUP BY a2.athlete_team_id
    )
)
GROUP BY c.coach_team_id;
END;

DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletebrandinfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletebrandinfo`( in fname varchar(30) , in lname varchar(30))
begin
DELETE FROM brand_end where be_athlete_id = (select athlete_id from athlete where athlete_first_name=fname and athlete_last_name=lname);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteonebrand` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteonebrand`(in fname varchar(30) , in lname varchar(30), in b_name varchar(10))
begin
DELETE FROM brand_end where be_athlete_id = (select athlete_id from athlete where 
athlete_first_name=fname and athlete_last_name=lname) and be_brand_name=b_name;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_athlete_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_athlete_detail`(IN a_fname VARCHAR(100), IN a_lname VARCHAR(100))
BEGIN
select athlete_id, concat(athlete_first_name,' ', athlete_last_name) as Athlete_Name,
	sports_name, team_name, athlete_nationality, athlete_position, athlete_perf_score, athlete_net_worth,
    athlete_health_score, diet_description
 from athlete as a join sports as s on 
	(s.sports_name=sports_name and s.sports_id=a.athlete_sports_id 
    and a.athlete_first_name = a_fname and a.athlete_last_name = a_lname)
    join team t on (a.athlete_team_id=t.team_id)
    join diet d on (d.diet_athlete_id=a.athlete_id);    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_sports_athletes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_sports_athletes`(IN sports_name VARCHAR(100))
BEGIN
select athlete_id, concat(athlete_first_name,' ', athlete_last_name) as Athlete_Name,
	sports_name, team_name, athlete_nationality, athlete_position, athlete_perf_score, athlete_net_worth,
    athlete_health_score, diet_description
 from athlete as a join sports as s on 
	(s.sports_name=sports_name and s.sports_id=a.athlete_sports_id and s.sports_name=sports_name)
    join team t on (a.athlete_team_id=t.team_id)
    join diet d on (d.diet_athlete_id=a.athlete_id);
-- select a.* from athlete as a join sports as s on 
-- 	(s.sports_name=sports_name and s.sports_id=a.athlete_sports_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_athlete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_athlete`(in teamname varchar(40),in sportname varchar(40),
in athlete_first_name varchar(40),in athlete_last_name varchar(40),
 in athlete_mail_id varchar(40), in athlete_contact_no int ,
 in athlete_nationality varchar(20), in athlete_age int,
 in athlete_gender varchar(20) , in athlete_net_worth int,
 in athlete_perf_score int, in athlete_address varchar(40),
 in athlete_turned_pro date , in athlete_health_score int, in athlete_position varchar(40))
BEGIN
insert into athlete(athlete_team_id,athlete_sports_id,athlete_first_name,athlete_last_name,athlete_mail_id,
			athlete_contact_no,athlete_nationality,athlete_age,athlete_gender,athlete_net_worth,
            athlete_perf_score,athlete_address,athlete_turned_pro,athlete_health_score, athlete_position) 
            values ((select team_id from team where team_name=teamname), 
		(select sports_id from sports where sports_name=sportname),athlete_first_name,athlete_last_name,athlete_mail_id,
			athlete_contact_no,athlete_nationality,athlete_age,athlete_gender,athlete_net_worth,
            athlete_perf_score,athlete_address,athlete_turned_pro,athlete_health_score, athlete_position);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_brand_endorsements` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_brand_endorsements`(in be_brand_name varchar(20), in be_ad_prize varchar(20),in fname varchar(40), in lname varchar(40))
begin
insert into brand_end( be_brand_name, be_ad_prize,be_athlete_id) values
(be_brand_name, be_ad_prize,(select athlete_id from athlete where athlete_first_name=fname and athlete_last_name=lname));
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_diet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_diet`(in diet_calorie_count int, in fname varchar(30) , in lname varchar(30), in diet_desc varchar(50))
begin
insert into diet(diet_calorie_count,diet_athlete_id,diet_description) values
(diet_calorie_count, (select athlete_id from athlete where athlete_first_name=fname and athlete_last_name=lname), diet_desc);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostend` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostend`()
BEGIN
    SELECT
        be_brand_name,
        COUNT(be_brand_name) AS no_of_athletes_endorsing
    FROM
        brand_end b1
    WHERE
        COUNT(be_brand_name) = (
            SELECT MAX(cnt)
            FROM (
                SELECT COUNT(be2.be_brand_name) AS cnt
                FROM brand_end be2
                GROUP BY be2.be_brand_name
            ) AS counts
        )
    GROUP BY be_brand_name;
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `M_TEAM_TRNSFER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `M_TEAM_TRNSFER`(in m_first_name varchar(30), in m_last_name varchar(30), in m_current_team varchar(30))
begin
select team_name from team t join
	(select team_id,team_sports_id from team t join manager m on(m.manager_team_id=t.team_id and 
	m.manager_first_name=m_first_name and m.manager_last_name=m_last_name and t.team_name=m_current_team)) as abc on
	(t.team_sports_id=abc.team_sports_id and t.team_id!=abc.team_id);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `oldest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `oldest`()
BEGIN
    SELECT
        CONCAT(athlete_first_name, ' ', athlete_last_name) AS Oldest_Athlete,
        athlete_age
    FROM athlete a1
    WHERE athlete_age = (
        SELECT MAX(a2.athlete_age)
        FROM athlete a2
    );
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeoperation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeoperation`(in fname varchar(30) , in lname varchar(30))
begin
delete from athlete where athlete_first_name=fname and athlete_last_name=lname; 
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retireathlete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retireathlete`()
begin
delete from athlete where athlete_health_score< 7 and athlete_turned_pro <'1995-05-31'  ;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `richest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `richest`()
begin
select concat(athlete_first_name,' ', athlete_last_name) as Rich_Athletes , max(athlete_net_worth) as Worth from athlete ;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upcoming_athletes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upcoming_athletes`()
BEGIN
    SELECT DISTINCT
        CONCAT(a.athlete_first_name, ' ', a.athlete_last_name) AS Upcoming_Athletes,
        be.be_brand_name AS Endorsed_Brand,
        be.be_ad_prize AS Brand_Earnings  
    FROM athlete a
    JOIN brand_end be ON a.athlete_id = be.be_athlete_id
    WHERE a.athlete_turned_pro > '2015-01-01';
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateathleteinfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateathleteinfo`( in fname varchar(30) , in lname varchar(30),in teamname varchar(20))
begin
update athlete 
set athlete_team_id = (select team_id from team where team_name= teamname)
where athlete_first_name=fname and athlete_last_name=lname;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatemanagerinfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatemanagerinfo`(in teamname varchar(40), in teamname1 varchar(40))
BEGIN
DELETE FROM manager WHERE manager_team_id=(select team_id from team where team_name= teamname1);
UPDATE manager 
SET manager_team_id=(select team_id from team where team_name= teamname1) WHERE
manager_team_id=(select team_id from team where team_name= teamname);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09  2:52:03
