-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: team9
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access` (
  `Username_A` varchar(45) NOT NULL,
  `CartID_A` varchar(45) NOT NULL,
  KEY `Username_idx` (`Username_A`),
  KEY `CartID_A_idx` (`CartID_A`),
  CONSTRAINT `CartID_A` FOREIGN KEY (`CartID_A`) REFERENCES `cart` (`CartID`),
  CONSTRAINT `Username_A` FOREIGN KEY (`Username_A`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `added to`
--

DROP TABLE IF EXISTS `added to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `added to` (
  `PartID_Ad` int NOT NULL,
  `CartID_Ad` varchar(45) NOT NULL,
  `Qty` int NOT NULL DEFAULT '1' COMMENT 'Default is always 1 since you always just add one item to the cart unless you specify the amount. ',
  KEY `PartID_Ad_idx` (`PartID_Ad`),
  KEY `CartID_Ad_idx` (`CartID_Ad`),
  CONSTRAINT `CartID_Ad` FOREIGN KEY (`CartID_Ad`) REFERENCES `cart` (`CartID`),
  CONSTRAINT `PartID_Ad` FOREIGN KEY (`PartID_Ad`) REFERENCES `part` (`PartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `added to`
--

LOCK TABLES `added to` WRITE;
/*!40000 ALTER TABLE `added to` DISABLE KEYS */;
/*!40000 ALTER TABLE `added to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `AdminID` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('383953fe-61a9-11ee-971a-a74a79842739','Ivana','Admin','D@taB@seMan@g156~'),('38395b4c-61a9-11ee-971a-a74a79842739','Khaled','Admin','KkH@13d~~156'),('38395c6e-61a9-11ee-971a-a74a79842739','FredJ','Admin','Fr3DJH3YD00D'),('38395cc8-61a9-11ee-971a-a74a79842739','John','Admin','P0t@0F@rm3r2'),('38395d18-61a9-11ee-971a-a74a79842739','Kate','Admin','T0m@toF@rm3r1'),('38395fac-61a9-11ee-971a-a74a79842739','Nate','Admin','!Summ3rD@yZ2001!'),('3839601a-61a9-11ee-971a-a74a79842739','Gabe','Admin','Gr3@tG@bsy2000~'),('38396060-61a9-11ee-971a-a74a79842739','Jenny','Admin','!M@cb00kUs3r156$'),('383960ba-61a9-11ee-971a-a74a79842739','Mike','Admin','W1ndOwU$3r86#156'),('38396100-61a9-11ee-971a-a74a79842739','Monica','Admin','#Th3Wh1t3House~#');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `becomes`
--

DROP TABLE IF EXISTS `becomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `becomes` (
  `CartID` varchar(45) NOT NULL,
  `OrderID` int NOT NULL,
  `Order_Date` int NOT NULL,
  KEY `CartID_idx` (`CartID`),
  KEY `OrderID_idx` (`OrderID`),
  CONSTRAINT `CartID` FOREIGN KEY (`CartID`) REFERENCES `cart` (`CartID`),
  CONSTRAINT `OrderID` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `becomes`
--

LOCK TABLES `becomes` WRITE;
/*!40000 ALTER TABLE `becomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `becomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `CartID` varchar(45) NOT NULL,
  `Items` varchar(400) DEFAULT NULL,
  `Total Price` int DEFAULT NULL,
  PRIMARY KEY (`CartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('59','lightweight muffler',60),('60','catback exhaust',100),('61','lightweight muffler, catback exhaust',160),('62','brake pad',200),('63','bronze rim 18in',270),('64','bronze rim 18in, brake pad',470),('65','window tint limo, common fuel injector',98),('66','bolt on turbo, headlights',355),('67','bronze rim 18in, brake pad',470),('68','common fuel injector',65);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contains`
--

DROP TABLE IF EXISTS `contains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contains` (
  `InventoryID_Co` int NOT NULL,
  `PartID_Co` int NOT NULL,
  KEY `PartID_Co_idx` (`PartID_Co`),
  KEY `InventoryID_Co_idx` (`InventoryID_Co`),
  CONSTRAINT `InventoryID_Co` FOREIGN KEY (`InventoryID_Co`) REFERENCES `inventory` (`InventoryID`),
  CONSTRAINT `PartID_Co` FOREIGN KEY (`PartID_Co`) REFERENCES `part` (`PartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contains`
--

LOCK TABLES `contains` WRITE;
/*!40000 ALTER TABLE `contains` DISABLE KEYS */;
/*!40000 ALTER TABLE `contains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Username` varchar(45) NOT NULL,
  `FName` varchar(45) NOT NULL,
  `LName` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `History` int DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('1','1','1','1@gmail.com','1','1',NULL),('2','2','2','2@gmail.com','2','2',NULL),('3','3','3','3@gmail.com','3','3',NULL),('4','4','4','4@gmail.com','$2a$12$dodOz6aYM2FCMeQciOTbsuJX/T6/uWDJ7mxHSq.N8cAXopdDXSZha','a',NULL),('5','5','5','5@gmail.com','5','5',NULL),('6','6','6','6@gmail.com','6','6',NULL),('FitnessFreak','Fred','James','pinaeple@gmail.com','1S@nJOseSt@t3UniSad1','9303 Garden Lane Schererville, IN 46375',NULL),('FoodieAdventures','Eve','Christ','cookiesncream@gmail.com','##C0mput3rSc13nc3%1##','8252 SW. Orange St. Rolla, MO 65401',NULL),('GamingFanatic','Cal','Zaza','zootehnic@gmail.com','P!LLB0ttlez99#',' 54 NW. Wild Horse Court, Glen Ellyn, IL 60137',NULL),('ivana','ivana','ivana','ivana@gmail.com','11111111Aa','ivana',NULL),('JaneDoe','Jane','Doe','claytent@yahoo.com','!!WaterB0ttle800()!!','80 Beach St. Jamaica Plain, MA 02130',NULL),('JohnSmith','John','Smith','goldshowe@gmail.com','156_Us3r13_156~CS~','123 New York, New York',NULL),('MovieBuffs','Monica','Buffs','apollodone@gmail.com','*CS*D3P@RT*156*',' 7360 Wagon Ave. Tucson, AZ 85718',NULL),('MusicLover','Mac','Love','potao@yahoo.com','Ti$$ueB0X147!','7071 Del Monte Street Murfreesboro, TN 37128',NULL),('p','p','p','p@gmail.com','$2a$12$htkOJm62JQQEaRPowe/0Ze7t.OHBa193N.DrIneADehP8G68KfNrK','1',NULL),('TechGeek','Tecca','German','qball9@gmail.com','98SUSh1Fish98','340 Longfellow Street, Marietta, GA 30008',NULL),('Traveler101','Tequila','Johnson','tomatopota@gmail.com','S0ckANDS@nd@1$66',' 30 Philmont Street, Oxon Hill, MD 20745',NULL),('User101001','Kate','Tam','madagas@yahoo.com','@M1k3WUTHEPr0f156@',' 13 Lincoln Dr. Allentwon, PA 18102',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `FeedbackID` int NOT NULL AUTO_INCREMENT,
  `Subject` varchar(45) DEFAULT NULL,
  `Body` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FeedbackID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (8,'Shipping','Hello, wanted to say great job on shipping speed!'),(9,'Boxes','The boxes were nicely secured'),(10,'What does Cart do?','What does a Cart do?'),(11,'Order Amount','How many items can we put in our orders at once?'),(12,'Perfect items!','Your items were nicely packaged and great.'),(13,'NICE!','This car part works really well.'),(14,'POOR','This car part is poorly made.'),(15,'Top notch stuff!','Item is great!'),(16,'Return policy','How do I return a product?'),(17,'Nice quality!','The part was perfectly made and fit my car nicely!');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gives`
--

DROP TABLE IF EXISTS `gives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gives` (
  `Username` varchar(45) DEFAULT NULL,
  `FeedbackID` int DEFAULT NULL,
  KEY `Username_idx` (`Username`),
  KEY `FeedbackID_idx` (`FeedbackID`),
  CONSTRAINT `FeedbackID` FOREIGN KEY (`FeedbackID`) REFERENCES `feedback` (`FeedbackID`),
  CONSTRAINT `Username` FOREIGN KEY (`Username`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gives`
--

LOCK TABLES `gives` WRITE;
/*!40000 ALTER TABLE `gives` DISABLE KEYS */;
INSERT INTO `gives` VALUES ('JaneDoe',8),('FitnessFreak',15),('Traveler101',17),('JohnSmith',16),('GamingFanatic',14),('MusicLover',13),('MusicLover',12),('TechGeek',11),('MovieBuffs',10),('MovieBuffs',8);
/*!40000 ALTER TABLE `gives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` int NOT NULL AUTO_INCREMENT,
  `Qty` int DEFAULT NULL,
  PRIMARY KEY (`InventoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (10,10),(11,20),(12,20),(13,30),(14,12),(15,6),(16,4),(17,6),(18,8),(19,8);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage` (
  `AdminID_M` varchar(255) NOT NULL,
  `InventoryID` int NOT NULL,
  KEY `AdminID_M_idx` (`AdminID_M`),
  KEY `InventoryID_M_idx` (`InventoryID`),
  CONSTRAINT `AdminID_M` FOREIGN KEY (`AdminID_M`) REFERENCES `admin` (`AdminID`),
  CONSTRAINT `InventoryID_M` FOREIGN KEY (`InventoryID`) REFERENCES `inventory` (`InventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `ManufacturerID` int NOT NULL AUTO_INCREMENT,
  `Brand` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ManufacturerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Mercedes','German'),(2,'BMW','German'),(3,'Dodge','US'),(4,'Volvo','UK'),(5,'Ford','US'),(6,'Toyota','Japan'),(7,'Honda','Japan'),(8,'Nissan','Japan'),(9,'Chevrolet','US'),(10,'Mazda','Japan');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `Status` varchar(10) NOT NULL,
  `Total Price` int NOT NULL,
  `Contact Info` varchar(45) NOT NULL,
  `Shipping Address` varchar(100) NOT NULL,
  `Payment Method` varchar(45) NOT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (59,'shipped',60,'zootehnic@gmail.com',' 54 NW. Wild Horse Court, Glen Ellyn, IL 60137','Visa'),(60,'delivered',100,'tomatopota@gmail.com',' 54 NW. Wild Horse Court, Glen Ellyn, IL 60137','Mastercard'),(61,'processed',160,'qball9@gmail.com','340 Longfellow Street, Marietta, GA 30008','Visa'),(62,'delivered',200,'potao@yahoo.com','7071 Del Monte Street Murfreesboro, TN 37128','Visa'),(63,'completed',270,'pinaeple@gmail.com','9303 Garden Lane Schererville, IN 46375','PayPal'),(64,'completed',470,'madagas@yahoo.com',' 13 Lincoln Dr. Allentwon, PA 18102','Mastercard'),(65,'processed',98,'goldshowe@gmail.com','123 New York, New York','Mastercard'),(66,'delivered',355,'cookiesncream@gmail.com','9303 Garden Lane Schererville, IN 46375','Visa'),(67,'completed',470,'claytent@yahoo.com','123 New York, New York','Paypal'),(68,'completed',65,'apollodone@gmail.com',' 7360 Wagon Ave. Tucson, AZ 85718','Mastercard');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `PartID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Sell Price` int NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`PartID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (10,'lightweight muffler',60,'high performance, lightweight','muffler'),(11,'catback exhaust',100,'performance exhaust, loud','exhaust'),(12,'twin turbo',333,'less turbo lag','turbo'),(13,'single turbo',350,'more boost, more delay','turbo'),(14,'bolt on turbo',300,'attachable to most N/A cars','turbo'),(15,'headlights',55,'made with anti yellowing material','lights'),(16,'window tint limo',33,'makes windows darker and keeps inside cooler','accessory'),(17,'common fuel injector',65,'works with most engines, efficient fuel injection','fuel injector'),(18,'bronze rim 18in',270,'ultra lightweight, alloy','wheel'),(19,'brake pad',200,'long lasting','brake');
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `AdminID_R` varchar(255) NOT NULL,
  `FeedbackID_R` int NOT NULL,
  `Completed_R` int NOT NULL DEFAULT '0' COMMENT 'Default is 0 for False because assume that all the feedback reports have not been read yet. An Admin will make it 1 if it’s completed. ',
  KEY `AdminID_R_idx` (`AdminID_R`),
  KEY `FeedbackID_R_idx` (`FeedbackID_R`),
  CONSTRAINT `AdminID_R` FOREIGN KEY (`AdminID_R`) REFERENCES `admin` (`AdminID`),
  CONSTRAINT `FeedbackID_R` FOREIGN KEY (`FeedbackID_R`) REFERENCES `feedback` (`FeedbackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES ('383953fe-61a9-11ee-971a-a74a79842739',8,0),('383953fe-61a9-11ee-971a-a74a79842739',10,1),('383953fe-61a9-11ee-971a-a74a79842739',11,0),('38395c6e-61a9-11ee-971a-a74a79842739',12,0),('38395c6e-61a9-11ee-971a-a74a79842739',13,1),('38395c6e-61a9-11ee-971a-a74a79842739',14,1),('38395b4c-61a9-11ee-971a-a74a79842739',15,0),('38395b4c-61a9-11ee-971a-a74a79842739',16,0),('38395b4c-61a9-11ee-971a-a74a79842739',17,0),('38396100-61a9-11ee-971a-a74a79842739',9,0);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search` (
  `Username_S` varchar(45) NOT NULL,
  `PartID_S` int NOT NULL,
  KEY `Username_S_idx` (`Username_S`),
  KEY `PartID_S_idx` (`PartID_S`),
  CONSTRAINT `PartID_S` FOREIGN KEY (`PartID_S`) REFERENCES `part` (`PartID`),
  CONSTRAINT `Username_S` FOREIGN KEY (`Username_S`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES ('TechGeek',10),('TechGeek',11),('MovieBuffs',12),('User101001',13),('User101001',14),('FoodieAdventures',15),('JohnSmith',16),('JohnSmith',17),('GamingFanatic',18),('JaneDoe',19);
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `ManufacturerID_Su` int NOT NULL,
  `PartID_Su` int NOT NULL,
  `Buy Price` int NOT NULL,
  `Delivery Date` date NOT NULL,
  KEY `ManufacturerID_Su_idx` (`ManufacturerID_Su`),
  KEY `PartID_idx` (`PartID_Su`),
  CONSTRAINT `ManufacturerID_Su` FOREIGN KEY (`ManufacturerID_Su`) REFERENCES `manufacturer` (`ManufacturerID`),
  CONSTRAINT `PartID_Su` FOREIGN KEY (`PartID_Su`) REFERENCES `part` (`PartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES (1,10,55,'2016-05-20'),(2,12,95,'2005-08-26'),(3,11,300,'2002-06-12'),(4,13,300,'2021-03-25'),(5,14,300,'2021-03-25'),(6,15,50,'2021-03-25'),(7,16,30,'2011-03-21'),(8,17,60,'2011-03-21'),(9,18,260,'2017-06-13'),(10,19,100,'2017-06-13');
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view`
--

DROP TABLE IF EXISTS `view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `view` (
  `Usernames` varchar(45) NOT NULL,
  `OrderIDs` int NOT NULL,
  KEY `Username_idx` (`Usernames`),
  KEY `OrderIDs_idx` (`OrderIDs`),
  CONSTRAINT `OrderIDs` FOREIGN KEY (`OrderIDs`) REFERENCES `order` (`OrderID`),
  CONSTRAINT `Usernames` FOREIGN KEY (`Usernames`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view`
--

LOCK TABLES `view` WRITE;
/*!40000 ALTER TABLE `view` DISABLE KEYS */;
/*!40000 ALTER TABLE `view` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-22  2:33:11
