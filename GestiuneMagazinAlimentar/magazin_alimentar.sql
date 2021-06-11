CREATE DATABASE  IF NOT EXISTS `magazin_alimentar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `magazin_alimentar`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: magazin_alimentar
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `angajati`
--

DROP TABLE IF EXISTS `angajati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `angajati` (
  `angajati_id` int NOT NULL,
  `carte_credit_id` int DEFAULT NULL,
  `nume` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `e-mail` varchar(45) DEFAULT NULL,
  `nr_telefon` varchar(45) DEFAULT NULL,
  `adresa` varchar(45) DEFAULT NULL,
  `numar_card` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`angajati_id`),
  KEY `carte_credit_id_idx` (`carte_credit_id`),
  CONSTRAINT `carte_credit_id` FOREIGN KEY (`carte_credit_id`) REFERENCES `carti_de_credit` (`carte_de_credit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angajati`
--

LOCK TABLES `angajati` WRITE;
/*!40000 ALTER TABLE `angajati` DISABLE KEYS */;
INSERT INTO `angajati` VALUES (4010,5510,'Ungureanu','Alexandru','alex.ungureanu1@gmail.com','0751326843','Str. Nicolae Balcescu, nr 442','4389 2248 4863 2548','ua123','123'),(4401,5501,'Popescu','Marius','popescu.marius13@gmail.com','0753864994','Str.Parcurlui, nr 2','4385 2246 6873 8840','pm312','312'),(4402,5502,'Ionecu','Elena','elena.ionescu12@yahoo.com','0722312248','Str.Mihai Eminescu, nr 13','4865 2244 7786 1462','ie333','333'),(4403,5503,'Teodor','Andrei','andreiteoo123@gmail.com','0765432211','Str.Alexandru Ioan Cuza, nr 33','4125 4865 4646 4896','ta142','142'),(4404,5504,'Andronic','Mihai','mihai.andronic1@gmail.com','0749786321','Str.Stefan cel Mare, nr 412','4289 4568 4288 1312','am222','222'),(4405,5505,'Manole','Cristina','cristina.manole33@yahoo.com','0755842346','Str.Vasile Alecsandri, nr 45','4380 0012 5546 2107','mc743','743'),(4406,5506,'Dumbrava','Andreea','andreea.dumbrava13@gmail.com','0766865312','Str.Mihai Vitezu, nr 321','4380 5860 2308 0099','da331','331'),(4407,5507,'Ion','Denisa','denisa.ion123@gmail.com','0748651321','Str.Revolutiei, nr 66','4863 2486 2901 0087','ia412','412'),(4408,5508,'Popa','Cristian','cristian.popa12@yahoo.com','0759843154','Str. I.L Caragiale, nr 6','4628 7899 1305 1358','pc987','987'),(4409,5509,'Toma','Mihaela','mihaela.toma21@gmail.com','0768974862','Str. Principala, nr 3','4389 1158 4866 0589','tm523','523');
/*!40000 ALTER TABLE `angajati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carti_de_credit`
--

DROP TABLE IF EXISTS `carti_de_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carti_de_credit` (
  `carte_de_credit_id` int NOT NULL,
  `nume` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`carte_de_credit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carti_de_credit`
--

LOCK TABLES `carti_de_credit` WRITE;
/*!40000 ALTER TABLE `carti_de_credit` DISABLE KEYS */;
INSERT INTO `carti_de_credit` VALUES (5501,'Popescu'),(5502,'Ionescu'),(5503,'Teodor'),(5504,'Andronic'),(5505,'Manole'),(5506,'Dumbrava'),(5507,'Ion'),(5508,'Popa'),(5509,'Toma'),(5510,'Ungureanu');
/*!40000 ALTER TABLE `carti_de_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorii`
--

DROP TABLE IF EXISTS `categorii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorii` (
  `categorie_id` int NOT NULL,
  `nume_categorie` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorii`
--

LOCK TABLES `categorii` WRITE;
/*!40000 ALTER TABLE `categorii` DISABLE KEYS */;
INSERT INTO `categorii` VALUES (1112,'fructe'),(1113,'legume'),(1114,'lactate'),(1115,'dulciuri si snacksrui'),(1116,'bauturi'),(1117,'panificatie');
/*!40000 ALTER TABLE `categorii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comenzi`
--

DROP TABLE IF EXISTS `comenzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comenzi` (
  `comanda_id` int DEFAULT NULL,
  `produs_id` int DEFAULT NULL,
  `cantitate` int DEFAULT NULL,
  `angajati_id` int DEFAULT NULL,
  `data_comanda` varchar(45) DEFAULT NULL,
  KEY `produs_id_idx` (`produs_id`),
  KEY `angajati_id_idx` (`angajati_id`),
  CONSTRAINT `angajati_id` FOREIGN KEY (`angajati_id`) REFERENCES `angajati` (`angajati_id`),
  CONSTRAINT `produs_id` FOREIGN KEY (`produs_id`) REFERENCES `produse` (`produs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comenzi`
--

LOCK TABLES `comenzi` WRITE;
/*!40000 ALTER TABLE `comenzi` DISABLE KEYS */;
INSERT INTO `comenzi` VALUES (50001,22101,30,4010,'2020-03-23'),(50002,22102,10,4010,'2020-07-14'),(50002,22103,15,4401,'2020-07-14'),(5003,22104,5,4402,'2020-07-14'),(50001,22101,10,4401,'2020-07-14'),(50008,22101,14,4401,'2020-07-14'),(50001,22101,2,4405,'2020-07-15'),(50001,22101,20,4401,'2020-07-15');
/*!40000 ALTER TABLE `comenzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produse`
--

DROP TABLE IF EXISTS `produse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produse` (
  `produs_id` int NOT NULL,
  `categorie_id` int DEFAULT NULL,
  `nume_produs` varchar(45) DEFAULT NULL,
  `producator` varchar(45) DEFAULT NULL,
  `pret` float DEFAULT NULL,
  `stoc_disponibil` int DEFAULT NULL,
  PRIMARY KEY (`produs_id`),
  KEY `categorie_id_idx` (`categorie_id`),
  CONSTRAINT `categorie_id` FOREIGN KEY (`categorie_id`) REFERENCES `categorii` (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produse`
--

LOCK TABLES `produse` WRITE;
/*!40000 ALTER TABLE `produse` DISABLE KEYS */;
INSERT INTO `produse` VALUES (22101,1112,'mere','velmiprest',2.5,70),(22102,1112,'pere','velmiprest',4,60),(22103,1112,'banane','dole',5.5,100),(22104,1112,'portocale','dole',4,100),(22105,1112,'kiwi','dole',7,50),(22106,1112,'lamaie','dole',6,30),(22107,1112,'nectarine','velmiprest',6,70),(22108,1112,'piersici','velmiprest',7,60),(22201,1113,'rosii','velmiprest',4,100),(22202,1113,'ardei','velmiprest',9,50),(22203,1113,'castraveti','velmiprest',3.5,80),(22204,1113,'morcov','velmiprest',2.4,70),(22205,1113,'cartofi','velmiprest',2,200),(22206,1113,'vinete','velmiprest',6,70),(22301,1114,'cascaval','delaco',18.9,50),(22302,1114,'cascaval','napolact',20,50),(22303,1114,'unt','napolact',9,30),(22304,1114,'unt','pilos',8.5,30),(22305,1114,'lapte','pilos',5.5,70),(22306,1114,'lapte','covalact',6,70),(22307,1114,'lapte','napolact',6,70),(22308,1114,'smantana','covalac',6.5,60),(22309,1114,'smantana','napolact',13,60),(22310,1114,'iaurt','danone',1.9,150),(22311,1114,'iaurt','zuzu',2.2,120),(22312,1114,'iaurt','covalcat',2.3,140),(22313,1114,'lapte','zuzu',6,70),(22401,1115,'corn cu ciocolata','primo',2.5,40),(22402,1115,'corn cu ciocolata','7days',2.5,40),(22403,1115,'corn cu ciocolata','boromir',2,40),(22404,1115,'briose cu ciocolata','boromir',4,30),(22405,1115,'briose cu piersici','boromir',4,30),(22406,1115,'corn cu vanilie','7days',2.5,40),(22407,1115,'ciocolata alune','milka',4.2,50),(22408,1115,'ciocolata lapte','milka',4.2,50),(22409,1115,'ciocolata amaruie','milka',4.2,50),(22410,1115,'ciocolata lapte','poiana',3,50),(22411,1115,'ciocolata alune','poiana',3,50),(22412,1115,'cipsuri sare','lay\'s',5,70),(22413,1115,'cipsuri sare','chio',5,70),(22414,1115,'cipsuri bbq','lay\'s',5,70),(22415,1115,'cipsuri bbq','chio',5,70),(22416,1115,'cipsuri paprika','lay\'s',5,70),(22417,1115,'cipsuri paprika','chio',5,70),(22418,1115,'cipsuri pui','lay\'s',5,70),(22419,1115,'cipsuri pui','chio',5,70),(22420,1115,'biscuiti ciocolata oreo','nabisco',3.5,50),(22421,1115,'biscuiti vanilie oreo','nabisco',3.5,50),(22422,1115,'biscuiti sarati tuc','ritz',2.4,50),(22423,1115,'biscuiti cu paprika tuc','ritz',2.4,50),(22424,1115,'biscuiti cu cascaval tuc','ritz',2.4,50),(22425,1115,'cipsuri cascaval','lay\'s',5,70),(22426,1115,'cipsuri cascaval','chio',5,70),(22427,1115,'covrigei sare','cornelius',3,60),(22430,1115,'covrigei vanilati','cornelius',3,60),(22431,1115,'covrigei sare si mac','dorivi',3,60),(22432,1115,'baton ciocolata snickers ','mars',2.5,80),(22433,1115,'baton ciocolata bounty','mars',2.2,80),(22434,1115,'baton ciocolata twix','mars',2,80),(22435,1115,'baton ciocolata mars','mars',2,80),(22436,1115,'baton ciocolata lion','nestle',2.5,80),(22437,1115,'baton ciocolata kit kat','nestle',2.5,80),(22501,1116,'apa plata dorna 2L','The Coca-Cola Company',2.35,120),(22502,1116,'apa minerala dorna 2L','The Coca-Cola Company',2.35,120),(22503,1116,'apa plata borsec 2L','Romaqua group borsec',2.2,120),(22504,1116,'apa minerala borsec 2L','Romaqua group borsec',2.2,120),(22505,1116,'apa plata AQUA Carpatica 1.5L','AQUA Carpatica',3,120),(22506,1116,'apa minerala AQUA Carpatica 1.5L','AQUA Carpatica',3,120),(22507,1116,'apa plata bucovina 2L','Bucovina',2.1,120),(22508,1116,'apa minerala bucovina 2L','Bucovina',2.1,120),(22509,1116,'coca-cola 2L','The Coca-Cola Company',5.5,144),(22510,1116,'schweppes mandarine 1.5L','The Coca-Cola Company',5,144),(22511,1116,'sprite 2L','The Coca-Cola Company',5.5,144),(22512,1116,'fuzetea 1.5L','The Coca-Cola Company',5.5,144),(22513,1116,'pepsi 0.5L','PepsiCo',4,144),(22514,1116,'7up 0.5L','PepsiCo',4,144),(22515,1116,'cappy pulpy portocale 0.4L','The Coca-Cola Company',3.5,144),(22516,1116,'cappy pulpy grefe 0.4L','The Coca-Cola Company',3.5,144),(22517,1116,'cappy pulpy piersici 0.4L','The Coca-Cola Company',3.5,144),(22518,1116,'fanta portocale 2L','The Coca-Cola Company',5,144),(22519,1116,'fanta struguri 2L','The Coca-Cola Company',5,144),(22520,1116,'fanta lamaie 2L','The Coca-Cola Company',5,144),(22521,1116,'fanta zmeura 2L','The Coca-Cola Company',5,144),(22522,1116,'bere carlsberg 0.66L','Carlsberg A/S ',4.66,108),(22523,1116,'bere heineken 0.33L','Heineken International',4,108),(22524,1116,'bere tuborg 0.5L','Tuborg',3.5,108),(22525,1116,'bere ursus 0.5L','Asahi Breweries',3.2,108),(22526,1116,'bere stella artois 0.33L','Anheuser–Busch InBev',4.3,108),(22601,1117,'paine alaba','Boromir',1.6,60),(22602,1117,'paine alba','Vel Pitar',1.5,60),(22603,1117,'paine intermediara','Boromir',1.6,60),(22604,1117,'paine intermediara','Vel Pitar',1.5,60),(22605,1117,'paine neagra','Boromir',1.6,60),(22606,1117,'paine neagra','Vel Pitar',1.5,60),(22607,1117,'paine cu cartof','Boromir',3,20),(22608,1117,'paine cu cartof','Vel Pitar',3,20);
/*!40000 ALTER TABLE `produse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 19:35:29
