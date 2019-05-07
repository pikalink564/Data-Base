-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Prepa
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

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
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellido` varchar(20) DEFAULT NULL,
  `Direccion` text,
  `No_cuent` int(9) NOT NULL,
  `Nacim` int(6) DEFAULT NULL,
  `Cod_post` int(5) DEFAULT NULL,
  `Tel` int(10) DEFAULT NULL,
  PRIMARY KEY (`No_cuent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ano`
--

DROP TABLE IF EXISTS `ano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ano` (
  `Materia` int(5) DEFAULT NULL,
  `Grado` int(1) DEFAULT NULL,
  KEY `Materia` (`Materia`),
  CONSTRAINT `ano_ibfk_1` FOREIGN KEY (`Materia`) REFERENCES `materias` (`Cod_asign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ano`
--

LOCK TABLES `ano` WRITE;
/*!40000 ALTER TABLE `ano` DISABLE KEYS */;
/*!40000 ALTER TABLE `ano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `Grado` int(1) DEFAULT NULL,
  `Nom` int(3) NOT NULL,
  `Tutor` int(9) DEFAULT NULL,
  PRIMARY KEY (`Nom`),
  KEY `Tutor` (`Tutor`),
  CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`Tutor`) REFERENCES `profesor` (`No_cuent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mat_alum`
--

DROP TABLE IF EXISTS `mat_alum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mat_alum` (
  `Calif` int(2) DEFAULT NULL,
  `Report` int(3) DEFAULT NULL,
  `Cod_asign` int(5) DEFAULT NULL,
  `No_cuent` int(9) DEFAULT NULL,
  KEY `Cod_asign` (`Cod_asign`),
  KEY `No_cuent` (`No_cuent`),
  CONSTRAINT `mat_alum_ibfk_1` FOREIGN KEY (`Cod_asign`) REFERENCES `materias` (`Cod_asign`),
  CONSTRAINT `mat_alum_ibfk_2` FOREIGN KEY (`No_cuent`) REFERENCES `alumno` (`No_cuent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mat_alum`
--

LOCK TABLES `mat_alum` WRITE;
/*!40000 ALTER TABLE `mat_alum` DISABLE KEYS */;
/*!40000 ALTER TABLE `mat_alum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mat_maest`
--

DROP TABLE IF EXISTS `mat_maest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mat_maest` (
  `No_cuent` int(9) DEFAULT NULL,
  `Cod_asign` int(5) DEFAULT NULL,
  KEY `No_cuent` (`No_cuent`),
  KEY `Cod_asign` (`Cod_asign`),
  CONSTRAINT `mat_maest_ibfk_1` FOREIGN KEY (`No_cuent`) REFERENCES `profesor` (`No_cuent`),
  CONSTRAINT `mat_maest_ibfk_2` FOREIGN KEY (`Cod_asign`) REFERENCES `materias` (`Cod_asign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mat_maest`
--

LOCK TABLES `mat_maest` WRITE;
/*!40000 ALTER TABLE `mat_maest` DISABLE KEYS */;
/*!40000 ALTER TABLE `mat_maest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mat_sal`
--

DROP TABLE IF EXISTS `mat_sal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mat_sal` (
  `Cod_asign` int(5) DEFAULT NULL,
  `Cod_sal` varchar(2) DEFAULT NULL,
  `Dia` varchar(2) DEFAULT NULL,
  `Hora` varchar(5) DEFAULT NULL,
  KEY `Cod_asign` (`Cod_asign`),
  KEY `Cod_sal` (`Cod_sal`),
  CONSTRAINT `mat_sal_ibfk_1` FOREIGN KEY (`Cod_asign`) REFERENCES `materias` (`Cod_asign`),
  CONSTRAINT `mat_sal_ibfk_2` FOREIGN KEY (`Cod_sal`) REFERENCES `salon` (`Cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mat_sal`
--

LOCK TABLES `mat_sal` WRITE;
/*!40000 ALTER TABLE `mat_sal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mat_sal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `Cod_asign` int(5) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Hor_sem` int(2) DEFAULT NULL,
  PRIMARY KEY (`Cod_asign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellido` varchar(20) DEFAULT NULL,
  `Direccion` text,
  `No_cuent` int(9) NOT NULL,
  `Nacim` int(6) DEFAULT NULL,
  `Cod_post` int(5) DEFAULT NULL,
  `Tel` int(10) DEFAULT NULL,
  PRIMARY KEY (`No_cuent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon`
--

DROP TABLE IF EXISTS `salon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salon` (
  `Edif` char(1) DEFAULT NULL,
  `Cod` varchar(2) NOT NULL,
  `No_banc` int(2) DEFAULT NULL,
  PRIMARY KEY (`Cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon`
--

LOCK TABLES `salon` WRITE;
/*!40000 ALTER TABLE `salon` DISABLE KEYS */;
/*!40000 ALTER TABLE `salon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-06 23:44:25
