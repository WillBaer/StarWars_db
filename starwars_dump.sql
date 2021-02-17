-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: starwars
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id` int NOT NULL,
  `name` text,
  `height` int DEFAULT NULL,
  `mass` float DEFAULT NULL,
  `hair_color` text,
  `skin_color` text,
  `eye_color` text,
  `birth_year` text,
  `gender` text,
  `planet_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Luke Skywalker',172,77,'blond','fair','blue','19BBY','male',1),(2,'C-3PO',167,75,'n/a','gold','yellow','112BBY','n/a',1),(3,'R2-D2',96,32,'n/a','white, blue','red','33BBY','n/a',8),(4,'Darth Vader',202,136,'none','white','yellow','41.9BBY','male',1),(5,'Leia Organa',150,49,'brown','light','brown','19BBY','female',2),(6,'Owen Lars',178,120,'brown, grey','light','blue','52BBY','male',1),(7,'Beru Whitesun lars',165,75,'brown','light','blue','47BBY','female',1),(8,'R5-D4',97,32,'n/a','white, red','red',NULL,'n/a',1),(9,'Biggs Darklighter',183,84,'black','light','brown','24BBY','male',1),(10,'Obi-Wan Kenobi',182,77,'auburn, white','fair','blue-gray','57BBY','male',20),(11,'Anakin Skywalker',188,84,'blond','fair','blue','41.9BBY','male',1),(12,'Wilhuff Tarkin',180,NULL,'auburn, grey','fair','blue','64BBY','male',21),(13,'Chewbacca',228,112,'brown',NULL,'blue','200BBY','male',14),(14,'Han Solo',180,80,'brown','fair','brown','29BBY','male',22),(15,'Greedo',173,74,'n/a','green','black','44BBY','male',23),(16,'Jabba Desilijic Tiure',175,1358,'n/a','green-tan, brown','orange','600BBY','hermaphrodite',24),(18,'Wedge Antilles',170,77,'brown','fair','hazel','21BBY','male',22),(19,'Jek Tono Porkins',180,110,'brown','fair','blue',NULL,'male',26),(20,'Yoda',66,17,'white','green','brown','896BBY','male',0),(21,'Palpatine',170,75,'grey','pale','yellow','82BBY','male',8),(22,'Boba Fett',183,78.2,'black','fair','brown','31.5BBY','male',10),(23,'IG-88',200,140,'none','metal','red','15BBY','none',28),(24,'Bossk',190,113,'none','green','red','53BBY','male',29),(25,'Lando Calrissian',177,79,'black','dark','brown','31BBY','male',30),(26,'Lobot',175,79,'none','light','blue','37BBY','male',6),(27,'Ackbar',180,83,'none','brown mottle','orange','41BBY','male',31),(28,'Mon Mothma',150,NULL,'auburn','fair','blue','48BBY','female',32),(29,'Arvel Crynyd',NULL,NULL,'brown','fair','brown',NULL,'male',0),(30,'Wicket Systri Warrick',88,20,'brown','brown','brown','8BBY','male',7),(31,'Nien Nunb',160,68,'none','grey','black',NULL,'male',33),(32,'Qui-Gon Jinn',193,89,'brown','fair','blue','92BBY','male',0),(33,'Nute Gunray',191,90,'none','mottled green','red',NULL,'male',18),(34,'Finis Valorum',170,NULL,'blond','fair','blue','91BBY','male',9),(35,'Padmé Amidala',165,45,'brown','light','brown','46BBY','female',8),(36,'Jar Jar Binks',196,66,'none','orange','orange','52BBY','male',8),(37,'Roos Tarpals',224,82,'none','grey','orange',NULL,'male',8),(38,'Rugor Nass',206,NULL,'none','green','orange',NULL,'male',8),(39,'Ric Olié',183,NULL,'brown','fair','blue',NULL,'male',8),(40,'Watto',137,NULL,'black','blue, grey','yellow',NULL,'male',34),(41,'Sebulba',112,40,'none','grey, red','orange',NULL,'male',35),(42,'Quarsh Panaka',183,NULL,'black','dark','brown','62BBY','male',8),(43,'Shmi Skywalker',163,NULL,'black','fair','brown','72BBY','female',1),(44,'Darth Maul',175,80,'none','red','yellow','54BBY','male',36),(45,'Bib Fortuna',180,NULL,'none','pale','pink',NULL,'male',37),(46,'Ayla Secura',178,55,'none','blue','hazel','48BBY','female',37),(47,'Ratts Tyerell',79,15,'none','grey, blue',NULL,NULL,'male',38),(48,'Dud Bolt',94,45,'none','blue, grey','yellow',NULL,'male',39),(49,'Gasgano',122,NULL,'none','white, blue','black',NULL,'male',40),(50,'Ben Quadinaros',163,65,'none','grey, green, yellow','orange',NULL,'male',41),(51,'Mace Windu',188,84,'none','dark','brown','72BBY','male',42),(52,'Ki-Adi-Mundi',198,82,'white','pale','yellow','92BBY','male',43),(53,'Kit Fisto',196,87,'none','green','black',NULL,'male',44),(54,'Eeth Koth',171,NULL,'black','brown','brown',NULL,'male',45),(55,'Adi Gallia',184,50,'none','dark','blue',NULL,'female',9),(56,'Saesee Tiin',188,NULL,'none','pale','orange',NULL,'male',47),(57,'Yarael Poof',264,NULL,'none','white','yellow',NULL,'male',48),(58,'Plo Koon',188,80,'none','orange','black','22BBY','male',49),(59,'Mas Amedda',196,NULL,'none','blue','blue',NULL,'male',50),(60,'Gregar Typho',185,85,'black','dark','brown',NULL,'male',8),(61,'Cordé',157,NULL,'brown','light','brown',NULL,'female',8),(62,'Cliegg Lars',183,NULL,'brown','fair','blue','82BBY','male',1),(63,'Poggle the Lesser',183,80,'none','green','yellow',NULL,'male',11),(64,'Luminara Unduli',170,56.2,'black','yellow','blue','58BBY','female',51),(65,'Barriss Offee',166,50,'black','yellow','blue','40BBY','female',51),(66,'Dormé',165,NULL,'brown','light','brown',NULL,'female',8),(67,'Dooku',193,80,'white','fair','brown','102BBY','male',52),(68,'Bail Prestor Organa',191,NULL,'black','tan','brown','67BBY','male',2),(69,'Jango Fett',183,79,'black','tan','brown','66BBY','male',53),(70,'Zam Wesell',168,55,'blonde','fair, green, yellow','yellow',NULL,'female',54),(71,'Dexter Jettster',198,102,'none','brown','yellow',NULL,'male',55),(72,'Lama Su',229,88,'none','grey','black',NULL,'male',10),(73,'Taun We',213,NULL,'none','grey','black',NULL,'female',10),(74,'Jocasta Nu',167,NULL,'white','fair','blue',NULL,'female',9),(75,'R4-P17',96,NULL,'none','silver, red','red, blue',NULL,'female',0),(76,'Wat Tambor',193,48,'none','green, grey',NULL,NULL,'male',56),(77,'San Hill',191,NULL,'none','grey','gold',NULL,'male',57),(78,'Shaak Ti',178,57,'none','red, blue, white','black',NULL,'female',58),(79,'Grievous',216,159,'none','brown, white','green, yellow',NULL,'male',59),(80,'Tarfful',234,136,'brown','brown','blue',NULL,'male',14),(81,'Raymus Antilles',188,79,'brown','light','brown',NULL,'male',2),(82,'Sly Moore',178,48,'none','pale','white',NULL,'female',60),(83,'Tion Medon',206,80,'none','grey','black',NULL,'male',12),(84,'Finn',NULL,NULL,'black','dark','dark',NULL,'male',0),(85,'Rey Skywalker',NULL,NULL,'brown','light','hazel',NULL,'female',0),(86,'Poe Dameron',NULL,NULL,'brown','light','brown',NULL,'male',0),(87,'BB8',NULL,NULL,'none','none','black',NULL,'none',0),(88,'Captain Phasma',NULL,NULL,NULL,NULL,NULL,NULL,'female',0);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planet`
