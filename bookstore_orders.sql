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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS orders;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE orders (
  order_id int NOT NULL AUTO_INCREMENT,
  customer_id int NOT NULL,
  order_date date NOT NULL,
  order_status varchar(255) NOT NULL,
  PRIMARY KEY (order_id),
  KEY fk_customer (customer_id),
  CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES orders WRITE;
/*!40000 ALTER TABLE orders DISABLE KEYS */;
INSERT INTO orders VALUES (1,41,'2023-01-02','Completed'),(2,32,'2023-05-14','Completed'),(3,5,'2024-01-23','Delivered'),(4,1,'2023-04-14','Completed'),(5,41,'2023-12-12','Delivered'),(6,32,'2023-09-08','Completed'),(7,1,'2023-06-09','Completed'),(8,5,'2023-12-17','Delivered'),(9,6,'2023-03-03','Completed'),(10,8,'2023-04-19','Completed'),(11,39,'2023-07-09','Completed'),(12,40,'2024-02-02','Processing'),(13,40,'2024-02-02','Processing'),(14,40,'2024-01-31','Cancelled'),(15,37,'2023-09-03','Completed'),(16,37,'2024-01-11','Delivered'),(17,36,'2024-02-07','Processing'),(18,9,'2024-02-01','Processing'),(19,34,'2024-02-10','Cancelled'),(20,33,'2023-05-05','Completed'),(21,33,'2023-05-05','Completed'),(22,2,'2023-08-16','Completed'),(23,7,'2023-11-27','Delivered'),(24,38,'2023-10-22','Completed'),(25,40,'2023-12-29','Completed');
/*!40000 ALTER TABLE orders ENABLE KEYS */;
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
