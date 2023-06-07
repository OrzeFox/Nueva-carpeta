CREATE DATABASE  IF NOT EXISTS `u-know` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `u-know`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: u-know
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categorie_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Programación'),(2,'Diseño UX'),(3,'Diseño Gráfico'),(4,'Desarrollo Web'),(5,'Inteligencia Artificial');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_comments_id` int NOT NULL,
  `text` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `content_id_idx` (`content_comments_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `content_id_fk` FOREIGN KEY (`content_comments_id`) REFERENCES `content` (`id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int NOT NULL DEFAULT '200',
  `updated_at` timestamp NOT NULL,
  `categorie_id` int NOT NULL,
  `dificulty_id` int NOT NULL,
  `sales` int NOT NULL DEFAULT '0',
  `aproved` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `author_id_idx` (`author_id`),
  KEY `content_categorie_id_idx` (`categorie_id`),
  KEY `content_dificulty_id_idx` (`dificulty_id`),
  CONSTRAINT `content_author_id_fk` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`),
  CONSTRAINT `content_categorie_id_fk` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  CONSTRAINT `content_dificulty_id_fk` FOREIGN KEY (`dificulty_id`) REFERENCES `dificulty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (71,1,'Introducción a HTML','Aprende los conceptos básicos de HTML',100,'2023-06-05 22:00:00',1,1,10,1),(72,2,'Diseño de interfaces web','Principios de diseño para interfaces web',150,'2023-06-05 22:00:00',2,1,5,1),(73,3,'JavaScript avanzado','Aprende técnicas avanzadas de JavaScript',200,'2023-06-05 22:00:00',1,2,8,1),(74,4,'Introducción a CSS','Fundamentos de CSS para estilizar páginas',100,'2023-06-05 22:00:00',1,1,12,1),(75,5,'Diseño de experiencias de usuario','Cómo crear experiencias de usuario atractivas',150,'2023-06-05 22:00:00',2,2,3,1),(76,6,'Python para análisis de datos','Utiliza Python para analizar datos',200,'2023-06-05 22:00:00',1,3,6,1),(77,7,'Introducción al diseño gráfico','Conceptos básicos de diseño gráfico',100,'2023-06-05 22:00:00',3,1,9,1),(78,8,'Desarrollo web con React','Crea aplicaciones web con React',150,'2023-06-05 22:00:00',4,2,2,1),(79,9,'Inteligencia Artificial en la industria','Aplicaciones de IA en diversos sectores',200,'2023-06-05 22:00:00',5,3,4,1),(80,10,'Fundamentos de programación','Principios básicos de programación',100,'2023-06-05 22:00:00',1,1,15,1),(81,11,'Diseño de interfaces móviles','Principios de diseño para interfaces móviles',150,'2023-06-05 22:00:00',2,1,7,1),(82,12,'Machine Learning con Python','Aprende a construir modelos de Machine Learning',200,'2023-06-05 22:00:00',5,2,9,1),(83,13,'Optimización de CSS','Mejora el rendimiento de tus hojas de estilo',100,'2023-06-05 22:00:00',1,3,3,1),(84,14,'Diseño de productos digitales','Estrategias para diseñar productos digitales exitosos',150,'2023-06-05 22:00:00',2,2,6,1),(85,15,'Análisis de datos con SQL','Realiza consultas y análisis de datos con SQL',200,'2023-06-05 22:00:00',1,3,11,1),(86,16,'Introducción al diseño de logotipos','Conceptos básicos de diseño de logotipos',100,'2023-06-05 22:00:00',3,1,8,1),(87,17,'Desarrollo web con Node.js','Crea aplicaciones web con Node.js',150,'2023-06-05 22:00:00',4,2,4,1),(88,18,'Inteligencia Artificial y ética','Consideraciones éticas en la implementación de IA',200,'2023-06-05 22:00:00',5,3,7,1),(89,19,'Programación orientada a objetos','Aprende a programar con enfoque orientado a objetos',100,'2023-06-05 22:00:00',1,1,13,1),(90,20,'Diseño de interfaces conversacionales','Principios de diseño para interfaces conversacionales',150,'2023-06-05 22:00:00',2,1,9,1);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dificulty`
--

DROP TABLE IF EXISTS `dificulty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dificulty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dificulty_level` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dificulty`
--

LOCK TABLES `dificulty` WRITE;
/*!40000 ALTER TABLE `dificulty` DISABLE KEYS */;
INSERT INTO `dificulty` VALUES (1,'easy'),(2,'medium'),(3,'hard');
/*!40000 ALTER TABLE `dificulty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_content`
--

DROP TABLE IF EXISTS `info_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `texto` varchar(1000) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `content_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conten_info_id_idx` (`content_id`),
  CONSTRAINT `conten_info_id` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_content`
--

LOCK TABLES `info_content` WRITE;
/*!40000 ALTER TABLE `info_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `content` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `sender_id_idx` (`sender_id`),
  KEY `receiver_id_idx` (`receiver_id`),
  CONSTRAINT `receiver_id_fk` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`),
  CONSTRAINT `sender_id_fk` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `purchaseDate` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchase_id_UNIQUE` (`id`),
  KEY `purchase_user_id_idx` (`user_id`),
  CONSTRAINT `purchase_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_has_content`
--

DROP TABLE IF EXISTS `purchase_has_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_has_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `content_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_purchase_has_content_content1_idx` (`content_id`),
  KEY `fk_purchase_has_content_purchase1_idx` (`purchase_id`),
  CONSTRAINT `fk_purchase_has_content_content1` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`),
  CONSTRAINT `fk_purchase_has_content_purchase1` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_has_content`
--

LOCK TABLES `purchase_has_content` WRITE;
/*!40000 ALTER TABLE `purchase_has_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_has_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_rating_id` int NOT NULL,
  `user_rating_id` int NOT NULL,
  `value` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `content_id_idx` (`content_rating_id`),
  KEY `user_id_idx` (`user_rating_id`),
  CONSTRAINT `rating_content_id_fk` FOREIGN KEY (`content_rating_id`) REFERENCES `content` (`id`),
  CONSTRAINT `rating_user_id_fk` FOREIGN KEY (`user_rating_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credit_balance` int NOT NULL DEFAULT '1000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'JohnDoe','johndoe@example.com','passw0rd1','2023-06-06 18:56:47',1000),(2,'EmilySmith','emilysmith@example.com','passw0rd2','2023-06-06 18:56:47',1000),(3,'DavidJohnson','davidjohnson@example.com','passw0rd3','2023-06-06 18:56:47',1000),(4,'SarahWilliams','sarahwilliams@example.com','passw0rd4','2023-06-06 18:56:47',1000),(5,'MichaelBrown','michaelbrown@example.com','passw0rd5','2023-06-06 18:56:47',1000),(6,'JenniferLee','jenniferlee@example.com','passw0rd6','2023-06-06 18:56:47',1000),(7,'ChristopherTaylor','christophertaylor@example.com','passw0rd7','2023-06-06 18:56:47',1000),(8,'JessicaDavis','jessicadavis@example.com','passw0rd8','2023-06-06 18:56:47',1000),(9,'MatthewMiller','matthewmiller@example.com','passw0rd9','2023-06-06 18:56:47',1000),(10,'OliviaAnderson','oliviaanderson@example.com','passw0rd10','2023-06-06 18:56:56',1000),(11,'AndrewThomas','andrewthomas@example.com','passw0rd11','2023-06-06 18:56:56',1000),(12,'SophiaWilson','sophiawilson@example.com','passw0rd12','2023-06-06 18:56:56',1000),(13,'JamesClark','jamesclark@example.com','passw0rd13','2023-06-06 18:56:56',1000),(14,'AvaMoore','avamoore@example.com','passw0rd14','2023-06-06 18:56:56',1000),(15,'BenjaminYoung','benjaminyoung@example.com','passw0rd15','2023-06-06 18:56:56',1000),(16,'MiaWalker','miawalker@example.com','passw0rd16','2023-06-06 18:56:56',1000),(17,'EthanHall','ethanhall@example.com','passw0rd17','2023-06-06 18:56:56',1000),(18,'IsabellaAllen','isabellaallen@example.com','passw0rd18','2023-06-06 18:56:56',1000),(19,'JacobGonzalez','jacobgonzalez@example.com','passw0rd19','2023-06-06 18:56:56',1000),(20,'ElizabethScott','elizabethscott@example.com','passw0rd20','2023-06-06 18:56:56',1000),(21,'WilliamGreen','williamgreen@example.com','passw0rd21','2023-06-06 18:56:56',1000),(22,'SophiaLewis','sophialewis@example.com','passw0rd22','2023-06-06 18:56:56',1000),(23,'AlexanderKing','alexanderking@example.com','passw0rd23','2023-06-06 18:56:56',1000),(24,'GraceHill','gracehill@example.com','passw0rd24','2023-06-06 18:56:56',1000),(25,'DanielWard','danielward@example.com','passw0rd25','2023-06-06 18:56:56',1000),(26,'LilyTurner','lilyturner@example.com','passw0rd26','2023-06-06 18:56:56',1000),(27,'JacksonMorgan','jacksonmorgan@example.com','passw0rd27','2023-06-06 18:56:56',1000),(28,'VictoriaYoung','victoriayoung@example.com','passw0rd28','2023-06-06 18:56:56',1000),(29,'SamuelLee','samuellee@example.com','passw0rd29','2023-06-06 18:56:56',1000),(30,'NatalieBrown','nataliebrown@example.com','passw0rd30','2023-06-06 18:56:56',1000),(31,'RyanHernandez','ryanhernandez@example.com','passw0rd31','2023-06-06 18:56:56',1000),(32,'GraceMitchell','gracemitchell@example.com','passw0rd32','2023-06-06 18:56:56',1000),(33,'AndrewWard','andrewward@example.com','passw0rd33','2023-06-06 18:56:56',1000),(34,'AvaCole','avacole@example.com','passw0rd34','2023-06-06 18:56:56',1000),(35,'WilliamReed','williamreed@example.com','passw0rd35','2023-06-06 18:56:56',1000),(36,'EmilyHill','emilyhill@example.com','passw0rd36','2023-06-06 18:56:56',1000),(37,'DanielTurner','danielturner@example.com','passw0rd37','2023-06-06 18:56:56',1000),(38,'OliviaCox','oliviacox@example.com','passw0rd38','2023-06-06 18:56:56',1000),(39,'BenjaminPowell','benjaminpowell@example.com','passw0rd39','2023-06-06 18:56:56',1000),(40,'HarperScott','harperscott@example.com','passw0rd40','2023-06-06 18:56:56',1000),(41,'SamuelMiller','samuelmiller@example.com','passw0rd41','2023-06-06 18:56:56',1000),(42,'AvaWilson','avawilson@example.com','passw0rd42','2023-06-06 18:56:56',1000),(43,'SophiaThompson','sophiathompson@example.com','passw0rd43','2023-06-06 18:56:56',1000),(44,'EthanGonzalez','ethangonzalez@example.com','passw0rd44','2023-06-06 18:56:56',1000),(45,'MiaAllen','miaallen@example.com','passw0rd45','2023-06-06 18:56:56',1000),(46,'AlexanderBaker','alexanderbaker@example.com','passw0rd46','2023-06-06 18:56:56',1000),(47,'EmilyPerez','emilyperez@example.com','passw0rd47','2023-06-06 18:56:56',1000),(48,'JamesCook','jamescook@example.com','passw0rd48','2023-06-06 18:56:56',1000),(49,'IsabellaBennett','isabellabennett@example.com','passw0rd49','2023-06-06 18:56:56',1000),(50,'DavidFoster','davidfoster@example.com','passw0rd50','2023-06-06 18:56:56',1000);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'u-know'
--

--
-- Dumping routines for database 'u-know'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 11:09:12
