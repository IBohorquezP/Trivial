-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: trivial
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `answer_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `number_question` int NOT NULL,
  `id_answer` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_answer`),
  KEY `answer_FK` (`number_question`),
  CONSTRAINT `answer_FK` FOREIGN KEY (`number_question`) REFERENCES `question` (`number_question`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES ('0,001 gramos',0,21,1),('0,01 gramos',0,21,2),('0,1 gramos',0,21,3),('15km',0,38,4),('25',0,32,5),('3',0,40,6),('30',0,32,7),('30,5km',0,38,8),('40',0,34,9),('42,16km',0,38,10),('49',0,34,11),('5',0,26,12),('50',0,34,13),('6',0,40,14),('60',0,32,15),('7',0,26,16),('8',0,26,17),('ADN',0,17,18),('Africa',0,28,19),('Agrupacion Natural de Ballet',0,43,20),('Albert Einstein',0,23,21),('Amarillo, Azul y Rojo',0,39,22),('Ambas',0,17,23),('Antartico',0,35,24),('ARN',0,17,25),('Asociacion Nacional de Basquetbol',0,43,26),('Azul, Rojo, Amarillo, Verde, Negro',0,39,27),('Bayern Munich',0,48,28),('Beisbol',0,41,29),('Bolas Criollas',0,41,30),('Bowser',0,12,31),('Boxeo',0,47,32),('Branqueas',0,16,33),('Canada',0,28,34),('Caracas',0,33,35),('Caroni',0,30,36),('Celula',0,13,37),('Charles Lee Ray',0,8,38),('Charlie Thompson',0,8,39),('China',0,27,40),('Cinetica',0,19,41),('Corea del Norte',0,42,42),('Cristiano Ronaldo',0,46,43),('Daltonismo',0,20,44),('Darwinismo',0,20,45),('El Avila',0,29,46),('El Señor de los Anillos',0,4,47),('Electromagnetica',0,19,48),('Electron',0,13,49),('Energia Oscura',0,24,50),('Entropia',0,24,51),('Escalibur',0,11,52),('Estados Unidos',0,42,53),('Everest',0,29,54),('FIFA',0,10,55),('Filipinas',0,42,56),('Floyd Mayweather',0,44,57),('Formula 1',0,47,58),('Fruta',0,18,59),('Fusion Nuclear',0,24,60),('Futbol',0,1,61),('Futbol Americano',0,41,62),('Golf',0,47,63),('Gravedad',0,19,64),('Groenlandia',0,31,65),('Halcon',0,7,66),('Harry Potter',0,4,67),('India',0,27,68),('Isaac Newton',0,23,69),('Joker',0,9,70),('Juramentada',0,11,71),('Jurassic Park',1,2,72),('La Era del Hielo',0,2,73),('La Espada Maestra',0,11,74),('Lamarck',0,20,75),('Lionel Messi',0,46,76),('Madre de Dragones',0,6,77),('Madre de los Cielos',0,6,78),('Madre del Valle',0,6,79),('Maradona',0,37,80),('Medanos de Coro',0,35,81),('Meiosis',0,14,82),('Membrana',0,15,83),('Messi',0,37,84),('Mike Tyson',0,44,85),('Milan FC',0,48,86),('Mitocondria',0,15,87),('Mitosis',0,14,88),('Monaco',0,25,89),('Muhammad Ali',0,44,90),('New york',0,27,91),('Nicola Tesla',0,23,92),('Nilo',0,30,93),('Ninguna',0,39,94),('Ninguna de las anteriores',0,16,95),('Ninguna de las mencionadas',0,43,96),('Ninguno',0,40,97),('Nucleo',0,15,98),('Orinoco',0,30,99),('Osmosis',0,14,100),('Paris',0,5,101),('Pele',0,37,102),('Pele',0,46,103),('PennyWise',0,9,104),('PES',0,10,105),('Pico Bolivar',0,29,106),('Polo',0,1,107),('Polo Norte',0,31,108),('Polo Sur',0,31,109),('Proton',0,13,110),('Pulmones',0,16,111),('Quidditch',1,1,112),('Rafael Nadal',0,45,113),('Rambo',0,3,114),('Real Madrid',0,48,115),('Roger Federer',0,45,116),('Ronald MacDonald',0,9,117),('Ronaldinho Soccer',0,10,118),('Rusia',0,28,119),('Sahara',0,35,120),('San Cristobal',0,36,121),('San Guarico',0,36,122),('San Juan de los Morros',0,36,123),('San Marino',0,25,124),('Santander',0,5,125),('Serena Williams',0,45,126),('Seul',0,33,127),('Sinsajo',0,7,128),('Star Wars',0,4,129),('Terminator',0,3,130),('Tokyo',0,33,131),('Turpial',0,7,132),('Un Gran Dinosaurio',0,2,133),('Un planeta',0,22,134),('Una constelacion',0,22,135),('Una estrella',0,22,136),('Vaticano',0,25,137),('Vegetal',0,18,138),('Verdura',0,18,139),('Voldemort',0,3,140),('Volterra',0,5,141),('Waluigi',0,12,142),('Wario',0,12,143),('Xavi Pearson',0,8,144);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character`
--

DROP TABLE IF EXISTS `character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character` (
  `id_character` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `skin_character` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `character_position` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_character`),
  KEY `character_FK` (`username`),
  CONSTRAINT `character_FK` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character`
--

LOCK TABLES `character` WRITE;
/*!40000 ALTER TABLE `character` DISABLE KEYS */;
INSERT INTO `character` VALUES ('1234567891','1',1,'victor');
/*!40000 ALTER TABLE `character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `number_question` int NOT NULL,
  `text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Color` varchar(6) NOT NULL,
  PRIMARY KEY (`number_question`),
  KEY `question_FK` (`Color`),
  CONSTRAINT `question_FK` FOREIGN KEY (`Color`) REFERENCES `topic` (`color`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'¿Cuál era el nombre de los deportes ficticios en Harry Potter?','FF0000'),(2,'Los dinosaurios se pusieron de moda gracias a esta película','FF0000'),(3,'¿Qué personaje dice: Hasta la Vista, Baby','FF0000'),(4,'Película donde sale la famosa frase NO PASARÁS','FF0000'),(5,'¿A dónde fue Edward Cullen para provocar a los Volturi?','FF0000'),(6,'Siempre se sabe que Daenerys Targaryen es la…','FF0000'),(7,'¿Cuál fue el símbolo de Katniss Everdeen en Los juegos del\r\nhambre?\r\n','FF0000'),(8,'¿Cuál es el nombre real de \"Chucky\" en Child’s Play?','FF0000'),(9,'¿Cómo se llamaba el payaso asesino en la película de terror IT?','FF0000'),(10,'¿Como se llama el VideoJuego de Futbol mas Famoso del Mundo?','FF0000'),(11,'¿Como se llama La Espada de Link de The Legend of Zelda?','FF0000'),(12,'¿Como se llama el ArchiEnemigo de Mario Bros?','FF0000'),(13,'¿Cómo se llama el componente mínimo que forma a los seres vivos?','008000'),(14,'El proceso por el que una célula se divide para formar dos células hijas se llama:','008000'),(15,'La información genética en las células se localiza:','008000'),(16,'¿Con qué respira una ballena?','008000'),(17,'Los cromosomas están formados por:','008000'),(18,'Para los botánicos, el tomate es una:','008000'),(19,'La fuerza física que la tierra ejerce sobre los cuerpos hacia su centro es la:','008000'),(20,'¿Cómo se llama la teoría que considera que todos los organismos descendemos del mismo ancestro?','008000'),(21,'Un miligramo son:','008000'),(22,'El sol es:','008000'),(23,'Creador de E=mc2:','008000'),(24,'Magnitud termodinámica que indica el grado de desorden molecular de un sistema','008000'),(25,'¿Cuál es el país más pequeño del mundo?','0000FF'),(26,'¿Cuántos océanos hay en la Tierra?','0000FF'),(27,'¿Qué país tiene más habitantes?','0000FF'),(28,'¿Qué país es el más grande del mundo?','0000FF'),(29,'¿Cuál es la montaña más alta del mundo?','0000FF'),(30,'¿Cuál es el río más largo del mundo?','0000FF'),(31,'¿De dónde provienen los osos polares?','0000FF'),(32,'¿Cuántos mares existen en la Tierra?','0000FF'),(33,'¿Cuál es la ciudad más poblada del mundo?','0000FF'),(34,'¿Cuántos estados forman parte de Estados Unidos?','0000FF'),(35,'¿Cuál es el desierto más grande del mundo?','0000FF'),(36,'¿Cuál es la capital de Guárico?','0000FF'),(37,'¿Qué jugador de fútbol ha ganado más copas del mundo?','FFFF00'),(38,'¿Cuántos Km de distancia mide una maratón?','FFFF00'),(39,'¿Cuáles son los cinco colores del anillo de los Juegos Olímpicos?','FFFF00'),(40,'¿Cuántas veces Michael Jordan ganó campeonatos para los Chicago Bulls?','FFFF00'),(41,'¿Por qué deporte son conocidos los Cachorros de Chicago y los Medias Rojas de Boston?','FFFF00'),(42,'¿Manny Pacquiao es un boxeador legendario de qué país?','FFFF00'),(43,'¿Cuál es el significado de NBA?','FFFF00'),(44,'¿Quién es el mejor boxeador de todos los tiempos?','FFFF00'),(45,'¿Quién es la mejor tenista de todos los tiempos?','FFFF00'),(46,'¿Quién tiene más goles oficiales en el fútbol?','FFFF00'),(47,'¿Cuál es el deporte más caro del Mundo?','FFFF00'),(48,'¿Cuál es el Equipo con más UEFA CHAMPIONS LEAGUE?','FFFF00');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `square`
