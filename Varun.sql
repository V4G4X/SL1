-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: OrderManagementSystem
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `UID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  KEY `UID` (`UID`),
  CONSTRAINT `Address_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `User` (`UID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (1,'938-8921 Morbi Rd.','Pune'),(2,'Ap #938-8790 Dictum St.','Mumbai'),(3,'894-9982 Ipsum Ave','Delhi'),(4,'322 Pede Street','Novigrad'),(5,'417-119 Hendrerit Rd.','Oxenfurt'),(6,'Ap #945-4408 Vulputate Road','Cintra'),(7,'Ap #575-1163 Dictum Av.','Toussaint'),(8,'Ap #502-6242 Ultricies Street','Rivia'),(9,'6985 Ac Av.','Pune'),(10,'689-991 At, Street','Mumbai'),(11,'7794 Gravida Av.','Delhi'),(12,'P.O. Box 420, 5982 Sed Rd.','Novigrad'),(13,'P.O. Box 470, 6380 Luctus Rd.','Oxenfurt'),(14,'5930 Pellentesque Street','Cintra'),(14,'4560 Praesent St.','Cintra'),(15,'550-8464 Luctus Rd.','Toussaint'),(16,'644-9526 Montes, St.','Rivia'),(16,'Ap #701-4443 Neque Ave','Rivia'),(17,'P.O. Box 923, 1383 Lacus, Rd.','Pune'),(17,'P.O. Box 835, 4104 Enim St.','Pune'),(17,'755-6119 Semper. St.','Pune'),(18,'Ap #619-9946 Lacus Av.','Mumbai'),(19,'707-2309 Arcu. St.','Delhi'),(19,'824-9366 Ligula Av.','Delhi'),(20,'P.O. Box 522, 7198 Nec, Av.','Novigrad'),(21,'3613 Arcu. St.','Oxenfurt'),(22,'P.O. Box 923, 5731 Dolor Av.','Cintra'),(23,'106-3521 Dis Ave','Toussaint'),(24,'671-4996 Metus. St.','Rivia'),(25,'P.O. Box 385, 1231 At Avenue','Pune'),(26,'P.O. Box 336, 833 Vitae Rd.','Mumbai'),(27,'P.O. Box 730, 6768 Dis St.','Delhi'),(28,'1150 Erat Avenue','Novigrad'),(28,'714-6748 Tincidunt Rd.','Novigrad'),(29,'934 Eu Av.','Oxenfurt'),(30,'263-2753 Fringilla St.','Cintra'),(31,'526-5019 Nisl Ave','Toussaint'),(32,'5203 Semper St.','Rivia'),(33,'5258 Feugiat. Road','Pune'),(34,'Ap #162-3720 Fringilla Avenue','Mumbai'),(35,'Ap #969-2662 Mus. St.','Delhi'),(35,'987-2591 Orci Street','Delhi'),(36,'9271 Eu Av.','Novigrad'),(37,'495-2955 Nec Rd.','Oxenfurt'),(38,'5794 Diam. Rd.','Cintra'),(39,'161-1354 Lacus. St.','Toussaint'),(40,'P.O. Box 251, 4455 Aenean Av.','Rivia'),(41,'579-5027 Commodo Street','Pune'),(42,'4957 Purus Av.','Mumbai'),(42,'P.O. Box 250, 8972 Posuere St.','Mumbai'),(42,'P.O. Box 265, 4468 Quisque Road','Mumbai'),(43,'819-925 At, Road','Delhi'),(44,'954-9068 Neque. Rd.','Novigrad'),(45,'4360 Torquent Rd.','Oxenfurt'),(46,'Ap #527-230 Mattis. Rd.','Cintra'),(46,'5176 Gravida Street','Cintra'),(47,'Ap #859-8606 Vel Avenue','Toussaint'),(47,'P.O. Box 877, 2033 Tempor, Rd.','Toussaint'),(48,'8798 Porttitor Rd.','Rivia'),(49,'P.O. Box 204, 5728 Rutrum Rd.','Pune'),(50,'8089 Mattis St.','Mumbai');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contains`
--

DROP TABLE IF EXISTS `Contains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contains` (
  `OID` int(11) NOT NULL,
  `item_ID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`OID`,`item_ID`),
  KEY `item_ID` (`item_ID`),
  CONSTRAINT `Contains_ibfk_1` FOREIGN KEY (`OID`) REFERENCES `Orders` (`OID`) ON DELETE CASCADE,
  CONSTRAINT `Contains_ibfk_2` FOREIGN KEY (`item_ID`) REFERENCES `Item` (`item_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contains`
--

LOCK TABLES `Contains` WRITE;
/*!40000 ALTER TABLE `Contains` DISABLE KEYS */;
INSERT INTO `Contains` VALUES (1,27,9),(2,40,3),(3,29,2),(4,6,2),(4,28,9),(4,30,2),(5,27,10),(6,37,4),(7,24,5),(7,25,2),(7,41,8),(8,3,7),(8,46,8),(9,7,4),(9,29,2),(9,32,6),(10,24,9),(10,44,2),(11,31,6),(11,40,3),(12,2,8),(12,15,3),(12,29,10),(12,50,1),(13,3,9),(13,50,10),(14,23,2),(14,24,8),(15,22,10),(16,15,6),(16,16,1),(17,25,4),(17,46,6),(18,32,5),(19,6,9),(19,31,5),(20,1,8),(20,25,3),(20,28,6),(20,37,7),(20,47,7),(20,50,9),(21,2,4),(22,17,6),(23,1,3),(24,15,2),(24,36,10),(24,45,1),(25,11,10),(26,33,6),(26,47,9),(27,16,7),(27,24,5),(27,33,7),(28,36,4),(28,50,10),(29,34,5),(30,18,1),(30,23,10),(31,26,4),(32,1,1),(32,43,6),(33,8,10),(33,26,4),(33,31,5),(34,3,1),(34,37,5),(35,32,10),(35,33,7),(35,40,6),(36,37,9),(37,25,3),(38,14,8),(39,4,1),(39,17,2),(39,44,2),(40,25,10),(40,44,5),(41,34,1),(42,5,5),(42,24,4),(43,4,2),(43,15,1),(43,50,5),(44,9,8),(44,16,9),(45,4,10),(45,23,1),(45,36,9),(46,2,5),(46,24,9),(46,37,3),(47,42,7),(47,44,8),(48,1,2),(48,12,2),(49,11,3),(49,43,6),(50,36,6);
/*!40000 ALTER TABLE `Contains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Delivery`
--

DROP TABLE IF EXISTS `Delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Delivery` (
  `OID` int(11) NOT NULL,
  `agent_ID` int(11) NOT NULL,
  `agent_Phone` bigint(20) NOT NULL,
  `agent_name` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ETA` varchar(20) NOT NULL,
  PRIMARY KEY (`OID`),
  CONSTRAINT `Delivery_ibfk_1` FOREIGN KEY (`OID`) REFERENCES `Orders` (`OID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Delivery`
--

LOCK TABLES `Delivery` WRITE;
/*!40000 ALTER TABLE `Delivery` DISABLE KEYS */;
INSERT INTO `Delivery` VALUES (1,9881,7922504391,'Anshula Khan','Processing','2019-05-07 13:55:55'),(2,3710,7276660918,'Fahad Raj','Dispatched','2019-03-06 06:06:53'),(3,2070,3196129044,'Amulya Jain','Delivered','2019-07-29 17:03:39'),(4,1480,1966326606,'Deepashikha Ismail','Processing','2019-12-07 15:58:06'),(5,9844,8706827834,'Daksha Kumar','Dispatched','2018-12-12 10:04:20'),(6,9867,7899076761,'Vahini Kumar','Delivered','2020-06-14 02:18:42'),(7,9380,998638575,'Shridhar Singh','Processing','2020-03-09 08:13:30'),(8,2263,7296174559,'Hasna Ismail','Dispatched','2020-04-20 02:59:55'),(9,4162,194190870,'Randhir Ismail','Delivered','2018-10-24 01:51:07'),(10,1938,8207451705,'Abhilash Raj','Processing','2019-04-06 18:51:53'),(11,5611,9494228552,'Wali Singh','Dispatched','2018-10-16 05:23:25'),(12,9693,4101831819,'Faraz Ismail','Delivered','2019-12-18 06:52:23'),(13,9650,1231041096,'Suhrid Raj','Processing','2019-06-16 12:18:50'),(14,4974,3066083868,'Shashee Khan','Dispatched','2019-03-27 04:31:35'),(15,4123,9303186979,'Madhulekha Jain','Delivered','2020-06-19 08:02:07'),(16,8636,4518248456,'Latif Raj','Processing','2018-12-09 03:38:35'),(17,4903,7434116394,'Kantimoy Jain','Dispatched','2019-03-07 11:13:48'),(18,4326,3249118469,'Mudrika Khan','Delivered','2019-12-02 08:09:51'),(19,1973,8651213282,'Lata Singh','Processing','2018-08-31 07:43:26'),(20,6217,990959407,'Nayan Patel','Dispatched','2020-04-19 21:39:33'),(21,7026,5540538429,'Pankaja Khan','Delivered','2019-02-09 14:33:07'),(22,8653,7049195384,'Kajjali Khan','Processing','2020-01-08 04:55:06'),(23,7621,6772243370,'Chandraleksha Khan','Dispatched','2020-06-09 16:49:01'),(24,8560,913361825,'Jyotirmoyee Jain','Delivered','2019-08-02 21:38:34'),(25,8781,6561192092,'Shankha Jain','Processing','2019-03-06 10:25:53'),(26,8433,6153281082,'Panchali Ismail','Dispatched','2018-09-26 05:12:42'),(27,2343,8184353318,'Tusti Jain','Delivered','2019-01-07 06:43:45'),(28,4653,5198536797,'Sushrut Khan','Processing','2019-05-18 01:54:34'),(29,9698,7249910330,'Vengai Kumar','Dispatched','2019-11-25 10:21:10'),(30,2588,1147182805,'Balamurugan Singh','Delivered','2020-06-11 01:42:15'),(31,8450,3774119416,'Dhyanesh Khan','Processing','2019-09-14 17:18:34'),(32,2758,2394679107,'Gopal Singh','Dispatched','2020-04-15 10:53:29'),(33,2828,1181508663,'Chakshu Ismail','Delivered','2019-07-25 16:50:57'),(34,6593,2302250247,'Chiman Khan','Processing','2019-09-17 05:37:28'),(35,1456,3072494501,'Pandhari Patel','Dispatched','2019-09-07 13:09:30'),(36,7919,5128934101,'Sudeepta Khan','Delivered','2018-11-19 19:57:08'),(37,6383,9037167135,'Trinetra Singh','Processing','2020-04-04 12:21:21'),(38,5328,8621089971,'Martanda Ismail','Dispatched','2019-04-22 03:31:25'),(39,2985,209455108,'Nuti Kumar','Delivered','2019-01-13 19:09:34'),(40,8901,7221575745,'Devadyumna Jain','Processing','2019-12-16 22:31:35'),(41,9254,6916880346,'Pingala Raj','Dispatched','2020-06-04 13:18:55'),(42,2625,4543395406,'Ashis Kumar','Delivered','2019-10-13 23:01:22'),(43,9316,1347411059,'Suhina Jain','Processing','2019-11-22 13:20:23'),(44,6908,9413186657,'Mohini Raj','Dispatched','2019-07-01 02:10:10'),(45,5331,5802757567,'Seemantini Jain','Delivered','2018-11-22 16:47:07'),(46,3811,5152602155,'Pandhari Jain','Processing','2018-08-31 23:17:22'),(47,2217,1633812147,'Devamadana Singh','Dispatched','2019-08-07 09:43:39'),(48,1580,3794096668,'Vishvajit Kumar','Delivered','2019-12-10 03:23:45'),(49,1380,9153586512,'Mahmud Jain','Processing','2020-07-01 21:19:20'),(50,4574,8374889773,'Vedmohan Patel','Dispatched','2018-11-30 20:25:32');
/*!40000 ALTER TABLE `Delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item`
--

DROP TABLE IF EXISTS `Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Item` (
  `item_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL,
  PRIMARY KEY (`item_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item`
--

LOCK TABLES `Item` WRITE;
/*!40000 ALTER TABLE `Item` DISABLE KEYS */;
INSERT INTO `Item` VALUES (1,'Soup - Campbells Chili','Kaymbo',7200,'Pizza'),(2,'Pear - Halves','Youspan',4633,'Alcohol'),(3,'Soho Lychee Liqueur','Oodoo',1471,'Soup'),(4,'Star Fruit','Voomm',962,'Bread'),(5,'Tea - Honey Green Tea','Realbuzz',7368,'Non-Veg'),(6,'Flour - Fast / Rapid','Babbleset',8602,'Pizza'),(7,'Orange Roughy 6/8 Oz','Quinu',2803,'Alcohol'),(8,'Tart Shells - Sweet, 3','Talane',969,'Soup'),(9,'Cheese - Stilton','Quatz',1277,'Bread'),(10,'Nut - Walnut, Chopped','Thoughtsphere',8009,'Non-Veg'),(11,'Pork - Liver','Jayo',7071,'Pizza'),(12,'Beans - Butter Lrg Lima','Minyx',1905,'Alcohol'),(13,'Cheese Cloth No 100','Katz',9296,'Soup'),(14,'Crab - Claws, 26 - 30','Bluezoom',340,'Bread'),(15,'Pasta - Lasagna Noodle, Frozen','Tazzy',4143,'Non-Veg'),(16,'Lamb Rack Frenched Australian','Dynabox',3785,'Pizza'),(17,'Beef - Inside Round','Devshare',5073,'Alcohol'),(18,'Butter Sweet','Eare',9543,'Soup'),(19,'Milk - 2%','Topiclounge',3824,'Bread'),(20,'Pimento - Canned','Jetpulse',1251,'Non-Veg'),(21,'Flax Seed','Zoombeat',3318,'Pizza'),(22,'Bar Mix - Lemon','Kamba',5581,'Alcohol'),(23,'Sugar Thermometer','Feedfire',5239,'Soup'),(24,'Flour - So Mix Cake White','Thoughtmix',6909,'Bread'),(25,'Wine - German Riesling','Snaptags',2044,'Non-Veg'),(26,'Banana - Green','Oyondu',5534,'Pizza'),(27,'Tarragon - Primerba, Paste','Feednation',8022,'Alcohol'),(28,'Table Cloth 54x72 White','Flashpoint',7010,'Soup'),(29,'Instant Coffee','Skipstorm',3945,'Bread'),(30,'Anchovy In Oil','Shuffletag',7949,'Non-Veg'),(31,'Onions - Pearl','Meezzy',4119,'Pizza'),(32,'Wine - Fat Bastard Merlot','Quaxo',522,'Alcohol'),(33,'Wine - Clavet Saint Emilion','Voonder',6818,'Soup'),(34,'Chocolate - Dark Callets','Eabox',8689,'Bread'),(35,'Duck - Legs','Fivechat',2651,'Non-Veg'),(36,'Boogies','Skyndu',586,'Pizza'),(37,'Sauce - Bernaise, Mix','Abatz',3549,'Alcohol'),(38,'Island Oasis - Strawberry','Dynabox',3923,'Soup'),(39,'Pastry - Chocolate Marble Tea','Janyx',5201,'Bread'),(40,'Pastry - Baked Cinnamon Stick','Yacero',6026,'Non-Veg'),(41,'Strawberries','Skimia',2822,'Pizza'),(42,'Wine - Barossa Valley Estate','Agimba',2002,'Alcohol'),(43,'Wine - White, French Cross','Minyx',1087,'Soup'),(44,'Cloves - Whole','Kamba',5797,'Bread'),(45,'Wine - Jafflin Bourgongone','LiveZ',5366,'Non-Veg'),(46,'Peas - Frozen','Ailane',7807,'Pizza'),(47,'Bread - Burger','Wordtune',3702,'Alcohol'),(48,'Pesto - Primerba, Paste','Devshare',2761,'Soup'),(49,'Wine - Gato Negro Cabernet','Realcube',3224,'Bread'),(50,'Pails With Lids','Voonyx',134,'Non-Veg');
/*!40000 ALTER TABLE `Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `OID` int(11) NOT NULL AUTO_INCREMENT,
  `timestmp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat` varchar(50) NOT NULL,
  `UID` int(11) NOT NULL,
  `ttl_amt` int(11) DEFAULT NULL,
  PRIMARY KEY (`OID`),
  KEY `UID` (`UID`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `User` (`UID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2020-07-18 12:30:34','Processing',41,6781),(2,'2020-05-04 03:20:36','Processing',21,3187),(3,'2019-12-31 20:23:14','Dispatched',44,3414),(4,'2018-12-08 01:23:32','Dispatched',29,5717),(5,'2020-02-09 17:28:32','Delivered',19,1227),(6,'2020-05-05 13:06:49','Delivered',43,174),(7,'2019-08-07 08:54:37','Processing',46,6816),(8,'2019-05-22 04:00:32','Processing',44,1013),(9,'2019-01-12 03:05:24','Dispatched',37,123),(10,'2019-08-29 10:23:48','Dispatched',38,1791),(11,'2019-01-20 18:38:36','Delivered',17,5731),(12,'2019-08-07 08:54:37','Delivered',21,4090),(13,'2019-05-17 18:05:22','Processing',46,4179),(14,'2018-07-28 17:44:47','Processing',22,6843),(15,'2020-05-17 19:24:50','Dispatched',13,1687),(16,'2018-11-08 21:15:54','Dispatched',30,3235),(17,'2020-06-02 01:03:09','Delivered',42,5483),(18,'2019-08-16 02:39:33','Delivered',41,2277),(19,'2019-08-07 08:54:37','Processing',40,205),(20,'2019-03-26 18:38:29','Processing',32,5267),(21,'2019-05-26 08:05:04','Dispatched',45,2300),(22,'2020-03-20 00:26:46','Dispatched',42,2704),(23,'2019-08-07 08:54:37','Delivered',10,2797),(24,'2019-08-07 08:54:37','Delivered',27,4624),(25,'2018-11-26 00:56:46','Processing',24,4272),(26,'2019-07-04 17:10:50','Processing',47,299),(27,'2019-07-17 17:55:28','Dispatched',40,3657),(28,'2019-03-25 12:56:45','Dispatched',14,6668),(29,'2019-01-01 07:00:12','Delivered',32,6666),(30,'2018-08-30 05:29:50','Delivered',11,3412),(31,'2019-05-16 23:06:32','Processing',39,403),(32,'2018-09-06 14:03:39','Processing',45,2747),(33,'2018-09-20 01:38:38','Dispatched',24,2319),(34,'2019-08-07 08:54:37','Dispatched',40,5033),(35,'2019-01-22 22:27:01','Delivered',26,5054),(36,'2019-08-26 19:10:35','Delivered',2,3536),(37,'2018-12-21 21:27:15','Processing',17,6514),(38,'2020-06-19 12:15:39','Processing',22,999),(39,'2019-05-23 06:21:25','Dispatched',48,2767),(40,'2019-11-02 07:15:53','Dispatched',49,938),(41,'2019-10-18 06:22:16','Delivered',46,437),(42,'2019-01-19 16:38:45','Delivered',36,1996),(43,'2020-01-03 11:11:26','Processing',44,5927),(44,'2018-09-26 21:21:38','Processing',30,6265),(45,'2019-08-07 08:54:37','Dispatched',22,6381),(46,'2019-08-13 12:46:16','Dispatched',26,519),(47,'2020-05-18 01:27:28','Delivered',18,6850),(48,'2020-06-10 20:18:39','Delivered',23,3928),(49,'2019-09-18 02:35:48','Processing',47,5131),(50,'2020-04-17 03:34:08','Processing',50,295);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Sharan','Singh','5876069909','vitae.purus.gravida@semper.net'),(2,'Parthivi','Ismail','8718301353','ante.ipsum@faucibus.co.uk'),(3,'Thirumal','Khan','4142962337','libero.nec@dictum.net'),(4,'Sabhya','Jain','3197222065','Vivamus@eu.edu'),(5,'Ruchir','Raj','2119587396','dictum@acipsumPhasellus.com'),(6,'Sanatan','Patel','2813941968','nec@consectetueripsumnunc.net'),(7,'Anmol','Jain','9191355054','vestibulum.Mauris.magna@elitNulla.ca'),(8,'Kantilal','Raj','1909079639','risus.Donec@pellentesquea.ca'),(9,'Dhvanya','Khan','2852725369','libero@est.net'),(10,'Maina','Ismail','7343719653','molestie.arcu.Sed@metusfacilisislorem.org'),(11,'Suranjana','Jain','6552168182','lectus@necanteMaecenas.ca'),(12,'Aditha','Kumar','8311050286','nec.ligula@atrisusNunc.com'),(13,'Acanda','Raj','9011866822','posuere@gravidaAliquam.co.uk'),(14,'Shaheen','Kumar','6034106360','Donec.dignissim.magna@mattis.com'),(15,'Prayag','Singh','2191199176','eget@non.org'),(16,'Menitha','Ismail','9386685187','nunc.risus.varius@pellentesque.co.uk'),(17,'Madangopal','Khan','3490821438','porttitor.vulputate@sempererat.com'),(18,'Fulki','Ismail','9914490465','aliquet@in.org'),(19,'Ashwatthama','Kumar','1812651034','lorem@inaliquet.ca'),(20,'Krishnala','Raj','9181747412','consequat.nec.mollis@ridiculus.ca'),(21,'Tripta','Raj','1825970638','Mauris.non.dui@Vivamus.edu'),(22,'Prasoon','Ismail','5389524309','sem.Nulla.interdum@magnaseddui.co.uk'),(23,'Vilas','Khan','8600067423','mollis@scelerisquelorem.edu'),(24,'Brahmabrata','Kumar','4056736381','porttitor@malesuadaaugueut.co.uk'),(25,'Naseen','Patel','3267767216','elit.Nulla@pellentesqueegetdictum.net'),(26,'Darshana','Khan','6008324093','Fusce@nuncsed.net'),(27,'Sheil','Jain','3377117672','est@arcuimperdiet.com'),(28,'Garisht','Patel','9141590525','dapibus.gravida.Aliquam@magnisdisparturient.ca'),(29,'Darpak','Khan','0306689213','ornare.lectus@acturpisegestas.ca'),(30,'Yajnarup','Patel','1927797178','ac.urna.Ut@facilisismagnatellus.co.uk'),(31,'Sadiqua','Raj','0616008759','egestas.lacinia.Sed@erat.com'),(32,'Apparajito','Kumar','4329778147','id.enim@anteipsumprimis.org'),(33,'Aadesh','Patel','7229224263','ultrices.posuere@ametmetusAliquam.ca'),(34,'Edi','Patel','5976233772','placerat@egestasligulaNullam.edu'),(35,'Sati','Singh','2160738662','risus@iaculislacuspede.org'),(36,'Ankitha','Patel','3685264713','et.nunc.Quisque@nibhDonec.ca'),(37,'Mehdi','Patel','3184977578','ad.litora.torquent@vulputatenisi.co.uk'),(38,'Yaalini','Ismail','2583446769','sapien.molestie.orci@felis.org'),(39,'Jagriti','Jain','0288210570','ut.molestie@sapienimperdiet.com'),(40,'Niraimadhi','Ismail','0224999856','nibh.Phasellus.nulla@lacus.org'),(41,'Sushila','Jain','1673466090','Donec.feugiat.metus@velesttempor.com'),(42,'Kirtikumar','Patel','7292061926','lacus.Mauris.non@interdum.edu'),(43,'Etash','Singh','0103632069','nec@dapibus.com'),(44,'Mausumi','Singh','9262548986','Aliquam.ornare@liberonec.edu'),(45,'Pavak','Khan','2717407764','eu.odio@arcuVestibulum.edu'),(46,'Talikha','Patel','2501549024','vel@congueelitsed.com'),(47,'Gathika','Singh','6478419480','Donec.consectetuer.mauris@maurisut.com'),(48,'Nityagopal','Kumar','8997131258','egestas@consectetuer.edu'),(49,'Sujan','Patel','4437635335','sit.amet.risus@velnisl.ca'),(50,'Sainath','Kumar','8246737098','lobortis.quam.a@Quisquepurus.net');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Varun`@`localhost`*/ /*!50003 TRIGGER `before_User_insert_negative`
BEFORE INSERT ON `User` FOR EACH ROW 
BEGIN 
IF NEW.phone < 0 THEN
SET NEW.phone = -1 * NEW.phone;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Varun`@`localhost`*/ /*!50003 TRIGGER `before_User_insert_Upper`
BEFORE
INSERT
  ON `User` FOR EACH ROW
BEGIN
SET
  NEW.fName = UPPER(NEW.fName);
SET
  NEW.lName = UPPER(NEW.lName);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-11 15:58:58
