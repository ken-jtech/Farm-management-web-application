CREATE DATABASE  IF NOT EXISTS `kombe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kombe`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kombe
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `birdfeed`
--

DROP TABLE IF EXISTS `birdfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birdfeed` (
  `birdfeed_id` int NOT NULL AUTO_INCREMENT,
  `avg_bird_size` double NOT NULL,
  `feeding_date` date DEFAULT NULL,
  `feeding_notes` tinytext,
  `provender_id` int NOT NULL,
  `qty_fed` int NOT NULL,
  `times_fed` int NOT NULL,
  `flock_id` int DEFAULT NULL,
  `batch_id` int DEFAULT NULL,
  `animal_stock` int DEFAULT '0',
  `mortality` int DEFAULT '0',
  `reduced` int DEFAULT '0',
  PRIMARY KEY (`birdfeed_id`),
  KEY `FKdbp9ijp9cm8k35vep2escfa7s` (`flock_id`),
  KEY `FKkc3xfpykfi6xyced81knmyvr` (`batch_id`),
  CONSTRAINT `FKdbp9ijp9cm8k35vep2escfa7s` FOREIGN KEY (`flock_id`) REFERENCES `flock` (`flock_id`),
  CONSTRAINT `FKkc3xfpykfi6xyced81knmyvr` FOREIGN KEY (`batch_id`) REFERENCES `mixedfeed` (`batch_id`),
  CONSTRAINT `FKtce96md5ailt0x869lnpdjhxk` FOREIGN KEY (`batch_id`) REFERENCES `provender` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birdfeed`
--

LOCK TABLES `birdfeed` WRITE;
/*!40000 ALTER TABLE `birdfeed` DISABLE KEYS */;
INSERT INTO `birdfeed` VALUES (1,25,'2023-07-25','',1,6,0,8,NULL,5008,0,0),(2,0,'2023-07-26','',1,6,0,8,NULL,5008,0,0),(3,0,'2023-07-27','',1,6,0,8,NULL,0,0,0),(4,0,'2023-07-28','',1,6,0,8,NULL,0,0,0),(5,0,'2023-07-29','',1,10,0,8,NULL,3008,0,0),(6,0,'2023-07-30','',1,10,0,8,NULL,0,0,0),(7,0,'2023-07-31','',4,10,0,8,NULL,0,0,0),(9,1.9,'2023-06-01','this is a test',5,4,1,1,NULL,500,1,2),(10,0,'2023-06-02','',5,4,1,1,NULL,450,0,0),(11,0,'2023-06-03','',5,4,1,1,NULL,400,0,22),(12,0,'2023-06-04','',5,4,1,1,NULL,0,0,0),(13,0,'2023-06-05','',5,4,1,1,NULL,0,0,0),(14,0,'2023-06-06','',5,4,1,1,NULL,0,0,0),(15,0,'2023-06-07','',5,4,1,1,NULL,0,0,0),(16,0,'2023-06-08','',5,4,1,1,NULL,0,0,0),(17,0,'2023-06-09','',5,3,1,1,NULL,0,0,0),(18,0,'2023-06-10','',5,3,1,1,NULL,0,0,0),(19,0,'2023-06-11','',5,3,1,1,NULL,0,0,0),(20,0,'2023-06-12','',5,3,1,1,NULL,0,0,0),(21,0,'2023-06-13','',5,3,1,1,NULL,0,0,0),(22,0,'2023-06-14','',5,3,1,1,NULL,0,0,0),(23,0,'2023-06-15','',5,3,1,1,NULL,0,0,0),(24,0,'2023-06-16','',5,3,1,1,NULL,0,0,0),(25,0,'2023-06-17','',5,3,1,1,NULL,0,0,0),(26,0,'2023-06-18','',5,3,1,1,NULL,0,0,0),(27,0,'2023-06-19','',5,3,1,1,NULL,0,0,0),(28,0,'2023-06-20','',5,3,1,1,NULL,0,0,0),(29,0,'2023-06-21','',5,3,1,1,NULL,0,0,0),(30,0,'2023-06-22','',5,3,1,1,NULL,0,0,0),(32,0,'2023-06-23','',5,3,1,1,NULL,0,0,0),(33,0,'2023-07-01','',6,3,1,1,NULL,0,0,0),(34,0,'2023-07-02','',6,3,1,1,NULL,0,0,0),(35,0,'2023-07-03','',6,3,1,1,NULL,0,0,0),(36,0,'2023-07-04','',6,3,1,1,NULL,0,0,0),(37,0,'2023-07-05','',6,3,1,1,NULL,0,0,0),(38,0,'2023-07-06','',6,3,1,1,NULL,0,0,0),(39,0,'2023-07-07','',6,3,1,1,NULL,0,0,0),(40,0,'2023-07-08','',6,4,1,1,NULL,0,0,0),(41,0,'2023-07-09','',6,4,1,1,NULL,0,0,0),(42,0,'2023-07-10','',6,4,1,1,NULL,0,0,0),(43,0,'2023-07-11','',6,4,1,1,NULL,0,0,0),(44,0,'2023-07-16','',6,4,1,1,NULL,0,0,0),(45,0,'2023-07-17','',6,4,1,1,NULL,0,0,0),(46,0,'2023-07-28','',6,2,1,1,NULL,0,0,0),(47,0,'2023-07-23','',6,4,1,1,NULL,0,0,0),(48,0,'2023-07-24','',6,4,1,1,NULL,0,0,0),(49,0,'2023-07-25','',6,4,1,1,NULL,0,0,0),(50,0,'2023-07-26','',6,4,1,1,NULL,0,0,0),(51,0,'2023-07-27','',6,4,1,1,NULL,0,0,0),(52,0,'2023-07-28','',6,4,1,1,NULL,0,0,0),(53,0,'2023-07-29','',6,4,1,1,NULL,0,0,0),(54,0,'2023-07-30','',6,4,1,1,NULL,0,0,0),(55,0,'2023-07-31','',6,4,1,1,NULL,0,0,0),(56,0,'2023-08-01','',4,10,0,8,NULL,0,0,0),(57,0,'2023-08-02','',4,10,0,8,NULL,0,0,0),(58,0,'2023-08-03','',4,12,0,8,NULL,0,0,0),(59,0,'2023-08-04','',4,12,0,8,NULL,0,0,0),(60,0,'2023-08-05','',4,12,0,8,NULL,0,0,0),(61,0,'2023-08-06','',4,12,0,8,NULL,0,0,0),(62,0,'2023-08-07','',4,12,0,8,NULL,0,0,0),(63,0,'2023-08-08','',4,12,0,8,NULL,0,0,0),(64,0,'2023-08-09','',4,12,0,8,NULL,0,0,0),(65,0.65,'2023-08-10','',4,12,0,8,NULL,0,0,0),(66,0.65,'2023-08-11','',4,13,0,8,NULL,0,0,0),(67,0.65,'2023-08-12','',4,13,0,8,NULL,0,0,0),(68,0.69,'2023-08-13','',4,20,0,8,NULL,0,0,0),(69,0.7,'2023-08-14','',4,20,0,8,NULL,0,0,0),(70,0.72,'2023-08-15','',4,20,0,8,NULL,0,0,0),(71,0.73,'2023-08-16','',4,20,0,8,NULL,0,0,0),(72,0.73,'2023-08-17','',4,20,0,8,NULL,0,0,0),(73,0.75,'2023-08-18','',4,30,0,8,NULL,0,0,0),(74,0.8,'2023-08-19','',4,30,0,8,NULL,0,0,0),(75,0.81,'2023-08-20','',4,30,0,8,NULL,0,0,0),(76,0.82,'2023-08-21','',4,30,0,8,NULL,0,0,0),(77,0.85,'2023-08-22','',4,30,0,8,NULL,0,0,0),(78,0.9,'2023-08-23','',4,40,0,8,NULL,0,0,0),(79,0.95,'2023-08-24','',4,22,0,8,NULL,0,0,0),(80,1,'2023-08-25','',4,40,0,8,NULL,0,0,0),(81,1.7,'2023-09-09','',4,1,0,8,NULL,0,0,0),(82,1.03,'2023-08-26','',9,40,2,8,NULL,0,0,0),(83,1.1,'2023-08-27','',9,50,2,8,NULL,0,0,0),(84,1.25,'2023-02-28','',9,50,2,8,NULL,0,0,0),(85,1.25,'2023-02-28','',9,50,2,8,NULL,0,0,0),(86,1.3,'2023-08-29','',9,50,2,8,NULL,0,0,0),(87,1.34,'2023-08-30','',9,50,2,8,NULL,0,0,0),(88,1.4,'2023-08-31','',9,50,2,8,NULL,0,0,0),(89,0,'2023-09-01','',9,55,2,8,NULL,0,0,0),(90,0,'2023-09-02','Added Vitamins to boost growth',9,55,2,8,NULL,0,0,0),(91,0,'2023-09-03','',10,55,2,8,NULL,0,0,0),(92,0,'2023-09-04','',10,70,2,8,NULL,0,0,0),(93,0,'2023-09-05','',10,70,2,8,NULL,0,0,0),(94,0,'2023-09-06','',10,70,2,8,NULL,0,0,0),(95,0,'2023-09-07','',10,65,2,8,NULL,0,0,0),(96,0,'2023-09-08','',10,65,2,8,NULL,0,0,0),(97,1.7,'2023-09-09','',10,60,2,8,NULL,0,0,0),(98,0,'2023-09-10','',10,50,0,8,NULL,0,0,0),(99,0,'2023-09-11','',10,50,0,8,NULL,0,0,0),(100,0,'2023-09-12','',10,50,0,8,NULL,0,0,0),(101,0,'2023-09-13','',10,35,0,8,NULL,0,0,0),(102,0,'2023-09-15','',10,30,0,8,NULL,0,0,0),(103,0,'2023-09-16','',10,20,0,8,NULL,0,0,0),(104,0,'2023-09-19','',11,11,0,4,NULL,0,0,0),(105,2.5,'2023-09-19','',12,12,0,8,NULL,102,0,0);
/*!40000 ALTER TABLE `birdfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birdsampling`
--

DROP TABLE IF EXISTS `birdsampling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birdsampling` (
  `sampling_id` int NOT NULL AUTO_INCREMENT,
  `avg_bird_size` double NOT NULL,
  `bird_type` varchar(255) DEFAULT NULL,
  `sample_date` date DEFAULT NULL,
  `sample_qty` int NOT NULL,
  `target_size` double NOT NULL,
  `total_sample_weight` double NOT NULL,
  `flock_id` int DEFAULT NULL,
  PRIMARY KEY (`sampling_id`),
  KEY `FKspnwwmr6jbwyr1dr421h332fv` (`flock_id`),
  CONSTRAINT `FKspnwwmr6jbwyr1dr421h332fv` FOREIGN KEY (`flock_id`) REFERENCES `flock` (`flock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birdsampling`
--

LOCK TABLES `birdsampling` WRITE;
/*!40000 ALTER TABLE `birdsampling` DISABLE KEYS */;
/*!40000 ALTER TABLE `birdsampling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `business_name` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `referenceid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tel_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `age` int NOT NULL,
  `bagdeid` varchar(255) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `job_description` tinytext,
  `job_title` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `tel_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,0,NULL,'2022-08-14','','Paul','Responsible for ensuring success and efficiency in daily activities involving all aspects of the farm from livestock to crops and equipment. ','Farm Manager ','Tata',0,'237680800442');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `amount_paid` int DEFAULT '0',
  `due_balance` int DEFAULT '0',
  `entered_by` varchar(255) DEFAULT NULL,
  `expense_amount` double NOT NULL,
  `expense_date` date DEFAULT NULL,
  `fund_source` varchar(255) DEFAULT NULL,
  `paid_by` varchar(255) DEFAULT NULL,
  `paid_to` varchar(255) DEFAULT NULL,
  `qty_purchase` int DEFAULT '1',
  `reason` varchar(255) DEFAULT NULL,
  `receipt` tinyblob,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `feed_stock_id` int DEFAULT NULL,
  `misc_id` int DEFAULT NULL,
  `pay_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `supplies_id` int DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `FKa93j8fwoopwk6j818y4a2cg2y` (`feed_stock_id`),
  KEY `FK7fbeekj7um6cu5dufhqleib3n` (`misc_id`),
  KEY `FKo7hn9xnijxhfnah2hjjkch50y` (`pay_id`),
  KEY `FKb3c25pmv4l7xayusn8nw417iy` (`product_id`),
  KEY `FKj1jf2cs59s1fugb1bmy4eh9kp` (`supplies_id`),
  CONSTRAINT `FK7fbeekj7um6cu5dufhqleib3n` FOREIGN KEY (`misc_id`) REFERENCES `miscellaneous` (`misc_id`),
  CONSTRAINT `FKa93j8fwoopwk6j818y4a2cg2y` FOREIGN KEY (`feed_stock_id`) REFERENCES `feedstock` (`feedstock_id`),
  CONSTRAINT `FKb3c25pmv4l7xayusn8nw417iy` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKj1jf2cs59s1fugb1bmy4eh9kp` FOREIGN KEY (`supplies_id`) REFERENCES `supplies` (`supply_id`),
  CONSTRAINT `FKo7hn9xnijxhfnah2hjjkch50y` FOREIGN KEY (`pay_id`) REFERENCES `payroll` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (1,150000,0,NULL,150000,'2023-06-02',NULL,'Nangfack Boniface','Paul Tata',1,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(2,55000,0,NULL,55000,'2023-06-02',NULL,'Nangfack Boniface','Warren',1,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(3,55000,0,NULL,55000,'2023-06-01',NULL,'Nangfack Boniface','Bello',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(4,50000,0,NULL,50000,'2023-06-02',NULL,'Nangfack Boniface','Obam',1,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(5,35000,0,NULL,35000,'2023-06-02',NULL,'Nangfack Boniface','Nathan',1,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(6,25000,0,NULL,25000,'2023-06-02',NULL,'Nangfack Boniface','Paul Tata',1,'Feeding  Allocation',NULL,NULL,'Feeding Allowance',NULL,NULL,NULL,NULL,NULL),(7,170900,0,NULL,170900,'2023-06-05',NULL,'Nangfack Boniface','Local Suppliers',1,'animal feed',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(8,20000,0,NULL,20000,'2023-06-05',NULL,'Nangfack Boniface','?',1,'?',NULL,NULL,'Misc',NULL,NULL,NULL,NULL,NULL),(9,20000,0,NULL,20000,'2023-06-05',NULL,'Nangfack Boniface','?',1,'Fish Seminar',NULL,NULL,'Training',NULL,NULL,NULL,NULL,NULL),(10,4000,0,NULL,4000,'2023-06-05',NULL,'Nangfack Boniface','?',1,'PhytoPlankton',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(11,9000,0,NULL,9000,'2023-06-03',NULL,'Nangfack Boniface','Arnaud',1,'Arnaud',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(12,10000,0,NULL,10000,'2023-06-01',NULL,'Nangfack Boniface','Mtn mono',1,'Money withdrawal fee',NULL,NULL,'Taxes',NULL,NULL,NULL,NULL,NULL),(13,5000,0,NULL,5000,'2023-06-22',NULL,'Nangfack Boniface','Lionel',1,'Advance to Lionel',NULL,NULL,'Salary Advance',NULL,NULL,NULL,NULL,NULL),(14,226500,0,NULL,226500,'2023-07-10',NULL,'Nangfack Boniface','Local Suppliers',0,'mutiple',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(15,10000,0,NULL,10000,'2023-06-06',NULL,'Nangfack Boniface','Ben Bakari',1,'Tip driver',NULL,NULL,'Stipend',NULL,NULL,NULL,NULL,NULL),(16,40000,0,NULL,40000,'2023-06-06',NULL,'Nangfack Boniface','Local Suppliers',1,'Supplies to farm',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(17,50000,0,NULL,50000,'2023-06-02',NULL,'Nangfack Boniface','Nangfack Boniface',1,'Transport allowance',NULL,NULL,'Stipend',NULL,NULL,NULL,NULL,NULL),(18,43500,0,NULL,43500,'2023-06-24',NULL,'Nangfack Boniface','?',0,'Moving expenses for mom',NULL,NULL,'Misc',NULL,NULL,NULL,NULL,NULL),(19,10000,0,NULL,10000,'2023-06-01',NULL,'Nangfack Boniface','Paul Tata',0,'Assistance to Paul',NULL,NULL,'Medical Assist',NULL,NULL,NULL,NULL,NULL),(20,20000,0,NULL,20000,'2023-06-27',NULL,'Nangfack Boniface','Nangfack Boniface',1,'?',NULL,NULL,'Telecom',NULL,NULL,NULL,NULL,NULL),(21,10000,0,NULL,10000,'2023-07-11',NULL,'Nangfack Boniface','Local Suppliers',20,'Empty Bags for Fish Dam',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(22,280000,0,NULL,280000,'2023-07-15',NULL,'Nangfack Boniface','Local Suppliers',4,'Cubitainer',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(23,26000,0,NULL,26000,'2023-07-16',NULL,'Nangfack Boniface','Local Suppliers',4,'PVC Pipes',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(24,8000,0,NULL,8000,'2023-07-16',NULL,'Nangfack Boniface','Local Suppliers',1,'PVC accessories',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(25,30000,0,NULL,30000,'2023-07-17',NULL,'Nangfack Boniface','Local Suppliers',0,'Supplies to farm-Cubitainer',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(26,1000,0,NULL,1000,'2023-07-16',NULL,'Nangfack Boniface','Local Suppliers',2,'Metal saw',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(27,3500,0,NULL,3500,'2023-07-16',NULL,'Nangfack Boniface','Local Suppliers',1,'PVC Pipes -32',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(28,50000,0,NULL,50000,'2023-07-18',NULL,'Nangfack Boniface','Nangfack Boniface',0,'Transport allowance',NULL,NULL,'Stipend',NULL,NULL,NULL,NULL,NULL),(29,25000,0,NULL,25000,'2023-07-19',NULL,'Nangfack Boniface','Paul Tata',0,'Animal drugs',NULL,NULL,'Vet Supplies',NULL,NULL,NULL,NULL,NULL),(30,1500,0,NULL,1500,'2023-07-20',NULL,'Nangfack Boniface','Local Suppliers',0,'Generator',NULL,NULL,'Repairs',NULL,NULL,NULL,NULL,NULL),(31,800,0,NULL,800,'2023-07-14',NULL,'Nangfack Boniface','Mtn mono',0,'Money withdrawal fee',NULL,NULL,'Taxes',NULL,NULL,NULL,NULL,NULL),(32,14500,0,NULL,14500,'2023-07-19',NULL,'Nangfack Boniface','Local Suppliers',33,'Empty Bags for Fish Dam',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(33,50000,0,NULL,50000,'2023-07-27',NULL,'Nangfack Boniface','Eloundou Alain',0,'Fish Cultivation ',NULL,NULL,'Consultancy',NULL,NULL,NULL,NULL,NULL),(34,300000,0,NULL,300000,'2023-07-27',NULL,'Nangfack Boniface','Local Suppliers',500,'Day Old Chicks',NULL,NULL,'Broiler',NULL,NULL,NULL,NULL,NULL),(35,80000,0,NULL,80000,'2023-08-07',NULL,'Awah Anyere','Warren',0,'Monthly wage ',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(36,50000,0,NULL,50000,'2023-08-07',NULL,'Awah Anyere','Lionel',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(37,60000,0,NULL,60000,'2023-08-07',NULL,'Awah Anyere','Nathan',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(38,60000,0,NULL,60000,'2023-08-07',NULL,'Awah Anyere','Obam',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(39,150000,0,NULL,150000,'2023-08-07',NULL,'Awah Anyere','Paul Tata',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(40,40000,0,NULL,40000,'2023-08-08',NULL,'Awah Anyere','Godwin Faison',0,'Transportation for Mr Jonas ',NULL,NULL,'Misc',NULL,NULL,NULL,NULL,NULL),(41,200000,0,NULL,200000,'2023-08-09',NULL,'Awah Anyere','Eloundou Alain',0,'Parent Stock purchase',NULL,NULL,'FishStock',NULL,NULL,NULL,NULL,NULL),(42,4500,0,NULL,4500,'2023-08-10',NULL,'Awah Anyere','Awah Anyere',0,'Transport allowance',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(43,9000,0,NULL,9000,'2023-08-10',NULL,'Awah Anyere','Local Suppliers',0,'Pipe gum',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(44,10000,0,NULL,10000,'2023-08-10',NULL,'Awah Anyere','Paul Tata',0,'Monthly Farm Feeding support allowance',NULL,NULL,'Misc',NULL,NULL,NULL,NULL,NULL),(45,66000,0,NULL,66000,'2023-08-10',NULL,'Awah Anyere','Local Suppliers',0,'Adv Payment for planks and poles',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(46,3000,0,NULL,3000,'2023-08-10',NULL,'Awah Anyere','Local Suppliers',0,'Cutlass File',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(47,14000,0,NULL,14000,'2023-08-11',NULL,'Awah Anyere','Local Suppliers',0,'Fuel for feed mill',NULL,NULL,'Fuel',NULL,NULL,NULL,NULL,NULL),(48,5000,0,NULL,5000,'2023-08-11',NULL,'Awah Anyere','Local Suppliers',6,'door locks and holders',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(49,34500,0,NULL,34500,'2023-08-12',NULL,'Awah Anyere','Local Suppliers',50,'Concentrate 10% -50kg',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(50,2500,0,NULL,2500,'2023-08-12',NULL,'Awah Anyere','Local Suppliers',0,'Transportation of feedstock',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(51,7000,0,NULL,7000,'2023-08-07',NULL,'Awah Anyere','Mtn mono',0,'Money withdrawal fee',NULL,NULL,'Taxes',NULL,NULL,NULL,NULL,NULL),(52,20000,0,NULL,20000,'2023-08-07',NULL,'Awah Anyere','Paul Tata',1,'Animal Vitamins',NULL,NULL,'Vet Supplies',NULL,NULL,NULL,NULL,NULL),(53,5000,0,NULL,5000,'2023-08-14',NULL,'Awah Anyere','Repair Shop',1,'generator repair',NULL,NULL,'Repairs',NULL,NULL,NULL,NULL,NULL),(56,11000,0,NULL,11000,'2023-08-15',NULL,'Awah Anyere','Sylvanus',1,'cassava roots',NULL,NULL,'Farm Seed',NULL,NULL,NULL,NULL,NULL),(58,14000,0,NULL,14000,'2023-08-19',NULL,'Awah Anyere','Local Suppliers',40,'empty bags',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(59,81000,0,NULL,81000,'2023-08-15',NULL,'Awah Kenrique Ngwa','Begocam',8,'3Days table birds ration ',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(60,8000,0,NULL,8000,'2023-08-14',NULL,'Awah Kenrique Ngwa','Public transportation',8,'Transportation of Animal feed to farm',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(61,30000,0,NULL,30000,'2023-08-18',NULL,'Awah Kenrique Ngwa','Obi\'s construction',2,'Purchase of 250L of Blue barrels for fish hashlings ',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(62,1000,0,NULL,1000,'2023-08-14',NULL,'Awah Kenrique Ngwa','Public transportation',1,'Transportaion of barrrels to farm',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(63,6000,0,NULL,6000,'2023-08-18',NULL,'Mr Boniface Nanfack','Local vendor',0,'Purchaseof palmiste',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(64,32000,0,NULL,32000,'2023-08-18',NULL,'Awah Kenrique Ngwa','Begocam',1,'Purchase of Son melange',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(65,180000,0,NULL,180000,'2023-08-18',NULL,'Awah Kenrique Ngwa','Begocam',12,'Table birds ration for the rest of the production circle',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(66,15000,0,NULL,15000,'2023-08-19',NULL,'Awah Kenrique Ngwa','Kana construction',2,'Construction of pond water supply system(vent 40 and 32)',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(67,12000,0,NULL,12000,'2023-08-18',NULL,'Mr Boniface Nanfack','Public trasnportation',12,'Transportation of Animal feed to farm',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(69,10000,0,NULL,10000,'2023-08-22',NULL,'Mr Paul Tata','mr Neba',10,'Purchase of roofing rafters for fish hashlings',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(70,20000,0,NULL,20000,'2023-08-22',NULL,'Mr Paul Tata','Pharmacy du rail',0,'Purchase of vitamins for table birds',NULL,NULL,'Vet Supplies',NULL,NULL,NULL,NULL,NULL),(71,13000,0,NULL,13000,'2023-08-27',NULL,'Mr Paul Tata','Pharmacy du rail',0,'Purchase of vitamins for table birds',NULL,NULL,'Vet Supplies',NULL,NULL,NULL,NULL,NULL),(72,5000,0,NULL,5000,'2023-08-28',NULL,'Mr Boniface Nanfack','local welder',0,'Farm grinding machinery and pipe reduction',NULL,NULL,'Repairs',NULL,NULL,NULL,NULL,NULL),(73,8000,0,NULL,8000,'2023-08-19',NULL,'Mr Boniface Nanfack','Local vendor',0,'Transportation of bags and farm equipements',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(74,120400,120400,NULL,120400,'2023-08-29',NULL,'Awah Kenrique Ngwa','Mr Paul',1000,'Purchase of india bamboos',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(75,20000,0,NULL,20000,'2023-08-31',NULL,'Awah Kenrique Ngwa','Faison Godwil',0,'Purchase of new worker\'s accesories',NULL,NULL,'misc',NULL,NULL,NULL,NULL,NULL),(78,2000,0,NULL,2000,'2023-08-22',NULL,'Awah Kenrique Ngwa','Mtn Cameroon',0,'Withdrawal amount for 100000',NULL,NULL,'misc',NULL,NULL,NULL,NULL,NULL),(79,8000,0,NULL,8000,'2023-08-30',NULL,'Awah Kenrique Ngwa','Neptune Cameroon',10,'Purchase of fuel for farm machinaries',NULL,NULL,'Fuel',NULL,NULL,NULL,NULL,NULL),(80,10000,0,NULL,10000,'2023-08-08',NULL,'Awah Kenrique Ngwa','Mr Paul Tata',0,'Farm monthly Allowance',NULL,NULL,'misc',NULL,NULL,NULL,NULL,NULL),(81,31000,0,NULL,31000,'2023-08-19',NULL,'Awah Kenrique Ngwa','MR Obi\'s construction',2,'Purchase of  250L barrels',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(82,30000,0,NULL,30000,'2023-08-19',NULL,'Awah Kenrique Ngwa','Kana construction',10,'Red plastic zincs',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(83,10500,0,NULL,10500,'2023-08-18',NULL,'Awah Kenrique Ngwa','Kana construction',30,'Purchase of min L bow pipes',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(85,4000,0,NULL,4000,'2023-08-30',NULL,'Awah Kenrique Ngwa','Begocam',4,'toxic binder',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(87,32000,0,NULL,32000,'2023-08-30',NULL,'Awah Kenrique Ngwa','Aladji Daro',100,'Son melange',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(88,180000,0,NULL,180000,'2023-08-30',NULL,'Awah Kenrique Ngwa','Aladji Daro',630,'Boiller birds',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(89,15000,0,NULL,15000,'2023-08-28',NULL,'Awah Kenrique Ngwa','Kana construction',2,'Vent 40 and vent 32',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(90,12000,0,NULL,12000,'2023-08-30',NULL,'Awah Kenrique Ngwa','Public trasnportation',13,'Transportation of Animal feed to farm',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(95,5000,0,NULL,5000,'2023-08-21',NULL,'Mr Paul Tata','Mr Neba',5,'Purchase of Pools and Lads',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(99,50000,0,NULL,50000,'2023-08-31',NULL,'Awah Kenrique Ngwa','Mr Boniface Nanfack',0,'Unknown purpose',NULL,NULL,'Stipend',NULL,NULL,NULL,NULL,NULL),(100,8500,0,NULL,8500,'2023-09-02',NULL,'Mr Nko Leonel','Local vendor',0,'Pond sterilizer',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(101,1000,0,NULL,1000,'2023-09-02',NULL,'Mr Nko Leonel','Public transportation',0,'Transpotation to purchase pond sterilizer',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(102,105000,0,NULL,105000,'2023-09-02',NULL,'Awah Kenrique Ngwa','Aladji Daro',300,'Purchase of maize',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(103,10000,0,NULL,10000,'2023-09-02',NULL,'Awah Kenrique Ngwa','Public transportation',300,'Transportation of maize to farm',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(105,1500,0,NULL,1500,'2023-09-05',NULL,'Awah Kenrique Ngwa','Kana construction',1,'Cement nails',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(106,12000,0,NULL,12000,'2023-08-16',NULL,'Awah Kenrique Ngwa','Public transportation',0,'Transportation to town and back to kombe over a week',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(107,12000,0,NULL,12000,'2023-08-17',NULL,'Awah Kenrique Ngwa','Public transportation',0,'Transportation to town and back to kombe over a week',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(108,2500,0,NULL,2500,'2023-09-05',NULL,'Awah Kenrique Ngwa','Public transportation',0,'Transportation to farm and back',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(109,1300,0,NULL,1300,'2023-09-06',NULL,'Awah Kenrique Ngwa','Public transportation',0,'Transportation to town',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(110,140000,0,NULL,150000,'2023-09-06',NULL,'Awah Kenrique Ngwa','Mr Paul Tata',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(111,40000,0,NULL,60000,'2023-09-06',NULL,'Mr Paul Tata','Nko Leonel',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(112,60000,0,NULL,60000,'2023-09-06',NULL,'Paul Tata','Nathan Ella',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(113,80000,0,NULL,80000,'2023-09-06',NULL,'Paul Tata','Zeh Essiane Warren',0,'Monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(114,30000,20000,NULL,50000,'2023-09-08',NULL,'Paul Tata','Mbande Jonas',0,'Advance monthly wage',NULL,NULL,'Salary',NULL,NULL,NULL,NULL,NULL),(115,2500,0,NULL,2500,'2023-09-06',NULL,'Nko Leonel','Public transportation',0,'Transpotation of dialy birds to market',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(116,5000,0,NULL,5000,'2023-08-28',NULL,'Awah Kenrique Ngwa','Obi\'s construction',1,'Purchase of farm boot',NULL,NULL,'Farm supplies',NULL,NULL,NULL,NULL,NULL),(117,124250,0,NULL,124250,'2023-09-09',NULL,'Awah Kenrique Ngwa','Aladji Daro',350,'Maize',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(118,25000,0,NULL,25000,'2023-09-09',NULL,'Awah Kenrique Ngwa','Aladji Daro',50,'Purchased soyabeans',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(119,6875,0,NULL,6875,'2023-09-09',NULL,'Awah Kenrique Ngwa','Aladji Daro',50,'Purchased palmiste',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(120,14500,0,NULL,14500,'2023-09-09',NULL,'Awah Kenrique Ngwa','Aladji Daro',50,'Purchased groundnut cakes',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(121,24500,0,NULL,24500,'2023-09-09',NULL,'Awah Kenrique Ngwa','Aladji Daro',50,'Purchased of concentrate Chair',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(122,1350,0,NULL,1350,'2023-09-09',NULL,'Awah Kenrique Ngwa','Aladji Daro',450,'Feed grinding',NULL,NULL,'Misc',NULL,NULL,NULL,NULL,NULL),(123,10000,0,NULL,10000,'2023-09-11',NULL,'Nko Leonel','Local vendor',1,'Pond sterilizer',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(124,6000,0,NULL,6000,'2023-09-13',NULL,'Awah Kenrique Ngwa','Contruction Store Souza',4,'Cement nails',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(125,10000,0,NULL,10000,'2023-09-13',NULL,'Awah Kenrique Ngwa','Paul Tata',0,'Farm monthly Allowance',NULL,NULL,'misc',NULL,NULL,NULL,NULL,NULL),(126,3500,0,NULL,3500,'2023-09-13',NULL,'Awah Kenrique Ngwa','Contruction Store kombe',1,'Ceiling wood',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(127,3500,0,NULL,3500,'2023-09-13',NULL,'Awah Kenrique Ngwa','Contruction Store kombe',1,'Purchase Black board paint',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(128,12000,0,NULL,12000,'2023-09-14',NULL,'Awah Kenrique Ngwa','Local vendor',6,'Purchase of Fish nets',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(129,72500,0,NULL,72500,'2023-09-14',NULL,'Awah Kenrique Ngwa','Mr Neba',20,'Purchase of Planks and pools',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(130,7500,0,NULL,7500,'2023-09-14',NULL,'Awah Kenrique Ngwa','Paul Tata',20,'Transportation of plancks and pools ',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(131,1000,0,NULL,1000,'2023-09-14',NULL,'Awah Kenrique Ngwa','Faison Godwin',3,'Transportatio of fowl cages',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(132,5100,0,NULL,5100,'2023-09-14',NULL,'Awah Kenrique Ngwa','Kana construction',1,'Purchase of cement ',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(133,3000,0,NULL,3000,'2023-09-14',NULL,'Awah Kenrique Ngwa','Kana construction',2,'Purchase of pipe joints',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(134,2000,0,NULL,2000,'2023-09-15',NULL,'Awah Kenrique Ngwa','Kana construction',1,'Pipe reducer 40/32',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(135,3000,0,NULL,3000,'2023-09-15',NULL,'Awah Kenrique Ngwa','Kana construction',2,'Pipe joint',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(136,2000,0,NULL,2000,'2023-09-15',NULL,'Awah Kenrique Ngwa','Kana construction',1,'Padlock',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(137,7500,0,NULL,7500,'2023-09-13',NULL,'Awah Kenrique Ngwa','Local vendor',3,'Purchase of Fish nets',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(138,3500,0,NULL,3500,'2023-09-16',NULL,'Awah Kenrique Ngwa','Provenderie la reference',10,'Purchase of 10kg of chicken feed ',NULL,NULL,'FeedStock',NULL,NULL,NULL,NULL,NULL),(139,500,0,NULL,500,'2023-09-16',NULL,'Awah Kenrique Ngwa','Public transportation',10,'Chicken feed',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(140,5000,0,NULL,5000,'2023-09-16',NULL,'Awah Kenrique Ngwa','Faison Godwin',100,'Transportation of chicken to grande hanger market',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(142,3000,0,NULL,3000,'2023-09-16',NULL,'Awah Kenrique Ngwa','Public transportation',49,'Transportation of table birds to MAMA AMEZ',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(143,95000,0,NULL,95000,'2023-09-18',NULL,'Paul Tata','CAPHAVET Sarl (699689296)',4,'Purchase of drugs for Boilers batch 2 - later',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(144,6150,0,NULL,6150,'2023-09-18',NULL,'Nko Leonel','KOMBE sarl',5,'Purchase of saw dust for paultry',NULL,NULL,'Farm Supplies',NULL,NULL,NULL,NULL,NULL),(145,5000,0,NULL,5000,'2023-09-18',NULL,'Paul Tata','Public transportation',4,'Purchase of drugs for Boilers batch 2 - later',NULL,NULL,'Transport',NULL,NULL,NULL,NULL,NULL),(146,205000,0,NULL,205000,'2023-09-17',NULL,'Awah Kenrique Ngwa','MbaoFish(Yannick)',0,'Purchase of fish feeds',NULL,NULL,'FishStock',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeding`
--

DROP TABLE IF EXISTS `feeding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feeding` (
  `feeding_id` int NOT NULL AUTO_INCREMENT,
  `avg_fish_size` double NOT NULL,
  `feed_out` int NOT NULL,
  `feeding_date` date DEFAULT NULL,
  `pellet_size` int NOT NULL,
  `qty_fed` int NOT NULL,
  `times_fed` int NOT NULL,
  `batch_id` int DEFAULT NULL,
  `stockid` int DEFAULT NULL,
  PRIMARY KEY (`feeding_id`),
  KEY `FKpp2k78orw6t5t6yb1m0ny3ibv` (`batch_id`),
  KEY `FK3rs3uah0eagtnrjg8ixdo5uxb` (`stockid`),
  CONSTRAINT `FK3rs3uah0eagtnrjg8ixdo5uxb` FOREIGN KEY (`stockid`) REFERENCES `stock` (`stock_id`),
  CONSTRAINT `FKpp2k78orw6t5t6yb1m0ny3ibv` FOREIGN KEY (`batch_id`) REFERENCES `mixedfeed` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeding`
--

LOCK TABLES `feeding` WRITE;
/*!40000 ALTER TABLE `feeding` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedstock`
--

DROP TABLE IF EXISTS `feedstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedstock` (
  `feedstock_id` int NOT NULL AUTO_INCREMENT,
  `cp_content` int NOT NULL,
  `energy_content` int NOT NULL,
  `in_stock_qty` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `projected_stock_qty` int DEFAULT '0',
  `qty_used` int DEFAULT '0',
  `stock_date` date DEFAULT NULL,
  `stock_remaining` double NOT NULL,
  `unit_price` double NOT NULL,
  `batch_id` int DEFAULT NULL,
  `qty_bought` double NOT NULL,
  `is_finished` bit(1) NOT NULL,
  `is_low` bit(1) NOT NULL,
  `broiler_feed_used` double NOT NULL,
  `duck_and_fowl_feed_used` double NOT NULL,
  `fish_feed_used` double NOT NULL,
  `pig_feed_used` double NOT NULL,
  `other_feed_used` double NOT NULL,
  `rabbit_feed_used` double NOT NULL,
  PRIMARY KEY (`feedstock_id`),
  KEY `FKb1ea39krfhufljq0vi7jorpb1` (`batch_id`),
  CONSTRAINT `FK4ke5dcrg5f04qcmwx3qgis98c` FOREIGN KEY (`batch_id`) REFERENCES `provender` (`batch_id`),
  CONSTRAINT `FKb1ea39krfhufljq0vi7jorpb1` FOREIGN KEY (`batch_id`) REFERENCES `mixedfeed` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedstock`
--

LOCK TABLES `feedstock` WRITE;
/*!40000 ALTER TABLE `feedstock` DISABLE KEYS */;
INSERT INTO `feedstock` VALUES (15,0,0,350,'Maize',0,144,'2023-09-08',206,355,NULL,0,_binary '\0',_binary '\0',50,73.5,20,0,0,0),(16,0,0,156.1,'Wheat Bran',0,78,'2023-08-14',79,50,NULL,0,_binary '\0',_binary '\0',7.5,61.5,8.5,0,0,0),(17,0,0,156,'Soja Bean',0,33,'2023-08-15',123.4,535,NULL,0,_binary '\0',_binary '\0',19,3.6,10,0,0,0),(18,0,0,100,'Fish Meal',0,20,'2023-08-15',80,0,NULL,0,_binary '\0',_binary '\0',0,0,20,0,0,0),(19,0,0,122,'GNC',0,38,'2023-09-12',84,290,NULL,0,_binary '\0',_binary '\0',13,20,5,0,0,0),(20,0,0,125,'Blood Meal',0,30,'2023-08-15',95,0,NULL,0,_binary '\0',_binary '\0',0,0,30,0,0,0),(21,0,0,7,'Kernel Cake',0,7,'2023-09-12',0,6875,NULL,0,_binary '\0',_binary '\0',0,7,0,0,0,0),(22,0,0,22,'Bone Meal',0,7,'2023-08-15',15.5,0,NULL,0,_binary '\0',_binary '\0',0.3,5.2,1,0,0,0),(23,0,0,32.5,'Cassava Flour',0,5,'2023-08-15',27.5,0,NULL,0,_binary '\0',_binary '\0',0,0,5,0,0,0),(24,0,0,20,'Sea Shell',0,1,'2023-08-15',19,0,NULL,0,_binary '\0',_binary '\0',0,0,1,0,0,0),(25,0,0,2,'Toxin Binder',0,1,'2023-09-12',1,2000,NULL,0,_binary '\0',_binary '\0',0.2,0,1,0,0,0),(26,0,0,31,'Concentrate 10%',0,18,'2023-09-12',13,24000,NULL,0,_binary '\0',_binary '\0',10,8,0,0,0,0),(27,0,0,0.5,'Yeast',0,0,'2023-08-15',0.35,0,NULL,0,_binary '\0',_binary '\0',0,0,0.15,0,0,0),(28,0,0,2.4,'Premix',0,0,'2023-08-15',2.15,0,NULL,0,_binary '\0',_binary '\0',0,0,0.25,0,0,0),(29,0,0,10,'Sample',0,5,'2023-08-29',5,100,NULL,0,_binary '\0',_binary '\0',0,5,0,0,0,0);
/*!40000 ALTER TABLE `feedstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fishfeed`
--

DROP TABLE IF EXISTS `fishfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fishfeed` (
  `feeding_id` int NOT NULL AUTO_INCREMENT,
  `avg_fish_size` int DEFAULT '0',
  `feeding_date` date DEFAULT NULL,
  `feeding_notes` tinytext,
  `pellet_size` int NOT NULL,
  `provender_id` int NOT NULL,
  `qty_fed` int NOT NULL,
  `times_fed` int NOT NULL,
  `stock_id` int DEFAULT NULL,
  `batch_id` int DEFAULT NULL,
  `fish_in_pond` int DEFAULT '0',
  `mortality` int DEFAULT '0',
  `reduced` int DEFAULT '0',
  PRIMARY KEY (`feeding_id`),
  KEY `FKmwnvnv30xrqetkxrk496cgt1y` (`stock_id`),
  KEY `FKhd5csndmjll8reag9acembrkd` (`batch_id`),
  CONSTRAINT `FKhd5csndmjll8reag9acembrkd` FOREIGN KEY (`batch_id`) REFERENCES `provender` (`batch_id`),
  CONSTRAINT `FKmwnvnv30xrqetkxrk496cgt1y` FOREIGN KEY (`stock_id`) REFERENCES `fishstock` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fishfeed`
--

LOCK TABLES `fishfeed` WRITE;
/*!40000 ALTER TABLE `fishfeed` DISABLE KEYS */;
INSERT INTO `fishfeed` VALUES (1,0,'2023-08-14','',0,3,10,0,2,NULL,0,1,1),(2,55,'2023-09-10','Parent stock transferred from Pond 4',0,8,1,0,3,NULL,5000,0,0),(3,60,'2023-09-20','',0,13,20,4,3,NULL,5000,0,0),(4,60,'2023-09-20','',0,13,20,4,3,NULL,5000,0,0),(5,60,'2023-09-20','',0,13,20,4,3,NULL,5000,0,0),(6,11,'2023-09-17','',0,14,1500,2,1,NULL,4300,0,0),(7,11,'2023-09-18','',0,14,1500,2,1,NULL,4300,0,0),(8,100,'2023-09-19','',0,14,1500,2,1,NULL,4300,0,0),(9,350,'2023-09-20','',0,14,5000,2,1,NULL,4300,0,0),(10,0,'2023-09-22','',2,18,1500,0,2,NULL,4300,5,24);
/*!40000 ALTER TABLE `fishfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fishstock`
--

DROP TABLE IF EXISTS `fishstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fishstock` (
  `stock_id` int NOT NULL AUTO_INCREMENT,
  `fish_name` varchar(255) DEFAULT NULL,
  `fish_pond_id` int NOT NULL,
  `fish_pond_name` varchar(255) DEFAULT NULL,
  `fish_specy` varchar(255) DEFAULT NULL,
  `is_archive` bit(1) NOT NULL,
  `is_sold_out` bit(1) NOT NULL,
  `mortality` int NOT NULL,
  `nbr_of_days` int NOT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `reduction` int NOT NULL,
  `stock_date` date DEFAULT NULL,
  `stock_remaining` int NOT NULL,
  `total_stock` int NOT NULL,
  `batch_name` varchar(255) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fishstock`
--

LOCK TABLES `fishstock` WRITE;
/*!40000 ALTER TABLE `fishstock` DISABLE KEYS */;
INSERT INTO `fishstock` VALUES (1,NULL,0,'Incubator 1','Tilapia Black',_binary '\0',_binary '\0',0,42,'reproduction',0,'2023-07-31',1,1,NULL,'001'),(2,NULL,0,'Incubator 2','Tilapia Black',_binary '\0',_binary '\0',0,51,'reproduction',0,'2023-07-31',4300,4300,NULL,NULL),(3,NULL,0,'Bac 2','CatFish',_binary '\0',_binary '',0,12,'parent stock',63,'2023-09-10',0,63,NULL,''),(4,NULL,0,'Pond 1','tilapia',_binary '\0',_binary '\0',12,0,'Sales',100,'2024-02-06',99888,100000,NULL,'');
/*!40000 ALTER TABLE `fishstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flock`
--

DROP TABLE IF EXISTS `flock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flock` (
  `flock_id` int NOT NULL AUTO_INCREMENT,
  `flock_name` varchar(255) DEFAULT NULL,
  `flock_type` varchar(255) DEFAULT NULL,
  `is_archive` bit(1) NOT NULL,
  `is_sold_out` bit(1) NOT NULL,
  `mortality` int NOT NULL,
  `nbr_of_birds` int NOT NULL,
  `nbr_of_days` int NOT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `reduction` int NOT NULL,
  `stock_date` date DEFAULT NULL,
  `stock_remaining` int NOT NULL,
  `batch_name` varchar(255) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `avg_weight` double NOT NULL,
  PRIMARY KEY (`flock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flock`
--

LOCK TABLES `flock` WRITE;
/*!40000 ALTER TABLE `flock` DISABLE KEYS */;
INSERT INTO `flock` VALUES (1,'','Duck',_binary '\0',_binary '\0',0,50,274,'Reproduction',28,'2022-12-13',22,NULL,'001',0),(2,'','Duck',_binary '\0',_binary '\0',6,23,24,'Reproduction',0,'2023-07-20',17,NULL,NULL,0),(3,'','Guinea Fowls',_binary '\0',_binary '\0',0,6,86,'Reproduction',0,'2023-05-19',6,NULL,NULL,0),(4,'','Bhrama ',_binary '\0',_binary '\0',5,40,115,'Reproduction',0,'2023-04-20',35,NULL,NULL,0),(5,'','Geese',_binary '\0',_binary '\0',0,5,243,'Reproduction',0,'2022-12-13',5,NULL,NULL,0),(6,'','Pentad',_binary '\0',_binary '',1,4,128,'Reproduction',3,'2023-05-13',0,NULL,NULL,0),(7,'','Rabbit',_binary '\0',_binary '\0',1,9,396,'Reproduction',0,'2022-07-13',8,NULL,NULL,0),(8,'','Broiler',_binary '\0',_binary '',13,508,59,'meat',495,'2023-07-25',0,NULL,'003',0);
/*!40000 ALTER TABLE `flock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h2oanalysis`
--

DROP TABLE IF EXISTS `h2oanalysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `h2oanalysis` (
  `analysis_id` int NOT NULL AUTO_INCREMENT,
  `alkalinity` double NOT NULL,
  `analysis_date` date DEFAULT NULL,
  `fish_specy` varchar(255) DEFAULT NULL,
  `hardness` double NOT NULL,
  `nitrate` double NOT NULL,
  `oxygen_level` double NOT NULL,
  `ph` double NOT NULL,
  `sample_qty` int NOT NULL,
  `temp` double NOT NULL,
  `pond_id` int DEFAULT NULL,
  PRIMARY KEY (`analysis_id`),
  KEY `FKhpc1wyy9jknrddd5mnc2dhltc` (`pond_id`),
  CONSTRAINT `FKhpc1wyy9jknrddd5mnc2dhltc` FOREIGN KEY (`pond_id`) REFERENCES `pond` (`pond_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h2oanalysis`
--

LOCK TABLES `h2oanalysis` WRITE;
/*!40000 ALTER TABLE `h2oanalysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `h2oanalysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health` (
  `health_id` int NOT NULL AUTO_INCREMENT,
  `disease` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `total_suject_treated` int NOT NULL,
  `treatment_by` varchar(255) DEFAULT NULL,
  `treatment_name` varchar(255) DEFAULT NULL,
  `treatment_type` varchar(255) DEFAULT NULL,
  `treatmentdate` date DEFAULT NULL,
  `flock_id` int DEFAULT NULL,
  `stockid` int DEFAULT NULL,
  PRIMARY KEY (`health_id`),
  KEY `FKmx3dhk07sxrsj04irxgn3mnlf` (`flock_id`),
  KEY `FKvuww6ucpt366l8prbybv9xx4` (`stockid`),
  CONSTRAINT `FKcdb5pu8cja0hw4vh8wlh7hdpt` FOREIGN KEY (`stockid`) REFERENCES `fishstock` (`stock_id`),
  CONSTRAINT `FKmx3dhk07sxrsj04irxgn3mnlf` FOREIGN KEY (`flock_id`) REFERENCES `flock` (`flock_id`),
  CONSTRAINT `FKvuww6ucpt366l8prbybv9xx4` FOREIGN KEY (`stockid`) REFERENCES `stock` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `income_id` int NOT NULL AUTO_INCREMENT,
  `amount_received` double NOT NULL,
  `amount_sold` double NOT NULL,
  `date_sold` date DEFAULT NULL,
  `due_balance` double NOT NULL,
  `entered_by` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `qty_sold` int DEFAULT '1',
  `reference` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `investment_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`income_id`),
  KEY `FKrmd734igdknt1tuanu0bd4un8` (`client_id`),
  KEY `FKrqnrb9s7rjnxr180b0e6tv6p7` (`investment_id`),
  KEY `FKjqrc2vrmtwgxcbblve4xy8cao` (`product_id`),
  CONSTRAINT `FKjqrc2vrmtwgxcbblve4xy8cao` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKrmd734igdknt1tuanu0bd4un8` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `FKrqnrb9s7rjnxr180b0e6tv6p7` FOREIGN KEY (`investment_id`) REFERENCES `investment` (`investment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,120000,120000,'2023-07-02',0,'Paul Tata','Ephesian Ngwani',1,'Bank Deposit',NULL,'Crop Sales',NULL,NULL,NULL),(2,39000,39000,'2023-08-18',0,'Awah Anyere','',30,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(3,40000,40000,'2023-09-06',0,'Nko Leonel','Consumers',20,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(4,100000,100000,NULL,0,'Awah Anyere','Nina ',100,'3',NULL,'',NULL,NULL,NULL),(7,200000,200000,'2023-09-09',0,'Awah Anyere','Nina Mbangah',100,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(8,30000,30000,'2023-09-08',0,'Awah Anyere','Nko Leonel',15,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(9,19800,19800,'2023-09-10',0,'Awah Anyere','Local Vendor (Anne)',9,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(10,70500,70500,'2023-09-11',0,'Awah Anyere','Local Vendors',34,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(11,115000,115000,'2023-09-11',0,'Awah Anyere','MAMA AMEZ(675056996)',50,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(12,21000,21000,'2023-09-12',0,'Awah Anyere','Local Vendors',3,'Cash in hand',NULL,'Duck Sale',NULL,NULL,NULL),(13,22000,22000,'2023-09-12',0,'Awah Anyere','Local Vendors',3,'Cash in hand',NULL,'Duck Sale',NULL,NULL,NULL),(14,92500,92500,'2023-09-13',0,'Awah Anyere','Local Vendors',20,'Cash in hand',NULL,'Duck Sale ',NULL,NULL,NULL),(16,5000,5000,'2023-09-14',0,'Awah Anyere','Mr Ben',2,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(17,10000,10000,'2023-09-15',0,'Awah Anyere','Local Consumer',4,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(18,16000,16100,'2023-09-15',100,'Awah Anyere','Faison Godwin',7,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(19,2500,2500,'2023-09-15',0,'Awah Anyere','Uncle benny',1,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(20,46000,46000,'2023-09-11',46000,'Awah Anyere','MAMA AMEZ(675056996)',20,'1',NULL,'Chicken Sale',NULL,NULL,NULL),(21,0,62500,'2023-09-15',62500,'Awah Anyere','Faison Godwin',25,'2',NULL,'Chicken Sale',NULL,NULL,NULL),(22,0,6900,'2023-09-15',6900,'Awah Anyere','Faison Godwin',3,'3',NULL,'Chicken Sale',NULL,NULL,NULL),(23,17000,117000,'2023-09-16',100000,'Awah Anyere','MAMA AMEZ(675056996)',49,'4',NULL,'Chicken Sale',NULL,NULL,NULL),(24,5000,5000,'2023-09-16',0,'Awah Anyere','Local Consumer',2,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(25,0,230000,'2023-09-16',230000,'Awah Anyere','Mama Mirelle (651312797)',100,'651312797',NULL,'Chicken Sale',NULL,NULL,NULL),(26,25000,25000,'2023-09-18',0,'Awah Anyere','Leonel Ngwa',10,'Cash in hand',NULL,'Chicken Sale',NULL,NULL,NULL),(27,0,15000,'2023-09-16',15000,'Awah Anyere','Grandma',6,'6',NULL,'Chicken Sale',NULL,NULL,NULL);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment`
--

DROP TABLE IF EXISTS `investment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment` (
  `investment_id` int NOT NULL AUTO_INCREMENT,
  `amount_disbursed` double NOT NULL,
  `balance` int DEFAULT '0',
  `date` date DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `entered_by` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`investment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment`
--

LOCK TABLES `investment` WRITE;
/*!40000 ALTER TABLE `investment` DISABLE KEYS */;
INSERT INTO `investment` VALUES (1,400000,0,'2023-05-29','Nangfack Boniface',NULL,'Edwin Ngwa','WR1663860180',NULL,'Salary'),(2,750000,0,'2023-05-29','Nangfack Boniface',NULL,'Edwin Ngwa','WR163860332',NULL,'Farm Supplies'),(3,1500000,0,'2023-06-12','Ephesian Ngwani',NULL,'Edwin Ngwa','Zelle:njpjukbyt',NULL,'Farm Purchase'),(4,420000,0,'2023-06-16','Paul Tata',NULL,'Edwin Ngwa','Zelle:njpjukbyt',NULL,'Salary'),(5,400000,0,'2023-07-13','Nangfack Boniface',NULL,'Edwin Ngwa','WR168491705',NULL,'Incubator tilapia'),(6,300000,0,'2023-07-20','Nangfack Boniface',NULL,'Edwin Ngwa','Money Now',NULL,'Day Old Chicks'),(7,551000,0,'2023-07-21','Ephesian Ngwani',NULL,'Edwin Ngwa','Money Now',NULL,'Palm Cultivation'),(8,50000,0,'2023-07-22','Eloundou Alain',NULL,'Edwin Ngwa','WR169400565',NULL,'Consultancy'),(9,1000000,0,'2023-08-06','Anyere Awah',NULL,'Edwin Ngwa','Money Now',NULL,'Farm Maintenance'),(10,100000,0,'2023-08-23','Anyere Awah',NULL,'Edwin Ngwa','WR172564890',NULL,'FeedStock'),(11,1038500,0,'2023-08-29','Awah Anyere',NULL,'Edwin Ngwa','Hand Over',NULL,'Farm Maintenance'),(12,500000,0,'2023-09-11','MboaFish',NULL,'Edwin Ngwa','Cash Payment',NULL,'CatFish Fingerlings Purchase'),(13,335000,0,'2023-09-17','Nangfack Boniface',NULL,'Edwin Ngwa','MoMo',NULL,'Day Old Chicks');
/*!40000 ALTER TABLE `investment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscellaneous`
--

DROP TABLE IF EXISTS `miscellaneous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miscellaneous` (
  `misc_id` int NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `date_disbursed` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`misc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscellaneous`
--

LOCK TABLES `miscellaneous` WRITE;
/*!40000 ALTER TABLE `miscellaneous` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscellaneous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixedfeed`
--

DROP TABLE IF EXISTS `mixedfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixedfeed` (
  `batch_id` int NOT NULL AUTO_INCREMENT,
  `batch_date` date DEFAULT NULL,
  `formula_name` varchar(255) DEFAULT NULL,
  `qty_prepared` double NOT NULL,
  `qty_remaining` int NOT NULL,
  `qty_used` double NOT NULL,
  `total_energy_content` int NOT NULL,
  `totalcp_content` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixedfeed`
--

LOCK TABLES `mixedfeed` WRITE;
/*!40000 ALTER TABLE `mixedfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixedfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll` (
  `pay_id` int NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `date_paid` date DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `FKq5g6efn50dpql04olq3rnv40u` (`emp_id`),
  CONSTRAINT `FKq5g6efn50dpql04olq3rnv40u` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pond`
--

DROP TABLE IF EXISTS `pond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pond` (
  `pond_id` int NOT NULL AUTO_INCREMENT,
  `area` double DEFAULT NULL,
  `fish_in_stock` int NOT NULL,
  `is_active` bit(1) NOT NULL,
  `pond_name` varchar(255) DEFAULT NULL,
  `target_fish_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pond_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pond`
--

LOCK TABLES `pond` WRITE;
/*!40000 ALTER TABLE `pond` DISABLE KEYS */;
/*!40000 ALTER TABLE `pond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `cost` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `qty_in_stock` double NOT NULL,
  `unit_of_measure` varchar(255) DEFAULT NULL,
  `unit_price` double NOT NULL,
  `flockid` int DEFAULT NULL,
  `stockid` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `UK_rwj6sr4ynnxmukt48tmtafma7` (`flockid`),
  UNIQUE KEY `UK_htab15ic3xyel9h26oqql7c05` (`stockid`),
  CONSTRAINT `FK7ldyxeqrvm0bse5dv4t3iyshu` FOREIGN KEY (`flockid`) REFERENCES `flock` (`flock_id`),
  CONSTRAINT `FKmswd91vvgun5cdlfp62om794h` FOREIGN KEY (`stockid`) REFERENCES `stock` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provender`
--

DROP TABLE IF EXISTS `provender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provender` (
  `batch_id` int NOT NULL AUTO_INCREMENT,
  `batch_date` date DEFAULT NULL,
  `formula_name` varchar(255) DEFAULT NULL,
  `is_used` bit(1) NOT NULL,
  `qty_prepared` double NOT NULL,
  `qty_remaining` double NOT NULL,
  `qty_used` double NOT NULL,
  `total_energy_content` int NOT NULL,
  `totalcp_content` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `stock_id` int DEFAULT NULL,
  `flock_id` int DEFAULT NULL,
  `cost` double NOT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `FKsm0si0p4eagl7udfgobvhx5ct` (`stock_id`),
  KEY `FKrnmxb22idjq6fnij2ojsm4d9c` (`flock_id`),
  CONSTRAINT `FKrnmxb22idjq6fnij2ojsm4d9c` FOREIGN KEY (`flock_id`) REFERENCES `flock` (`flock_id`),
  CONSTRAINT `FKsm0si0p4eagl7udfgobvhx5ct` FOREIGN KEY (`stock_id`) REFERENCES `fishstock` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provender`
--

LOCK TABLES `provender` WRITE;
/*!40000 ALTER TABLE `provender` DISABLE KEYS */;
INSERT INTO `provender` VALUES (1,'2023-07-24',NULL,_binary '',50,-46,96,0,0,'Broiler',NULL,NULL,0),(3,'2023-08-01',NULL,_binary '\0',50,10,40,0,0,'Tilapia Black',2,NULL,0),(4,'2023-08-01',NULL,_binary '\0',662.5,0,651,0,0,'Broiler',NULL,8,0),(5,'2023-06-01',NULL,_binary '\0',98,-30,128,0,0,'Duck',NULL,NULL,0),(6,'2023-07-01',NULL,_binary '\0',92,9,83,0,0,'Duck',NULL,NULL,0),(8,'2023-09-10',NULL,_binary '',1,0,4,0,0,'CatFish',3,NULL,25000),(9,'2023-08-26',NULL,_binary '',450,0,450,0,0,'Broiler',NULL,8,0),(10,'2023-09-03',NULL,_binary '',690,0,690,0,0,'Broiler',NULL,8,0),(11,'2023-09-19',NULL,_binary '\0',25,14,11,0,0,'Bhrama ',NULL,4,0),(12,'2023-09-19',NULL,_binary '\0',15,-21,36,0,0,'Broiler',NULL,8,0),(13,'2023-09-12',NULL,_binary '\0',500,190,310,0,0,'CatFish',3,NULL,35000),(14,'2023-09-16',NULL,_binary '\0',1500000,1482500,17500,0,0,'Tilapia Black',1,NULL,0),(15,'2023-09-21',NULL,_binary '\0',15,15,0,0,0,'Pentad',NULL,6,18000),(16,'2023-09-22',NULL,_binary '\0',15,15,0,0,0,'Pentad',NULL,6,18000),(17,'2023-09-20',NULL,_binary '\0',150000,150000,0,0,0,'Pentad',NULL,6,325000),(18,'2023-09-22',NULL,_binary '\0',150000,148500,1500,0,0,'Tilapia Black',2,NULL,150000);
/*!40000 ALTER TABLE `provender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `purchase_id` int NOT NULL AUTO_INCREMENT,
  `due_balance` int DEFAULT '0',
  `paid_amount` double NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `reason` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `total` double NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `FK8omm6fki86s9oqk0o9s6w43h5` (`supplier_id`),
  CONSTRAINT `FK8omm6fki86s9oqk0o9s6w43h5` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampling`
--

DROP TABLE IF EXISTS `sampling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sampling` (
  `sampling_id` int NOT NULL AUTO_INCREMENT,
  `avg_fish_size` double NOT NULL,
  `fish_specy` varchar(255) DEFAULT NULL,
  `sample_date` date DEFAULT NULL,
  `sample_qty` int NOT NULL,
  `target_size` double NOT NULL,
  `total_sample_weight` double NOT NULL,
  `stock_id` int DEFAULT NULL,
  `stockid` int DEFAULT NULL,
  PRIMARY KEY (`sampling_id`),
  KEY `FKhm2fgv03gkytd2ugjl86yvkpv` (`stock_id`),
  KEY `FK1ao7fqpyfukgngmnwuqwvam65` (`stockid`),
  CONSTRAINT `FK1ao7fqpyfukgngmnwuqwvam65` FOREIGN KEY (`stockid`) REFERENCES `stock` (`stock_id`),
  CONSTRAINT `FKhm2fgv03gkytd2ugjl86yvkpv` FOREIGN KEY (`stock_id`) REFERENCES `fishstock` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampling`
--

LOCK TABLES `sampling` WRITE;
/*!40000 ALTER TABLE `sampling` DISABLE KEYS */;
INSERT INTO `sampling` VALUES (1,13,'','2023-09-17',300,13,3888,3,NULL),(2,15,'','2023-09-19',300,20,4500,3,NULL),(3,70,'','2023-09-20',10,0,700,3,NULL);
/*!40000 ALTER TABLE `sampling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `stock_id` int NOT NULL AUTO_INCREMENT,
  `date_emptied` date DEFAULT NULL,
  `fish_specy` varchar(255) DEFAULT NULL,
  `mortality` int NOT NULL,
  `stock_date` date DEFAULT NULL,
  `stock_remaining` int NOT NULL,
  `total_stock` int NOT NULL,
  `pond_id` int DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `FKbn61oe9lffauajg1221ilyqdd` (`pond_id`),
  CONSTRAINT `FKbn61oe9lffauajg1221ilyqdd` FOREIGN KEY (`pond_id`) REFERENCES `pond` (`pond_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `business_name` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `referenceid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tel_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `supply_id` int NOT NULL AUTO_INCREMENT,
  `amount_paid` double NOT NULL,
  `date_purchase` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `purchased_from` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `receipt` tinyblob,
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `assigned_to` varchar(255) DEFAULT NULL,
  `entered_date` date DEFAULT NULL,
  `entered_description` tinytext,
  `entered_title` varchar(255) DEFAULT NULL,
  `is_completed` bit(1) NOT NULL,
  `is_priority` bit(1) NOT NULL,
  `emp_id` int DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FKadt9pp7exl8dg6bxpd2p8btwm` (`emp_id`),
  CONSTRAINT `FKadt9pp7exl8dg6bxpd2p8btwm` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'karimbetm@gmail.com','Demosez','$2a$10$ObwxYTF58ZxZElics.v/4eF5U9pmeNh5Op623qBqMRCYOGeBLVshm','ADMIN','demosez'),(2,'nangfackboniface@yahoo.fr','Nangfack Boniface','$2a$10$5x77J3AbvEo5twRe2u2UsOapFl2Evf0yQzlULZkpHS0rSssr5QMEC','USER','boni'),(3,'kbf@gmail.com','Paul Tata','$2a$10$UV9gko78jfBiKflNdcm9bezIu2hbHupGTxCivOYVRW/kMZ9EOO1te','USER','ptata'),(4,'ngwakenri2016@gmail.com','Awah Anyere','$2a$10$koXECfshuoCNrB6RBW/cyOOmv1YVLe5a1ezfBpyV2vf1x2upu2ecm','USER','kombe');
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

-- Dump completed on 2024-06-05  8:30:33
