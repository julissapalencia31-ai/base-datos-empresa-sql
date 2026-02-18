-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: tecno_empresa
-- ------------------------------------------------------
-- Server version	8.0.44

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

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Digital Zone','Puebla','Mexico'),(2,'Electronica Max','Tijuana','Mexico'),(3,'Smart Business','Bogota','Colombia'),(4,'Future Tech','Los Angeles','USA'),(5,'Soluciones IT','Buenos Aires','Argentina'),(6,'MegaStore','Lima','Peru'),(7,'CyberWorld','Toronto','Canada'),(8,'DataPro','Berlin','Alemania');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id_employee` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `department` varchar(60) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `date_hire` date DEFAULT NULL,
  PRIMARY KEY (`id_employee`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Ricardo','Mendoza','Ventas',15500.00,'2019-02-14'),(2,'Patricia','Gomez','RH',14500.00,'2021-06-18'),(3,'Fernando','Ruiz','IT',27000.00,'2016-12-01'),(4,'Laura','Sanchez','Marketing',18000.00,'2020-04-25'),(5,'Diego','Ortega','Marketing',17500.00,'2022-01-10'),(6,'Valeria','Navarro','Ventas',16500.00,'2023-03-12'),(7,'Hector','Silva','Soporte',13000.00,'2018-09-09'),(8,'Camila','Rojas','Soporte',13500.00,'2021-11-30');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `name_product` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Laptop Lenovo','Computadoras',19500.00,12),(2,'PC Gamer','Computadoras',32000.00,8),(3,'Router Cisco','Redes',6500.00,25),(4,'Switch TP-Link','Redes',2800.00,40),(5,'Disco Duro 1TB','Almacenamiento',1500.00,60),(6,'SSD 512GB','Almacenamiento',2200.00,45),(7,'Tablet Samsung','Tablets',7000.00,18),(8,'Proyector Epson','Proyectores',9500.00,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id_sales` int NOT NULL AUTO_INCREMENT,
  `id_client` int DEFAULT NULL,
  `id_product` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id_sales`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,3,4,'2024-04-22'),(2,2,5,2,'2024-04-23'),(3,3,6,3,'2024-04-24'),(4,4,7,1,'2024-04-25'),(5,5,8,5,'2024-04-26'),(6,6,9,2,'2024-04-27'),(7,7,10,6,'2024-04-28'),(8,8,11,4,'2024-04-29'),(9,9,12,3,'2024-04-30'),(10,10,13,7,'2024-05-01'),(11,11,14,2,'2024-05-02'),(12,12,1,1,'2024-05-03'),(13,13,2,8,'2024-05-04'),(14,1,4,2,'2024-05-05'),(15,2,6,3,'2024-05-06'),(16,3,8,4,'2024-05-07'),(17,4,10,2,'2024-05-08'),(18,5,12,6,'2024-05-09'),(19,6,14,1,'2024-05-10'),(20,7,1,2,'2024-05-11'),(21,8,3,5,'2024-05-12'),(22,9,5,2,'2024-05-13'),(23,10,7,3,'2024-05-14'),(24,11,9,4,'2024-05-15'),(25,12,11,2,'2024-05-16'),(26,13,13,6,'2024-05-17'),(27,1,2,7,'2024-05-18'),(28,2,4,1,'2024-05-19'),(29,3,6,3,'2024-05-20'),(30,4,8,2,'2024-05-21'),(31,5,10,5,'2024-05-22'),(32,6,12,4,'2024-05-23'),(33,7,14,2,'2024-05-24'),(34,8,1,3,'2024-05-25'),(35,9,3,6,'2024-05-26'),(36,10,5,2,'2024-05-27'),(37,11,7,4,'2024-05-28'),(38,12,9,3,'2024-05-29'),(39,13,11,5,'2024-05-30'),(40,1,13,2,'2024-05-31'),(41,2,14,1,'2024-06-01'),(42,3,1,4,'2024-06-02'),(43,4,2,6,'2024-06-03'),(44,5,3,3,'2024-06-04'),(45,6,4,2,'2024-06-05'),(46,7,5,7,'2024-06-06'),(47,8,6,1,'2024-06-07'),(48,9,7,5,'2024-06-08'),(49,10,8,2,'2024-06-09'),(50,11,9,4,'2024-06-10');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-18  0:08:50
