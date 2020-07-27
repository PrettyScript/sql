-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: aws-tekcamp.cyqtrlq1y5f6.us-east-2.rds.amazonaws.com    Database: tekcamp
-- ------------------------------------------------------
-- Server version	8.0.17

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `hobbies`
--

DROP TABLE IF EXISTS `hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobbies` (
  `first_name` varchar(25) DEFAULT NULL,
  `team` varchar(25) DEFAULT NULL,
  `hobby` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobbies`
--

LOCK TABLES `hobbies` WRITE;
/*!40000 ALTER TABLE `hobbies` DISABLE KEYS */;
INSERT INTO `hobbies` VALUES ('George','tc1-dylan','Video Games'),('John','tc1-dylan',NULL),('Katherine','tc1-dylan','Writing'),('Nancy','tc1-dylan',NULL),('Kevin','tc1-dylan','Working out'),('Matthew','tc1-dylan','Video Games'),('Vani','tc1-dylan',NULL),('Norita','tc1-dylan','Motorcycle Riding'),('Sabitha','tc1-dylan','Doing Engineering Project'),('Victor','tc1-dylan','Reading'),('Vimala','tc1-dylan','Gardening');
/*!40000 ALTER TABLE `hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_ta_dylan`
--

DROP TABLE IF EXISTS `ta_ta_dylan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ta_ta_dylan` (
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `bootcamp` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_ta_dylan`
--

LOCK TABLES `ta_ta_dylan` WRITE;
/*!40000 ALTER TABLE `ta_ta_dylan` DISABLE KEYS */;
INSERT INTO `ta_ta_dylan` VALUES ('George','Torres','M',NULL),('John','Kol','M',NULL),('Katherine','Kim','F',NULL),('Nancy','Golden','F',NULL),('Kevin','Ibanez','M',NULL),('Matthew','Castiglone','M',NULL),('Vani','Muppuru','F',NULL),('Norita','Sieffert','F',NULL),('Sabitha','Radhakrishnan','F',NULL),('Victor','Betts','M',NULL),('Vimala','Murthy','F',NULL);
/*!40000 ALTER TABLE `ta_ta_dylan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tekcampers`
--

DROP TABLE IF EXISTS `tekcampers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tekcampers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `education` varchar(45) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `bootcamp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tekcampers`
--

LOCK TABLES `tekcampers` WRITE;
/*!40000 ALTER TABLE `tekcampers` DISABLE KEYS */;
INSERT INTO `tekcampers` VALUES (1,'Abigail','Swigert','Bachelors Degree','F',NULL),(2,'Gabe','Chavez',NULL,'M',NULL),(3,'Nancy','Golden','Masters Degree','F',NULL),(4,'Jessica','Ulysse','Bachelors Degree','F',NULL),(5,'Sabitha','Radhakrishnan','Bachelors Degree','F',NULL),(6,'Adam','Rice','Bachelors Degree','M',NULL),(7,'Marcelo','Barbosa','Some College','M',NULL),(8,'Caleb','Waters','Associate Degree','M',NULL),(10,'Norita','Sieffert','Doctorate','M',NULL),(11,'Katherine','Kim','Bachelors Degree','F',NULL),(12,'Julian','Ladd','Some College','M',NULL),(13,'Vani','Muppuru',NULL,'F',NULL),(14,'Kevin','Ibanez','High School Diploma','M',NULL),(15,'George','Torres','Some College','M',NULL),(16,'Jose','Moreno','Bachelors Degree','M',NULL),(17,'Phoenix','Shane','Associate Degree','F',NULL),(18,'Mathew','Castiglione','Bachelors Degree','M',NULL),(19,'Victor','Betts','Some College','M',NULL),(21,'Mathew','Choat','Masters Degree','M',NULL),(22,'Michael','Kinney',NULL,'M',NULL),(23,'Korey','Brooks',NULL,'M',NULL),(24,'Christian','Gonzalez','Some College','M',NULL),(25,'Zachary','Johnson','High School Diploma','M',NULL),(27,'Sarah','Bates',NULL,'F',NULL),(28,'Aaron','White',NULL,'M',NULL),(29,'Cody','Clark','Some College','M',NULL),(30,'Devon','Brewster',NULL,'M',NULL),(31,'Devon','Brewster',NULL,'M',NULL),(32,'Gotham','Katta','Bachelors Degree','M',NULL),(33,'John','Bozarov','Bachelors Degree','M',NULL),(34,'John','Kol',NULL,'M',NULL),(35,'Justin','Cheng','Some College','M',NULL),(36,'Kevin','Keesee','High School Diploma','M',NULL),(37,'Monica','Howard',NULL,'F',NULL),(38,'Tyler','Clements',NULL,'M',NULL),(39,'Vimala','Murthy','Masters Degree','F',NULL);
/*!40000 ALTER TABLE `tekcampers` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-21 11:51:52
