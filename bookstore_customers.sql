-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS customers;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE customers (
  customer_id int NOT NULL AUTO_INCREMENT,
  customer_name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  join_date date NOT NULL,
  PRIMARY KEY (customer_id),
  UNIQUE KEY email (email)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES customers WRITE;
/*!40000 ALTER TABLE customers DISABLE KEYS */;
INSERT INTO customers VALUES (1,'Raj Sharma','raj23@gmail.com','2021-01-03'),(2,'Avni Singh','avnisingh@yahoo.co.in','2022-10-23'),(3,'Sahil Ahmed','sahil45@gmail.com','2021-05-02'),(4,'S.Sathya','sathyaraghu@yahoo.co.in','2021-04-07'),(5,'Mansi Kaushal','kaushalmansi3@gmail.com','2021-09-17'),(6,'Sarika John','john12@company.com','2022-02-28'),(7,'Rama Raghavan','raghavrama68@company.com','2023-06-19'),(8,'Jiya Tiwari','jiyahere54@gmail.com','2022-07-07'),(9,'Satyakamini Sareen','kaminisatya32@yahoo.co.in','2023-12-12'),(32,'Priya Desai','desaipriya@company.com','2023-03-30'),(33,'Rehman Sohail','sohail123@gmail.com','2021-12-12'),(34,'Yukta Biswas','yuku789@yahoo.co.in','2023-08-13'),(35,'Nandini Devi','nandinidevi29@company.com','2020-11-23'),(36,'Juhi Tamang','tamangjuhi24@gmail.com','2020-07-14'),(37,'Zara Ameen','zaraameen@company.com','2022-12-18'),(38,'Maneesh Gupta','manishgupta89@yahoo.co.in','2020-08-09'),(39,'Rajalakshmi','rajalakshmi234@gmail.com','2021-03-23'),(40,'Sania Singh','saniahere567@company.com','2023-04-19'),(41,'Srihari','srihari8921@gmail.com','2020-09-05');
/*!40000 ALTER TABLE customers ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-14 16:10:04