--

DROP TABLE IF EXISTS `planet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planet` (
  `id` int NOT NULL,
  `name` text,
  `rotation_period` int DEFAULT NULL,
  `orbital_period` int DEFAULT NULL,
  `diameter` int DEFAULT NULL,
  `climate` text,
  `gravity` text,
  `terrain` text,
  `surface_water` text,
  `population` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planet`
--

LOCK TABLES `planet` WRITE;
/*!40000 ALTER TABLE `planet` DISABLE KEYS */;
INSERT INTO `planet` VALUES (1,'Tatooine',23,304,10465,'arid','1 standard','desert','1',200000),(2,'Alderaan',24,364,12500,'temperate','1 standard','grasslands, mountains','40',2000000000),(3,'Yavin IV',24,4818,10200,'temperate, tropical','1 standard','jungle, rainforests','8',1000),(4,'Hoth',23,549,7200,'frozen','1.1 standard','tundra, ice caves, mountain ranges','100',NULL),(5,'Dagobah',23,341,8900,'murky','N/A','swamp, jungles','8',NULL),(6,'Bespin',12,5110,118000,'temperate','1.5 (surface), 1 standard (Cloud City)','gas giant','0',6000000),(7,'Endor',18,402,4900,'temperate','0.85 standard','forests, mountains, lakes','8',30000000),(8,'Naboo',26,312,12120,'temperate','1 standard','grassy hills, swamps, forests, mountains','12',4500000000),(9,'Coruscant',24,368,12240,'temperate','1 standard','cityscape, mountains',NULL,1000000000000),(10,'Kamino',27,463,19720,'temperate','1 standard','ocean','100',1000000000),(11,'Geonosis',30,256,11370,'temperate, arid','0.9 standard','rock, desert, mountain, barren','5',100000000000),(12,'Utapau',27,351,12900,'temperate, arid, windy','1 standard','scrublands, savanna, canyons, sinkholes','0.9',95000000),(13,'Mustafar',36,412,4200,'hot','1 standard','volcanoes, lava rivers, mountains, caves','0',20000),(14,'Kashyyyk',26,381,12765,'tropical','1 standard','jungle, forests, lakes, rivers','60',45000000),(15,'Polis Massa',24,590,0,'artificial temperate','0.56 standard','airless asteroid','0',1000000),(16,'Mygeeto',12,167,10088,'frigid','1 standard','glaciers, mountains, ice canyons',NULL,19000000),(17,'Felucia',34,231,9100,'hot, humid','0.75 standard','fungus forests',NULL,8500000),(18,'Cato Neimoidia',25,278,0,'temperate, moist','1 standard','mountains, fields, forests, rock arches',NULL,10000000),(19,'Saleucami',26,392,14920,'hot',NULL,'caves, desert, mountains, volcanoes',NULL,1400000000),(20,'Stewjon',NULL,NULL,0,'temperate','1 standard','grass',NULL,NULL),(21,'Eriadu',24,360,13490,'polluted','1 standard','cityscape',NULL,22000000000),(22,'Corellia',25,329,11000,'temperate','1 standard','plains, urban, hills, forests','70',3000000000),(23,'Rodia',29,305,7549,'hot','1 standard','jungles, oceans, urban, swamps','60',1300000000),(24,'Nal Hutta',87,413,12150,'temperate','1 standard','urban, oceans, swamps, bogs',NULL,7000000000),(25,'Dantooine',25,378,9830,'temperate','1 standard','oceans, savannas, mountains, grasslands',NULL,1000),(26,'Bestine IV',26,680,6400,'temperate',NULL,'rocky islands, oceans','98',62000000),(27,'Ord Mantell',26,334,14050,'temperate','1 standard','plains, seas, mesas','10',4000000000),(28,'Earth',24,365,12742,'temperate','1','seas, forests, mountains, plains','40',7700000000),(29,'Trandosha',25,371,0,'arid','0.62 standard','mountains, seas, grasslands, deserts',NULL,42000000),(30,'Socorro',20,326,0,'arid','1 standard','deserts, mountains',NULL,300000000),(31,'Mon Cala',21,398,11030,'temperate','1','oceans, reefs, islands','100',27000000000),(32,'Chandrila',20,368,13500,'temperate','1','plains, forests','40',1200000000),(33,'Sullust',20,263,12780,'superheated','1','mountains, volcanoes, rocky deserts','5',18500000000),(34,'Toydaria',21,184,7900,'temperate','1','swamps, lakes',NULL,11000000),(35,'Malastare',26,201,18880,'arid, temperate, tropical','1.56','swamps, deserts, jungles, mountains',NULL,2000000000),(36,'Dathomir',24,491,10480,'temperate','0.9','forests, deserts, savannas',NULL,5200),(37,'Ryloth',30,305,10600,'temperate, arid, subartic','1','mountains, valleys, deserts, tundra','5',1500000000),(38,'Aleen Minor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'Vulpter',22,391,14900,'temperate, artic','1','urban, barren',NULL,421000000),(40,'Troiken',NULL,NULL,NULL,NULL,NULL,'desert, tundra, rainforests, mountains',NULL,NULL),(41,'Tund',48,1770,12190,NULL,NULL,'barren, ash',NULL,0),(42,'Haruun Kal',25,383,10120,'temperate','0.98','toxic cloudsea, plateaus, volcanoes',NULL,705300),(43,'Cerea',27,386,NULL,'temperate','1','verdant','20',450000000),(44,'Glee Anselm',33,206,15600,'tropical, temperate','1','lakes, islands, swamps, seas','80',500000000),(45,'Iridonia',29,413,NULL,NULL,NULL,'rocky canyons, acid pools',NULL,NULL),(46,'Tholoth',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'Iktotch',22,481,NULL,'arid, rocky, windy','1','rocky',NULL,NULL),(48,'Quermia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'Dorin',22,409,13400,'temperate','1',NULL,NULL,NULL),(50,'Champala',27,318,NULL,'temperate','1','oceans, rainforests, plateaus',NULL,3500000000),(51,'Mirial',NULL,NULL,NULL,NULL,NULL,'deserts',NULL,NULL),(52,'Serenno',NULL,NULL,NULL,NULL,NULL,'rainforests, rivers, mountains',NULL,NULL),(53,'Concord Dawn',NULL,NULL,NULL,NULL,NULL,'jungles, forests, deserts',NULL,NULL),(54,'Zolan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Ojom',NULL,NULL,NULL,'frigid',NULL,'oceans, glaciers','100',500000000),(56,'Skako',27,384,NULL,'temperate','1','urban, vines',NULL,500000000000),(57,'Muunilinst',28,412,13800,'temperate','1','plains, forests, hills, mountains','25',5000000000),(58,'Shili',NULL,NULL,NULL,'temperate','1','cities, savannahs, seas, plains',NULL,NULL),(59,'Kalee',23,378,13850,'arid, temperate, tropical','1','rainforests, cliffs, canyons, seas',NULL,4000000000),(60,'Umbara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'Jakku',NULL,NULL,NULL,NULL,NULL,'deserts',NULL,NULL);
/*!40000 ALTER TABLE `planet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 15:58:10
