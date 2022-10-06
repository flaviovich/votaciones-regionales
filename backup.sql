-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: votaciones
-- ------------------------------------------------------
-- Server version	8.0.20
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8mb4 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Dumping data for table `candidatos`
--
LOCK TABLES `candidatos` WRITE;
/*!40000 ALTER TABLE `candidatos` DISABLE KEYS */
;
INSERT INTO `candidatos`
VALUES (1, 'Raul', 'Mendoza', 1, 10),
  (2, 'Raul', 'Mendoza', 1, 10);
/*!40000 ALTER TABLE `candidatos` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Dumping data for table `sufragios`
--
LOCK TABLES `sufragios` WRITE;
/*!40000 ALTER TABLE `sufragios` DISABLE KEYS */
;
INSERT INTO `sufragios`
VALUES (1, '2022-10-01 03:46:13.226', '73500746', 1),
  (2, '2022-10-06 00:25:08.815', '10552501', 2),
  (3, '2022-10-06 00:25:15.504', '45774934', 2),
  (4, '2022-10-06 00:25:30.725', '75407246', 1),
  (5, '2022-10-06 00:25:38.902', '78290663', 2);
/*!40000 ALTER TABLE `sufragios` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Dumping data for table `votantes`
--
LOCK TABLES `votantes` WRITE;
/*!40000 ALTER TABLE `votantes` DISABLE KEYS */
;
INSERT INTO `votantes`
VALUES ('10552501', 'LUIS ALBERTO', 'TORRES GODOY', 4),
  ('45774934', 'CLAUDIA LUCIA', 'VARGAS ROSAS', 4),
  (
    '73500746',
    'EDUARDO RAMIRO',
    'DE RIVERO MANRIQUE',
    4
  ),
  ('75407246', 'RICARDO YONE', 'LEON ESTELA', 4),
  ('78290663', 'SALVADOR LINCOLN', 'CHOQUE TACO', 4);
/*!40000 ALTER TABLE `votantes` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2022-10-05 21:16:25