--

DROP TABLE IF EXISTS `square`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `square` (
  `position` int NOT NULL,
  `type_square` enum('start','end','ask') NOT NULL,
  `id_character` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Color` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`position`),
  UNIQUE KEY `square_UN` (`id_character`),
  KEY `square_FK_1` (`Color`),
  CONSTRAINT `square_FK` FOREIGN KEY (`id_character`) REFERENCES `character` (`id_character`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `square_FK_1` FOREIGN KEY (`Color`) REFERENCES `topic` (`color`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `square`
--

LOCK TABLES `square` WRITE;
/*!40000 ALTER TABLE `square` DISABLE KEYS */;
INSERT INTO `square` VALUES (1,'start','1234567891',NULL),(2,'ask',NULL,'FF0000'),(3,'ask',NULL,'0000FF'),(4,'ask',NULL,'008000'),(5,'ask',NULL,'0000FF'),(6,'ask',NULL,'FFFF00'),(7,'ask',NULL,'0000FF'),(8,'ask',NULL,'FF0000'),(9,'ask',NULL,'0000FF'),(10,'ask',NULL,'FF0000'),(11,'ask',NULL,'008000'),(12,'ask',NULL,'FFFF00'),(13,'ask',NULL,'0000FF'),(14,'ask',NULL,'FF0000'),(15,'ask',NULL,'FFFF00'),(16,'ask',NULL,'FFFF00'),(17,'ask',NULL,'0000FF'),(18,'ask',NULL,'FFFF00'),(19,'ask',NULL,'008000'),(20,'ask',NULL,'FF0000'),(21,'ask',NULL,'FFFF00'),(22,'ask',NULL,'008000'),(23,'ask',NULL,'0000FF'),(24,'ask',NULL,'008000'),(25,'end',NULL,NULL);
/*!40000 ALTER TABLE `square` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics` (
  `id_statistics` int NOT NULL,
  `won_games` int NOT NULL,
  `defeat_games` int NOT NULL,
  `played_games` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_statistics`),
  KEY `user_id` (`username`),
  CONSTRAINT `statistics_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `color` varchar(6) NOT NULL,
  `position` int NOT NULL,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES ('0000FF',0,'Geografia'),('008000',0,'Ciencia'),('FF0000',0,'Entretenimiento'),('FFFF00',0,'Deportes');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` enum('admin','player') DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ismael','24559444','admin'),('jonathan','123456','player'),('victor','654321','player');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-13  4:04:55
