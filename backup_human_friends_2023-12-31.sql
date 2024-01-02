-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: human_friends
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'Тигр','2020-02-02'),(2,'Барбос','2021-02-02'),(3,'Томас','2022-02-02'),(4,'Джек','2023-02-02'),(5,'Оскар','2020-01-02'),(6,'Рыжик','2020-02-01'),(7,'Барсик','2019-02-02'),(8,'Мурзик','2018-02-02'),(9,'Пушок','2017-02-02'),(10,'Котэ','2016-02-02'),(11,'Масяня','2015-02-02'),(12,'Мурка','2021-01-01'),(13,'Чаппи','2022-12-12'),(14,'Шарик','2020-04-22'),(15,'Феликс','2022-12-02'),(16,'Снежок','2023-06-05'),(17,'Леопольд','2012-12-12'),(18,'Бася','2021-09-13'),(19,'Белка','2019-03-19'),(20,'Рекс','2018-09-03'),(21,'Рыжик','2021-03-01'),(22,'Бобик','2021-02-05'),(23,'Симон','2021-02-06'),(24,'Гарфилд','2021-02-07'),(25,'Лаки','2021-02-08'),(26,'Люся','2021-02-09'),(27,'Макс','2021-02-10'),(28,'Чарли','2021-02-11'),(29,'Симба','2021-02-12'),(30,'Басик','2021-02-13');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camels`
--

DROP TABLE IF EXISTS `camels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pack_animal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pack_animal` (`id_pack_animal`),
  CONSTRAINT `camels_ibfk_1` FOREIGN KEY (`id_pack_animal`) REFERENCES `pack_animals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camels`
--

LOCK TABLES `camels` WRITE;
/*!40000 ALTER TABLE `camels` DISABLE KEYS */;
INSERT INTO `camels` VALUES (1,2),(2,5),(3,8),(4,11),(5,14);
/*!40000 ALTER TABLE `camels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pet` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pet` (`id_pet`),
  CONSTRAINT `cats_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `pets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,2),(2,5),(3,8),(4,11),(5,14);
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commands`
--

DROP TABLE IF EXISTS `commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_animal` int NOT NULL,
  `command` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_animal` (`id_animal`),
  CONSTRAINT `commands_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commands`
--

LOCK TABLES `commands` WRITE;
/*!40000 ALTER TABLE `commands` DISABLE KEYS */;
INSERT INTO `commands` VALUES (1,1,'Сидеть'),(2,7,'Лежать'),(3,13,'Фас'),(4,19,'Прыгать'),(5,25,'Голос'),(6,3,'Мяукнуть'),(7,9,'Лазить'),(8,15,'Играть'),(9,21,'Спать'),(10,27,'Охотиться'),(11,5,'Крутиться'),(12,11,'Бежать'),(13,17,'Есть'),(14,23,'Спать'),(15,29,'Копать'),(16,2,'Скачать'),(17,8,'Галоп'),(18,14,'Тянуть'),(19,20,'Прыгать'),(20,26,'Ездить'),(21,4,'Ходить'),(22,10,'Пить'),(23,16,'Жевать'),(24,22,'Спать'),(25,28,'Бегать'),(26,6,'Играть'),(27,12,'Бродить'),(28,18,'Тянуть'),(29,24,'Голос'),(30,30,'Спать');
/*!40000 ALTER TABLE `commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pet` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pet` (`id_pet`),
  CONSTRAINT `dogs_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `pets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` VALUES (1,1),(2,4),(3,7),(4,10),(5,13);
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donkeys`
--

DROP TABLE IF EXISTS `donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donkeys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pack_animal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pack_animal` (`id_pack_animal`),
  CONSTRAINT `donkeys_ibfk_1` FOREIGN KEY (`id_pack_animal`) REFERENCES `pack_animals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donkeys`
--

LOCK TABLES `donkeys` WRITE;
/*!40000 ALTER TABLE `donkeys` DISABLE KEYS */;
INSERT INTO `donkeys` VALUES (1,3),(2,6),(3,9),(4,12),(5,15);
/*!40000 ALTER TABLE `donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamsters`
--

DROP TABLE IF EXISTS `hamsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hamsters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pet` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pet` (`id_pet`),
  CONSTRAINT `hamsters_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `pets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamsters`
--

LOCK TABLES `hamsters` WRITE;
/*!40000 ALTER TABLE `hamsters` DISABLE KEYS */;
INSERT INTO `hamsters` VALUES (1,3),(2,6),(3,9),(4,12),(5,15);
/*!40000 ALTER TABLE `hamsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pack_animal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pack_animal` (`id_pack_animal`),
  CONSTRAINT `horses_ibfk_1` FOREIGN KEY (`id_pack_animal`) REFERENCES `pack_animals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses`
--

LOCK TABLES `horses` WRITE;
/*!40000 ALTER TABLE `horses` DISABLE KEYS */;
INSERT INTO `horses` VALUES (1,1),(2,4),(3,7),(4,10),(5,13);
/*!40000 ALTER TABLE `horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_animals`
--

DROP TABLE IF EXISTS `pack_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pack_animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_animal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_animal` (`id_animal`),
  CONSTRAINT `pack_animals_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_animals`
--

LOCK TABLES `pack_animals` WRITE;
/*!40000 ALTER TABLE `pack_animals` DISABLE KEYS */;
INSERT INTO `pack_animals` VALUES (1,2),(2,4),(3,6),(4,8),(5,10),(6,12),(7,14),(8,16),(9,18),(10,20),(11,22),(12,24),(13,26),(14,28),(15,30);
/*!40000 ALTER TABLE `pack_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_animal` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_animal` (`id_animal`),
  CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,1),(2,3),(3,5),(4,7),(5,9),(6,11),(7,13),(8,15),(9,17),(10,19),(11,21),(12,23),(13,25),(14,27),(15,29);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-31 13:30:08
