CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_id` int NOT NULL,
  `text` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `content_id_idx` (`content_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `content_id` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int DEFAULT '200',
  `author_id` int NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie` varchar(405) NOT NULL,
  `dificulty` varchar(405) NOT NULL,
  `sales` int DEFAULT NULL,
  `aproved` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `author_id_idx` (`author_id`),
  CONSTRAINT `content_author_id` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'Introducción a Python','Un curso introductorio para aprender los conceptos básicos de programación utilizando Python.',200,23,NULL,'Python','Fácil',NULL,0),(2,'Desarrollo web con HTML y CSS','Aprende a crear y diseñar sitios web utilizando HTML y CSS.',200,15,NULL,'Desarrollo web','Moderada',NULL,0),(3,'Algoritmos y estructuras de datos','Explora algoritmos comunes y estructuras de datos utilizadas en programación.',200,42,NULL,'Algoritmos','Moderada',NULL,0),(4,'Aprendiendo Java','Un curso completo para aprender a programar en Java desde cero.',200,8,NULL,'Java','Moderada',NULL,0),(5,'Desarrollo de aplicaciones móviles con React Native','Descubre cómo crear aplicaciones móviles multiplataforma utilizando React Native.',200,32,NULL,'Desarrollo móvil','Moderada',NULL,0),(6,'Machine Learning con Python','Aprende a aplicar técnicas de Machine Learning utilizando Python y librerías populares.',200,19,NULL,'Machine Learning','Difícil',NULL,0),(7,'Programación en C++','Un curso completo para dominar la programación en C++ y desarrollar aplicaciones eficientes.',200,5,NULL,'C++','Difícil',NULL,0),(8,'Fundamentos de la programación orientada a objetos','Descubre los conceptos fundamentales de la programación orientada a objetos y su implementación en diferentes lenguajes.',200,38,NULL,'Programación orientada a objetos','Moderada',NULL,0),(9,'Desarrollo web con JavaScript','Aprende a crear sitios web interactivos utilizando JavaScript y sus librerías más populares.',200,7,NULL,'Desarrollo web','Moderada',NULL,0),(10,'Análisis de datos con Python','Descubre cómo utilizar Python y sus librerías para analizar y visualizar datos de manera efectiva.',200,27,NULL,'Análisis de datos','Moderada',NULL,0),(11,'Seguridad informática y hacking ético','Un curso introductorio sobre seguridad informática y técnicas de hacking ético para proteger sistemas y redes.',200,16,NULL,'Seguridad informática','Difícil',NULL,0),(12,'Desarrollo de aplicaciones móviles con Swift','Aprende a crear aplicaciones móviles para iOS utilizando el lenguaje Swift y el entorno de desarrollo de Apple.',200,3,NULL,'Desarrollo móvil','Moderada',NULL,0),(13,'Programación funcional con Haskell','Descubre los conceptos de programación funcional y aprende a programar en Haskell, un lenguaje funcional puro.',200,10,NULL,'Programación funcional','Difícil',NULL,0),(14,'Desarrollo web con Ruby on Rails','Aprende a construir aplicaciones web utilizando el framework Ruby on Rails y el lenguaje Ruby.',200,44,NULL,'Desarrollo web','Moderada',NULL,0),(15,'Inteligencia Artificial en el reconocimiento de patrones','Explora cómo utilizar técnicas de Inteligencia Artificial para el reconocimiento de patrones en diferentes contextos.',200,25,NULL,'Inteligencia Artificial','Difícil',NULL,0),(16,'Programación en C#','Un curso completo para aprender a programar en C# y desarrollar aplicaciones para el ecosistema de Microsoft.',200,13,NULL,'C#','Moderada',NULL,0),(17,'Desarrollo de aplicaciones móviles con Java','Descubre cómo crear aplicaciones móviles para Android utilizando el lenguaje de programación Java.',200,36,NULL,'Desarrollo móvil','Moderada',NULL,0),(18,'Programación en PHP','Aprende a programar en PHP y desarrollar aplicaciones web dinámicas y escalables.',200,14,NULL,'PHP','Moderada',NULL,0),(19,'Desarrollo web con Vue.js','Descubre cómo construir aplicaciones web interactivas utilizando el framework Vue.js y sus características modernas.',200,2,NULL,'Desarrollo web','Moderada',NULL,0),(20,'Inteligencia Artificial en el procesamiento de lenguaje natural','Aprende a utilizar técnicas de procesamiento de lenguaje natural utilizando Inteligencia Artificial.',200,21,NULL,'Procesamiento de lenguaje natural','Difícil',NULL,0),(21,'Programación en Kotlin','Un curso completo para aprender a programar en Kotlin y desarrollar aplicaciones para Android.',200,30,NULL,'Kotlin','Moderada',NULL,0),(22,'Desarrollo de aplicaciones web con Django','Aprende a construir aplicaciones web utilizando el framework Django y el lenguaje de programación Python.',200,41,NULL,'Desarrollo web','Moderada',NULL,0),(23,'Programación en JavaScript','Un curso completo para aprender a programar en JavaScript y desarrollar aplicaciones web interactivas.',200,11,NULL,'JavaScript','Moderada',NULL,0),(24,'Desarrollo de videojuegos con Unity','Aprende a desarrollar juegos utilizando el motor de desarrollo Unity y el lenguaje de programación C#.',200,34,NULL,'Desarrollo de videojuegos','Moderada',NULL,0),(25,'Inteligencia Artificial en la visión por computadora','Explora cómo utilizar técnicas de Inteligencia Artificial para el procesamiento y análisis de imágenes y videos.',200,17,NULL,'Visión por computadora','Difícil',NULL,0),(26,'Programación en Ruby','Un curso completo para aprender a programar en Ruby y desarrollar aplicaciones web elegantes y fáciles de mantener.',200,26,NULL,'Ruby','Moderada',NULL,0),(27,'Desarrollo web con ASP.NET','Descubre cómo construir aplicaciones web utilizando el framework ASP.NET y el lenguaje de programación C#.',200,20,NULL,'Desarrollo web','Moderada',NULL,0),(28,'Inteligencia Artificial en chatbots','Aprende a desarrollar chatbots inteligentes utilizando técnicas de Inteligencia Artificial.',200,35,NULL,'Chatbots','Moderada',NULL,0),(29,'Programación en Python','Un curso completo para aprender a programar en Python y desarrollar aplicaciones de todo tipo.',200,6,NULL,'Python','Moderada',NULL,0),(30,'Desarrollo de aplicaciones móviles con Flutter','Descubre cómo crear aplicaciones móviles multiplataforma utilizando el framework Flutter y el lenguaje Dart.',200,46,NULL,'Desarrollo móvil','Moderada',NULL,0),(31,'Aprendiendo SQL','Un curso introductorio para aprender a trabajar con bases de datos y el lenguaje SQL.',200,37,NULL,'Bases de datos','Fácil',NULL,0),(32,'Desarrollo web con Angular','Aprende a construir aplicaciones web utilizando el framework Angular y sus características modernas.',200,9,NULL,'Desarrollo web','Moderada',NULL,0),(33,'Inteligencia Artificial en reconocimiento de imágenes','Explora cómo utilizar técnicas de Inteligencia Artificial para el reconocimiento y clasificación de imágenes.',200,24,NULL,'Reconocimiento de imágenes','Difícil',NULL,0),(34,'Programación en Swift','Un curso completo para aprender a programar en Swift y desarrollar aplicaciones para iOS, macOS y otros dispositivos de Apple.',200,40,NULL,'Swift','Moderada',NULL,0),(35,'Desarrollo de aplicaciones web con Flask','Aprende a construir aplicaciones web utilizando el framework Flask de Python y su enfoque minimalista.',200,48,NULL,'Desarrollo web','Moderada',NULL,0),(36,'Inteligencia Artificial en análisis de datos','Descubre cómo utilizar técnicas de Inteligencia Artificial para el análisis y procesamiento de datos.',200,4,NULL,'Análisis de datos','Difícil',NULL,0),(37,'Programación en TypeScript','Aprende a programar en TypeScript, un superset de JavaScript que agrega tipado estático y características adicionales.',200,12,NULL,'TypeScript','Moderada',NULL,0),(38,'Desarrollo de aplicaciones móviles con Xamarin','Descubre cómo crear aplicaciones móviles multiplataforma utilizando el framework Xamarin y el lenguaje C#.',200,29,NULL,'Desarrollo móvil','Moderada',NULL,0),(39,'Inteligencia Artificial en el procesamiento de texto','Explora cómo utilizar técnicas de Inteligencia Artificial para el procesamiento y análisis de texto.',200,49,NULL,'Procesamiento de texto','Difícil',NULL,0),(40,'Programación en Rust','Aprende a programar en Rust, un lenguaje de programación moderno y seguro.',200,18,NULL,'Rust','Moderada',NULL,0),(41,'Desarrollo web con Laravel','Descubre cómo construir aplicaciones web utilizando el framework Laravel de PHP y su enfoque elegante y expresivo.',200,39,NULL,'Desarrollo web','Moderada',NULL,0),(42,'Inteligencia Artificial en juegos','Explora cómo utilizar técnicas de Inteligencia Artificial para crear juegos inteligentes y desafiantes.',200,45,NULL,'Inteligencia Artificial','Difícil',NULL,0),(43,'Programación en Go','Aprende a programar en Go, un lenguaje de programación eficiente y de alto rendimiento desarrollado por Google.',200,31,NULL,'Go','Moderada',NULL,0),(44,'Desarrollo de aplicaciones móviles con Kotlin','Descubre cómo crear aplicaciones móviles para Android utilizando el lenguaje de programación Kotlin.',200,22,NULL,'Desarrollo móvil','Moderada',NULL,0),(45,'Desarrollo web con ASP.NET Core','Aprende a construir aplicaciones web utilizando el framework ASP.NET Core y el lenguaje de programación C#.',200,1,NULL,'Desarrollo web','Moderada',NULL,0),(46,'Inteligencia Artificial en el procesamiento de voz','Explora cómo utilizar técnicas de Inteligencia Artificial para el procesamiento y análisis de voz.',200,50,NULL,'Procesamiento de voz','Difícil',NULL,0),(47,'Programación en Java','Un curso completo para aprender a programar en Java y desarrollar aplicaciones para una amplia variedad de plataformas.',200,28,NULL,'Java','Moderada',NULL,0),(48,'Desarrollo de aplicaciones móviles con React Native','Aprende a crear aplicaciones móviles multiplataforma utilizando el framework React Native y JavaScript.',200,33,NULL,'Desarrollo móvil','Moderada',NULL,0),(49,'Desarrollo web con Express.js','Descubre cómo construir aplicaciones web utilizando el framework Express.js y su enfoque minimalista y flexible.',200,47,NULL,'Desarrollo web','Moderada',NULL,0),(50,'Inteligencia Artificial en la optimización de algoritmos','Explora cómo utilizar técnicas de Inteligencia Artificial para optimizar algoritmos y mejorar su eficiencia.',200,43,NULL,'Optimización de algoritmos','Difícil',NULL,0);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
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
  `purchasecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchase_id_UNIQUE` (`id`),
  KEY `purchase_user_id` (`user_id`),
  CONSTRAINT `purchase_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
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
  `content_id` int NOT NULL,
  `user_id` int NOT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `content_id_idx` (`content_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `rating_content_id` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`),
  CONSTRAINT `rating_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
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
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `credit_balance` int DEFAULT '1000',
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
INSERT INTO `user` VALUES (1,'JohnDoe','johndoe@example.com','passw0rd1','2023-06-06 06:58:22',1000),(2,'EmilySmith','emilysmith@example.com','passw0rd2','2023-06-06 06:58:22',1000),(3,'DavidJohnson','davidjohnson@example.com','passw0rd3','2023-06-06 06:58:22',1000),(4,'SarahWilliams','sarahwilliams@example.com','passw0rd4','2023-06-06 06:58:22',1000),(5,'MichaelBrown','michaelbrown@example.com','passw0rd5','2023-06-06 06:58:22',1000),(6,'JenniferLee','jenniferlee@example.com','passw0rd6','2023-06-06 06:58:22',1000),(7,'ChristopherTaylor','christophertaylor@example.com','passw0rd7','2023-06-06 06:58:22',1000),(8,'JessicaDavis','jessicadavis@example.com','passw0rd8','2023-06-06 06:58:22',1000),(9,'MatthewMiller','matthewmiller@example.com','passw0rd9','2023-06-06 06:58:22',1000),(10,'OliviaAnderson','oliviaanderson@example.com','passw0rd10','2023-06-06 06:58:22',1000),(11,'AndrewThomas','andrewthomas@example.com','passw0rd11','2023-06-06 06:58:22',1000),(12,'SophiaWilson','sophiawilson@example.com','passw0rd12','2023-06-06 06:58:22',1000),(13,'JamesClark','jamesclark@example.com','passw0rd13','2023-06-06 06:58:22',1000),(14,'AvaMoore','avamoore@example.com','passw0rd14','2023-06-06 06:58:22',1000),(15,'BenjaminYoung','benjaminyoung@example.com','passw0rd15','2023-06-06 06:58:22',1000),(16,'MiaWalker','miawalker@example.com','passw0rd16','2023-06-06 06:58:22',1000),(17,'EthanHall','ethanhall@example.com','passw0rd17','2023-06-06 06:58:22',1000),(18,'IsabellaAllen','isabellaallen@example.com','passw0rd18','2023-06-06 06:58:22',1000),(19,'JacobGonzalez','jacobgonzalez@example.com','passw0rd19','2023-06-06 06:58:22',1000),(20,'ElizabethScott','elizabethscott@example.com','passw0rd20','2023-06-06 06:58:22',1000),(21,'WilliamGreen','williamgreen@example.com','passw0rd21','2023-06-06 06:58:22',1000),(22,'SophiaLewis','sophialewis@example.com','passw0rd22','2023-06-06 06:58:22',1000),(23,'AlexanderKing','alexanderking@example.com','passw0rd23','2023-06-06 06:58:22',1000),(24,'GraceHill','gracehill@example.com','passw0rd24','2023-06-06 06:58:22',1000),(25,'DanielWard','danielward@example.com','passw0rd25','2023-06-06 06:58:22',1000),(26,'LilyTurner','lilyturner@example.com','passw0rd26','2023-06-06 06:58:22',1000),(27,'JacksonMorgan','jacksonmorgan@example.com','passw0rd27','2023-06-06 06:58:22',1000),(28,'VictoriaYoung','victoriayoung@example.com','passw0rd28','2023-06-06 06:58:22',1000),(29,'SamuelLee','samuellee@example.com','passw0rd29','2023-06-06 06:58:22',1000),(30,'NatalieBrown','nataliebrown@example.com','passw0rd30','2023-06-06 06:58:22',1000),(31,'RyanHernandez','ryanhernandez@example.com','passw0rd31','2023-06-06 06:58:22',1000),(32,'GraceMitchell','gracemitchell@example.com','passw0rd32','2023-06-06 06:58:22',1000),(33,'AndrewWard','andrewward@example.com','passw0rd33','2023-06-06 06:58:22',1000),(34,'AvaCole','avacole@example.com','passw0rd34','2023-06-06 06:58:22',1000),(35,'WilliamReed','williamreed@example.com','passw0rd35','2023-06-06 06:58:22',1000),(36,'EmilyHill','emilyhill@example.com','passw0rd36','2023-06-06 06:58:22',1000),(37,'DanielTurner','danielturner@example.com','passw0rd37','2023-06-06 06:58:22',1000),(38,'OliviaCox','oliviacox@example.com','passw0rd38','2023-06-06 06:58:22',1000),(39,'BenjaminPowell','benjaminpowell@example.com','passw0rd39','2023-06-06 06:58:22',1000),(40,'HarperScott','harperscott@example.com','passw0rd40','2023-06-06 06:58:22',1000),(41,'SamuelMiller','samuelmiller@example.com','passw0rd41','2023-06-06 06:58:22',1000),(42,'AvaWilson','avawilson@example.com','passw0rd42','2023-06-06 06:58:22',1000),(43,'SophiaThompson','sophiathompson@example.com','passw0rd43','2023-06-06 06:58:22',1000),(44,'EthanGonzalez','ethangonzalez@example.com','passw0rd44','2023-06-06 06:58:22',1000),(45,'MiaAllen','miaallen@example.com','passw0rd45','2023-06-06 06:58:22',1000),(46,'AlexanderBaker','alexanderbaker@example.com','passw0rd46','2023-06-06 06:58:22',1000),(47,'EmilyPerez','emilyperez@example.com','passw0rd47','2023-06-06 06:58:22',1000),(48,'JamesCook','jamescook@example.com','passw0rd48','2023-06-06 06:58:22',1000),(49,'IsabellaBennett','isabellabennett@example.com','passw0rd49','2023-06-06 06:58:22',1000),(50,'DavidFoster','davidfoster@example.com','passw0rd50','2023-06-06 06:58:22',1000);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `balance` int NOT NULL DEFAULT '1000',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  CONSTRAINT `wallet_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (1,1000,1);
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-06  9:09:51
