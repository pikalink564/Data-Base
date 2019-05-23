-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: Jo_in
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `No_cuent` int(9) DEFAULT NULL,
  `Ap_pat` varchar(20) DEFAULT NULL,
  `Ap_mat` varchar(20) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `Clave` char(2) DEFAULT NULL,
  KEY `Clave` (`Clave`),
  CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`Clave`) REFERENCES `ete` (`Clave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (318342351,'CortÃ©s','Silva','Edson','CM'),(318342352,'Rosas','Franco','Diego','AV'),(318342353,'BaÃ±os','Mancilla','Oscar','BN'),(318342354,'Illescas','Coria','Janeth','DA'),(318342355,'Hernandez','Juarez','Emiliano','LQ');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ete`
--

DROP TABLE IF EXISTS `ete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ete` (
  `Nom` varchar(20) DEFAULT NULL,
  `Clave` char(2) NOT NULL,
  `No_asig` int(2) DEFAULT NULL,
  `Agno` int(1) DEFAULT NULL,
  PRIMARY KEY (`Clave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ete`
--

LOCK TABLES `ete` WRITE;
/*!40000 ALTER TABLE `ete` DISABLE KEYS */;
INSERT INTO `ete` VALUES ('Agencia de viajes','AV',11,2),('Auxiliar Bancario','BN',6,1),('ComputaciÃ³n','CM',10,2),('Aux. en Contabilidad','CN',5,1),('Aux. Dibujo Arquitec','DA',6,1),('EnseÃ±anza del inglÃ','EN',5,1),('FotÃ³grafo y prensa','FO',5,1),('Histopatologia','HI',6,1),('Laboratorista quÃ­mi','LQ',6,1),('MuseÃ³grafo Restaura','MR',1,4),('Nutriologo','NT',6,1);
/*!40000 ALTER TABLE `ete` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-22 19:18:35
