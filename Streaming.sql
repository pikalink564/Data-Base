-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: Streaming
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
-- Table structure for table `act_peli`
--

DROP TABLE IF EXISTS `act_peli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_peli` (
  `titulo` varchar(20) DEFAULT NULL,
  `Act` varchar(20) DEFAULT NULL,
  KEY `titulo` (`titulo`),
  KEY `Act` (`Act`),
  CONSTRAINT `act_peli_ibfk_1` FOREIGN KEY (`titulo`) REFERENCES `pelicula` (`Titulo`),
  CONSTRAINT `act_peli_ibfk_2` FOREIGN KEY (`Act`) REFERENCES `actor` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_peli`
--

LOCK TABLES `act_peli` WRITE;
/*!40000 ALTER TABLE `act_peli` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_peli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_prem`
--

DROP TABLE IF EXISTS `act_prem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_prem` (
  `Nom_prem` char(20) DEFAULT NULL,
  `Nom_act` varchar(20) DEFAULT NULL,
  `Agno` int(4) DEFAULT NULL,
  KEY `Nom_prem` (`Nom_prem`),
  KEY `Nom_act` (`Nom_act`),
  CONSTRAINT `act_prem_ibfk_1` FOREIGN KEY (`Nom_prem`) REFERENCES `premios` (`Nombre`),
  CONSTRAINT `act_prem_ibfk_2` FOREIGN KEY (`Nom_act`) REFERENCES `actor` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_prem`
--

LOCK TABLES `act_prem` WRITE;
/*!40000 ALTER TABLE `act_prem` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_prem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `Nombre` varchar(20) NOT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Nacimiento` int(8) DEFAULT NULL,
  `Lug_nac` text,
  `Premio` int(1) DEFAULT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_prod`
--

DROP TABLE IF EXISTS `cas_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_prod` (
  `Nombre` varchar(20) NOT NULL,
  `Pais_orig` varchar(10) DEFAULT NULL,
  `Dueño` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_prod`
--

LOCK TABLES `cas_prod` WRITE;
/*!40000 ALTER TABLE `cas_prod` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `Nombre` varchar(20) NOT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Nac` int(8) DEFAULT NULL,
  `Lug_nac` text,
  `Premio` int(1) DEFAULT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudio`
--

DROP TABLE IF EXISTS `estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudio` (
  `Cas_prod` varchar(20) DEFAULT NULL,
  `Ubicacion` varchar(50) NOT NULL,
  `Horario` varchar(11) DEFAULT NULL,
  `Dir_gen` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Ubicacion`),
  KEY `Cas_prod` (`Cas_prod`),
  CONSTRAINT `estudio_ibfk_1` FOREIGN KEY (`Cas_prod`) REFERENCES `cas_prod` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudio`
--

LOCK TABLES `estudio` WRITE;
/*!40000 ALTER TABLE `estudio` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lug_peli`
--

DROP TABLE IF EXISTS `lug_peli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lug_peli` (
  `Lugar` varchar(50) DEFAULT NULL,
  `Titulo` varchar(20) DEFAULT NULL,
  KEY `Lugar` (`Lugar`),
  KEY `Titulo` (`Titulo`),
  CONSTRAINT `lug_peli_ibfk_1` FOREIGN KEY (`Lugar`) REFERENCES `estudio` (`Ubicacion`),
  CONSTRAINT `lug_peli_ibfk_2` FOREIGN KEY (`Titulo`) REFERENCES `pelicula` (`Titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lug_peli`
--

LOCK TABLES `lug_peli` WRITE;
/*!40000 ALTER TABLE `lug_peli` DISABLE KEYS */;
/*!40000 ALTER TABLE `lug_peli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula` (
  `Titulo` varchar(20) NOT NULL,
  `Estreno` int(6) DEFAULT NULL,
  `Cas_prod` varchar(20) DEFAULT NULL,
  `Act_prin` varchar(20) DEFAULT NULL,
  `Resenas` varchar(20) DEFAULT NULL,
  `Director` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Titulo`),
  KEY `Resenas` (`Resenas`),
  KEY `Cas_prod` (`Cas_prod`),
  KEY `Director` (`Director`),
  CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`Resenas`) REFERENCES `resenas` (`Pelicula`),
  CONSTRAINT `pelicula_ibfk_2` FOREIGN KEY (`Cas_prod`) REFERENCES `cas_prod` (`Nombre`),
  CONSTRAINT `pelicula_ibfk_3` FOREIGN KEY (`Director`) REFERENCES `director` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premios`
--

DROP TABLE IF EXISTS `premios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premios` (
  `Nombre` char(20) NOT NULL,
  `Tipo` char(20) DEFAULT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premios`
--

LOCK TABLES `premios` WRITE;
/*!40000 ALTER TABLE `premios` DISABLE KEYS */;
/*!40000 ALTER TABLE `premios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resenas`
--

DROP TABLE IF EXISTS `resenas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resenas` (
  `Autor` varchar(20) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Contenido` text,
  `Web_pub` varchar(40) DEFAULT NULL,
  `Pelicula` varchar(20) NOT NULL,
  PRIMARY KEY (`Pelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resenas`
--

LOCK TABLES `resenas` WRITE;
/*!40000 ALTER TABLE `resenas` DISABLE KEYS */;
/*!40000 ALTER TABLE `resenas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 20:05:43
