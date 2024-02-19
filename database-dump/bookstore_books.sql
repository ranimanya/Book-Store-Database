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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS books;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE books (
  book_id int NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  isbn varchar(255) NOT NULL,
  price decimal(10,2) NOT NULL,
  author_id int DEFAULT NULL,
  publication_date date DEFAULT NULL,
  stock_quantity int NOT NULL,
  PRIMARY KEY (book_id),
  UNIQUE KEY isbn (isbn),
  KEY fk_author (author_id),
  CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors (author_id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES books WRITE;
/*!40000 ALTER TABLE books DISABLE KEYS */;
INSERT INTO books VALUES (1,'Alice in Wonderland','978-1554810390',97.00,2,'2011-03-23',200),(2,'Animal Farm','978-0452284241',100.00,6,'2003-05-06',200),(3,'Pride and Prejudice','978-0143105428',129.50,12,'2009-08-25',200),(4,'Arthashastra','978-0140446036',239.50,11,'1992-08-27',200),(5,'Anna Karenina','978-3732632237',649.75,10,'2023-11-04',200),(6,'Adventures of Tom Sawyer','978-2487116221',220.99,1,'2023-11-18',200),(7,'Agni Veena','984-8274657790',329.67,3,'1922-10-01',200),(8,'Ancient Mariner','984-2648165597',268.99,4,'2006-05-30',200),(9,'Arms and the Man','978-8125042471',250.00,5,'2011-01-01',200),(10,'Mein Kampf','978-0395925034',441.75,15,'2009-04-22',200),(11,'Le Contract Social','978-0140442014',323.00,14,'2003-07-31',200),(12,'Anand Math','978-9393267122',145.99,13,'2022-07-04',200);
/*!40000 ALTER TABLE books ENABLE KEYS */;
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
