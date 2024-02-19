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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS authors;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE authors (
  author_id int NOT NULL AUTO_INCREMENT,
  author_name varchar(255) NOT NULL,
  bio text,
  PRIMARY KEY (author_id)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES authors WRITE;
/*!40000 ALTER TABLE authors DISABLE KEYS */;
INSERT INTO authors VALUES (1,'Mark Twain','Mark Twain, born Samuel Langhorne Clemens in 1835, was an iconic American writer and humorist, best known for \"The Adventures of Tom Sawyer\" and \"Adventures of Huckleberry Finn.\" His work celebrated American culture and captured the spirit of the Mississippi River era.'),(2,'Lewis Carrol','Lewis Carroll, born Charles Lutwidge Dodgson in 1832, was a British writer, mathematician, and photographer famous for his classic children books Alice Adventures in Wonderland and its sequel Through the Looking-Glass.'),(3,'Kazi Nasrul Islam','Kazi Nazrul Islam, born in 1899, was a Bengali poet, writer, and revolutionary, celebrated as the Rebel Poet for his fierce opposition to British rule in India. His works champion political and social justice, earning him a revered place in Bengali culture.'),(4,'Coleridge','Samuel Taylor Coleridge, born in 1772, was an English poet, literary critic, philosopher, and founder of the Romantic Movement in England, best known for his works \"The Rime of the Ancient Mariner\" and \"Kubla Khan.\"'),(5,'G.B.Shaw','George Bernard Shaw, born in 1856, was an Irish playwright, critic, polemicist, and political activist known for his wit and for winning the Nobel Prize in Literature in 1925. His notable works include \"Pygmalion\" and \"Saint Joan.\"'),(6,'George Orwell','George Orwell, born Eric Arthur Blair in 1903, was an English novelist, essayist, journalist, and critic best known for his dystopian novel 1984 and the allegorical novella Animal Farm, both sharp criticisms of totalitarianism.'),(7,'Lewis Wallace','Lewis Wallace, born in 1827, was an American lawyer, Union general in the American Civil War, governor of the New Mexico Territory, and writer, best known for his historical novel Ben-Hur: A Tale of the Christ.'),(8,'Jules Verne','ules Verne, born in 1828, was a French novelist, poet, and playwright known as one of the pioneers of science fiction, with famous works including Around the World in Eighty Days and Twenty Thousand Leagues Under the Sea.'),(9,'Babur','Babur, born in 1483, was a Central Asian conqueror who founded the Mughal Empire in India, chronicling his life and adventures in the autobiographical Baburnama, a seminal work in Islamic literature.'),(10,'Leo Tolstoy','Leo Tolstoy, born in 1828, was a Russian writer renowned for his epic novels War and Peace and Anna Karenina, exploring themes of morality, religion, and social justice, significantly influencing literature and philosophy.'),(11,'Kautilya','Kautilya, also known as Chanakya, was an ancient Indian teacher, philosopher, economist, jurist, and royal advisor, best known for authoring the Arthashastra, a seminal treatise on political science and economics in India.'),(12,'Jane Austen','Jane Austen, born in 1775, was an English novelist known for her keen observations of early 19th-century English society in classics such as Pride and Prejudice and Sense and Sensibility.'),(13,'Bankimchandra Chattopadhyay','Bankimchandra Chattopadhyay, born in 1838, was a Bengali novelist and poet who is considered a key figure in the literary renaissance of Bengal and India, best known for composing the national song Vande Mataram.'),(14,'Jean Jacques Rousseau','Jean-Jacques Rousseau, born in 1712, was a Genevan philosopher, writer, and composer of the 18th century Enlightenment, whose works on political philosophy, notably The Social Contract, deeply influenced the French Revolution and modern political thought.'),(15,'Adolf Hitler','Adolf Hitler, born in 1889, was a German politician and leader of the Nazi Party, who rose to power as Chancellor of Germany in 1933 and later Führer in 1934, initiating World War II and overseeing fascist policies that led to the Holocaust.');
/*!40000 ALTER TABLE authors ENABLE KEYS */;
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
