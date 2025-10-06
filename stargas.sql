-- MySQL dump 10.13  Distrib 8.4.3, for Win64 (x86_64)
--
-- Host: localhost    Database: stargas
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_interface_theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_romanian_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_romanian_ci NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_romanian_ci NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `title_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_header_text_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_header_link_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_header_link_hover_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_module_background_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_module_text_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_module_link_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_module_link_hover_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_generic_link_hover_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_save_button_background_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_save_button_background_hover_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_save_button_text_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_delete_button_background_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_delete_button_text_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) COLLATE utf8mb4_romanian_ci NOT NULL,
  `related_modal_background_opacity` varchar(5) COLLATE utf8mb4_romanian_ci NOT NULL,
  `env_name` varchar(50) COLLATE utf8mb4_romanian_ci NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `css_module_link_selected_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `logo_max_height` smallint unsigned NOT NULL,
  `logo_max_width` smallint unsigned NOT NULL,
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) COLLATE utf8mb4_romanian_ci NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`),
  CONSTRAINT `admin_interface_theme_chk_1` CHECK ((`logo_max_height` >= 0)),
  CONSTRAINT `admin_interface_theme_chk_2` CHECK ((`logo_max_width` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (1,'BBinstall Organization',1,'Administrare BB INSTALL SRL',0,'admin-interface/logo/logobb_CW9o4Kf.png',1,'#24445C','#F50000','#FFFFFF','#FFFFFF','#C9F0DD','#24445C','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#24445C','#2D5671','#FFFFFF','#FFFFFF','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','BBINSTALL',1,'#E74C3C',1,1,1,'name',1,0,0,'#FFFFCC','#FFFFFF',50,150,1,'default-select',1,0,0,0,'#FFFFFF',0,1,0,1);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_artera`
--

DROP TABLE IF EXISTS `adrese_artera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_artera` (
  `cod` int NOT NULL,
  `cod_politie` int DEFAULT NULL,
  `denumire` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `cod_postal` varchar(20) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `loc_jud_cod_id` int NOT NULL,
  `loc_cod_id` int NOT NULL,
  `stare_id` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `tip_artera_id` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  PRIMARY KEY (`cod`),
  KEY `adrese_artera_loc_jud_cod_id_cb2f19a6_fk_adrese_judet_cod` (`loc_jud_cod_id`),
  KEY `adrese_artera_loc_cod_id_57840cbe_fk_adrese_localitate_cod` (`loc_cod_id`),
  KEY `adrese_artera_stare_id_a5a15024_fk_adrese_stareartera_cod` (`stare_id`),
  KEY `adrese_artera_tip_artera_id_536430bb_fk_adrese_tipartera_cod` (`tip_artera_id`),
  CONSTRAINT `adrese_artera_loc_cod_id_57840cbe_fk_adrese_localitate_cod` FOREIGN KEY (`loc_cod_id`) REFERENCES `adrese_localitate` (`cod`),
  CONSTRAINT `adrese_artera_loc_jud_cod_id_cb2f19a6_fk_adrese_judet_cod` FOREIGN KEY (`loc_jud_cod_id`) REFERENCES `adrese_judet` (`cod`),
  CONSTRAINT `adrese_artera_stare_id_a5a15024_fk_adrese_stareartera_cod` FOREIGN KEY (`stare_id`) REFERENCES `adrese_stareartera` (`cod`),
  CONSTRAINT `adrese_artera_tip_artera_id_536430bb_fk_adrese_tipartera_cod` FOREIGN KEY (`tip_artera_id`) REFERENCES `adrese_tipartera` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_artera`
--

LOCK TABLES `adrese_artera` WRITE;
/*!40000 ALTER TABLE `adrese_artera` DISABLE KEYS */;
INSERT INTO `adrese_artera` VALUES (1,0,'Adunaţii Teiului',NULL,25,2,'A','G');
INSERT INTO `adrese_artera` VALUES (2,1091741,'Iovescu',NULL,25,115,'A','Ale');
INSERT INTO `adrese_artera` VALUES (3,1091687,'Brânduşelor',NULL,25,82,'A','Str');
INSERT INTO `adrese_artera` VALUES (4,1091706,'Calea Bobăiţii',NULL,25,104,'A','Str');
INSERT INTO `adrese_artera` VALUES (5,1091570,'Cazanele Mici',NULL,25,130,'A','Ale');
INSERT INTO `adrese_artera` VALUES (6,1091699,'Cocorovei',NULL,25,104,'A','Str');
INSERT INTO `adrese_artera` VALUES (7,1091701,'Corcoduşului',NULL,25,104,'A','Str');
INSERT INTO `adrese_artera` VALUES (8,1091582,'Golful Dubovei',NULL,25,130,'A','Str');
INSERT INTO `adrese_artera` VALUES (9,1091673,'Duzilor',NULL,25,78,'A','Ale');
INSERT INTO `adrese_artera` VALUES (10,1091636,'Cosminului',NULL,25,410,'A','Str');
INSERT INTO `adrese_artera` VALUES (11,1091683,'Principală',NULL,25,82,'A','Str');
INSERT INTO `adrese_artera` VALUES (12,1091406,'George Călinescu',NULL,25,142,'A','Str');
INSERT INTO `adrese_artera` VALUES (13,1091729,'Măcrişului',NULL,25,260,'A','Str');
INSERT INTO `adrese_artera` VALUES (14,1091638,'Gheorghe Ionescu Şişeşti',NULL,25,410,'A','Str');
INSERT INTO `adrese_artera` VALUES (15,1091660,'Principală',NULL,25,78,'A','Str');
INSERT INTO `adrese_artera` VALUES (16,1091586,'Regele Decebal',NULL,25,130,'A','Str');
INSERT INTO `adrese_artera` VALUES (17,1091405,'Marin Sorescu',NULL,25,142,'A','Str');
INSERT INTO `adrese_artera` VALUES (18,1091667,'Salcîmului',NULL,25,78,'A','Ale');
INSERT INTO `adrese_artera` VALUES (19,1091676,'Stejarului',NULL,25,78,'A','Ale');
INSERT INTO `adrese_artera` VALUES (20,1091577,'Valea Caraşovăţ',NULL,25,130,'A','Ale');
INSERT INTO `adrese_artera` VALUES (21,1091733,'Uliţa Lungă',NULL,25,260,'A','Str');
INSERT INTO `adrese_artera` VALUES (22,1091736,'Viitorului',NULL,25,260,'A','Ale');
INSERT INTO `adrese_artera` VALUES (23,1091358,'Mihai Eminescu',NULL,25,158,'A','Str');
INSERT INTO `adrese_artera` VALUES (24,1091647,'Pădinii',NULL,25,410,'A','Str');
INSERT INTO `adrese_artera` VALUES (25,1091415,'Nicolae Iorga',NULL,25,142,'A','Str');
INSERT INTO `adrese_artera` VALUES (26,1091421,'Octavian Goga',NULL,25,142,'A','Str');
INSERT INTO `adrese_artera` VALUES (27,1091402,'Panait Istrati',NULL,25,142,'A','Str');
INSERT INTO `adrese_artera` VALUES (28,1091357,'Severinului',NULL,25,158,'A','Cal');
INSERT INTO `adrese_artera` VALUES (29,1091379,'Titu Maiorescu',NULL,25,158,'A','Str');
INSERT INTO `adrese_artera` VALUES (30,1091390,'Traian',NULL,25,142,'A','Cal');
INSERT INTO `adrese_artera` VALUES (31,1091408,'Traian Vuia',NULL,25,142,'A','Str');
INSERT INTO `adrese_artera` VALUES (32,1091653,'Urzicilor',NULL,25,410,'A','Ale');
INSERT INTO `adrese_artera` VALUES (33,1091411,'Vlad Ţepeş',NULL,25,142,'A','Str');
INSERT INTO `adrese_artera` VALUES (34,1091360,'Ştefan Odobleja',NULL,25,158,'A','Str');
INSERT INTO `adrese_artera` VALUES (35,1088827,'Izvor',NULL,25,264,'A','Str');
INSERT INTO `adrese_artera` VALUES (36,1076921,'Micşunelelor',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (37,1076880,'Mihai Eminescu',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (38,1072047,'Poştei',NULL,25,42,'A','Str');
INSERT INTO `adrese_artera` VALUES (39,1076871,'Mioriţa',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (40,1076907,'Morii',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (41,1077143,'Speranţei',NULL,25,106,'A','Str');
INSERT INTO `adrese_artera` VALUES (42,1076925,'Nordului',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (43,1076901,'Nuferilor',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (44,1074740,'Naţională',NULL,25,405,'A','Str');
INSERT INTO `adrese_artera` VALUES (45,1076920,'Orhideelor',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (46,1076883,'Ostrovului',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (47,1074806,'Treptelor',NULL,25,73,'A','Str');
INSERT INTO `adrese_artera` VALUES (48,1076876,'Parohiei Bisericii II',NULL,25,186,'H','Str');
INSERT INTO `adrese_artera` VALUES (49,1076885,'Pescarilor',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (50,1074809,'Tunari',NULL,25,73,'A','Str');
INSERT INTO `adrese_artera` VALUES (51,1076893,'Portului',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (52,1074811,'Venus',NULL,25,73,'A','Str');
INSERT INTO `adrese_artera` VALUES (53,1077139,'1 Mai',NULL,25,106,'A','Str');
INSERT INTO `adrese_artera` VALUES (54,1076916,'Salcâmilor',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (55,1074814,'Zăvoiului',NULL,25,73,'A','Str');
INSERT INTO `adrese_artera` VALUES (56,1076898,'Sf. Gheorghe',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (57,999999,'Grădinilor',NULL,25,73,'A','Str');
INSERT INTO `adrese_artera` VALUES (58,1076889,'Ştefan cel Mare',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (59,1074755,'Salcâmilor',NULL,25,405,'A','Str');
INSERT INTO `adrese_artera` VALUES (60,1076872,'Teilor',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (61,1074761,'Ştefan cel Mare',NULL,25,405,'A','Str');
INSERT INTO `adrese_artera` VALUES (62,1076914,'Trandafirilor',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (63,1076890,'Ţarina',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (64,1074759,'Unirii',NULL,25,405,'A','Str');
INSERT INTO `adrese_artera` VALUES (65,1076911,'Viorelelor',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (66,1076918,'Zatonului',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (67,1091747,'Dodu',NULL,25,186,'A','Str');
INSERT INTO `adrese_artera` VALUES (68,35523,'Oituz',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (69,35524,'Oltului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (70,35525,'Pandurilor',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (71,35526,'Partizanii Păcii',NULL,25,353,'D','Str');
INSERT INTO `adrese_artera` VALUES (72,35564,'Parîngului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (73,35499,'General Grigorescu',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (74,35527,'Piersicului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (75,35528,'Pieţii',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (76,35571,'Plopilor',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (77,35566,'Poienii',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (78,35530,'Primăverii',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (79,35575,'Pătraşcu cel Bun',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (80,35529,'Pîrîului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (81,35532,'Republicii',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (82,35533,'Rovine',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (83,35534,'Rozelor',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (84,35536,'Salcîmului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (85,35478,'Simion Bărnuţiu',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (86,35537,'Siret',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (87,35562,'Siretului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (88,35538,'Smîrdan',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (89,35539,'Stadionului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (90,35541,'Strada Nouă',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (91,35542,'Slt. Stroescu',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (92,35543,'Teilor',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (93,35544,'Toamnei',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (94,35545,'Traian',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (95,35546,'Trandafirilor',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (96,35551,'Tudor Vladimirescu',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (97,35547,'Unirii',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (98,35476,'Vasile Alecsandri',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (99,35512,'Vasile Lupu',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (100,35548,'Viforului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (101,35549,'Viilor',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (102,35572,'Viorelelor',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (103,35550,'Vlad Ţepeş',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (104,35553,'Voloiacului',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (105,35554,'Zorilor',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (106,35576,'prof. Eufrosin Poteca',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (107,35567,'Şcolii',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (108,35540,'Ştefan cel Mare',NULL,25,353,'A','Str');
INSERT INTO `adrese_artera` VALUES (109,0,'Strehaia',NULL,25,353,'A','G');
INSERT INTO `adrese_artera` VALUES (110,1000195,'Fără Domiciliu în România Crds',NULL,25,353,'D','Str');
INSERT INTO `adrese_artera` VALUES (111,35153,'Gh. Doja','220244',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (112,35226,'Gh. Şincai',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (113,35346,'Gh. Ţiţeica','220026',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (114,35165,'Ghica','220174',25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (115,35284,'Ghioceilor',NULL,25,127,'D','Ale');
INSERT INTO `adrese_artera` VALUES (116,35278,'Gladiolelor',NULL,25,127,'D','Ale');
INSERT INTO `adrese_artera` VALUES (117,35315,'Godeanu','220238',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (118,35649,'Grigore Florescu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (119,35167,'Griviţei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (120,35276,'Gruii','220226',25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (121,35169,'Horaţiu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (122,35170,'Horia','220132',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (123,35265,'Iazului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (124,35171,'Independenţei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (125,35219,'Anghel Saligny',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (126,35644,'I. C. Brătianu',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (127,35145,'Ion Creangă','220174',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (128,35209,'Eliade','220132',25,127,'H','Pţa');
INSERT INTO `adrese_artera` VALUES (129,35128,'I. L. Caragiale','220019',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (130,35328,'Ion Minulescu','220027',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (131,35198,'Păun Pincio','220243',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (132,35140,'Iosif Clisici',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (133,35655,'Izlazului','220243',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (134,35645,'Iuliu Maniu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (135,35175,'Izvorului','220244',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (136,35309,'Jidoştiţei','220239',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (137,35178,'Lazăr','220132',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (138,35296,'Liliacului','220255',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (139,35212,'Liviu Rebreanu','220026',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (140,35180,'Lozan',NULL,25,127,'D','Pţa');
INSERT INTO `adrese_artera` VALUES (141,35277,'Lăcrămioarelor',NULL,25,127,'D','Ale');
INSERT INTO `adrese_artera` VALUES (142,35320,'Magnoliei','220076',25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (143,35350,'Mrs. Averescu',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (144,35658,'Orly',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (145,35112,'Marin St. Bădiţa',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (146,35174,'Marius Tipărescu',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (147,35183,'Marx Karl',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (148,35243,'Matei Vasilescu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (149,35299,'Merilor','220248',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (150,35185,'Micşunelei',NULL,25,127,'D','Pţa');
INSERT INTO `adrese_artera` VALUES (151,35659,'Micşunelei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (152,35184,'Mică',NULL,25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (153,35186,'Migdalului','220085',25,127,'H','Ale');
INSERT INTO `adrese_artera` VALUES (154,35118,'Mihai Bravu',NULL,25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (155,35340,'M. Guşiţă','220055',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (156,35317,'M. Viteazul',NULL,25,127,'H','Bld');
INSERT INTO `adrese_artera` VALUES (157,35285,'Mihai Viteazu',NULL,25,127,'D','Spl');
INSERT INTO `adrese_artera` VALUES (158,35160,'M. Eminescu',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (159,35177,'M. Kogălniceanu',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (160,35217,'M. Sadoveanu','220019',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (161,35187,'Mircea','220130',25,127,'H','Pţa');
INSERT INTO `adrese_artera` VALUES (162,35348,'Moldovei','220016',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (163,35650,'Mr. Corneliu Săvoiu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (164,35188,'Mureş','220016',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (165,35291,'Mălinului',NULL,25,127,'A','Fdt');
INSERT INTO `adrese_artera` VALUES (166,35321,'Mărgăritarului','220082',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (167,35345,'Mărăşeşti',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (168,35182,'Mărăşti',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (169,35279,'Narciselor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (170,35189,'Negoiu','220251',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (171,35114,'N. Bălcescu','220130',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (172,35646,'N. Iorga',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (173,35648,'Nicolae Titulescu',NULL,25,127,'D','Bld');
INSERT INTO `adrese_artera` VALUES (174,35133,'Nicu Cernăianu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (175,35266,'Nucilor',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (176,35280,'Nuferilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (177,35191,'Oituz',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (178,35193,'Oltului',NULL,25,127,'D','Fdt');
INSERT INTO `adrese_artera` VALUES (179,35192,'Oltului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (180,35267,'Padeş',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (181,35195,'Pandurului','220175',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (182,35197,'Partizanilor','220256',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (183,35196,'Parîng','220252',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (184,35338,'I. Şt. Paulian','220103',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (185,35307,'Perilor','220255',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (186,35166,'N. Grigorescu','220175',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (187,35303,'Pinilor','220253',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (188,35199,'Pionierilor','220243',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (189,35200,'Plevnei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (190,35190,'Numa Pompiliu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (191,35310,'Ponoare','220238',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (192,35201,'Popa Şapcă','220120',25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (193,35268,'Portului','220234',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (194,35202,'Porţile de Fier','220234',25,127,'A','Bld');
INSERT INTO `adrese_artera` VALUES (195,35205,'Prahova',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (196,35206,'Primăverii','220242',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (197,35281,'Privighetorilor',NULL,25,127,'H','Ale');
INSERT INTO `adrese_artera` VALUES (198,35326,'Grecescu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (199,35207,'Progresul',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (200,35208,'Proletari',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (201,35322,'Păcii',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (202,35125,'Calomfirescu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (203,35325,'Radu Negru','220234',25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (204,35210,'Rahovei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (205,35213,'Renaşterii','220248',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (206,35214,'Republicii',NULL,25,127,'D','Bld');
INSERT INTO `adrese_artera` VALUES (207,35311,'Retezat','220238',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (208,35332,'Rev. 16-22 dec.89',NULL,25,127,'H','Bld');
INSERT INTO `adrese_artera` VALUES (209,35305,'Rodnei','220252',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (210,35215,'Romană','220113',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (211,35211,'Răscoalei','220253',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (212,35308,'Salcâmului','220256',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (213,35220,'Schelei',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (214,35222,'Semenic',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (215,35288,'Semenic',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (216,35223,'Serelor',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (217,35331,'Petre Sergescu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (218,35216,'Serpentina Roşiori','220235',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (219,35335,'Petre Severin','220139',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (220,35224,'Severinului','220255',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (221,35661,'Sfîntul Nicodim',NULL,25,127,'A','Drm');
INSERT INTO `adrese_artera` VALUES (222,35225,'Simo Donca',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (223,35341,'Eugen Mareşi','220050',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (224,35228,'Smochinului','220113',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (225,35227,'Smîrdan',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (226,35229,'Soveja','220099',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (227,35231,'Stejarului',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (228,35109,'Stînjenelului','220244',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (229,35653,'Sulfinei','220022',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (230,35292,'Sulfinei',NULL,25,127,'D','Fdt');
INSERT INTO `adrese_artera` VALUES (231,35232,'Tabla Buţii','220252',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (232,35256,'Tarniţa',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (233,35306,'Teilor','220252',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (234,35344,'Th. Costescu','220131',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (235,35234,'Timişoarei',NULL,25,127,'A','Cal');
INSERT INTO `adrese_artera` VALUES (236,35302,'Tineretului','220254',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (237,35236,'Toamnei',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (238,35237,'Topolniţei',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (239,35238,'Traian',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (240,35283,'Trandafirilor','220041',25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (241,35239,'Transilvaniei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (242,35657,'Trăistarului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (243,35107,'Tudor Arghezi','220019',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (244,35246,'T. Vladimirescu',NULL,25,127,'H','Bld');
INSERT INTO `adrese_artera` VALUES (245,35235,'Tîrgu Jiului',NULL,25,127,'D','Cal');
INSERT INTO `adrese_artera` VALUES (246,35652,'Tîrgu Jiului','220226',25,127,'D','Cal');
INSERT INTO `adrese_artera` VALUES (247,35647,'Unirii',NULL,25,127,'A','Prc');
INSERT INTO `adrese_artera` VALUES (248,35240,'Unirii',NULL,25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (249,35241,'Unirii',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (250,35179,'V. I. Lenin',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (251,35104,'Vasile Alecsandri',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (252,35244,'Veterani',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (253,35339,'Victor Daimaca','220242',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (254,35137,'Vişinilor','220255',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (255,35247,'Vodiţa','220253',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (256,35248,'Vrancea','220252',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (257,35242,'Vărănic','220254',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (258,35245,'Vîrciorova','220251',25,127,'A','Bld');
INSERT INTO `adrese_artera` VALUES (259,35181,'W. Mărăcineanu',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (260,35304,'Zambilelor',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (261,35251,'Zăbrăuţului','220007',25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (262,35204,'Eufrosin Poteca','220171',25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (263,35221,'Piaţa Şcolii','220256',25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (264,35337,'Ştefan Odobleja',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (265,35230,'Ştefan cel Mare','220112',25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (266,35323,'Ştirbei Vodă','220113',25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (267,35173,'Întovărăşiţilor',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (268,35233,'Ţepeş Vodă','220005',25,127,'H','Pţa');
INSERT INTO `adrese_artera` VALUES (269,0,'Drobeta-Turnu Severin',NULL,25,127,'A','G');
INSERT INTO `adrese_artera` VALUES (270,35663,'Aluniş',NULL,25,127,'A','Bld');
INSERT INTO `adrese_artera` VALUES (271,35665,'Busuiocului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (272,35666,'Lalelelor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (273,35667,'Margaretelor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (274,35664,'Violetelor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (275,35668,'Artileriei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (276,35669,'Aviatorilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (277,35670,'Caisului',NULL,25,127,'A','Fdt');
INSERT INTO `adrese_artera` VALUES (278,35671,'Geniştilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (279,35672,'Marinei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (280,35673,'Nucului',NULL,25,127,'A','Fdt');
INSERT INTO `adrese_artera` VALUES (281,35675,'Piersicului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (282,35674,'Prunului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (283,35676,'Roşiori',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (284,35677,'Cireşoaia',NULL,25,127,'A','Prl');
INSERT INTO `adrese_artera` VALUES (285,35679,'C-tin Gherghina',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (286,35678,'Tîrgu Jiului',NULL,25,127,'A','Cal');
INSERT INTO `adrese_artera` VALUES (287,7041,'Dr. Victor Gomoiu',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (288,7042,'Liniştii',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (289,18684,'Dr. Vasile Gionea',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (290,999937,'Fără Domiciliu în România Crds',NULL,25,127,'D','Str');
INSERT INTO `adrese_artera` VALUES (291,56157,'Anemonei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (292,56167,'Armoniei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (293,56154,'Baladei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (294,56163,'Bradului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (295,56169,'Colinelor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (296,56159,'Daliei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (297,56165,'Frasinului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (298,56161,'Freziei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (299,56166,'Gorunului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (300,56156,'Iasomiei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (301,56168,'Livezilor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (302,56160,'Lotusului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (303,56158,'Macului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (304,56162,'Mălinului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (305,56155,'Mioriţei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (306,56170,'Morii',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (307,56164,'Paltinilor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (308,56153,'Rapsodiei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (310,999999,'Cerna II',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (311,999999,'Privighetorilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (312,999999,'Decebal',NULL,25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (313,999999,'Dunarii',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (314,106679,'Arinului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (315,106680,'Cetinei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (316,106677,'Crăiţelor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (317,106681,'Crângului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (318,106676,'Gemina',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (319,106678,'Panselelor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (320,107609,'Afinului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (321,107596,'Albăstrelelor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (322,107603,'Alecu Russo',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (323,107607,'Aleman',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (324,107595,'Balcani',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (325,107622,'Biruinţei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (326,107597,'Brânduşelor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (327,107604,'C. A. Rosetti',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (328,107611,'Cătinei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (329,107599,'Genţianei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (330,107606,'Geo Saizescu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (331,107616,'Gloriei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (332,107615,'Haiducului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (333,107602,'Hortensiei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (334,107601,'Irisului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (335,107618,'Luptătorilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (336,107612,'Măslinului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (337,107608,'Murelor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (338,107620,'Navigatorilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (339,107598,'Orhideei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (340,107600,'Petuniei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (341,107623,'Rarău',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (342,107614,'Romaniţei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (343,107610,'Socului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (344,107617,'Speranţei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (345,107621,'Stegarului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (346,107613,'Toporaşilor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (347,107605,'Villacrosse',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (348,107619,'Vitejilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (349,1014529,'Amurgului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (350,1014535,'Antenei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (351,1014536,'Arieş',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (352,1014533,'Cibinului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (353,1014528,'Crăiţelor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (354,1014532,'Lotrului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (355,1014530,'Mesteacănului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (356,1014527,'Rozelor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (357,1014525,'Rozmarinului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (358,1014526,'Salviei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (359,1014524,'Sânzienelor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (360,1014538,'Siret',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (361,1014539,'Sohodol',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (362,1014537,'Someş',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (363,1014531,'Stejarului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (364,1014541,'Sumitomo',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (365,1014540,'Trotuş',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (366,1014534,'Vântului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (367,1015463,'Brazilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (368,1015462,'Grănicerilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (369,1015464,'Mănăstirii',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (370,1015461,'Pescarilor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (371,1024223,'Curcubeului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (372,999999,'Constructorului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (373,999999,'Mihai Viteazu',NULL,25,127,'A','Bld');
INSERT INTO `adrese_artera` VALUES (374,1031656,'Dumbravei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (375,1031655,'Făgetului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (376,1031657,'Luminişului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (377,1031658,'Măgura',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (378,1034854,'Avrig',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (379,1034852,'Bicaz',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (380,1034863,'Bistra',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (381,1034860,'Bucura',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (382,1034851,'Călineşti',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (383,1034855,'Firiza',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (384,1034858,'Iezer',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (385,1034853,'Nistru',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (386,1034856,'Sadova',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (387,1034859,'Săcele',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (388,1034862,'Topliţa',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (389,1034857,'Vaduri',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (390,1034861,'Văliug',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (391,1036285,'Zorelelor',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (392,1041101,'Crivina',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (393,1041098,'Ecaterina Teodoroiu',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (394,1041099,'Gen. brig. Adrian Soci',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (395,1041100,'Harului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (396,1041102,'Industriei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (397,1041097,'Lt. Boară Dorel',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (398,1056595,'Amforei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (399,1056594,'Soarelui',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (400,1058696,'Cladovei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (401,1058695,'Ilie Balaci',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (402,1058697,'Mandarinilor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (403,1058698,'Plaiului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (404,1060886,'Ineu',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (405,1060888,'Lavandei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (406,1060885,'Pietrosu',NULL,25,127,'H','Ale');
INSERT INTO `adrese_artera` VALUES (407,1060887,'Tihuţa',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (408,1065648,'Buzeşti',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (409,1065646,'Junilor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (410,1065649,'Pajiştei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (411,1065647,'Pintea',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (412,1065644,'Piscului',NULL,25,127,'H','Str');
INSERT INTO `adrese_artera` VALUES (413,1065645,'Spicului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (414,999999,'Școlii',NULL,25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (415,1076696,'Balastierei',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (416,1076705,'Beiuş',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (417,1076700,'Belvedere',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (418,1076699,'Codrului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (419,1076703,'Henri Coandă',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (420,1076698,'Movilei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (421,1076697,'Slănic',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (422,1076702,'Spălătoriei',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (423,1076704,'Şureanu',NULL,25,127,'H','Ale');
INSERT INTO `adrese_artera` VALUES (424,1076701,'Teiuş',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (425,1080600,'Sat Bahna',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (426,1080598,'Timişoarei Gura Văii',NULL,25,127,'A','Cal');
INSERT INTO `adrese_artera` VALUES (427,1080599,'Timişoarei Schela Cladovei',NULL,25,127,'A','Cal');
INSERT INTO `adrese_artera` VALUES (428,999999,'Topolniții',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (429,1087097,'Aleea Feroviarilor',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (430,1087091,'Clăbucet',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (431,1087096,'Colibaşi',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (432,1087089,'Crişului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (433,1087095,'Cruşinului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (435,1087088,'Pinului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (436,1087094,'Plopului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (437,1087092,'Aleea Liniştii',NULL,25,127,'H','Prl');
INSERT INTO `adrese_artera` VALUES (438,1087093,'Prelungirea Harului',NULL,25,127,'A','Str');
INSERT INTO `adrese_artera` VALUES (439,1087812,'Castelului de Apă',NULL,25,127,'A','Pţa');
INSERT INTO `adrese_artera` VALUES (440,1087811,'Gării',NULL,25,127,'A','Bld');
INSERT INTO `adrese_artera` VALUES (441,1091601,'Gutuiului',NULL,25,127,'A','Ale');
INSERT INTO `adrese_artera` VALUES (442,1091600,'Ulmului',NULL,25,127,'A','Ale');
/*!40000 ALTER TABLE `adrese_artera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_arteraistoric`
--

DROP TABLE IF EXISTS `adrese_arteraistoric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_arteraistoric` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `denumire` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `data` date NOT NULL,
  `artera_cod_id` int NOT NULL,
  `loc_jud_cod_id` int NOT NULL,
  `loc_cod_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adrese_arteraistoric_artera_cod_id_5d7c5cb0_fk_adrese_artera_cod` (`artera_cod_id`),
  KEY `adrese_arteraistoric_loc_jud_cod_id_37f234df_fk_adrese_judet_cod` (`loc_jud_cod_id`),
  KEY `adrese_arteraistoric_loc_cod_id_d04e7c57_fk_adrese_lo` (`loc_cod_id`),
  CONSTRAINT `adrese_arteraistoric_artera_cod_id_5d7c5cb0_fk_adrese_artera_cod` FOREIGN KEY (`artera_cod_id`) REFERENCES `adrese_artera` (`cod`),
  CONSTRAINT `adrese_arteraistoric_loc_cod_id_d04e7c57_fk_adrese_lo` FOREIGN KEY (`loc_cod_id`) REFERENCES `adrese_localitate` (`cod`),
  CONSTRAINT `adrese_arteraistoric_loc_jud_cod_id_37f234df_fk_adrese_judet_cod` FOREIGN KEY (`loc_jud_cod_id`) REFERENCES `adrese_judet` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_arteraistoric`
--

LOCK TABLES `adrese_arteraistoric` WRITE;
/*!40000 ALTER TABLE `adrese_arteraistoric` DISABLE KEYS */;
/*!40000 ALTER TABLE `adrese_arteraistoric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_arterarelatie`
--

DROP TABLE IF EXISTS `adrese_arterarelatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_arterarelatie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `artera_cod_nou_id` int NOT NULL,
  `artera_cod_vechi_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adrese_arterarelatie_artera_cod_nou_id_b305a6e4_fk_adrese_ar` (`artera_cod_nou_id`),
  KEY `adrese_arterarelatie_artera_cod_vechi_id_5fc115e8_fk_adrese_ar` (`artera_cod_vechi_id`),
  CONSTRAINT `adrese_arterarelatie_artera_cod_nou_id_b305a6e4_fk_adrese_ar` FOREIGN KEY (`artera_cod_nou_id`) REFERENCES `adrese_artera` (`cod`),
  CONSTRAINT `adrese_arterarelatie_artera_cod_vechi_id_5fc115e8_fk_adrese_ar` FOREIGN KEY (`artera_cod_vechi_id`) REFERENCES `adrese_artera` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_arterarelatie`
--

LOCK TABLES `adrese_arterarelatie` WRITE;
/*!40000 ALTER TABLE `adrese_arterarelatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `adrese_arterarelatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_codpostalaltestrazi`
--

DROP TABLE IF EXISTS `adrese_codpostalaltestrazi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_codpostalaltestrazi` (
  `cod` int NOT NULL,
  `bloc` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cod_postal` varchar(20) COLLATE utf8mb4_romanian_ci NOT NULL,
  `loc_cod_id` int NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `adrese_codpostalalte_loc_cod_id_3e2fc841_fk_adrese_lo` (`loc_cod_id`),
  CONSTRAINT `adrese_codpostalalte_loc_cod_id_3e2fc841_fk_adrese_lo` FOREIGN KEY (`loc_cod_id`) REFERENCES `adrese_localitate` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_codpostalaltestrazi`
--

LOCK TABLES `adrese_codpostalaltestrazi` WRITE;
/*!40000 ALTER TABLE `adrese_codpostalaltestrazi` DISABLE KEYS */;
INSERT INTO `adrese_codpostalaltestrazi` VALUES (1,'BL.S2','220167',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (16,'BL.IV1','220206',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (23,'77B','220139',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (25,'30A','220037',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (39,'16A','220111',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (41,'45A','220005',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (42,'BL.c2','220014',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (49,'BL.V5A','220084',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (53,'35B','220007',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (55,'BL.I','220223',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (58,'BL.F12','220127',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (59,'BL.S14A','220084',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (68,'BL.P9','220054',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (70,'BL.C6','220034',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (71,'BL.6','220225',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (74,'10A','220185',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (76,'BL.XF10','220083',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (78,'BL.P3','220109',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (80,'43A','220099',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (81,'BL.C2','220131',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (82,'BL.B8','220160',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (87,'BL.TN','220191',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (92,'BL.6','220176',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (97,'BL.A3','220157',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (108,'26A','220155',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (109,'BL.2','220213',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (110,'BL.VT8','220022',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (112,'BL.V1','220093',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (118,'BL.A8','220197',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (121,'BL.F18','220116',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (124,'BL.KA2','220190',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (125,'BL.A1','220216',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (126,'9A','220056',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (134,'BL.21','220216',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (143,'BL.P3','220135',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (144,'BL.G3','220035',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (148,'65B','220171',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (156,'16A','220068',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (159,'BL.XF21','220082',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (162,'BL.4','220229',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (163,'BL.A2','220157',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (168,'3A','220197',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (169,'BL.D2','220089',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (174,'31B','220149',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (176,'BL.M2','220043',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (177,'BL.2','220185',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (197,'BL.T3','220051',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (201,'BL.XE4','220075',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (202,'156B','220150',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (208,'BL.P5','220054',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (217,'BL.H','220224',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (219,'BL.VT1','220023',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (225,'BL.T10B','220135',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (226,'45A','220006',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (235,'BL.M1','220247',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (238,'BL.4','220220',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (239,'29A','220100',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (241,'BL.3','220227',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (244,'BL.TS2','220207',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (249,'BL.C13A','220133',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (251,'BL.2','220117',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (252,'BL.G5','220215',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (259,'BL.T7','220061',127);
INSERT INTO `adrese_codpostalaltestrazi` VALUES (264,'BL.E9','220154',127);
/*!40000 ALTER TABLE `adrese_codpostalaltestrazi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_codpostalnumarstrazi`
--

DROP TABLE IF EXISTS `adrese_codpostalnumarstrazi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_codpostalnumarstrazi` (
  `cod` int NOT NULL,
  `numar_start` int NOT NULL,
  `numar_sfarsit` int NOT NULL,
  `paritate` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `cod_postal` varchar(20) COLLATE utf8mb4_romanian_ci NOT NULL,
  `loc_cod_id` int NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `adrese_codpostalnuma_loc_cod_id_27cdce5b_fk_adrese_lo` (`loc_cod_id`),
  CONSTRAINT `adrese_codpostalnuma_loc_cod_id_27cdce5b_fk_adrese_lo` FOREIGN KEY (`loc_cod_id`) REFERENCES `adrese_localitate` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_codpostalnumarstrazi`
--

LOCK TABLES `adrese_codpostalnumarstrazi` WRITE;
/*!40000 ALTER TABLE `adrese_codpostalnumarstrazi` DISABLE KEYS */;
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (1,45,45,'I','220167',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (12,278,278,'P','220208',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (16,76,76,'P','220214',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (23,109,109,'I','220174',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (25,2,14,'P','220125',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (26,36,36,'P','220105',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (39,4,14,'P','220234',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (41,48,48,'P','220016',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (42,2,6,'P','220015',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (49,34,46,'P','220127',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (53,38,38,'P','220016',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (55,8,8,'P','220224',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (58,211,223,'I','220164',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (59,4,4,'P','220083',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (62,32,32,'P','220105',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (65,10,10,'P','220208',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (67,27,27,'I','220026',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (68,6,6,'P','220054',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (70,10,34,'P','220125',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (71,40,40,'P','220198',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (74,33,33,'I','220211',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (76,5,5,'I','220083',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (78,72,72,'P','220160',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (80,22,22,'P','220117',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (81,2,8,'P','220131',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (82,78,78,'P','220227',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (83,30,30,'P','220027',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (85,36,36,'P','220140',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (87,96,96,'P','220212',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (92,2,6,'P','220176',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (97,50,56,'P','220189',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (108,31,31,'I','220156',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (109,74,100,'P','220213',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (110,72,72,'P','220085',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (112,37,37,'I','220027',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (118,8,8,'P','220193',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (119,2,22,'P','220037',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (121,2,22,'P','220104',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (124,34,34,'P','220228',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (125,114,126,'P','220216',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (126,9,9,'I','220057',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (134,32,32,'P','220216',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (143,11,11,'I','220183',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (144,16,32,'P','220232',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (148,24,52,'P','220171',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (152,1,1,'I','220148',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (154,2,6,'P','220100',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (156,57,65,'I','220093',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (158,2,6,'P','220146',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (159,1,3,'I','220085',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (162,1,1,'I','220229',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (163,2,2,'P','220182',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (167,46,46,'P','220027',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (168,2,2,'P','220201',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (169,1,1,'I','220089',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (174,83,83,'I','220185',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (176,5,5,'I','220043',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (177,12,12,'P','220185',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (179,4,4,'P','220027',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (189,20,20,'P','220233',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (190,26,26,'P','220138',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (197,2,2,'P','220051',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (198,2,20,'P','220097',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (201,4,4,'P','220079',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (202,242,242,'P','220208',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (204,2,2,'P','220146',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (208,11,17,'I','220040',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (215,32,32,'P','220105',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (217,5,5,'I','220221',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (225,47,47,'I','220232',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (226,42,42,'P','220016',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (231,61,77,'I','220037',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (235,1,177,'I','220242',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (238,6,6,'P','220220',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (239,289,289,'I','220183',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (241,6,12,'P','220229',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (244,221,227,'I','220211',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (248,2,6,'P','220140',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (249,80,80,'P','220133',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (251,24,24,'P','220117',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (252,40,48,'P','220215',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (259,9,9,'I','220060',127);
INSERT INTO `adrese_codpostalnumarstrazi` VALUES (264,2,2,'P','220154',127);
/*!40000 ALTER TABLE `adrese_codpostalnumarstrazi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_judet`
--

DROP TABLE IF EXISTS `adrese_judet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_judet` (
  `cod` int NOT NULL,
  `denumire` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `ordine` int NOT NULL,
  `auto` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_judet`
--

LOCK TABLES `adrese_judet` WRITE;
/*!40000 ALTER TABLE `adrese_judet` DISABLE KEYS */;
INSERT INTO `adrese_judet` VALUES (1,'ALBA',1,'AB');
INSERT INTO `adrese_judet` VALUES (2,'ARAD',2,'AR');
INSERT INTO `adrese_judet` VALUES (3,'ARGEŞ',3,'AG');
INSERT INTO `adrese_judet` VALUES (4,'BACĂU',4,'BC');
INSERT INTO `adrese_judet` VALUES (5,'BIHOR',5,'BH');
INSERT INTO `adrese_judet` VALUES (6,'BISTRIŢA-NĂSĂUD',6,'BN');
INSERT INTO `adrese_judet` VALUES (7,'BOTOŞANI',7,'BT');
INSERT INTO `adrese_judet` VALUES (8,'BRAŞOV',8,'BV');
INSERT INTO `adrese_judet` VALUES (9,'BRĂILA',9,'BR');
INSERT INTO `adrese_judet` VALUES (10,'BUZĂU',10,'BZ');
INSERT INTO `adrese_judet` VALUES (11,'CARAŞ-SEVERIN',11,'CS');
INSERT INTO `adrese_judet` VALUES (12,'CLUJ',13,'CJ');
INSERT INTO `adrese_judet` VALUES (13,'CONSTANŢA',14,'CT');
INSERT INTO `adrese_judet` VALUES (14,'COVASNA',15,'CV');
INSERT INTO `adrese_judet` VALUES (15,'DÂMBOVIŢA',16,'DB');
INSERT INTO `adrese_judet` VALUES (16,'DOLJ',17,'DJ');
INSERT INTO `adrese_judet` VALUES (17,'GALAŢI',18,'GL');
INSERT INTO `adrese_judet` VALUES (18,'GORJ',20,'GJ');
INSERT INTO `adrese_judet` VALUES (19,'HARGHITA',21,'HR');
INSERT INTO `adrese_judet` VALUES (20,'HUNEDOARA',22,'HD');
INSERT INTO `adrese_judet` VALUES (21,'IALOMIŢA',23,'IL');
INSERT INTO `adrese_judet` VALUES (22,'IAŞI',24,'IS');
INSERT INTO `adrese_judet` VALUES (23,'ILFOV',25,'IF');
INSERT INTO `adrese_judet` VALUES (24,'MARAMUREŞ',26,'MM');
INSERT INTO `adrese_judet` VALUES (25,'MEHEDINŢI',27,'MH');
INSERT INTO `adrese_judet` VALUES (26,'MUREŞ',28,'MS');
INSERT INTO `adrese_judet` VALUES (27,'NEAMŢ',29,'NT');
INSERT INTO `adrese_judet` VALUES (28,'OLT',30,'OT');
INSERT INTO `adrese_judet` VALUES (29,'PRAHOVA',31,'PH');
INSERT INTO `adrese_judet` VALUES (30,'SATU MARE',32,'SM');
INSERT INTO `adrese_judet` VALUES (31,'SĂLAJ',33,'SJ');
INSERT INTO `adrese_judet` VALUES (32,'SIBIU',34,'SB');
INSERT INTO `adrese_judet` VALUES (33,'SUCEAVA',35,'SV');
INSERT INTO `adrese_judet` VALUES (34,'TELEORMAN',36,'TR');
INSERT INTO `adrese_judet` VALUES (35,'TIMIŞ',37,'TM');
INSERT INTO `adrese_judet` VALUES (36,'TULCEA',38,'TL');
INSERT INTO `adrese_judet` VALUES (37,'VASLUI',39,'VS');
INSERT INTO `adrese_judet` VALUES (38,'VÂLCEA',40,'VL');
INSERT INTO `adrese_judet` VALUES (39,'VRANCEA',41,'VN');
INSERT INTO `adrese_judet` VALUES (40,'MUNICIPIUL BUCUREŞTI',42,'B');
INSERT INTO `adrese_judet` VALUES (51,'CĂLĂRAŞI',12,'CL');
INSERT INTO `adrese_judet` VALUES (52,'GIURGIU',19,'GR');
/*!40000 ALTER TABLE `adrese_judet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_localitate`
--

DROP TABLE IF EXISTS `adrese_localitate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_localitate` (
  `cod` int NOT NULL,
  `cod_politie` int DEFAULT NULL,
  `denumire` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `den_scurta` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cod_postal` varchar(20) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `loc_cod` int DEFAULT NULL,
  `are_primarie` tinyint(1) NOT NULL,
  `cod_fiscal_primarie` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cod_politie_tata` int DEFAULT NULL,
  `sar_cod_mf` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `judet_id` int NOT NULL,
  `loc_jud_cod_id` int DEFAULT NULL,
  `tip_localitate_id` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  PRIMARY KEY (`cod`),
  KEY `adrese_localitate_judet_id_b91e0010_fk_adrese_judet_cod` (`judet_id`),
  KEY `adrese_localitate_loc_jud_cod_id_0cbff15f_fk_adrese_lo` (`loc_jud_cod_id`),
  KEY `adrese_localitate_tip_localitate_id_299409ba_fk_adrese_ti` (`tip_localitate_id`),
  CONSTRAINT `adrese_localitate_judet_id_b91e0010_fk_adrese_judet_cod` FOREIGN KEY (`judet_id`) REFERENCES `adrese_judet` (`cod`),
  CONSTRAINT `adrese_localitate_loc_jud_cod_id_0cbff15f_fk_adrese_lo` FOREIGN KEY (`loc_jud_cod_id`) REFERENCES `adrese_localitate` (`cod`),
  CONSTRAINT `adrese_localitate_tip_localitate_id_299409ba_fk_adrese_ti` FOREIGN KEY (`tip_localitate_id`) REFERENCES `adrese_tiplocalitate` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_localitate`
--

LOCK TABLES `adrese_localitate` WRITE;
/*!40000 ALTER TABLE `adrese_localitate` DISABLE KEYS */;
INSERT INTO `adrese_localitate` VALUES (1,11273,'23 August',NULL,'227316',239,0,NULL,11266,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (2,11059,'Adunaţii Teiului',NULL,'227471',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (3,11160,'Albuleşti',NULL,'227176',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (4,11394,'Almăjel',NULL,'227501',390,0,NULL,11392,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (5,11214,'Alunişul',NULL,'227251',196,0,NULL,11212,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (6,11102,'Argineşti',NULL,'227091',53,0,NULL,11100,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (7,11325,'Arvăteşti',NULL,'227391',303,0,NULL,11323,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (8,11146,'Aurora',NULL,'227151',105,0,NULL,11144,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (9,11235,'Bahna',NULL,'227281',200,0,NULL,11233,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (10,11292,'Baia Nouă',NULL,'227171',131,0,NULL,11290,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (11,10993,'Baia de Aramă',NULL,'225100',NULL,1,'4675450',NULL,'A',25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (12,11029,'Bala',NULL,'227010',NULL,1,'4426468',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (13,11030,'Bala',NULL,'227010',12,0,NULL,11029,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (14,11031,'Bala de Sus',NULL,'227011',12,0,NULL,11029,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (15,11326,'Balota',NULL,'227392',303,0,NULL,11323,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (16,11248,'Baloteşti',NULL,'227296',212,0,NULL,11246,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (17,11046,'Balta',NULL,'227030',18,0,NULL,11045,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (18,11045,'Balta',NULL,'227030',NULL,1,'7536902',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (19,11188,'Balta Verde',NULL,'227221',168,0,NULL,11186,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (20,11150,'Batoţi',NULL,'227161',124,0,NULL,11148,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (21,11282,'Biban',NULL,'227341',311,0,NULL,11280,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (22,11151,'Bistreţu',NULL,'227162',124,0,NULL,11148,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (23,11209,'Bistriţa',NULL,'227246',192,0,NULL,11207,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (24,11194,'Blidaru',NULL,'227227',173,0,NULL,11191,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (25,11268,'Bobaiţa',NULL,'227318',239,0,NULL,11266,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (26,11375,'Boceni',NULL,'227472',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (27,11216,'Borogea',NULL,'227253',196,0,NULL,11212,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (28,11032,'Brateşul',NULL,'227012',12,0,NULL,11029,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (29,10994,'Bratilovu',NULL,'225101',11,0,NULL,10993,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (30,11033,'Brativoeşti',NULL,'227013',12,0,NULL,11029,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (31,10995,'Brebina',NULL,'225102',11,0,NULL,10993,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (32,11354,'Breznicioara',NULL,'227432',357,0,NULL,11351,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (33,11075,'Brezniţa-Motru',NULL,'227060',34,0,NULL,11074,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (34,11074,'Brezniţa-Motru',NULL,'227060',NULL,1,'11383661',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (35,11083,'Brezniţa-Ocol',NULL,'227070',36,0,NULL,11082,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (36,11082,'Brezniţa-Ocol',NULL,'227070',NULL,1,'4337352',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (37,11129,'Breţa',NULL,'227126',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (38,11088,'Broşteni',NULL,'227075',39,0,NULL,11087,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (39,11087,'Broşteni',NULL,'227075',NULL,1,'8845957',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (40,11060,'Brâgleasa',NULL,'227177',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (41,11303,'Brânzeni',NULL,'227363',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (42,11386,'Braniştea',NULL,'227491',437,0,NULL,11406,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (43,11025,'Bucura',NULL,'225401',398,0,NULL,11024,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (44,11228,'Budăneşti',NULL,'227271',203,0,NULL,11226,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (45,11304,'Buicani',NULL,'227364',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (46,11103,'Buiceşti',NULL,'227092',53,0,NULL,11100,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (47,11124,'Bunoaica',NULL,'227121',80,0,NULL,11122,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (48,11095,'Burila Mare',NULL,'227085',49,0,NULL,11094,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (49,11094,'Burila Mare',NULL,'227085',NULL,1,'4675469',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (50,11189,'Burila Mică',NULL,'227222',168,0,NULL,11186,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (51,11239,'Buseşti',NULL,'227286',206,0,NULL,11237,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (52,11101,'Butoieşti',NULL,'227090',53,0,NULL,11100,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (53,11100,'Butoieşti',NULL,'227090',NULL,1,'8033356',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (54,11058,'Bâcleş',NULL,'227045',55,0,NULL,11057,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (55,11057,'Bâcleş',NULL,'227045',NULL,1,'5819414',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (56,11193,'Bâltanele',NULL,'227226',173,0,NULL,11191,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (57,11327,'Bâltanele',NULL,'227393',303,0,NULL,11323,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (58,11069,'Bâlvăneşti',NULL,'227055',59,0,NULL,11068,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (59,11068,'Bâlvăneşti',NULL,'227055',NULL,1,'4484426',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (60,11070,'Bâlvăneştii de Jos',NULL,'227056',59,0,NULL,11068,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (61,11272,'Bârda',NULL,'227317',239,0,NULL,11266,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (62,11353,'Bârlogeni',NULL,'227431',357,0,NULL,11351,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (63,11302,'Bârâiacu',NULL,'227362',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (64,11215,'Bădiţeşti',NULL,'227252',196,0,NULL,11212,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (65,11301,'Băluţa',NULL,'227361',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (66,11054,'Bălăciţa',NULL,'227040',67,0,NULL,11053,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (67,11053,'Bălăciţa',NULL,'227040',NULL,1,'6304246',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (68,11341,'Cearângu',NULL,'227411',305,0,NULL,11339,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (69,11217,'Celnata',NULL,'227254',196,0,NULL,11212,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (70,11305,'Ceptureni',NULL,'227366',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (71,11240,'Cerna-Vârf',NULL,'227287',206,0,NULL,11237,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (72,11130,'Cernaia',NULL,'227127',88,0,NULL,11127,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (73,10984,'Cerneţi',NULL,'227446',406,0,NULL,10982,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (74,11328,'Cerveniţa',NULL,'227394',303,0,NULL,11323,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (75,11355,'Cerânganul',NULL,'227433',357,0,NULL,11351,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (76,11013,'Ciochiuţa',NULL,'225301',353,0,NULL,11012,'A',25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (77,11256,'Cioroboreni',NULL,'227306',217,0,NULL,11254,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (78,11365,'Ciovârnăşani',NULL,'227457',411,0,NULL,11362,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (79,11123,'Cireşu',NULL,'227120',80,0,NULL,11122,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (80,11122,'Cireşu',NULL,'227120',NULL,1,'4484469',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (81,11047,'Coada Cornetului',NULL,'227031',18,0,NULL,11045,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (82,11366,'Cocorova',NULL,'227458',411,0,NULL,11362,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (83,11376,'Colareţ',NULL,'227473',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (84,11269,'Colibaşi',NULL,'227319',239,0,NULL,11266,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (85,11014,'Comanda',NULL,'225302',353,0,NULL,11012,'A',25,NULL,'Loc');
INSERT INTO `adrese_localitate` VALUES (86,11036,'Comăneşti',NULL,'227017',12,0,NULL,11029,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (87,11170,'Copăcioasa',NULL,'227201',154,0,NULL,11168,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (88,11127,'Corcova',NULL,'227125',NULL,1,'4818631',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (89,11128,'Corcova',NULL,'227125',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (90,11131,'Cordun',NULL,'227128',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (91,11141,'Corlăţel',NULL,'227145',NULL,1,'8033364',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (92,11142,'Corlăţel',NULL,'227145',91,0,NULL,11141,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (93,11061,'Corzu',NULL,'227046',55,0,NULL,11057,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (94,11076,'Cosovăţ',NULL,'227061',34,0,NULL,11074,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (95,11048,'Costeşti',NULL,'227032',18,0,NULL,11045,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (96,11399,'Cotoroaia',NULL,'227506',394,0,NULL,11397,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (97,11322,'Cozia',NULL,'227386',298,0,NULL,11320,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (98,11229,'Cracu Lung',NULL,'227272',203,0,NULL,11226,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (99,11306,'Cracu Muntelui',NULL,'227367',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (100,11037,'Crainici',NULL,'227018',12,0,NULL,11029,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (101,11377,'Cremenea',NULL,'227474',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (102,11096,'Crivina',NULL,'227086',49,0,NULL,11094,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (103,11132,'Croica',NULL,'227129',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (104,11367,'Crăgueşti',NULL,'227459',411,0,NULL,11362,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (105,11144,'Cujmir',NULL,'227150',NULL,1,'4426476',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (106,11145,'Cujmir',NULL,'227150',105,0,NULL,11144,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (107,11147,'Cujmiru Mic',NULL,'227152',105,0,NULL,11144,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (108,11034,'Câmpu Mare',NULL,'227014',12,0,NULL,11029,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (109,11200,'Cârceni',NULL,'227236',175,0,NULL,11198,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (110,11210,'Cârjei',NULL,'227247',192,0,NULL,11207,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (111,11035,'Cârşu',NULL,'227016',12,0,NULL,11029,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (112,11071,'Călineştii de Jos',NULL,'227057',59,0,NULL,11068,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (113,11072,'Călineştii de Sus',NULL,'227058',59,0,NULL,11068,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (114,11089,'Căpăţâneşti',NULL,'227076',39,0,NULL,11087,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (115,11364,'Cărămidaru',NULL,'227456',411,0,NULL,11362,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (116,11110,'Căzăneşti',NULL,'227100',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (117,11109,'Căzăneşti',NULL,'227100',NULL,1,'4426450',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (118,10996,'Dealu Mare',NULL,'225103',11,0,NULL,10993,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (119,10985,'Dedoviţa Nouă',NULL,'227447',406,0,NULL,10982,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (120,10986,'Dedoviţa Veche',NULL,'227448',406,0,NULL,10982,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (121,11077,'Deleni',NULL,'227062',34,0,NULL,11074,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (122,11307,'Delureni',NULL,'227368',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (123,11149,'Devesel',NULL,'227160',124,0,NULL,11148,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (124,11148,'Devesel',NULL,'227160',NULL,1,'7643534',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (125,11055,'Dobra',NULL,'227041',67,0,NULL,11053,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (126,11342,'Drincea',NULL,'227412',305,0,NULL,11339,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (127,10978,'Drobeta-Turnu Severin',NULL,NULL,1111,1,'4426581',NULL,'A',25,NULL,'MRJ');
INSERT INTO `adrese_localitate` VALUES (128,11241,'Drăgheşti',NULL,'227288',206,0,NULL,11237,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (129,11329,'Drăgoteşti',NULL,'227396',303,0,NULL,11323,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (130,11293,'Dubova',NULL,'227170',131,0,NULL,11290,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (131,11290,'Dubova',NULL,'227170',NULL,1,'4337336',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (132,10987,'Dudaşu',NULL,'227449',406,0,NULL,10982,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (133,10980,'Dudaşu Schelei',NULL,'220001',127,0,NULL,10978,'A',25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (134,11158,'Dumbrava',NULL,'227175',NULL,1,'7536937',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (135,11159,'Dumbrava de Jos',NULL,'227178',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (136,11161,'Dumbrava de Mijloc',NULL,'227179',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (137,11162,'Dumbrava de Sus',NULL,'227181',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (138,11218,'Dumbrăviţa',NULL,'227256',196,0,NULL,11212,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (139,11152,'Dunărea Mică',NULL,'227163',124,0,NULL,11148,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (140,11230,'Dâlbociţa',NULL,'227273',203,0,NULL,11226,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (141,11038,'Dâlma',NULL,'227019',12,0,NULL,11029,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (142,11156,'Dârvari',NULL,'227155',143,0,NULL,11155,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (143,11155,'Dârvari',NULL,'227155',NULL,1,'4550970',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (144,11257,'Dănceu',NULL,'227307',217,0,NULL,11254,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (145,11294,'Eibenthal',NULL,'227172',131,0,NULL,11290,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (146,11111,'Ercea',NULL,'227101',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (147,10988,'Ergheviţa',NULL,'227451',406,0,NULL,10982,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (148,11225,'Eşelniţa',NULL,'227195',149,0,NULL,11224,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (149,11224,'Eşelniţa',NULL,'227195',NULL,1,'4337301',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (150,11378,'Faţa Cremenii',NULL,'227476',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (151,11356,'Faţa Motrului',NULL,'227434',357,0,NULL,11351,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (152,11231,'Firizu',NULL,'227274',203,0,NULL,11226,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (153,11169,'Floreşti',NULL,'227200',154,0,NULL,11168,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (154,11168,'Floreşti',NULL,'227200',NULL,1,'7536945',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (155,11330,'Fântâna Domneasca',NULL,'227397',303,0,NULL,11323,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (156,11317,'Fântânile Negre',NULL,'227381',292,0,NULL,11315,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (157,11078,'Făuroaia',NULL,'227063',34,0,NULL,11074,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (158,11157,'Gemeni',NULL,'227156',143,0,NULL,11155,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (159,11331,'Ghelmegioaia',NULL,'227399',303,0,NULL,11323,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (160,11309,'Gheorgheşti',NULL,'227371',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (161,11062,'Giura',NULL,'227047',55,0,NULL,11057,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (162,11242,'Giurgiani',NULL,'227289',206,0,NULL,11237,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (163,11387,'Goanţa',NULL,'227492',437,0,NULL,11406,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (164,11004,'Godeanu',NULL,'227331',263,0,NULL,11002,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (165,11182,'Godeanu',NULL,'227215',166,0,NULL,11181,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (166,11181,'Godeanu',NULL,'227215',NULL,1,'4484418',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (167,11187,'Gogoşu',NULL,'227220',168,0,NULL,11186,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (168,11186,'Gogoşu',NULL,'227220',NULL,1,'6304238',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (169,11163,'Golineasa',NULL,'227182',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (170,11297,'Gornenţi',NULL,'227356',284,0,NULL,11295,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (171,11049,'Gornoviţa',NULL,'227033',18,0,NULL,11045,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (172,11113,'Govodarva',NULL,'227103',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (173,11191,'Greci',NULL,'227225',NULL,1,'7536953',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (174,11192,'Greci',NULL,'227225',173,0,NULL,11191,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (175,11198,'Grozeşti',NULL,'227235',NULL,1,'7579784',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (176,11199,'Grozeşti',NULL,'227235',175,0,NULL,11198,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (177,11203,'Gruia',NULL,'227240',NULL,1,'4871210',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (178,11204,'Gruia',NULL,'227240',177,0,NULL,11203,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (179,11104,'Gura Motrului',NULL,'227093',53,0,NULL,11100,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (180,10979,'Gura Văii',NULL,'220002',127,0,NULL,10978,'A',25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (181,11333,'Guţu',NULL,'227401',303,0,NULL,11323,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (182,11056,'Gvardiniţa',NULL,'227042',67,0,NULL,11053,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (183,11133,'Gârbovăţu de Jos',NULL,'227131',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (184,11112,'Gârbovăţu de Sus',NULL,'227102',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (185,11171,'Gârdoaia',NULL,'227202',154,0,NULL,11168,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (186,11179,'Gârla Mare',NULL,'227210',187,0,NULL,11178,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (187,11178,'Gârla Mare',NULL,'227210',NULL,1,'4484493',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (188,11332,'Gârniţa',NULL,'227398',303,0,NULL,11323,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (189,11308,'Gărdăneasa',NULL,'227369',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (190,11249,'Halânga',NULL,'227297',212,0,NULL,11246,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (191,11164,'Higiu',NULL,'227183',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (192,11207,'Hinova',NULL,'227245',NULL,1,'4426425',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (193,11208,'Hinova',NULL,'227245',192,0,NULL,11207,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (194,11391,'Hotărani',NULL,'227496',400,0,NULL,11389,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (195,11015,'Hurduceşti',NULL,'225303',353,0,NULL,11012,'A',25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (196,11212,'Husnicioara',NULL,'227250',NULL,1,'4484434',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (197,11213,'Husnicioara',NULL,'227250',196,0,NULL,11212,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (198,11283,'Iablaniţa',NULL,'227342',311,0,NULL,11280,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (199,11334,'Igiroasa',NULL,'227402',303,0,NULL,11323,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (200,11233,'Iloviţa',NULL,'227280',NULL,1,'4337310',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (201,11234,'Iloviţa',NULL,NULL,200,0,NULL,11233,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (202,11114,'Ilovu',NULL,'227104',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (203,11226,'Ilovăţ',NULL,'227270',NULL,1,'4426441',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (204,11227,'Ilovăţ',NULL,NULL,203,0,NULL,11226,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (205,11134,'Imoasa',NULL,'227132',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (206,11237,'Isverna',NULL,'227285',NULL,1,'4818640',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (207,11238,'Isverna',NULL,NULL,206,0,NULL,11237,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (208,11039,'Iupca',NULL,'227021',12,0,NULL,11029,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (209,11276,'Izimşa',NULL,'227326',262,0,NULL,11274,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (210,11205,'Izvoarele',NULL,'227241',177,0,NULL,11203,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (211,11263,'Izvoru Aneştilor',NULL,'227312',229,0,NULL,11260,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (212,11246,'Izvoru Bârzii',NULL,'227295',NULL,1,'4484400',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (213,11247,'Izvoru Bârzii',NULL,NULL,212,0,NULL,11246,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (214,11097,'Izvoru Frumos',NULL,'227087',49,0,NULL,11094,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (215,11379,'Izvorălu',NULL,'227477',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (216,11262,'Izvorălu de Jos',NULL,'227311',229,0,NULL,11260,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (217,11254,'Jiana',NULL,'227305',NULL,1,'4426417',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (218,11255,'Jiana',NULL,NULL,217,0,NULL,11254,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (219,11258,'Jiana Mare',NULL,'227308',217,0,NULL,11254,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (220,11259,'Jiana Veche',NULL,'227309',217,0,NULL,11254,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (221,11084,'Jidoştiţa',NULL,'227071',36,0,NULL,11082,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (222,11115,'Jigniţa',NULL,'227106',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (223,11135,'Jirov',NULL,'227133',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (224,11105,'Jugăstru',NULL,'227094',53,0,NULL,11100,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (225,11125,'Jupâneşti',NULL,'227122',80,0,NULL,11122,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (226,11400,'Lac',NULL,'227507',394,0,NULL,11397,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (227,11270,'Lazu',NULL,'227321',239,0,NULL,11266,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (228,11172,'Livezi',NULL,'227203',154,0,NULL,11168,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (229,11260,'Livezile',NULL,'227310',NULL,1,'6341597',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (230,11261,'Livezile',NULL,NULL,229,0,NULL,11260,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (231,11310,'Ludu',NULL,'227372',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (232,11335,'Lumnic',NULL,'227403',303,0,NULL,11323,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (233,11016,'Lunca Banului',NULL,'225304',353,0,NULL,11012,'A',25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (234,11090,'Luncşoara',NULL,'227077',39,0,NULL,11087,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (235,11091,'Lupşa de Jos',NULL,'227078',39,0,NULL,11087,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (236,11092,'Lupşa de Sus',NULL,'227079',39,0,NULL,11087,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (237,11085,'Magheru',NULL,'227072',36,0,NULL,11082,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (238,11298,'Malarişca',NULL,'227357',284,0,NULL,11295,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (239,11266,'Malovăţ',NULL,'227315',NULL,1,'4426395',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (240,11267,'Malovăţ',NULL,NULL,239,0,NULL,11266,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (241,11380,'Manu',NULL,'227478',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (242,11183,'Marga',NULL,'227216',166,0,NULL,11181,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (243,11219,'Marmanu',NULL,'227257',196,0,NULL,11212,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (244,11019,'Menţi',NULL,'225305',353,0,NULL,11012,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (245,11093,'Meriş',NULL,'227081',39,0,NULL,11087,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (246,11336,'Mijarca',NULL,'227404',303,0,NULL,11323,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (247,11236,'Moiseşti',NULL,'227282',200,0,NULL,11233,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (248,11040,'Molani',NULL,'227022',12,0,NULL,11029,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (249,11020,'Motruleni',NULL,'225306',353,0,NULL,11012,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (250,11173,'Moşneni',NULL,'227204',154,0,NULL,11168,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (251,11343,'Măgurele',NULL,'227413',305,0,NULL,11339,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (252,11136,'Măru Roşu',NULL,'227134',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (253,10997,'Mărăşeşti',NULL,'225104',11,0,NULL,10993,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (254,11243,'Nadanova',NULL,'227291',206,0,NULL,11237,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (255,10998,'Negoeşti',NULL,'225105',11,0,NULL,10993,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (256,11271,'Negreşti',NULL,'227322',239,0,NULL,11266,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (257,11126,'Negruşa',NULL,'227123',80,0,NULL,11122,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (258,11050,'Nevaţu',NULL,'227034',18,0,NULL,11045,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (259,11026,'Nicolae Bălcescu',NULL,'225402',398,0,NULL,11024,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (260,11368,'Noapteşa',NULL,'227461',411,0,NULL,11362,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (261,11275,'Obârşia de Câmp',NULL,'227325',262,0,NULL,11274,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (262,11274,'Obârşia de Câmp',NULL,NULL,NULL,1,'7643062',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (263,11002,'Obârşia-Cloşani',NULL,'227330',NULL,1,'7536910',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (264,11003,'Obârşia-Cloşani',NULL,NULL,263,0,NULL,11002,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (265,11371,'Ohaba',NULL,'227466',413,0,NULL,11369,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (266,11284,'Olteanca',NULL,'227343',311,0,NULL,11280,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (267,11277,'Oprişor',NULL,'227335',NULL,1,'4639830',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (268,11278,'Oprişor',NULL,NULL,267,0,NULL,11277,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (269,11220,'Oprăneşti',NULL,'227258',196,0,NULL,11212,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (270,11027,'Oreviţa Mare',NULL,'225403',398,0,NULL,11024,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (271,11007,'Orşova',NULL,'225200',NULL,1,'4337603',NULL,'A',25,NULL,'Mun');
INSERT INTO `adrese_localitate` VALUES (272,11211,'Ostrovu Corbului',NULL,'227248',192,0,NULL,11207,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (273,11190,'Ostrovu Mare',NULL,'227223',168,0,NULL,11186,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (274,11381,'Pavăţ',NULL,'227479',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (275,11221,'Peri',NULL,'227259',196,0,NULL,11212,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (276,11063,'Petra',NULL,'227048',55,0,NULL,11057,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (277,11264,'Petriş',NULL,'227313',229,0,NULL,11260,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (278,11174,'Peşteana',NULL,'227206',154,0,NULL,11168,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (279,11175,'Peştenuţa',NULL,'227207',154,0,NULL,11168,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (280,10999,'Pistriţa',NULL,'225106',11,0,NULL,10993,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (281,11079,'Plai',NULL,'227064',34,0,NULL,11074,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (282,11382,'Plopi',NULL,'227481',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (283,11106,'Pluta',NULL,'227096',53,0,NULL,11100,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (284,11295,'Podeni',NULL,'227355',NULL,1,'4484477',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (285,11296,'Podeni',NULL,NULL,284,0,NULL,11295,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (286,11064,'Podu Grosului',NULL,'227049',55,0,NULL,11057,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (287,11117,'Poiana',NULL,'227108',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (288,11206,'Poiana Gruii',NULL,'227242',177,0,NULL,11203,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (289,11299,'Ponoarele',NULL,'227360',NULL,1,'6098316',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (290,11300,'Ponoarele',NULL,NULL,289,0,NULL,11299,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (291,10989,'Poroina',NULL,'227452',406,0,NULL,10982,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (292,11315,'Poroina Mare',NULL,'227380',NULL,1,'6752770',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (293,11316,'Poroina Mare',NULL,NULL,292,0,NULL,11315,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (294,11348,'Poroiniţa',NULL,'227421',322,0,NULL,11346,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (295,11357,'Poşta Veche',NULL,'227436',357,0,NULL,11351,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (296,11051,'Prejna',NULL,'227036',18,0,NULL,11045,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (297,11222,'Priboieşti',NULL,'227261',196,0,NULL,11212,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (298,11320,'Pristol',NULL,'227385',NULL,1,'4639822',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (299,11321,'Pristol',NULL,NULL,298,0,NULL,11320,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (300,11279,'Prisăceaua',NULL,'227336',267,0,NULL,11277,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (301,11311,'Proiteşti',NULL,'227373',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (302,11337,'Prunaru',NULL,'227406',303,0,NULL,11323,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (303,11323,'Prunişor',NULL,'227390',NULL,1,'4484485',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (304,11324,'Prunişor',NULL,NULL,303,0,NULL,11323,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (305,11339,'Punghina',NULL,'227410',NULL,1,'6449913',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (306,11340,'Punghina',NULL,NULL,305,0,NULL,11339,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (307,11138,'Puşcaşu',NULL,'227137',88,0,NULL,11127,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (308,11250,'Puţinei',NULL,'227298',212,0,NULL,11246,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (309,11073,'Pârlagele',NULL,'227059',59,0,NULL,11068,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (310,11137,'Pârvuleşti',NULL,'227136',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (311,11280,'Pădina',NULL,'227340',NULL,1,'6752762',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (312,11281,'Pădina Mare',NULL,'227344',311,0,NULL,11280,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (313,11285,'Pădina Mică',NULL,'227346',311,0,NULL,11280,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (314,11116,'Păltinişu',NULL,'227107',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (315,11201,'Păsărani',NULL,'227237',175,0,NULL,11198,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (316,11287,'Pătulele',NULL,'227350',NULL,1,'6140720',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (317,11288,'Pătulele',NULL,NULL,316,0,NULL,11287,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (318,11184,'Păuneşti',NULL,'227217',166,0,NULL,11181,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (319,11232,'Racova',NULL,'227276',203,0,NULL,11226,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (320,11344,'Recea',NULL,'227414',305,0,NULL,11339,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (321,11165,'Rocşoreni',NULL,'227184',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (322,11346,'Rogova',NULL,'227420',NULL,1,'4871201',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (323,11347,'Rogova',NULL,NULL,322,0,NULL,11346,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (324,11118,'Roşia',NULL,'227109',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (325,11388,'Roşiori',NULL,'227493',402,0,NULL,11384,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (326,11041,'Rudina',NULL,'227023',12,0,NULL,11029,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (327,11042,'Runcşoru',NULL,'227024',12,0,NULL,11029,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (328,11401,'Ruptura',NULL,'227508',394,0,NULL,11397,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (329,11107,'Răduţeşti',NULL,'227097',53,0,NULL,11100,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (330,11312,'Răiculeşti',NULL,'227374',289,0,NULL,11299,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (331,11251,'Răscoleşti',NULL,'227299',212,0,NULL,11246,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (332,11349,'Salcia',NULL,'227425',NULL,1,'4550961',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (333,11350,'Salcia',NULL,NULL,332,0,NULL,11349,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (334,11358,'Satu Mare',NULL,'227437',357,0,NULL,11351,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (335,11345,'Satu Nou',NULL,'227416',305,0,NULL,11339,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (336,10981,'Schela Cladovei',NULL,'220003',127,0,NULL,10978,'A',25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (337,11252,'Schinteieşti',NULL,'227301',212,0,NULL,11246,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (338,11253,'Schitu Topolniţei',NULL,'227302',212,0,NULL,11246,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (339,11395,'Scorila',NULL,'227502',390,0,NULL,11392,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (340,11153,'Scăpău',NULL,'227164',124,0,NULL,11148,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (341,11244,'Seliştea',NULL,'227292',206,0,NULL,11237,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (342,11223,'Selişteni',NULL,'227262',196,0,NULL,11212,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (343,11065,'Seliştiuţa',NULL,'227051',55,0,NULL,11057,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (344,11119,'Severineşti',NULL,'227111',117,0,NULL,11109,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (345,11052,'Sfodea',NULL,'227037',18,0,NULL,11045,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (346,11286,'Slaşoma',NULL,'227347',311,0,NULL,11280,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (347,11017,'Slătinicu Mare',NULL,'225307',353,0,NULL,11012,'A',25,NULL,'Loc');
INSERT INTO `adrese_localitate` VALUES (348,11018,'Slătinicu Mic',NULL,'225308',353,0,NULL,11012,'A',25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (349,11066,'Smadoviţa',NULL,'227052',55,0,NULL,11057,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (350,11402,'Sperleşti',NULL,'227509',394,0,NULL,11397,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (351,11139,'Stejaru',NULL,'227138',88,0,NULL,11127,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (352,11318,'Stigniţa',NULL,'227382',292,0,NULL,11315,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (353,11012,'Strehaia',NULL,'225300',NULL,1,'6044227',NULL,'A',25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (354,11176,'Stroeşti',NULL,'227208',154,0,NULL,11168,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (355,11372,'Studina',NULL,'227467',413,0,NULL,11369,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (356,11352,'Stângăceaua',NULL,'227430',357,0,NULL,11351,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (357,11351,'Stângăceaua',NULL,NULL,NULL,1,'7536961',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (358,11021,'Stănceşti',NULL,'225309',353,0,NULL,11012,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (359,11000,'Stăneşti',NULL,'225107',11,0,NULL,10993,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (360,11120,'Suharu',NULL,'227112',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (361,11086,'Şuşiţa',NULL,'227073',36,0,NULL,11082,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (362,11202,'Şuşiţa',NULL,'227238',175,0,NULL,11198,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (363,11361,'Sviniţa',NULL,NULL,364,0,NULL,11360,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (364,11360,'Sviniţa',NULL,'227440',NULL,1,'4550996',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (365,11195,'Sălătruc',NULL,'227228',173,0,NULL,11191,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (366,11043,'Sărdăneşti',NULL,'227026',12,0,NULL,11029,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (367,11154,'Tismana',NULL,'227166',124,0,NULL,11148,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (368,11001,'Titerleşti',NULL,'225108',11,0,NULL,10993,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (369,11028,'Traian',NULL,'225404',398,0,NULL,11024,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (370,11245,'Turtaba',NULL,'227293',206,0,NULL,11237,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (371,11374,'Tâmna',NULL,NULL,372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (372,11373,'Tâmna',NULL,'227470',NULL,1,'7643526',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (373,11359,'Târsa',NULL,'227438',357,0,NULL,11351,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (374,11080,'Tălăpanu',NULL,'227066',34,0,NULL,11074,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (375,11143,'Valea Anilor',NULL,'227146',91,0,NULL,11141,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (376,11404,'Valea Bună',NULL,'227512',394,0,NULL,11397,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (377,10990,'Valea Copcii',NULL,'227453',406,0,NULL,10982,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (378,11121,'Valea Coşuştei',NULL,'227113',117,0,NULL,11109,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (379,11265,'Ştefan Odobleja',NULL,'227314',229,0,NULL,11260,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (380,11166,'Valea Marcului',NULL,'227186',134,0,NULL,11158,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (381,11196,'Valea Petrii',NULL,'227229',173,0,NULL,11191,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (382,11081,'Valea Teiului',NULL,'227067',34,0,NULL,11074,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (383,11314,'Valea Ursului',NULL,'227377',289,0,NULL,11299,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (384,11383,'Valea Ursului',NULL,'227482',372,0,NULL,11373,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (385,11167,'Varodia',NULL,'227187',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (386,11289,'Viaşu',NULL,'227351',316,0,NULL,11287,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (387,11044,'Vidimireşti',NULL,'227027',12,0,NULL,11029,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (388,11197,'Vişina',NULL,'227231',173,0,NULL,11191,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (389,11393,'Vlădaia',NULL,NULL,390,0,NULL,11392,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (390,11392,'Vlădaia',NULL,'227500',NULL,1,'6341589',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (391,11067,'Vlădica',NULL,'227188',134,0,NULL,11158,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (392,11140,'Vlădăşeşti',NULL,'227139',88,0,NULL,11127,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (393,11398,'Voloiac',NULL,NULL,394,0,NULL,11397,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (394,11397,'Voloiac',NULL,'227505',NULL,1,'7536929',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (395,11405,'Voloicel',NULL,'227513',394,0,NULL,11397,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (396,11099,'Vrancea',NULL,'227089',49,0,NULL,11094,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (397,11180,'Vrata',NULL,'227211',436,0,NULL,11407,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (398,11024,'Vânju Mare',NULL,'225400',NULL,1,'7536970',NULL,'A',25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (399,11390,'Vânjuleţ',NULL,NULL,400,0,NULL,11389,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (400,11389,'Vânjuleţ',NULL,'227495',NULL,1,'7643054',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (401,11385,'Vânători',NULL,'227490',402,0,NULL,11384,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (402,11384,'Vânători',NULL,'227490',NULL,1,'5870832',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (403,11338,'Zegaia',NULL,'227407',303,0,NULL,11323,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (404,11177,'Zegujani',NULL,'227209',154,0,NULL,11168,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (405,10983,'Şimian',NULL,NULL,406,0,NULL,10982,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (406,10982,'Şimian',NULL,'227445',NULL,1,'4550988',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (407,11313,'Şipotu',NULL,'227376',289,0,NULL,11299,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (408,11319,'Şipotu',NULL,'227383',292,0,NULL,11315,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (409,11185,'Şiroca',NULL,'227218',166,0,NULL,11181,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (410,11363,'Şişeşti',NULL,NULL,411,0,NULL,11362,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (411,11362,'Şişeşti',NULL,'227455',NULL,1,'4484450',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (412,11370,'Şovarna',NULL,NULL,413,0,NULL,11369,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (413,11369,'Şovarna',NULL,'227465',NULL,1,'4484442',NULL,NULL,25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (414,11396,'Ştircoviţa',NULL,'227503',390,0,NULL,11392,'A',25,NULL,'Sat');
INSERT INTO `adrese_localitate` VALUES (415,11098,'Ţigănaşi',NULL,'227088',49,0,NULL,11094,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (416,11403,'Ţiţirigi',NULL,'227511',394,0,NULL,11397,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (417,11108,'Ţânţaru',NULL,'227098',53,0,NULL,11100,'A',25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (418,11414,'Ogradena',NULL,NULL,149,0,NULL,11224,NULL,25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (419,11005,'Orşova',NULL,NULL,NULL,1,NULL,NULL,NULL,25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (420,11006,'Orşova',NULL,NULL,NULL,1,NULL,NULL,NULL,25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (421,11291,'Plavişeviţa',NULL,NULL,131,0,NULL,11290,NULL,25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (422,11010,'Strehaia',NULL,NULL,NULL,1,NULL,NULL,NULL,25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (423,11011,'Strehaia',NULL,NULL,NULL,1,NULL,NULL,NULL,25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (424,11415,'Tisoviţa',NULL,NULL,131,0,NULL,11290,NULL,25,25,'Sat');
INSERT INTO `adrese_localitate` VALUES (425,11009,'Tufari',NULL,NULL,271,0,NULL,11007,NULL,25,NULL,'Loc');
INSERT INTO `adrese_localitate` VALUES (426,11022,'Vînju Mare',NULL,NULL,NULL,1,NULL,NULL,NULL,25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (427,11023,'Vînju Mare',NULL,NULL,NULL,1,NULL,NULL,NULL,25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (428,11412,'Vârciorova',NULL,NULL,127,0,NULL,10978,NULL,25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (429,11411,'Ada-Kaleh',NULL,NULL,127,0,NULL,10978,NULL,25,25,'Loc');
INSERT INTO `adrese_localitate` VALUES (430,10991,'Baia de Aramă',NULL,NULL,NULL,1,NULL,NULL,NULL,25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (431,10992,'Baia de Aramă',NULL,NULL,NULL,1,NULL,NULL,NULL,25,NULL,'Orş');
INSERT INTO `adrese_localitate` VALUES (432,11008,'Coramnic',NULL,NULL,271,0,NULL,11007,NULL,25,NULL,'Loc');
INSERT INTO `adrese_localitate` VALUES (433,10976,'Drobeta Turnu Severin',NULL,NULL,NULL,1,NULL,NULL,'A',25,NULL,'Mun');
INSERT INTO `adrese_localitate` VALUES (435,11413,'Jupalnic',NULL,NULL,271,0,NULL,11007,NULL,25,NULL,'Loc');
INSERT INTO `adrese_localitate` VALUES (436,11407,'Vrata',NULL,NULL,NULL,1,'16359583',NULL,'A',25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (437,11406,'Braniştea',NULL,NULL,NULL,1,'16408686',NULL,'A',25,NULL,'Com');
INSERT INTO `adrese_localitate` VALUES (438,31925,'Fără domiciliu în România (MH)',NULL,NULL,NULL,0,NULL,NULL,'A',25,NULL,'?');
/*!40000 ALTER TABLE `adrese_localitate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_localitateistoric`
--

DROP TABLE IF EXISTS `adrese_localitateistoric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_localitateistoric` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `denumire` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `data` date NOT NULL,
  `cod_tata_id` int NOT NULL,
  `jud_cod_tata_id` int NOT NULL,
  `loc_cod_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adrese_localitateist_cod_tata_id_c9fca1b9_fk_adrese_lo` (`cod_tata_id`),
  KEY `adrese_localitateist_jud_cod_tata_id_b8dd20f8_fk_adrese_ju` (`jud_cod_tata_id`),
  KEY `adrese_localitateist_loc_cod_id_1c9d783e_fk_adrese_lo` (`loc_cod_id`),
  CONSTRAINT `adrese_localitateist_cod_tata_id_c9fca1b9_fk_adrese_lo` FOREIGN KEY (`cod_tata_id`) REFERENCES `adrese_localitate` (`cod`),
  CONSTRAINT `adrese_localitateist_jud_cod_tata_id_b8dd20f8_fk_adrese_ju` FOREIGN KEY (`jud_cod_tata_id`) REFERENCES `adrese_judet` (`cod`),
  CONSTRAINT `adrese_localitateist_loc_cod_id_1c9d783e_fk_adrese_lo` FOREIGN KEY (`loc_cod_id`) REFERENCES `adrese_localitate` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_localitateistoric`
--

LOCK TABLES `adrese_localitateistoric` WRITE;
/*!40000 ALTER TABLE `adrese_localitateistoric` DISABLE KEYS */;
/*!40000 ALTER TABLE `adrese_localitateistoric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_localitaterelatie`
--

DROP TABLE IF EXISTS `adrese_localitaterelatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_localitaterelatie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `loc_cod_id` int NOT NULL,
  `loc_cod_nou_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adrese_localitaterel_loc_cod_id_ffc8ff9a_fk_adrese_lo` (`loc_cod_id`),
  KEY `adrese_localitaterel_loc_cod_nou_id_cc7f9631_fk_adrese_lo` (`loc_cod_nou_id`),
  CONSTRAINT `adrese_localitaterel_loc_cod_id_ffc8ff9a_fk_adrese_lo` FOREIGN KEY (`loc_cod_id`) REFERENCES `adrese_localitate` (`cod`),
  CONSTRAINT `adrese_localitaterel_loc_cod_nou_id_cc7f9631_fk_adrese_lo` FOREIGN KEY (`loc_cod_nou_id`) REFERENCES `adrese_localitate` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_localitaterelatie`
--

LOCK TABLES `adrese_localitaterelatie` WRITE;
/*!40000 ALTER TABLE `adrese_localitaterelatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `adrese_localitaterelatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_stareartera`
--

DROP TABLE IF EXISTS `adrese_stareartera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_stareartera` (
  `cod` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `nume_stare` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_stareartera`
--

LOCK TABLES `adrese_stareartera` WRITE;
/*!40000 ALTER TABLE `adrese_stareartera` DISABLE KEYS */;
INSERT INTO `adrese_stareartera` VALUES ('A','ACTUALĂ (CURENTĂ)');
INSERT INTO `adrese_stareartera` VALUES ('D','DESFIINŢATĂ');
INSERT INTO `adrese_stareartera` VALUES ('F','FISCAL');
INSERT INTO `adrese_stareartera` VALUES ('H','ARE ISTORIC');
INSERT INTO `adrese_stareartera` VALUES ('R','ÎMPĂRŢITĂ PE SECT.');
/*!40000 ALTER TABLE `adrese_stareartera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_taravaluta`
--

DROP TABLE IF EXISTS `adrese_taravaluta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_taravaluta` (
  `cod` int NOT NULL,
  `stare` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `capitala` varchar(255) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `denumire` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `forma_guvern` varchar(255) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cod_tara_fiscal` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cod_bnr` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `valuta` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cedi` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cod_sm` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `ue` tinyint(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_taravaluta`
--

LOCK TABLES `adrese_taravaluta` WRITE;
/*!40000 ALTER TABLE `adrese_taravaluta` DISABLE KEYS */;
/*!40000 ALTER TABLE `adrese_taravaluta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_tipartera`
--

DROP TABLE IF EXISTS `adrese_tipartera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_tipartera` (
  `cod` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `denumire` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_tipartera`
--

LOCK TABLES `adrese_tipartera` WRITE;
/*!40000 ALTER TABLE `adrese_tipartera` DISABLE KEYS */;
INSERT INTO `adrese_tipartera` VALUES ('Ale','ALEE');
INSERT INTO `adrese_tipartera` VALUES ('Art','ARTERA');
INSERT INTO `adrese_tipartera` VALUES ('Bld','BULEVARD');
INSERT INTO `adrese_tipartera` VALUES ('Cal','CALE');
INSERT INTO `adrese_tipartera` VALUES ('Can','CANTON');
INSERT INTO `adrese_tipartera` VALUES ('Car','CARTIER');
INSERT INTO `adrese_tipartera` VALUES ('Căt','CĂTUN');
INSERT INTO `adrese_tipartera` VALUES ('Col','COLONIE');
INSERT INTO `adrese_tipartera` VALUES ('Cot','COTITURA');
INSERT INTO `adrese_tipartera` VALUES ('Cpx','COMPLEX');
INSERT INTO `adrese_tipartera` VALUES ('Cte','Curte');
INSERT INTO `adrese_tipartera` VALUES ('Cva','CVARTAL');
INSERT INTO `adrese_tipartera` VALUES ('Drm','DRUM');
INSERT INTO `adrese_tipartera` VALUES ('Fdc','FUNDAC');
INSERT INTO `adrese_tipartera` VALUES ('Fdt','FUNDĂTURI');
INSERT INTO `adrese_tipartera` VALUES ('G','Generata');
INSERT INTO `adrese_tipartera` VALUES ('Hot','HOTAR');
INSERT INTO `adrese_tipartera` VALUES ('INC','INCINTĂ');
INSERT INTO `adrese_tipartera` VALUES ('Inl','INEL');
INSERT INTO `adrese_tipartera` VALUES ('Int','INTRARE');
INSERT INTO `adrese_tipartera` VALUES ('Mag','MAGISTRALĂ');
INSERT INTO `adrese_tipartera` VALUES ('Pod','POD');
INSERT INTO `adrese_tipartera` VALUES ('Prc','PARC');
INSERT INTO `adrese_tipartera` VALUES ('Prl','PRELUNGIRE');
INSERT INTO `adrese_tipartera` VALUES ('Psj','PASAJ');
INSERT INTO `adrese_tipartera` VALUES ('Ptă','Piaţetă');
INSERT INTO `adrese_tipartera` VALUES ('Ptn','Pietonal');
INSERT INTO `adrese_tipartera` VALUES ('Pţa','PIAŢĂ');
INSERT INTO `adrese_tipartera` VALUES ('Ram','RAMIFICAŢIE');
INSERT INTO `adrese_tipartera` VALUES ('Sct','SCURTĂTURĂ');
INSERT INTO `adrese_tipartera` VALUES ('Scu','Scuar');
INSERT INTO `adrese_tipartera` VALUES ('Spl','SPLAI');
INSERT INTO `adrese_tipartera` VALUES ('Std','STRADELA');
INSERT INTO `adrese_tipartera` VALUES ('Str','STRADĂ');
INSERT INTO `adrese_tipartera` VALUES ('Şir','Şir');
INSERT INTO `adrese_tipartera` VALUES ('Şos','ŞOSEA');
INSERT INTO `adrese_tipartera` VALUES ('Tab','TABARA');
INSERT INTO `adrese_tipartera` VALUES ('Trc','TRECĂTOARE');
INSERT INTO `adrese_tipartera` VALUES ('Tre','TRECERE');
INSERT INTO `adrese_tipartera` VALUES ('Ulc','ULICIOARA');
INSERT INTO `adrese_tipartera` VALUES ('Ulţ','ULIŢĂ');
INSERT INTO `adrese_tipartera` VALUES ('Vad','VAD');
INSERT INTO `adrese_tipartera` VALUES ('Var','VARIANTĂ');
/*!40000 ALTER TABLE `adrese_tipartera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese_tiplocalitate`
--

DROP TABLE IF EXISTS `adrese_tiplocalitate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese_tiplocalitate` (
  `cod` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `denumire` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese_tiplocalitate`
--

LOCK TABLES `adrese_tiplocalitate` WRITE;
/*!40000 ALTER TABLE `adrese_tiplocalitate` DISABLE KEYS */;
INSERT INTO `adrese_tiplocalitate` VALUES ('?','Tip necunoscut');
INSERT INTO `adrese_tiplocalitate` VALUES ('Com','COMUNĂ');
INSERT INTO `adrese_tiplocalitate` VALUES ('Loc','LOCALITATE');
INSERT INTO `adrese_tiplocalitate` VALUES ('MRJ','Municipiu Resedinta de Judet');
INSERT INTO `adrese_tiplocalitate` VALUES ('Mun','MUNICIPIU');
INSERT INTO `adrese_tiplocalitate` VALUES ('Orş','ORAŞ');
INSERT INTO `adrese_tiplocalitate` VALUES ('Sat','SAT');
INSERT INTO `adrese_tiplocalitate` VALUES ('Sec','SECTOR');
/*!40000 ALTER TABLE `adrese_tiplocalitate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_romanian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_romanian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add Theme',1,'add_theme');
INSERT INTO `auth_permission` VALUES (2,'Can change Theme',1,'change_theme');
INSERT INTO `auth_permission` VALUES (3,'Can delete Theme',1,'delete_theme');
INSERT INTO `auth_permission` VALUES (4,'Can view Theme',1,'view_theme');
INSERT INTO `auth_permission` VALUES (5,'Can add log entry',2,'add_logentry');
INSERT INTO `auth_permission` VALUES (6,'Can change log entry',2,'change_logentry');
INSERT INTO `auth_permission` VALUES (7,'Can delete log entry',2,'delete_logentry');
INSERT INTO `auth_permission` VALUES (8,'Can view log entry',2,'view_logentry');
INSERT INTO `auth_permission` VALUES (9,'Can add permission',3,'add_permission');
INSERT INTO `auth_permission` VALUES (10,'Can change permission',3,'change_permission');
INSERT INTO `auth_permission` VALUES (11,'Can delete permission',3,'delete_permission');
INSERT INTO `auth_permission` VALUES (12,'Can view permission',3,'view_permission');
INSERT INTO `auth_permission` VALUES (13,'Can add group',4,'add_group');
INSERT INTO `auth_permission` VALUES (14,'Can change group',4,'change_group');
INSERT INTO `auth_permission` VALUES (15,'Can delete group',4,'delete_group');
INSERT INTO `auth_permission` VALUES (16,'Can view group',4,'view_group');
INSERT INTO `auth_permission` VALUES (17,'Can add user',5,'add_user');
INSERT INTO `auth_permission` VALUES (18,'Can change user',5,'change_user');
INSERT INTO `auth_permission` VALUES (19,'Can delete user',5,'delete_user');
INSERT INTO `auth_permission` VALUES (20,'Can view user',5,'view_user');
INSERT INTO `auth_permission` VALUES (21,'Can add content type',6,'add_contenttype');
INSERT INTO `auth_permission` VALUES (22,'Can change content type',6,'change_contenttype');
INSERT INTO `auth_permission` VALUES (23,'Can delete content type',6,'delete_contenttype');
INSERT INTO `auth_permission` VALUES (24,'Can view content type',6,'view_contenttype');
INSERT INTO `auth_permission` VALUES (25,'Can add session',7,'add_session');
INSERT INTO `auth_permission` VALUES (26,'Can change session',7,'change_session');
INSERT INTO `auth_permission` VALUES (27,'Can delete session',7,'delete_session');
INSERT INTO `auth_permission` VALUES (28,'Can view session',7,'view_session');
INSERT INTO `auth_permission` VALUES (29,'Can add Solicitare',8,'add_solicitari');
INSERT INTO `auth_permission` VALUES (30,'Can change Solicitare',8,'change_solicitari');
INSERT INTO `auth_permission` VALUES (31,'Can delete Solicitare',8,'delete_solicitari');
INSERT INTO `auth_permission` VALUES (32,'Can view Solicitare',8,'view_solicitari');
INSERT INTO `auth_permission` VALUES (33,'Can add artera',9,'add_artera');
INSERT INTO `auth_permission` VALUES (34,'Can change artera',9,'change_artera');
INSERT INTO `auth_permission` VALUES (35,'Can delete artera',9,'delete_artera');
INSERT INTO `auth_permission` VALUES (36,'Can view artera',9,'view_artera');
INSERT INTO `auth_permission` VALUES (37,'Can add judet',10,'add_judet');
INSERT INTO `auth_permission` VALUES (38,'Can change judet',10,'change_judet');
INSERT INTO `auth_permission` VALUES (39,'Can delete judet',10,'delete_judet');
INSERT INTO `auth_permission` VALUES (40,'Can view judet',10,'view_judet');
INSERT INTO `auth_permission` VALUES (41,'Can add stare artera',11,'add_stareartera');
INSERT INTO `auth_permission` VALUES (42,'Can change stare artera',11,'change_stareartera');
INSERT INTO `auth_permission` VALUES (43,'Can delete stare artera',11,'delete_stareartera');
INSERT INTO `auth_permission` VALUES (44,'Can view stare artera',11,'view_stareartera');
INSERT INTO `auth_permission` VALUES (45,'Can add tara valuta',12,'add_taravaluta');
INSERT INTO `auth_permission` VALUES (46,'Can change tara valuta',12,'change_taravaluta');
INSERT INTO `auth_permission` VALUES (47,'Can delete tara valuta',12,'delete_taravaluta');
INSERT INTO `auth_permission` VALUES (48,'Can view tara valuta',12,'view_taravaluta');
INSERT INTO `auth_permission` VALUES (49,'Can add tip artera',13,'add_tipartera');
INSERT INTO `auth_permission` VALUES (50,'Can change tip artera',13,'change_tipartera');
INSERT INTO `auth_permission` VALUES (51,'Can delete tip artera',13,'delete_tipartera');
INSERT INTO `auth_permission` VALUES (52,'Can view tip artera',13,'view_tipartera');
INSERT INTO `auth_permission` VALUES (53,'Can add tip localitate',14,'add_tiplocalitate');
INSERT INTO `auth_permission` VALUES (54,'Can change tip localitate',14,'change_tiplocalitate');
INSERT INTO `auth_permission` VALUES (55,'Can delete tip localitate',14,'delete_tiplocalitate');
INSERT INTO `auth_permission` VALUES (56,'Can view tip localitate',14,'view_tiplocalitate');
INSERT INTO `auth_permission` VALUES (57,'Can add artera relatie',15,'add_arterarelatie');
INSERT INTO `auth_permission` VALUES (58,'Can change artera relatie',15,'change_arterarelatie');
INSERT INTO `auth_permission` VALUES (59,'Can delete artera relatie',15,'delete_arterarelatie');
INSERT INTO `auth_permission` VALUES (60,'Can view artera relatie',15,'view_arterarelatie');
INSERT INTO `auth_permission` VALUES (61,'Can add localitate',16,'add_localitate');
INSERT INTO `auth_permission` VALUES (62,'Can change localitate',16,'change_localitate');
INSERT INTO `auth_permission` VALUES (63,'Can delete localitate',16,'delete_localitate');
INSERT INTO `auth_permission` VALUES (64,'Can view localitate',16,'view_localitate');
INSERT INTO `auth_permission` VALUES (65,'Can add cod postal numar strazi',17,'add_codpostalnumarstrazi');
INSERT INTO `auth_permission` VALUES (66,'Can change cod postal numar strazi',17,'change_codpostalnumarstrazi');
INSERT INTO `auth_permission` VALUES (67,'Can delete cod postal numar strazi',17,'delete_codpostalnumarstrazi');
INSERT INTO `auth_permission` VALUES (68,'Can view cod postal numar strazi',17,'view_codpostalnumarstrazi');
INSERT INTO `auth_permission` VALUES (69,'Can add cod postal alte strazi',18,'add_codpostalaltestrazi');
INSERT INTO `auth_permission` VALUES (70,'Can change cod postal alte strazi',18,'change_codpostalaltestrazi');
INSERT INTO `auth_permission` VALUES (71,'Can delete cod postal alte strazi',18,'delete_codpostalaltestrazi');
INSERT INTO `auth_permission` VALUES (72,'Can view cod postal alte strazi',18,'view_codpostalaltestrazi');
INSERT INTO `auth_permission` VALUES (73,'Can add artera istoric',19,'add_arteraistoric');
INSERT INTO `auth_permission` VALUES (74,'Can change artera istoric',19,'change_arteraistoric');
INSERT INTO `auth_permission` VALUES (75,'Can delete artera istoric',19,'delete_arteraistoric');
INSERT INTO `auth_permission` VALUES (76,'Can view artera istoric',19,'view_arteraistoric');
INSERT INTO `auth_permission` VALUES (77,'Can add localitate istoric',20,'add_localitateistoric');
INSERT INTO `auth_permission` VALUES (78,'Can change localitate istoric',20,'change_localitateistoric');
INSERT INTO `auth_permission` VALUES (79,'Can delete localitate istoric',20,'delete_localitateistoric');
INSERT INTO `auth_permission` VALUES (80,'Can view localitate istoric',20,'view_localitateistoric');
INSERT INTO `auth_permission` VALUES (81,'Can add localitate relatie',21,'add_localitaterelatie');
INSERT INTO `auth_permission` VALUES (82,'Can change localitate relatie',21,'change_localitaterelatie');
INSERT INTO `auth_permission` VALUES (83,'Can delete localitate relatie',21,'delete_localitaterelatie');
INSERT INTO `auth_permission` VALUES (84,'Can view localitate relatie',21,'view_localitaterelatie');
INSERT INTO `auth_permission` VALUES (85,'Can add beneficiar',22,'add_beneficiar');
INSERT INTO `auth_permission` VALUES (86,'Can change beneficiar',22,'change_beneficiar');
INSERT INTO `auth_permission` VALUES (87,'Can delete beneficiar',22,'delete_beneficiar');
INSERT INTO `auth_permission` VALUES (88,'Can view beneficiar',22,'view_beneficiar');
INSERT INTO `auth_permission` VALUES (89,'Can add Anexa 3',23,'add_anexa3');
INSERT INTO `auth_permission` VALUES (90,'Can change Anexa 3',23,'change_anexa3');
INSERT INTO `auth_permission` VALUES (91,'Can delete Anexa 3',23,'delete_anexa3');
INSERT INTO `auth_permission` VALUES (92,'Can view Anexa 3',23,'view_anexa3');
INSERT INTO `auth_permission` VALUES (93,'Can add cod postal',24,'add_codpostal');
INSERT INTO `auth_permission` VALUES (94,'Can change cod postal',24,'change_codpostal');
INSERT INTO `auth_permission` VALUES (95,'Can delete cod postal',24,'delete_codpostal');
INSERT INTO `auth_permission` VALUES (96,'Can view cod postal',24,'view_codpostal');
INSERT INTO `auth_permission` VALUES (97,'Can add relatii localitati',25,'add_relatiilocalitati');
INSERT INTO `auth_permission` VALUES (98,'Can change relatii localitati',25,'change_relatiilocalitati');
INSERT INTO `auth_permission` VALUES (99,'Can delete relatii localitati',25,'delete_relatiilocalitati');
INSERT INTO `auth_permission` VALUES (100,'Can view relatii localitati',25,'view_relatiilocalitati');
INSERT INTO `auth_permission` VALUES (101,'Can add Adaugă Strada',26,'add_strada');
INSERT INTO `auth_permission` VALUES (102,'Can change Adaugă Strada',26,'change_strada');
INSERT INTO `auth_permission` VALUES (103,'Can delete Adaugă Strada',26,'delete_strada');
INSERT INTO `auth_permission` VALUES (104,'Can view Adaugă Strada',26,'view_strada');
INSERT INTO `auth_permission` VALUES (105,'Can add serviciu',27,'add_serviciu');
INSERT INTO `auth_permission` VALUES (106,'Can change serviciu',27,'change_serviciu');
INSERT INTO `auth_permission` VALUES (107,'Can delete serviciu',27,'delete_serviciu');
INSERT INTO `auth_permission` VALUES (108,'Can view serviciu',27,'view_serviciu');
INSERT INTO `auth_permission` VALUES (109,'Can add Tabel serviciu',28,'add_servicetable');
INSERT INTO `auth_permission` VALUES (110,'Can change Tabel serviciu',28,'change_servicetable');
INSERT INTO `auth_permission` VALUES (111,'Can delete Tabel serviciu',28,'delete_servicetable');
INSERT INTO `auth_permission` VALUES (112,'Can view Tabel serviciu',28,'view_servicetable');
INSERT INTO `auth_permission` VALUES (113,'Can add service table cell',29,'add_servicetablecell');
INSERT INTO `auth_permission` VALUES (114,'Can change service table cell',29,'change_servicetablecell');
INSERT INTO `auth_permission` VALUES (115,'Can delete service table cell',29,'delete_servicetablecell');
INSERT INTO `auth_permission` VALUES (116,'Can view service table cell',29,'view_servicetablecell');
INSERT INTO `auth_permission` VALUES (117,'Can add price item',30,'add_priceitem');
INSERT INTO `auth_permission` VALUES (118,'Can change price item',30,'change_priceitem');
INSERT INTO `auth_permission` VALUES (119,'Can delete price item',30,'delete_priceitem');
INSERT INTO `auth_permission` VALUES (120,'Can view price item',30,'view_priceitem');
INSERT INTO `auth_permission` VALUES (121,'Can add pret serviciu',31,'add_pretserviciu');
INSERT INTO `auth_permission` VALUES (122,'Can change pret serviciu',31,'change_pretserviciu');
INSERT INTO `auth_permission` VALUES (123,'Can delete pret serviciu',31,'delete_pretserviciu');
INSERT INTO `auth_permission` VALUES (124,'Can view pret serviciu',31,'view_pretserviciu');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_romanian_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_romanian_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_romanian_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_romanian_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_romanian_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$effyj0OxHYRTzry7sOtqTa$VlK9v6uMTU6ROTrI4VVYYMGfUVl2d15tKfwwo/315NY=','2025-10-03 20:04:10.465199',1,'admin','','','claudiu.nedelcu@datemobile.ro',1,1,'2025-02-21 19:18:05.443259');
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$870000$aPdYXRwgW96BeWs87gTQqV$7UcLnSC5Oa4cL3bgwFLClkhp/d4mNETMq5xZmA/dDUU=','2025-03-27 10:01:36.348563',0,'ion.lapadatescu','Ion','Lapadatescu','ion.lapadatescu@bbinstall.ro',1,1,'2025-03-27 09:59:57.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,32);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiari_beneficiar`
--

DROP TABLE IF EXISTS `beneficiari_beneficiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiari_beneficiar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nume` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `prenume` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `telefon` varchar(15) COLLATE utf8mb4_romanian_ci NOT NULL,
  `tip_client` varchar(20) COLLATE utf8mb4_romanian_ci NOT NULL,
  `bloc` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cod_postal` varchar(20) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `judet_id` int DEFAULT NULL,
  `localitate_id` int DEFAULT NULL,
  `nr` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `strada_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `beneficiari_beneficiar_nume_ae63a66a` (`nume`),
  KEY `beneficiari_beneficiar_prenume_e2a3823a` (`prenume`),
  KEY `beneficiari_beneficiar_telefon_8255a523` (`telefon`),
  KEY `beneficiari_beneficiar_judet_id_692a3714_fk_adrese_judet_cod` (`judet_id`),
  KEY `beneficiari_benefici_localitate_id_e78de762_fk_adrese_lo` (`localitate_id`),
  KEY `beneficiari_beneficiar_strada_id_93cba02c_fk_adrese_artera_cod` (`strada_id`),
  CONSTRAINT `beneficiari_benefici_localitate_id_e78de762_fk_adrese_lo` FOREIGN KEY (`localitate_id`) REFERENCES `adrese_localitate` (`cod`),
  CONSTRAINT `beneficiari_beneficiar_judet_id_692a3714_fk_adrese_judet_cod` FOREIGN KEY (`judet_id`) REFERENCES `adrese_judet` (`cod`),
  CONSTRAINT `beneficiari_beneficiar_strada_id_93cba02c_fk_adrese_artera_cod` FOREIGN KEY (`strada_id`) REFERENCES `adrese_artera` (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiari_beneficiar`
--

LOCK TABLES `beneficiari_beneficiar` WRITE;
/*!40000 ALTER TABLE `beneficiari_beneficiar` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiari_beneficiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_romanian_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_romanian_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_romanian_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-02-21 19:19:36.270737','2','Nr.inreg BB-823136/2025-02-21 19:19:36.257739+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (2,'2025-02-21 19:19:58.213524','1','Nr.inreg BB-2731D9/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (3,'2025-02-21 19:21:22.449172','1','adauga_nume_Costache N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (4,'2025-02-21 19:22:48.898339','4','Nr.inreg BB-9E5E2A/2025-02-21 19:22:48.888341+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (5,'2025-02-21 19:26:57.839340','6','Nr.inreg BB-0144F0/2025-02-21 19:26:57.830338+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (6,'2025-02-21 19:45:14.594223','6','Nr.inreg BB-0144F0/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (7,'2025-02-21 19:45:14.594223','5','Nr.inreg BB-DEF97E/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (8,'2025-02-21 19:45:14.594223','4','Nr.inreg BB-9E5E2A/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (9,'2025-02-21 19:45:14.594223','3','Nr.inreg BB-644C17/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (10,'2025-02-21 19:45:14.594223','2','Nr.inreg BB-823136/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (11,'2025-02-21 19:48:53.573784','4','adauga_nume_georgescu N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (12,'2025-02-21 19:48:53.573784','2','Costache N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (13,'2025-02-21 19:48:53.573784','3','Popescu N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (14,'2025-02-21 20:03:37.152996','9','Nr.inreg BB-AD2713/2025-02-21 20:03:37.131909+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (15,'2025-02-21 20:04:09.616115','5','adauga_nume_Ionescu N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (16,'2025-02-21 20:04:44.955221','6','Ionescu Constantin',1,'[{\"added\": {}}]',22,1);
INSERT INTO `django_admin_log` VALUES (17,'2025-02-21 20:05:07.790967','9','Nr.inreg BB-AD2713/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (18,'2025-02-21 20:07:28.754559','10','Nr.inreg BB-E1F3EC/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (19,'2025-02-21 20:08:21.168046','7','adauga_nume_KAN N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (20,'2025-02-21 20:25:11.606455','13','Nr.inreg BB-8A129E/2025-02-21 20:25:11.593362+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (21,'2025-02-21 20:38:47.274394','15','Nr.inreg BB-9DF70C/2025-02-21 20:38:47.256818+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (22,'2025-02-21 20:43:31.970846','17','Nr.inreg BB-274639/2025-02-21 20:43:31.957786+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (23,'2025-02-21 20:45:31.039444','19','Nr.inreg BB-CEAD37/2025-02-21 20:45:31.030855+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (24,'2025-02-21 20:48:37.136486','21','Nr.inreg BB-3B964C/2025-02-21 20:48:37.131381+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (25,'2025-02-21 20:56:57.762458','23','Nr.inreg BB-75A37D/2025-02-21 20:56:57.758353+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (26,'2025-02-21 21:02:35.755559','25','Nr.inreg BB-6E4152/2025-02-21 21:02:35.744816+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (27,'2025-02-21 21:14:17.674524','30','Nr.inreg BB-154257/2025-02-21 21:14:17.658957+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (28,'2025-02-21 21:36:39.552568','35','Nr.inreg BB-BBA99E/2025-02-21 21:36:39.546678+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (29,'2025-02-21 21:57:49.478093','43','Nr.inreg BB-D0650F/2025-02-21 21:57:49.446724+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (30,'2025-02-21 22:10:29.120557','47','Nr.inreg BB-376CD9/2025-02-21 22:10:29.102755+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (31,'2025-02-21 23:25:28.905249','48','Nr.inreg BB-6255D9/2025-02-21 23:25:28.900269+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (32,'2025-02-24 09:49:24.165904','49','Nr.inreg BB-2F7950/2025-02-24 09:49:24.150588+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (33,'2025-02-24 09:49:48.419166','49','Nr.inreg BB-2F7950/2025-02-24',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (34,'2025-02-24 10:23:42.556290','9','adauga_nume_Cirtan N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (35,'2025-02-24 10:23:42.556290','14','adauga_nume_COPANDEAN N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (36,'2025-02-24 10:23:42.556290','12','adauga_nume_gRUIESCU N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (37,'2025-02-24 10:23:42.556290','8','adauga_nume_Ionascu N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (38,'2025-02-24 10:23:42.556290','13','adauga_nume_mARINESCU N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (39,'2025-02-24 10:23:42.556290','15','adauga_nume_roman N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (40,'2025-02-24 10:23:42.556290','11','adauga_nume_TARCAVU N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (41,'2025-02-24 10:23:42.556290','10','adauga_nume_Verde N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (42,'2025-02-24 10:23:42.556290','6','Ionescu Constantin',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (43,'2025-02-24 10:23:42.556290','17','lazar N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (44,'2025-02-24 10:23:42.557291','16','Zavoianu N/A',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (45,'2025-02-24 10:23:58.408151','48','Nr.inreg BB-6255D9/2025-02-22',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (46,'2025-02-24 10:23:58.408151','47','Nr.inreg BB-376CD9/2025-02-22',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (47,'2025-02-24 10:23:58.408151','46','Nr.inreg BB-69AE81/2025-02-22',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (48,'2025-02-24 10:23:58.408151','45','Nr.inreg BB-4D2280/2025-02-22',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (49,'2025-02-24 10:23:58.408151','44','Nr.inreg BB-465DF7/2025-02-22',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (50,'2025-02-24 10:23:58.408151','43','Nr.inreg BB-D0650F/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (51,'2025-02-24 10:23:58.408151','42','Nr.inreg BB-D53FBD/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (52,'2025-02-24 10:23:58.408151','41','Nr.inreg BB-E17C42/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (53,'2025-02-24 10:23:58.408151','40','Nr.inreg BB-62BF73/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (54,'2025-02-24 10:23:58.408151','39','Nr.inreg BB-BF930B/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (55,'2025-02-24 10:23:58.408151','38','Nr.inreg BB-A4CFBE/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (56,'2025-02-24 10:23:58.408151','37','Nr.inreg BB-9CB48A/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (57,'2025-02-24 10:23:58.408151','36','Nr.inreg BB-4C2BD7/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (58,'2025-02-24 10:23:58.408151','35','Nr.inreg BB-BBA99E/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (59,'2025-02-24 10:23:58.408151','34','Nr.inreg BB-1FA926/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (60,'2025-02-24 10:23:58.408151','33','Nr.inreg BB-D4858C/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (61,'2025-02-24 10:23:58.408151','32','Nr.inreg BB-1D619B/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (62,'2025-02-24 10:23:58.408151','31','Nr.inreg BB-B5F49A/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (63,'2025-02-24 10:23:58.408151','30','Nr.inreg BB-154257/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (64,'2025-02-24 10:23:58.408151','29','Nr.inreg BB-DA4E4A/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (65,'2025-02-24 10:23:58.408151','28','Nr.inreg BB-57D327/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (66,'2025-02-24 10:23:58.408151','27','Nr.inreg BB-F0E4CA/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (67,'2025-02-24 10:23:58.408151','26','Nr.inreg BB-249CB1/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (68,'2025-02-24 10:23:58.408151','25','Nr.inreg BB-6E4152/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (69,'2025-02-24 10:23:58.408151','24','Nr.inreg BB-F935AB/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (70,'2025-02-24 10:23:58.408151','23','Nr.inreg BB-75A37D/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (71,'2025-02-24 10:23:58.408151','22','Nr.inreg BB-F0DDFA/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (72,'2025-02-24 10:23:58.408151','21','Nr.inreg BB-3B964C/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (73,'2025-02-24 10:23:58.408151','20','Nr.inreg BB-371B1E/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (74,'2025-02-24 10:23:58.408151','19','Nr.inreg BB-CEAD37/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (75,'2025-02-24 10:23:58.408151','18','Nr.inreg BB-5A4397/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (76,'2025-02-24 10:23:58.408151','17','Nr.inreg BB-274639/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (77,'2025-02-24 10:23:58.408151','16','Nr.inreg BB-24F738/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (78,'2025-02-24 10:23:58.408151','15','Nr.inreg BB-9DF70C/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (79,'2025-02-24 10:23:58.408151','14','Nr.inreg BB-A318B0/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (80,'2025-02-24 10:23:58.408151','13','Nr.inreg BB-8A129E/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (81,'2025-02-24 10:23:58.408151','12','Nr.inreg BB-1590C1/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (82,'2025-02-24 10:23:58.408151','11','Nr.inreg BB-8EE044/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (83,'2025-02-24 10:23:58.408151','8','Nr.inreg BB-F0ABC6/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (84,'2025-02-24 10:23:58.408151','7','Nr.inreg BB-4981D7/2025-02-21',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (85,'2025-02-24 10:24:56.719171','50','Nr.inreg BB-D5DE0D/2025-02-24 10:24:56.709171+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (86,'2025-02-24 10:25:39.754787','18','bou claudiu',1,'[{\"added\": {}}]',22,1);
INSERT INTO `django_admin_log` VALUES (87,'2025-02-24 10:45:16.737296','51','Nr.inreg BB-D5F7D0/2025-02-24 10:45:16.731308+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (88,'2025-02-24 11:05:03.774432','52','Nr.inreg BB-9EF7B0/2025-02-24 11:05:03.763418+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (89,'2025-02-24 11:08:31.051468','52','Nr.inreg BB-9EF7B0/2025-02-24',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (90,'2025-02-24 11:13:33.538884','18','bou claudiu',3,'',22,1);
INSERT INTO `django_admin_log` VALUES (91,'2025-02-24 11:14:34.266464','51','Nr.inreg BB-D5F7D0/2025-02-24',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (92,'2025-02-24 11:14:48.661057','19','bou ion',1,'[{\"added\": {}}]',22,1);
INSERT INTO `django_admin_log` VALUES (93,'2025-02-24 11:15:08.641059','19','bou claudiu',2,'[{\"changed\": {\"fields\": [\"Prenume\"]}}]',22,1);
INSERT INTO `django_admin_log` VALUES (94,'2025-02-24 11:15:52.945805','53','Nr.inreg BB-B92AC3/2025-02-24 11:15:52.935811+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (95,'2025-02-24 11:23:36.816905','54','Nr.inreg BB-66F70E/2025-02-24 11:23:36.804898+00:00',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (96,'2025-02-24 20:30:23.801685','55','None - None , ',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (97,'2025-02-24 20:40:19.639160','56','Drobeta-Turnu Severin (MEHEDINŢI) - Ştefan Odobleja (Drobeta-Turnu Severin) , ',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (98,'2025-02-24 20:45:22.821412','57','Drobeta Turnu Severin (MEHEDINŢI) - Aluniş (Drobeta-Turnu Severin) , ',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (99,'2025-02-24 20:56:39.948673','1','Django',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (100,'2025-02-24 21:51:31.497577','55','None - None , ',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (101,'2025-02-24 22:01:11.150389','1','Django',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (102,'2025-02-25 18:05:30.544233','57','ionescu Marian 0740105760 Drobeta Turnu Severin (MEHEDINŢI)',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (103,'2025-02-25 18:05:30.544233','56','nedelcu ion 0740205760 Drobeta-Turnu Severin (MEHEDINŢI)',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (104,'2025-02-25 18:05:30.544233','54','bou claudiu 0740105760 None',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (105,'2025-02-25 18:05:30.544233','53','bou claudiu 0740105760 None',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (106,'2025-02-25 18:05:30.544233','50','bou ion 0740105760 None',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (107,'2025-02-25 19:35:16.583254','58','bumbescu yert 3333 Balota (MEHEDINŢI)',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (108,'2025-02-25 22:02:02.986503','59','bumbescu yert 3333 Drobeta-Turnu Severin',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (109,'2025-02-26 09:21:02.273445','60','Test User   None',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (110,'2025-02-26 09:39:06.938454','62','Test User   23 August',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (111,'2025-02-26 11:35:49.634215','64','bumbescu yert 3333 Drobeta-Turnu Severin (MEHEDINŢI)',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (112,'2025-02-26 11:37:44.826253','65','umbrarescu Ion 0740105760 Drobeta-Turnu Severin (MEHEDINŢI)',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (113,'2025-02-26 11:43:29.075771','65','umbrarescu Ion 0740105760 Drobeta-Turnu Severin (MEHEDINŢI)',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (114,'2025-02-26 11:43:29.075771','64','bumbescu yert 3333 Drobeta-Turnu Severin (MEHEDINŢI)',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (115,'2025-02-26 11:43:29.075771','63','Test User   None',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (116,'2025-02-26 11:43:29.075771','59','bumbescu yert 3333 Drobeta-Turnu Severin (MEHEDINŢI)',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (117,'2025-02-26 11:43:29.075771','58','bumbescu yert 3333 Balota (MEHEDINŢI)',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (118,'2025-02-26 13:16:54.099239','66','nedelcu claudiu 0740105760 Drobeta-Turnu Severin (MEHEDINŢI)',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (119,'2025-02-26 13:45:47.155718','67','popescu emil 0740105760 Drobeta-Turnu Severin (MEHEDINŢI)',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (120,'2025-02-26 13:46:40.501845','67','jordan mihai 0740105678 Drobeta-Turnu Severin (MEHEDINŢI)',2,'[{\"changed\": {\"fields\": [\"nume\", \"Prenume\", \"Telefon\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (121,'2025-02-26 13:54:17.125962','67','pop mihai 0740105678 Drobeta-Turnu Severin (MEHEDINŢI)',2,'[{\"changed\": {\"fields\": [\"nume\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (122,'2025-02-26 13:54:49.099038','67','pop mihai 0740105678 Drobeta-Turnu Severin (MEHEDINŢI)',2,'[]',8,1);
INSERT INTO `django_admin_log` VALUES (123,'2025-02-26 13:55:01.425844','66','pop claudiu 0740105760 Drobeta-Turnu Severin (MEHEDINŢI)',2,'[{\"changed\": {\"fields\": [\"nume\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (124,'2025-02-26 14:54:06.715412','68','ionescu claudiu 0740105760 Drobeta-Turnu Severin (MEHEDINŢI)',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (125,'2025-02-26 15:17:10.849117','66','citu claudiu 0740105760 Drobeta-Turnu Severin',2,'[{\"changed\": {\"fields\": [\"nume\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (126,'2025-02-26 15:17:18.855913','66','citu claudiu 0740105760 Drobeta-Turnu Severin',2,'[]',8,1);
INSERT INTO `django_admin_log` VALUES (127,'2025-03-04 13:24:06.928566','66','ionAS claudiu 0740105760 Drobeta-Turnu Severin',2,'[{\"changed\": {\"fields\": [\"nume\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (128,'2025-03-04 13:45:54.116262','68','pinpin claudiu 0740105760 Drobeta-Turnu Severin',2,'[{\"changed\": {\"fields\": [\"nume\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (129,'2025-03-27 09:59:59.379612','2','ion.lapadatescu',1,'[{\"added\": {}}]',5,1);
INSERT INTO `django_admin_log` VALUES (130,'2025-03-27 10:01:11.573872','2','ion.lapadatescu',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"User permissions\"]}}]',5,1);
INSERT INTO `django_admin_log` VALUES (131,'2025-03-27 10:01:11.583882','2','ion.lapadatescu',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"User permissions\"]}}]',5,1);
INSERT INTO `django_admin_log` VALUES (132,'2025-04-03 19:46:26.333633','1','Django',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (133,'2025-04-03 20:04:56.350385','1','Django',2,'[{\"changed\": {\"fields\": [\"Control\", \"Background color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (134,'2025-04-03 20:04:56.366387','1','Django',2,'[{\"changed\": {\"fields\": [\"Control\", \"Background color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (135,'2025-04-03 20:08:50.295600','1','Django',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (136,'2025-04-03 20:10:26.018548','1','Django',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (137,'2025-04-03 20:11:25.334682','1','Django',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (138,'2025-04-03 20:12:43.079388','1','Django',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (139,'2025-04-03 20:28:19.809069','1','Django',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (140,'2025-04-03 20:29:05.410248','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (141,'2025-04-03 20:29:05.766258','1','BBinstall Organization',2,'[]',1,1);
INSERT INTO `django_admin_log` VALUES (142,'2025-04-03 20:29:42.094833','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (143,'2025-04-03 20:30:43.808312','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (144,'2025-04-03 20:30:43.857309','1','BBinstall Organization',2,'[]',1,1);
INSERT INTO `django_admin_log` VALUES (145,'2025-04-03 20:31:20.474441','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (146,'2025-04-03 20:31:59.874793','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (147,'2025-04-03 20:34:56.390091','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Control\", \"Display\", \"Color\", \"Fieldsets as tabs\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (148,'2025-04-03 20:34:56.718107','1','BBinstall Organization',2,'[]',1,1);
INSERT INTO `django_admin_log` VALUES (149,'2025-04-03 20:35:46.247449','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Inlines as tabs\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (150,'2025-04-03 20:35:46.592448','1','BBinstall Organization',2,'[]',1,1);
INSERT INTO `django_admin_log` VALUES (151,'2025-04-03 20:36:17.179664','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Fieldsets as tabs\", \"Inlines as tabs\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (152,'2025-04-03 20:36:17.229660','1','BBinstall Organization',2,'[]',1,1);
INSERT INTO `django_admin_log` VALUES (153,'2025-04-03 20:40:54.780361','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (154,'2025-04-03 20:42:52.329301','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Background color\", \"Background hover color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (155,'2025-04-03 20:43:38.212216','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Visible\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (156,'2025-04-03 20:43:38.220211','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Visible\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (157,'2025-04-03 20:44:58.072914','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Max width\", \"Max height\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (158,'2025-04-03 20:44:58.115911','1','BBinstall Organization',2,'[]',1,1);
INSERT INTO `django_admin_log` VALUES (159,'2025-04-30 18:41:45.982314','69','georgescu ion 0740105760 Balta Verde',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (160,'2025-04-30 19:02:49.585717','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Text color\", \"Link active color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (161,'2025-04-30 19:02:49.624182','1','BBinstall Organization',2,'[]',1,1);
INSERT INTO `django_admin_log` VALUES (162,'2025-04-30 19:03:25.212724','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Link active color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (163,'2025-04-30 19:03:50.657481','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (164,'2025-04-30 19:04:29.471826','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (165,'2025-05-23 19:22:31.909226','1','test',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (166,'2025-05-23 19:57:28.177833','2','test',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (167,'2025-05-23 20:31:41.503353','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Titlu\", \"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (168,'2025-05-23 20:31:41.520161','2','Reparatii centrale',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (169,'2025-05-23 21:09:42.683040','1','Mentenanta',2,'[{\"changed\": {\"fields\": [\"Titlu\", \"Slug\", \"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (170,'2025-05-23 21:11:39.044192','3','Abonament',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (171,'2025-05-23 21:15:15.955376','4','Preturi',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (172,'2025-05-23 21:19:26.184150','1','Mentenanta',3,'',27,1);
INSERT INTO `django_admin_log` VALUES (173,'2025-05-23 21:20:56.019996','4','Prețuri',2,'[{\"changed\": {\"fields\": [\"Titlu\", \"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (174,'2025-05-23 21:25:31.870819','3','Abonament',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (175,'2025-05-23 21:25:31.993576','3','Abonament',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (176,'2025-05-23 21:32:23.989292','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (177,'2025-05-23 21:32:24.324569','2','Reparatii centrale',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (178,'2025-05-23 21:33:35.079284','3','Abonament',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (179,'2025-05-23 21:41:10.053806','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (180,'2025-05-23 21:41:10.151805','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (181,'2025-05-23 21:42:03.598910','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (182,'2025-05-23 21:42:03.644393','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (183,'2025-05-23 21:42:22.620204','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (184,'2025-05-23 21:43:29.596660','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (185,'2025-05-23 21:45:29.155872','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (186,'2025-05-23 21:46:07.224324','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (187,'2025-05-23 21:47:12.620745','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (188,'2025-05-23 21:48:10.351166','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (189,'2025-05-23 21:48:46.992508','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (190,'2025-05-23 22:00:49.952348','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (191,'2025-05-23 22:01:14.130951','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (192,'2025-05-23 22:09:59.758641','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (193,'2025-05-23 22:09:59.763637','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (194,'2025-05-23 22:10:59.453693','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (195,'2025-05-23 22:10:59.493690','2','Reparatii centrale',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (196,'2025-05-23 22:12:55.252056','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (197,'2025-05-23 22:12:55.574670','2','Reparatii centrale',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (198,'2025-05-23 22:15:12.851913','2','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (199,'2025-05-23 22:15:13.157333','2','Reparatii centrale',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (200,'2025-05-23 22:19:25.025493','2','Reparatii centrale',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (201,'2025-05-23 22:27:24.226994','4','Prețuri',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (202,'2025-05-23 22:27:24.535328','4','Prețuri',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (203,'2025-05-23 22:40:41.780473','4','Prețuri',2,'[{\"changed\": {\"fields\": [\"Activ\", \"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (204,'2025-05-23 22:42:20.030891','4','Prețuri',2,'[{\"changed\": {\"fields\": [\"Categorie\", \"Activ\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (205,'2025-05-23 22:42:20.097791','4','Prețuri',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (206,'2025-05-24 16:49:56.684222','2','Reparatii centrale termice',2,'[{\"changed\": {\"fields\": [\"Titlu\", \"Slug\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (207,'2025-05-24 16:49:56.732377','2','Reparatii centrale termice',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (208,'2025-05-24 16:50:05.690579','2','Reparatii centrale termice',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (209,'2025-05-24 16:51:56.139117','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Titlu\", \"Slug\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (210,'2025-05-24 16:52:11.909318','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (211,'2025-05-24 16:52:44.410999','5','Revizii de întreținere',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (212,'2025-05-24 16:53:06.036780','6','Revizii de întreținere',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (213,'2025-05-24 16:53:37.634047','7','Puneri în funcțiune',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (214,'2025-05-24 16:55:16.627738','8','Montare termostat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (215,'2025-05-24 16:56:01.109814','9','Montare filtre protecție',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (216,'2025-05-24 19:35:34.501581','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (217,'2025-05-24 19:35:58.729115','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (218,'2025-05-24 19:37:00.160166','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (219,'2025-05-24 19:42:50.024123','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (220,'2025-05-24 19:47:27.951093','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (221,'2025-05-24 19:50:04.645080','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (222,'2025-05-24 19:50:40.028804','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (223,'2025-05-24 19:56:40.084568','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (224,'2025-05-24 19:56:55.200300','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (225,'2025-05-24 20:01:24.266569','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (226,'2025-05-24 20:03:48.163691','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (227,'2025-05-24 20:15:58.951491','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (228,'2025-05-24 20:18:31.225641','3','Verificare tehnică (ISCIR)',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (229,'2025-05-24 21:06:54.499950','2','Reparatii centrale termice',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (230,'2025-05-24 21:11:33.663684','6','Revizii de întreținere',3,'',27,1);
INSERT INTO `django_admin_log` VALUES (231,'2025-05-24 21:13:27.697200','5','Revizii de întreținere',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (232,'2025-05-24 21:24:11.920991','7','Puneri în funcțiune',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (233,'2025-07-31 11:55:04.248469','70','Dima Diana 0755332177 Drobeta Turnu Severin',1,'[{\"added\": {}}]',8,1);
INSERT INTO `django_admin_log` VALUES (234,'2025-07-31 11:55:27.786479','70','Dima Diana 0755332177 Drobeta Turnu Severin',2,'[{\"changed\": {\"fields\": [\"REZOLVAT\"]}}]',8,1);
INSERT INTO `django_admin_log` VALUES (235,'2025-07-31 11:57:48.895722','70','Dima Diana 0755332177 Drobeta Turnu Severin',3,'',8,1);
INSERT INTO `django_admin_log` VALUES (236,'2025-08-13 09:44:29.917138','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (237,'2025-08-13 09:49:02.144840','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (238,'2025-08-13 11:30:48.178755','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (239,'2025-08-13 11:32:41.418729','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (240,'2025-08-13 11:34:56.446364','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (241,'2025-08-13 11:58:09.665073','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (242,'2025-08-13 12:00:04.305538','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (243,'2025-08-13 12:02:54.884274','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (244,'2025-08-13 12:04:05.021916','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (245,'2025-08-13 12:12:34.055500','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (246,'2025-08-13 12:13:09.174786','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (247,'2025-08-13 12:15:04.310074','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (248,'2025-08-13 12:16:11.538459','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (249,'2025-08-13 12:17:17.070300','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (250,'2025-08-13 12:18:58.852842','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (251,'2025-08-13 12:21:34.798906','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (252,'2025-08-14 06:37:59.674282','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (253,'2025-08-14 06:47:22.214161','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (254,'2025-08-14 07:20:44.511519','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (255,'2025-08-14 07:23:08.607996','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (256,'2025-08-14 07:38:38.439587','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (257,'2025-08-14 07:39:41.688860','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (258,'2025-08-14 07:42:04.102112','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (259,'2025-08-14 07:59:40.749713','8','Montare termostat',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (260,'2025-08-14 08:15:12.662198','1','Reparatii centrale',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (261,'2025-08-14 08:31:30.445616','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (262,'2025-08-14 08:32:42.991834','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (263,'2025-08-14 08:35:16.597668','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (264,'2025-08-14 08:36:05.860588','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (265,'2025-08-14 08:38:02.622885','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (266,'2025-08-14 08:45:34.353067','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (267,'2025-08-14 08:47:21.741576','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (268,'2025-08-14 08:48:49.580832','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (269,'2025-08-14 08:55:34.499761','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (270,'2025-08-14 08:57:25.447341','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (271,'2025-08-14 09:31:16.432836','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Descriere (text simplu)\", \"Imagine\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (272,'2025-08-14 09:38:33.740346','1','Reparatii centrale',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (273,'2025-08-14 09:47:00.700285','1','Reparatii centrale',2,'[{\"changed\": {\"fields\": [\"Descriere (text simplu)\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (274,'2025-08-14 09:49:20.570264','2','Verificare tehnică (ISCIR)',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (275,'2025-08-14 09:49:40.964558','1','Reparții centrale',2,'[{\"changed\": {\"fields\": [\"Titlu\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (276,'2025-08-14 09:50:40.146311','3','Revezie întreținere',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (277,'2025-08-14 09:52:47.045453','4','Punere în funcțiune',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (278,'2025-08-14 09:53:36.268614','5','Montare termostat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (279,'2025-08-14 09:54:20.250638','6','Montare filtre protecție',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (280,'2025-08-14 09:55:04.946037','7','Montaj aer condiționat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (281,'2025-08-14 09:57:51.015530','3','Revizie întreținere',2,'[{\"changed\": {\"fields\": [\"Titlu\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (282,'2025-08-14 10:44:41.061998','1','Montare termostat',1,'[{\"added\": {}}]',28,1);
INSERT INTO `django_admin_log` VALUES (283,'2025-08-14 10:45:05.568555','1','Reparații centrale',2,'[{\"changed\": {\"fields\": [\"Descriere (text simplu)\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (284,'2025-08-14 10:45:47.011146','2','Verificare tehnică (ISCIR)',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (285,'2025-08-14 11:45:18.118192','1','Reparatii centrale termice',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (286,'2025-08-14 11:46:27.467370','2','Verificare tehnică (ISCIR)',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (287,'2025-08-14 11:47:05.849531','3','Revizie întretinere',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (288,'2025-08-14 11:47:33.925625','4','Punere în funcțiune',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (289,'2025-08-14 11:47:57.132730','5','Montare termostat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (290,'2025-08-14 11:48:24.440896','6','Montare filtre protecție',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (291,'2025-08-14 11:49:19.822853','7','Montare aer condiționat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (292,'2025-08-14 11:50:26.486542','8','Pret montare termostat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (293,'2025-08-14 11:51:01.559088','8','Pret montare termostat',3,'',27,1);
INSERT INTO `django_admin_log` VALUES (294,'2025-08-14 19:38:52.045592','1','test',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (295,'2025-08-14 19:45:01.903203','1','test',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (296,'2025-08-14 20:36:06.406100','2','test2',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (297,'2025-08-14 20:39:25.250367','2','test2',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (298,'2025-08-14 20:41:51.702383','2','test2',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (299,'2025-08-14 20:42:56.490180','2','test2',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (300,'2025-08-14 20:54:47.334485','1','test',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (301,'2025-08-14 20:56:53.030350','2','test2',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (302,'2025-08-14 20:57:04.460949','2','test2',3,'',27,1);
INSERT INTO `django_admin_log` VALUES (303,'2025-08-14 21:00:17.425638','1','test',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (304,'2025-08-14 21:04:11.898547','1','test',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (305,'2025-08-14 21:10:01.634571','1','test',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (306,'2025-08-14 21:20:51.787530','1','test',3,'',27,1);
INSERT INTO `django_admin_log` VALUES (307,'2025-08-14 21:28:21.188189','3','test3',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (308,'2025-08-14 21:28:47.278202','3','test3',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (309,'2025-08-14 21:53:44.992733','5','Verificare tehnică (ISCIR)',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (310,'2025-08-14 21:54:35.275050','6','Verificare tehnică',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (311,'2025-08-14 21:57:43.714359','7','Verificare tehnică',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (312,'2025-08-14 21:58:21.530603','3','test3',3,'',27,1);
INSERT INTO `django_admin_log` VALUES (313,'2025-08-14 21:58:21.530603','6','Verificare tehnică',3,'',27,1);
INSERT INTO `django_admin_log` VALUES (314,'2025-09-13 17:57:00.447138','7','Verificare tehnică',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (315,'2025-09-13 17:57:00.468841','7','Verificare tehnică',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (316,'2025-09-13 17:57:33.144352','8','Reparatii centrale termice',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (317,'2025-09-13 18:00:08.808381','9','Revizii de întreținere',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (318,'2025-09-13 18:01:14.181025','10','Puneri în funcțiune',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (319,'2025-09-13 18:02:01.638624','11','Montare termostat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (320,'2025-09-13 18:02:29.987143','12','Montare filtre protecție',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (321,'2025-09-13 18:49:45.682671','12','Montare filtre protecție',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (322,'2025-09-13 18:52:44.122114','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (323,'2025-09-13 18:52:57.044710','7','Verificare tehnică',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (324,'2025-09-13 19:02:06.731906','7','Verificare tehnică',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (325,'2025-09-13 19:05:56.418279','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (326,'2025-09-13 19:07:06.156033','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (327,'2025-09-13 19:09:13.273509','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (328,'2025-09-13 19:38:05.398007','9','Revizii de întreținere',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (329,'2025-09-13 19:55:02.745649','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (330,'2025-09-13 19:59:51.749368','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (331,'2025-09-13 20:02:28.119256','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (332,'2025-09-13 20:05:06.052518','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (333,'2025-09-13 20:12:29.519012','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (334,'2025-09-13 20:14:13.985929','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (335,'2025-09-13 20:14:24.375465','7','Verificare tehnică',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (336,'2025-09-13 20:15:41.477247','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (337,'2025-09-13 20:17:13.504857','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (338,'2025-09-13 20:17:29.594351','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (339,'2025-09-13 20:20:03.290717','7','Verificare tehnică',2,'[{\"changed\": {\"fields\": [\"Con\\u021binut\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (340,'2025-09-13 22:17:17.629245','7','Verificare tehnică',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (341,'2025-09-17 12:16:50.001221','1','Montaj termostat Wireless la P.I.F - 100 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (342,'2025-09-17 12:17:36.163598','2','Montaj termostat Wireless cu control pe internet la P.I.F. - 170 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (343,'2025-09-17 12:18:00.202126','3','Montaj termostat Wireless - 120 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (344,'2025-09-17 12:18:27.879639','4','Montaj termostat Wireless cu control pe internet - 200 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (345,'2025-09-17 12:23:07.254995','3','Montaj termostat Wireless - 320.00 lei',2,'[{\"changed\": {\"fields\": [\"Pre\\u021b (lei)\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (346,'2025-09-17 12:33:00.783347','5','Verificare tehnică periodică - 150 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (347,'2025-09-18 17:28:25.019743','5','Verificare tehnică periodică - 150.00 lei',2,'[{\"changed\": {\"fields\": [\"Serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (348,'2025-09-18 17:28:25.130378','5','Verificare tehnică periodică - 150.00 lei',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (349,'2025-09-18 17:36:54.210968','5','Verificare tehnică periodică - 150.00 lei',2,'[{\"changed\": {\"fields\": [\"Serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (350,'2025-09-18 21:14:46.468180','6','Revizii de întreținere - 200 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (351,'2025-09-18 21:20:21.275106','6','Revizii de întreținere - 201.00 lei',2,'[{\"changed\": {\"fields\": [\"Pre\\u021b (lei)\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (352,'2025-09-18 21:52:39.649969','7','Autorizație ISCIR la P.I.F - 240 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (353,'2025-09-18 21:53:58.291203','8','Montaj termostat Wireless la P.I.F - 100 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (354,'2025-09-18 21:55:22.284539','9','Montaj termostat wireless cu control pe internet la P.i.f - 170 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (355,'2025-09-18 21:55:22.301538','10','Montaj termostat wireless cu control pe internet la P.i.f - 170 lei',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (356,'2025-09-18 21:55:49.990093','9','Montaj termostat wireless cu control pe internet la P.I.F - 170.00 lei',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (357,'2025-09-18 21:56:05.593898','10','Montaj termostat wireless cu control pe internet la P.i.f - 170.00 lei',3,'',31,1);
INSERT INTO `django_admin_log` VALUES (358,'2025-09-18 21:59:33.025042','8','Montaj termostat Wireless la P.I.F - 101.00 lei',2,'[{\"changed\": {\"fields\": [\"Pre\\u021b (lei)\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (359,'2025-09-23 12:37:55.514279','13','Aer condiționat',1,'[{\"added\": {}}, {\"added\": {\"name\": \"pret serviciu\", \"object\": \"Montaj aer condi\\u021bionat 9000-12000 BTU, care are kitul de instalare inclus - 650 lei\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (360,'2025-09-23 12:38:41.028392','13','Aer condiționat',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',27,1);
INSERT INTO `django_admin_log` VALUES (361,'2025-09-23 12:45:24.758044','13','Aer condiționat',3,'',27,1);
INSERT INTO `django_admin_log` VALUES (362,'2025-09-23 12:45:59.707014','14','Montaj aer condiționat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (363,'2025-09-23 12:52:11.317908','15','Igienizare aer conditionat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (364,'2025-09-23 12:53:58.805413','16','Revizie aer conditionat',1,'[{\"added\": {}}]',27,1);
INSERT INTO `django_admin_log` VALUES (365,'2025-09-24 08:03:46.416596','14','Montaj aer condiționat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Montaj aer condi\\u021bionat 9000-12000 BTU, care are kitul de instalare inclus - 650 lei\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (366,'2025-09-24 08:08:12.046400','14','Montaj aer condiționat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Montaj aer condi\\u021bionat 9000-12000 BTU, care nu are kitul de instalare inclus - 750 lei\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (367,'2025-09-24 08:10:11.086579','14','Montaj aer condiționat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Montaj aer condi\\u021bionat 18000-24000 BTU, care are kitul de instalare inclus - 850 lei\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (368,'2025-09-24 08:12:21.484963','14','Montaj aer condiționat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Montaj aer condi\\u021bionat 18000-24000 BTU, care are kitul de instalare inclus - 950 lei\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (369,'2025-10-02 17:06:42.880112','16','trecere suplimentară prin beton - 115 lei (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (370,'2025-10-02 17:13:44.973051','17','trecere suplimentară prin perete de zidărie - 58 lei (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (371,'2025-10-02 17:13:45.004208','18','trecere suplimentară prin perete de zidărie - 58 lei (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (372,'2025-10-02 17:15:04.720486','17','trecere suplimentară prin perete de zidărie - 58.00 lei (Suplimentar)',3,'',31,1);
INSERT INTO `django_admin_log` VALUES (373,'2025-10-02 17:16:40.618210','19','traseu frigorific suplimentar peste cei 3 m incluși în kit (prelungire traseu prin sudură) - 150 lei (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (374,'2025-10-02 17:21:41.751738','18','trecere suplimentară prin perete de zidărie - 58.00 lei/buc (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Unitatea de m\\u0103sur\\u0103\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (375,'2025-10-02 17:27:53.783604','19','traseu frigorific suplimentar peste cei 3 m incluși în kit (prelungire traseu prin sudură) - 150.00 lei/m (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Unitatea de m\\u0103sur\\u0103\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (376,'2025-10-02 17:27:53.836602','19','traseu frigorific suplimentar peste cei 3 m incluși în kit (prelungire traseu prin sudură) - 150.00 lei/m (Suplimentar)',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (377,'2025-10-02 17:28:01.878943','16','trecere suplimentară prin beton - 115.00 lei/buc (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Unitatea de m\\u0103sur\\u0103\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (378,'2025-10-02 17:28:01.979940','16','trecere suplimentară prin beton - 115.00 lei/buc (Suplimentar)',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (379,'2025-10-02 17:28:52.774320','20','mascarea traseului frigorific cu mască PVC - 52 lei/m (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (380,'2025-10-02 17:34:03.536851','21','prelungirea cablului de alimentare cu energie electrică - 18 lei/m (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (381,'2025-10-02 17:35:25.586523','22','prelungirea furtunului de condens - 12 lei/m (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (382,'2025-10-02 17:36:33.446803','23','set șuruburi + dibluri speciale cu lungimea de 20 cm pentru montajul pe suprafețe termoizolate cu polistiren - 35 lei/ (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (383,'2025-10-02 17:37:48.326941','24','montarea unităților exterioare cu ajutorul scărilor la o înăltime până în 3 m - 100 lei, înălțime până în 6 m - 230 lei/ (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (384,'2025-10-02 17:37:48.354940','25','montarea unităților exterioare cu ajutorul scărilor la o înăltime până în 3 m - 100 lei, înălțime până în 6 m - 230 lei/ (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (385,'2025-10-02 17:38:27.214065','26','demontarea aparatului de aer condiționat existent în vederea instalării echipamentului nou - 200 lei/ (Suplimentar)',1,'[{\"added\": {}}]',31,1);
INSERT INTO `django_admin_log` VALUES (386,'2025-10-02 17:58:55.978246','25','Montarea unităților exterioare cu ajutorul scărilor la o înăltime până în 3 m - 100 lei, înălțime până în 6 m - 230.00 lei/ (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (387,'2025-10-02 17:58:56.103865','25','Montarea unităților exterioare cu ajutorul scărilor la o înăltime până în 3 m - 100 lei, înălțime până în 6 m - 230.00 lei/ (Suplimentar)',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (388,'2025-10-02 17:59:11.379055','24','Montarea unităților exterioare cu ajutorul scărilor la o înăltime până în 3 m - 100 lei, înălțime până în 6 m - 230.00 lei/ (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (389,'2025-10-02 17:59:25.464418','21','Prelungirea cablului de alimentare cu energie electrică - 18.00 lei/m (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (390,'2025-10-02 17:59:25.622426','21','Prelungirea cablului de alimentare cu energie electrică - 18.00 lei/m (Suplimentar)',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (391,'2025-10-02 17:59:38.662255','22','Prelungirea furtunului de condens - 12.00 lei/m (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (392,'2025-10-02 17:59:52.223514','23','Set șuruburi + dibluri speciale cu lungimea de 20 cm pentru montajul pe suprafețe termoizolate cu polistiren - 35.00 lei/ (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (393,'2025-10-02 18:00:04.010067','19','Traseu frigorific suplimentar peste cei 3 m incluși în kit (prelungire traseu prin sudură) - 150.00 lei/m (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (394,'2025-10-02 18:00:04.166179','19','Traseu frigorific suplimentar peste cei 3 m incluși în kit (prelungire traseu prin sudură) - 150.00 lei/m (Suplimentar)',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (395,'2025-10-02 18:00:21.188502','16','Trecere suplimentară prin beton - 115.00 lei/buc (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (396,'2025-10-02 18:00:36.837984','18','Trecere suplimentară prin perete de zidărie - 58.00 lei/buc (Suplimentar)',2,'[{\"changed\": {\"fields\": [\"Denumire serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (397,'2025-10-02 19:44:56.130197','5','Verificare tehnică periodică - 150.00 lei/ (Standard)',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (398,'2025-10-02 19:56:06.339392','3','Montaj termostat Wireless - 320.00 lei/ (Standard)',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (399,'2025-10-02 19:56:06.455593','3','Montaj termostat Wireless - 320.00 lei/ (Standard)',2,'[]',31,1);
INSERT INTO `django_admin_log` VALUES (400,'2025-10-02 19:56:30.430422','9','Montaj termostat wireless cu control pe internet la P.I.F - 170.00 lei/ (Standard)',2,'[{\"changed\": {\"fields\": [\"Serviciu\"]}}]',31,1);
INSERT INTO `django_admin_log` VALUES (401,'2025-10-02 20:00:12.614330','14','Montaj aer condiționat',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (402,'2025-10-02 20:00:12.820033','14','Montaj aer condiționat',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (403,'2025-10-02 20:00:40.810685','11','Montare termostat',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (404,'2025-10-03 12:26:38.213768','15','Igienizare aer conditionat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Igienizare aer conditionat 9000-12000 BTU - 140 lei/ (Standard)\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (405,'2025-10-03 12:27:56.517241','15','Igienizare aer conditionat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Igienizare aer condi\\u021bionat 1400-18000 BTU - 160 lei/ (Standard)\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (406,'2025-10-03 12:29:38.031537','15','Igienizare aer conditionat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Igienizare aer condi\\u021bionat mai mare de 1800 BTU - 180 lei/ (Standard)\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (407,'2025-10-03 12:29:42.541917','15','Igienizare aer conditionat',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (408,'2025-10-03 12:50:30.025720','16','Revizie aer conditionat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Revizie aparat aer condi\\u021bionat tip split 9000BTU-12000BTU - 500 lei/ (Standard)\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (409,'2025-10-03 12:51:40.635785','16','Revizie aer conditionat',2,'[{\"added\": {\"name\": \"pret serviciu\", \"object\": \"Revizie aparat aer condi\\u021bionat tip split 18000BTU-24000BTU - 600 lei/ (Standard)\"}}]',27,1);
INSERT INTO `django_admin_log` VALUES (410,'2025-10-03 12:51:45.637253','16','Revizie aer conditionat',2,'[]',27,1);
INSERT INTO `django_admin_log` VALUES (411,'2025-10-03 16:16:02.432444','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (412,'2025-10-03 16:37:21.675178','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',1,1);
INSERT INTO `django_admin_log` VALUES (413,'2025-10-03 16:49:43.973034','1','BBinstall Organization',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',1,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_romanian_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_romanian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry');
INSERT INTO `django_content_type` VALUES (1,'admin_interface','theme');
INSERT INTO `django_content_type` VALUES (9,'adrese','artera');
INSERT INTO `django_content_type` VALUES (19,'adrese','arteraistoric');
INSERT INTO `django_content_type` VALUES (15,'adrese','arterarelatie');
INSERT INTO `django_content_type` VALUES (24,'adrese','codpostal');
INSERT INTO `django_content_type` VALUES (18,'adrese','codpostalaltestrazi');
INSERT INTO `django_content_type` VALUES (17,'adrese','codpostalnumarstrazi');
INSERT INTO `django_content_type` VALUES (10,'adrese','judet');
INSERT INTO `django_content_type` VALUES (16,'adrese','localitate');
INSERT INTO `django_content_type` VALUES (20,'adrese','localitateistoric');
INSERT INTO `django_content_type` VALUES (21,'adrese','localitaterelatie');
INSERT INTO `django_content_type` VALUES (25,'adrese','relatiilocalitati');
INSERT INTO `django_content_type` VALUES (11,'adrese','stareartera');
INSERT INTO `django_content_type` VALUES (26,'adrese','strada');
INSERT INTO `django_content_type` VALUES (12,'adrese','taravaluta');
INSERT INTO `django_content_type` VALUES (13,'adrese','tipartera');
INSERT INTO `django_content_type` VALUES (14,'adrese','tiplocalitate');
INSERT INTO `django_content_type` VALUES (4,'auth','group');
INSERT INTO `django_content_type` VALUES (3,'auth','permission');
INSERT INTO `django_content_type` VALUES (5,'auth','user');
INSERT INTO `django_content_type` VALUES (22,'beneficiari','beneficiar');
INSERT INTO `django_content_type` VALUES (6,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (23,'raportare','anexa3');
INSERT INTO `django_content_type` VALUES (31,'servicii','pretserviciu');
INSERT INTO `django_content_type` VALUES (30,'servicii','priceitem');
INSERT INTO `django_content_type` VALUES (28,'servicii','servicetable');
INSERT INTO `django_content_type` VALUES (29,'servicii','servicetablecell');
INSERT INTO `django_content_type` VALUES (27,'servicii','serviciu');
INSERT INTO `django_content_type` VALUES (7,'sessions','session');
INSERT INTO `django_content_type` VALUES (8,'solicitari','solicitari');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-02-21 19:14:53.495552');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2025-02-21 19:14:54.454560');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2025-02-21 19:14:54.691555');
INSERT INTO `django_migrations` VALUES (4,'admin','0002_logentry_remove_auto_add','2025-02-21 19:14:54.702553');
INSERT INTO `django_migrations` VALUES (5,'admin','0003_logentry_add_action_flag_choices','2025-02-21 19:14:54.712560');
INSERT INTO `django_migrations` VALUES (6,'admin_interface','0001_initial','2025-02-21 19:14:54.749551');
INSERT INTO `django_migrations` VALUES (7,'admin_interface','0002_add_related_modal','2025-02-21 19:14:55.004554');
INSERT INTO `django_migrations` VALUES (8,'admin_interface','0003_add_logo_color','2025-02-21 19:14:55.073553');
INSERT INTO `django_migrations` VALUES (9,'admin_interface','0004_rename_title_color','2025-02-21 19:14:55.116557');
INSERT INTO `django_migrations` VALUES (10,'admin_interface','0005_add_recent_actions_visible','2025-02-21 19:14:55.251555');
INSERT INTO `django_migrations` VALUES (11,'admin_interface','0006_bytes_to_str','2025-02-21 19:14:55.394567');
INSERT INTO `django_migrations` VALUES (12,'admin_interface','0007_add_favicon','2025-02-21 19:14:55.459550');
INSERT INTO `django_migrations` VALUES (13,'admin_interface','0008_change_related_modal_background_opacity_type','2025-02-21 19:14:55.569554');
INSERT INTO `django_migrations` VALUES (14,'admin_interface','0009_add_enviroment','2025-02-21 19:14:55.696553');
INSERT INTO `django_migrations` VALUES (15,'admin_interface','0010_add_localization','2025-02-21 19:14:55.722548');
INSERT INTO `django_migrations` VALUES (16,'admin_interface','0011_add_environment_options','2025-02-21 19:14:55.963565');
INSERT INTO `django_migrations` VALUES (17,'admin_interface','0012_update_verbose_names','2025-02-21 19:14:55.980557');
INSERT INTO `django_migrations` VALUES (18,'admin_interface','0013_add_related_modal_close_button','2025-02-21 19:14:56.047550');
INSERT INTO `django_migrations` VALUES (19,'admin_interface','0014_name_unique','2025-02-21 19:14:56.080548');
INSERT INTO `django_migrations` VALUES (20,'admin_interface','0015_add_language_chooser_active','2025-02-21 19:14:56.176550');
INSERT INTO `django_migrations` VALUES (21,'admin_interface','0016_add_language_chooser_display','2025-02-21 19:14:56.228548');
INSERT INTO `django_migrations` VALUES (22,'admin_interface','0017_change_list_filter_dropdown','2025-02-21 19:14:56.253549');
INSERT INTO `django_migrations` VALUES (23,'admin_interface','0018_theme_list_filter_sticky','2025-02-21 19:14:56.371571');
INSERT INTO `django_migrations` VALUES (24,'admin_interface','0019_add_form_sticky','2025-02-21 19:14:56.541553');
INSERT INTO `django_migrations` VALUES (25,'admin_interface','0020_module_selected_colors','2025-02-21 19:14:56.698570');
INSERT INTO `django_migrations` VALUES (26,'admin_interface','0021_file_extension_validator','2025-02-21 19:14:56.712564');
INSERT INTO `django_migrations` VALUES (27,'admin_interface','0022_add_logo_max_width_and_height','2025-02-21 19:14:57.070561');
INSERT INTO `django_migrations` VALUES (28,'admin_interface','0023_theme_foldable_apps','2025-02-21 19:14:57.155565');
INSERT INTO `django_migrations` VALUES (29,'admin_interface','0024_remove_theme_css','2025-02-21 19:14:57.228550');
INSERT INTO `django_migrations` VALUES (30,'admin_interface','0025_theme_language_chooser_control','2025-02-21 19:14:57.408551');
INSERT INTO `django_migrations` VALUES (31,'admin_interface','0026_theme_list_filter_highlight','2025-02-21 19:14:57.493552');
INSERT INTO `django_migrations` VALUES (32,'admin_interface','0027_theme_list_filter_removal_links','2025-02-21 19:14:57.575548');
INSERT INTO `django_migrations` VALUES (33,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2025-02-21 19:14:57.763563');
INSERT INTO `django_migrations` VALUES (34,'admin_interface','0029_theme_css_generic_link_active_color','2025-02-21 19:14:57.858578');
INSERT INTO `django_migrations` VALUES (35,'admin_interface','0030_theme_collapsible_stacked_inlines_and_more','2025-02-21 19:14:58.205558');
INSERT INTO `django_migrations` VALUES (36,'adrese','0001_initial','2025-02-21 19:15:00.440552');
INSERT INTO `django_migrations` VALUES (37,'contenttypes','0002_remove_content_type_name','2025-02-21 19:15:00.638558');
INSERT INTO `django_migrations` VALUES (38,'auth','0002_alter_permission_name_max_length','2025-02-21 19:15:00.772553');
INSERT INTO `django_migrations` VALUES (39,'auth','0003_alter_user_email_max_length','2025-02-21 19:15:00.838551');
INSERT INTO `django_migrations` VALUES (40,'auth','0004_alter_user_username_opts','2025-02-21 19:15:00.851552');
INSERT INTO `django_migrations` VALUES (41,'auth','0005_alter_user_last_login_null','2025-02-21 19:15:00.981553');
INSERT INTO `django_migrations` VALUES (42,'auth','0006_require_contenttypes_0002','2025-02-21 19:15:00.984553');
INSERT INTO `django_migrations` VALUES (43,'auth','0007_alter_validators_add_error_messages','2025-02-21 19:15:00.996550');
INSERT INTO `django_migrations` VALUES (44,'auth','0008_alter_user_username_max_length','2025-02-21 19:15:01.127551');
INSERT INTO `django_migrations` VALUES (45,'auth','0009_alter_user_last_name_max_length','2025-02-21 19:15:01.254553');
INSERT INTO `django_migrations` VALUES (46,'auth','0010_alter_group_name_max_length','2025-02-21 19:15:01.294551');
INSERT INTO `django_migrations` VALUES (47,'auth','0011_update_proxy_permissions','2025-02-21 19:15:01.332554');
INSERT INTO `django_migrations` VALUES (48,'auth','0012_alter_user_first_name_max_length','2025-02-21 19:15:01.497555');
INSERT INTO `django_migrations` VALUES (49,'beneficiari','0001_initial','2025-02-21 19:15:01.614552');
INSERT INTO `django_migrations` VALUES (50,'raportare','0001_initial','2025-02-21 19:15:01.639550');
INSERT INTO `django_migrations` VALUES (51,'sessions','0001_initial','2025-02-21 19:15:01.699548');
INSERT INTO `django_migrations` VALUES (52,'solicitari','0001_initial','2025-02-21 19:15:02.042554');
INSERT INTO `django_migrations` VALUES (53,'solicitari','0002_solicitari_bloc_solicitari_cod_postal_and_more','2025-02-24 20:28:30.892745');
INSERT INTO `django_migrations` VALUES (54,'beneficiari','0002_beneficiar_bloc_beneficiar_cod_postal_and_more','2025-02-25 10:41:39.609957');
INSERT INTO `django_migrations` VALUES (55,'adrese','0002_alter_artera_denumire','2025-02-26 09:27:20.239986');
INSERT INTO `django_migrations` VALUES (56,'adrese','0003_alter_artera_denumire','2025-02-26 11:44:40.245010');
INSERT INTO `django_migrations` VALUES (57,'solicitari','0003_solicitari_etaj_solicitari_scara','2025-02-26 14:43:01.272338');
INSERT INTO `django_migrations` VALUES (59,'servicii','0002_alter_serviciu_continut_html','2025-05-23 20:30:00.110792');
INSERT INTO `django_migrations` VALUES (61,'servicii','0002_remove_serviciu_continut_html_serviciu_descriere_and_more','2025-08-14 09:29:56.257130');
INSERT INTO `django_migrations` VALUES (64,'servicii','0001_initial','2025-08-14 19:28:56.258919');
INSERT INTO `django_migrations` VALUES (65,'servicii','002_mig','2025-09-13 21:12:51.361090');
INSERT INTO `django_migrations` VALUES (66,'servicii','0003_remove_serviciu_continut_html','2025-09-17 12:11:39.859194');
INSERT INTO `django_migrations` VALUES (67,'servicii','0004_pretserviciu','2025-09-17 12:12:27.635433');
INSERT INTO `django_migrations` VALUES (68,'servicii','0005_pretserviciu_categorie','2025-10-02 17:00:28.671679');
INSERT INTO `django_migrations` VALUES (69,'servicii','0006_pretserviciu_um','2025-10-02 17:20:47.988933');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_romanian_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_romanian_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('001j0edug8wndetmppfns16y1ngu4u61','.eJxVjMsOwiAQRf-FtSElw2tcuvcbyACDVA0kpV0Z_12bdKHbe865LxFoW2vYBi9hzuIslDj9bpHSg9sO8p3arcvU27rMUe6KPOiQ1575eTncv4NKo35rhuIAtXIAJRpjtaEIeiIkn7Qv2ip0DJYxo7dcpoTsNFrw3hn0KYv3B8bQNyI:1u0RSB:ftAPYQ_2y8FNe9osWXTG8AULjnenxWlbLAmuqv7MTzc','2025-04-17 20:46:23.498677');
INSERT INTO `django_session` VALUES ('2xn7v0lmppalm2g4ku6heobj5gkmz1hz','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1uU0pC:wfHdV4yA8OsDiL-rn7_2Jn7cOEXBJPI_YmR63teKDPE','2025-07-08 10:24:22.925776');
INSERT INTO `django_session` VALUES ('4ww78dtvc3d1e7y7nselsea7g1cem9zy','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1uyr3m:Z585SS4eDcOmsZQZ3MSYwF9zFRbXonAf-PbSTQVlxEo','2025-10-01 12:14:54.198222');
INSERT INTO `django_session` VALUES ('5abyqg849jn7fuhsarynw42nenmlkel0','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1umTJK:HG4GIvgcfoCXntiOxadIG-T_Xb4VYfU2W1L2Md8lJ0A','2025-08-28 08:27:46.653057');
INSERT INTO `django_session` VALUES ('ae0karqz2tcf9dhq8wrx0r1sapobhdpy','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1v4m0g:bbFuTPs2VPzM6HXnmb5c1KOroQy_vAueFGOxXrykXow','2025-10-17 20:04:10.469199');
INSERT INTO `django_session` VALUES ('b1uiltqdtgewdex56e80kgx60abfkasz','.eJxVjMsOwiAQRf-FtSElw2tcuvcbyACDVA0kpV0Z_12bdKHbe865LxFoW2vYBi9hzuIslDj9bpHSg9sO8p3arcvU27rMUe6KPOiQ1575eTncv4NKo35rhuIAtXIAJRpjtaEIeiIkn7Qv2ip0DJYxo7dcpoTsNFrw3hn0KYv3B8bQNyI:1twiQw:GSF2mLkbafgeyuTrd_Bxpov7LSuJzJgN_pJ-6qPq0uc','2025-04-07 14:05:42.238062');
INSERT INTO `django_session` VALUES ('bvahqg4ikvtum6i8s7oaqay5sey9h3ey','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1uABtT:3aNd8NlNVTHxcrZXG0qCO8jSRCYlj9jdZIwDKrxqKUs','2025-05-14 18:10:51.160941');
INSERT INTO `django_session` VALUES ('f51wa70799voyf2pe81pypwxsdk1eblv','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1uhQoa:FV_3Rhnf8uuzQmXaQmQto9ihiRzp7jPhlfXGCmUAfqA','2025-08-14 10:47:12.030913');
INSERT INTO `django_session` VALUES ('fa8cd4fx1w62yi9r9ighlnxud7b07lo1','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1uPHII:-3uogWWYTghEfyiCn0PP3IPUyCkLiaFM5exIn2Q0onc','2025-06-25 08:58:50.471067');
INSERT INTO `django_session` VALUES ('fhzq9pectrprxtwxeurcn4a3pkzxb6p5','.eJxVjMsOwiAQRf-FtSElw2tcuvcbyACDVA0kpV0Z_12bdKHbe865LxFoW2vYBi9hzuIslDj9bpHSg9sO8p3arcvU27rMUe6KPOiQ1575eTncv4NKo35rhuIAtXIAJRpjtaEIeiIkn7Qv2ip0DJYxo7dcpoTsNFrw3hn0KYv3B8bQNyI:1tlYzK:aM-YcoLSC7xAV56NH1E1APp7NvHPtRz9fA6kb9RNUHY','2025-03-07 19:47:06.317796');
INSERT INTO `django_session` VALUES ('lr91eplhw5or3fk6vtkkqw7yfjq5to84','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1uIXxy:k_flgTYhkbzTZ3FooFcoKjMEkvrCeyJOVjYpXX1IeCE','2025-06-06 19:22:02.552522');
INSERT INTO `django_session` VALUES ('r06ekdb0o7a51niqqx4gsvckd6hrtfha','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1v4Mj9:LV_j7ggcpW5hchCA4q3BeALyVoFl3VI0hh_Sluy5n5c','2025-10-16 17:04:23.231299');
INSERT INTO `django_session` VALUES ('rk26hxun0dy0qsw4qn515xj11t8gpmmo','.eJxVjMsOwiAQRf-FtSElw2tcuvcbyACDVA0kpV0Z_12bdKHbe865LxFoW2vYBi9hzuIslDj9bpHSg9sO8p3arcvU27rMUe6KPOiQ1575eTncv4NKo35rhuIAtXIAJRpjtaEIeiIkn7Qv2ip0DJYxo7dcpoTsNFrw3hn0KYv3B8bQNyI:1tlZ0j:Gy_mqOZWnJOS3bR3SsmSrTRkRjOWSqXJOYe8kPG3gec','2025-03-07 19:48:33.168362');
INSERT INTO `django_session` VALUES ('rx0oiw6wgeza3apg4s00iso656ynqyvt','.eJxVjMsOwiAQRf-FtSElw2tcuvcbyACDVA0kpV0Z_12bdKHbe865LxFoW2vYBi9hzuIslDj9bpHSg9sO8p3arcvU27rMUe6KPOiQ1575eTncv4NKo35rhuIAtXIAJRpjtaEIeiIkn7Qv2ip0DJYxo7dcpoTsNFrw3hn0KYv3B8bQNyI:1tlYXW:h6OxUUdlTU_Of4bwWmQW5ujKXnNBSaPsUp2oenh8o1M','2025-03-07 19:18:22.883805');
INSERT INTO `django_session` VALUES ('ukq3xraksufu1s6cbircm4ua95fcl0ae','.eJxVjMsOwiAQRf-FtSElw2tcuvcbyACDVA0kpV0Z_12bdKHbe865LxFoW2vYBi9hzuIslDj9bpHSg9sO8p3arcvU27rMUe6KPOiQ1575eTncv4NKo35rhuIAtXIAJRpjtaEIeiIkn7Qv2ip0DJYxo7dcpoTsNFrw3hn0KYv3B8bQNyI:1tnEoc:VafCyjVOhqTblRpeU7wb7rjmXRlqwzpgHnAfNZe7huk','2025-03-12 10:38:58.134665');
INSERT INTO `django_session` VALUES ('ultehi94nt458qj4ygad4efrtxb3b8vc','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1uIXxz:sqQDXQPqBqTxla13tRY2JEhQsW-GKA3se1r70CkwZyc','2025-06-06 19:22:03.174015');
INSERT INTO `django_session` VALUES ('x7hd2mfk22pngcxuqu4fun0uokx4w9ay','.eJxVjMsOwiAQRf-FtSElw2tcuvcbyACDVA0kpV0Z_12bdKHbe865LxFoW2vYBi9hzuIslDj9bpHSg9sO8p3arcvU27rMUe6KPOiQ1575eTncv4NKo35rhuIAtXIAJRpjtaEIeiIkn7Qv2ip0DJYxo7dcpoTsNFrw3hn0KYv3B8bQNyI:1tnEh1:pOw4s97CDWJN6P9qBQ3-Nh54vWE2UJsXIWiBfBlxJIw','2025-03-12 10:31:07.736295');
INSERT INTO `django_session` VALUES ('yi9yl5v5efhpj5eus27xo44ipe72bp42','.eJxVjMEOwiAQBf-FsyFA6UI9eu83kIUFqRpISnsy_rs06UGvb-bNmznct-z2Fle3ELsyyS6_m8fwjOUA9MByrzzUsq2L54fCT9r4XCm-bqf7F8jYcn9rJQEsiZE8ASUTVEh2UkMCQGlS0GoQSg4CpTQ2GS1ib0MXvIBxIs0-X9KINzk:1uhR5N:IygwG2YsZOMJV2XWDrvVyR7GFE49uMO2n2DJQXtpFbU','2025-08-14 11:04:33.391281');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raportare_anexa3`
--

DROP TABLE IF EXISTS `raportare_anexa3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raportare_anexa3` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titlu` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `descriere` longtext COLLATE utf8mb4_romanian_ci,
  `data_creare` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raportare_anexa3`
--

LOCK TABLES `raportare_anexa3` WRITE;
/*!40000 ALTER TABLE `raportare_anexa3` DISABLE KEYS */;
/*!40000 ALTER TABLE `raportare_anexa3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicii_pretserviciu`
--

DROP TABLE IF EXISTS `servicii_pretserviciu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicii_pretserviciu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `denumire` varchar(200) COLLATE utf8mb4_romanian_ci NOT NULL,
  `pret` decimal(8,2) NOT NULL,
  `serviciu_id` bigint NOT NULL,
  `categorie` varchar(20) COLLATE utf8mb4_romanian_ci NOT NULL,
  `um` varchar(50) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servicii_pretservici_serviciu_id_5cfe2a6c_fk_servicii_` (`serviciu_id`),
  CONSTRAINT `servicii_pretservici_serviciu_id_5cfe2a6c_fk_servicii_` FOREIGN KEY (`serviciu_id`) REFERENCES `servicii_serviciu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicii_pretserviciu`
--

LOCK TABLES `servicii_pretserviciu` WRITE;
/*!40000 ALTER TABLE `servicii_pretserviciu` DISABLE KEYS */;
INSERT INTO `servicii_pretserviciu` VALUES (1,'Montaj termostat Wireless la P.I.F',100.00,11,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (2,'Montaj termostat Wireless cu control pe internet la P.I.F.',170.00,11,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (3,'Montaj termostat Wireless',320.00,11,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (4,'Montaj termostat Wireless cu control pe internet',200.00,11,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (5,'Verificare tehnică periodică',150.00,7,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (6,'Revizii de întreținere',201.00,9,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (7,'Autorizație ISCIR la P.I.F',240.00,10,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (8,'Montaj termostat Wireless la P.I.F',101.00,10,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (9,'Montaj termostat wireless cu control pe internet la P.I.F',170.00,11,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (12,'Montaj aer condiționat 9000-12000 BTU, care are kitul de instalare inclus',650.00,14,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (13,'Montaj aer condiționat 9000-12000 BTU, care nu are kitul de instalare inclus',750.00,14,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (14,'Montaj aer condiționat 18000-24000 BTU, care are kitul de instalare inclus',850.00,14,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (15,'Montaj aer condiționat 18000-24000 BTU, care are kitul de instalare inclus',950.00,14,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (16,'Trecere suplimentară prin beton',115.00,14,'suplimentar','buc');
INSERT INTO `servicii_pretserviciu` VALUES (18,'Trecere suplimentară prin perete de zidărie',58.00,14,'suplimentar','buc');
INSERT INTO `servicii_pretserviciu` VALUES (19,'Traseu frigorific suplimentar peste cei 3 m incluși în kit (prelungire traseu prin sudură)',150.00,14,'suplimentar','m');
INSERT INTO `servicii_pretserviciu` VALUES (20,'mascarea traseului frigorific cu mască PVC',52.00,14,'suplimentar','m');
INSERT INTO `servicii_pretserviciu` VALUES (21,'Prelungirea cablului de alimentare cu energie electrică',18.00,14,'suplimentar','m');
INSERT INTO `servicii_pretserviciu` VALUES (22,'Prelungirea furtunului de condens',12.00,14,'suplimentar','m');
INSERT INTO `servicii_pretserviciu` VALUES (23,'Set șuruburi + dibluri speciale cu lungimea de 20 cm pentru montajul pe suprafețe termoizolate cu polistiren',35.00,14,'suplimentar',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (24,'Montarea unităților exterioare cu ajutorul scărilor la o înăltime până în 3 m - 100 lei, înălțime până în 6 m',230.00,14,'suplimentar',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (25,'Montarea unităților exterioare cu ajutorul scărilor la o înăltime până în 3 m - 100 lei, înălțime până în 6 m',230.00,14,'suplimentar',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (26,'demontarea aparatului de aer condiționat existent în vederea instalării echipamentului nou',200.00,14,'suplimentar',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (27,'Igienizare aer conditionat 9000-12000 BTU',140.00,15,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (28,'Igienizare aer condiționat 1400-18000 BTU',160.00,15,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (29,'Igienizare aer condiționat mai mare de 1800 BTU',180.00,15,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (30,'Revizie aparat aer condiționat tip split 9000BTU-12000BTU',500.00,16,'standard',NULL);
INSERT INTO `servicii_pretserviciu` VALUES (31,'Revizie aparat aer condiționat tip split 18000BTU-24000BTU',600.00,16,'standard',NULL);
/*!40000 ALTER TABLE `servicii_pretserviciu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicii_priceitem`
--

DROP TABLE IF EXISTS `servicii_priceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicii_priceitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `service_key` varchar(120) COLLATE utf8mb4_romanian_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_romanian_ci NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  `currency` varchar(8) COLLATE utf8mb4_romanian_ci NOT NULL,
  `unit` varchar(50) COLLATE utf8mb4_romanian_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `servicii_priceitem_service_key_cc407a26` (`service_key`),
  KEY `servicii_pr_service_b32a34_idx` (`service_key`,`active`),
  CONSTRAINT `servicii_priceitem_chk_1` CHECK ((`order` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicii_priceitem`
--

LOCK TABLES `servicii_priceitem` WRITE;
/*!40000 ALTER TABLE `servicii_priceitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicii_priceitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicii_servicetable`
--

DROP TABLE IF EXISTS `servicii_servicetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicii_servicetable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titlu` varchar(150) COLLATE utf8mb4_romanian_ci NOT NULL,
  `border_style` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `border_color` varchar(7) COLLATE utf8mb4_romanian_ci NOT NULL,
  `border_width_px` smallint unsigned NOT NULL,
  `cell_padding_px` smallint unsigned NOT NULL,
  `zebra` tinyint(1) NOT NULL,
  `header_bg` varchar(7) COLLATE utf8mb4_romanian_ci NOT NULL,
  `serviciu_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `servicii_servicetabl_serviciu_id_a478d2e4_fk_servicii_` (`serviciu_id`),
  CONSTRAINT `servicii_servicetable_chk_1` CHECK ((`border_width_px` >= 0)),
  CONSTRAINT `servicii_servicetable_chk_2` CHECK ((`cell_padding_px` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicii_servicetable`
--

LOCK TABLES `servicii_servicetable` WRITE;
/*!40000 ALTER TABLE `servicii_servicetable` DISABLE KEYS */;
INSERT INTO `servicii_servicetable` VALUES (1,'Montare termostat','solid','#6a1b9a',2,10,1,'#ede7f6',1);
/*!40000 ALTER TABLE `servicii_servicetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicii_servicetablecell`
--

DROP TABLE IF EXISTS `servicii_servicetablecell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicii_servicetablecell` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `row_index` int unsigned NOT NULL,
  `col_index` int unsigned NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_romanian_ci NOT NULL,
  `align` varchar(6) COLLATE utf8mb4_romanian_ci NOT NULL,
  `bg_color` varchar(7) COLLATE utf8mb4_romanian_ci NOT NULL,
  `border_style` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `border_color` varchar(7) COLLATE utf8mb4_romanian_ci NOT NULL,
  `border_width_px` smallint unsigned DEFAULT NULL,
  `is_header` tinyint(1) NOT NULL,
  `colspan` smallint unsigned NOT NULL,
  `rowspan` smallint unsigned NOT NULL,
  `table_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `servicii_servicetablecel_table_id_row_index_col_i_d24082f6_uniq` (`table_id`,`row_index`,`col_index`),
  CONSTRAINT `servicii_servicetabl_table_id_5e3d8ab1_fk_servicii_` FOREIGN KEY (`table_id`) REFERENCES `servicii_servicetable` (`id`),
  CONSTRAINT `servicii_servicetablecell_chk_1` CHECK ((`row_index` >= 0)),
  CONSTRAINT `servicii_servicetablecell_chk_2` CHECK ((`col_index` >= 0)),
  CONSTRAINT `servicii_servicetablecell_chk_3` CHECK ((`border_width_px` >= 0)),
  CONSTRAINT `servicii_servicetablecell_chk_4` CHECK ((`colspan` >= 0)),
  CONSTRAINT `servicii_servicetablecell_chk_5` CHECK ((`rowspan` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicii_servicetablecell`
--

LOCK TABLES `servicii_servicetablecell` WRITE;
/*!40000 ALTER TABLE `servicii_servicetablecell` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicii_servicetablecell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicii_serviciu`
--

DROP TABLE IF EXISTS `servicii_serviciu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicii_serviciu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titlu` varchar(100) COLLATE utf8mb4_romanian_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_romanian_ci NOT NULL,
  `categorie` varchar(10) COLLATE utf8mb4_romanian_ci NOT NULL,
  `activ` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicii_serviciu`
--

LOCK TABLES `servicii_serviciu` WRITE;
/*!40000 ALTER TABLE `servicii_serviciu` DISABLE KEYS */;
INSERT INTO `servicii_serviciu` VALUES (7,'Verificare tehnică','verificare-tehnica','termice',1);
INSERT INTO `servicii_serviciu` VALUES (8,'Reparatii centrale termice','reparatii-centrale-termice','termice',1);
INSERT INTO `servicii_serviciu` VALUES (9,'Revizii de întreținere','revizii-de-intretinere','termice',1);
INSERT INTO `servicii_serviciu` VALUES (10,'Puneri în funcțiune','puneri-in-functiune','termice',1);
INSERT INTO `servicii_serviciu` VALUES (11,'Montare termostat','montare-termostat','termice',1);
INSERT INTO `servicii_serviciu` VALUES (12,'Montare filtre protecție','montare-filtre-protectie','termice',1);
INSERT INTO `servicii_serviciu` VALUES (14,'Montaj aer condiționat','montaj-aer-conditionat','clima',1);
INSERT INTO `servicii_serviciu` VALUES (15,'Igienizare aer conditionat','igienizare-aer-conditionat','clima',1);
INSERT INTO `servicii_serviciu` VALUES (16,'Revizie aer conditionat','revizie-aer-conditionat','clima',1);
/*!40000 ALTER TABLE `servicii_serviciu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitari_solicitari`
--

DROP TABLE IF EXISTS `solicitari_solicitari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitari_solicitari` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nume` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `prenume` varchar(255) COLLATE utf8mb4_romanian_ci NOT NULL,
  `telefon` varchar(15) COLLATE utf8mb4_romanian_ci NOT NULL,
  `tip_client` varchar(20) COLLATE utf8mb4_romanian_ci NOT NULL,
  `rezolvat` tinyint(1) NOT NULL,
  `nr_solicit` varchar(50) COLLATE utf8mb4_romanian_ci NOT NULL,
  `data_solicit` date NOT NULL,
  `tip_interventie` varchar(100) COLLATE utf8mb4_romanian_ci NOT NULL,
  `producator` varchar(100) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `data_program` date DEFAULT NULL,
  `ora_program` time(6) DEFAULT NULL,
  `observatii` longtext COLLATE utf8mb4_romanian_ci,
  `beneficiar_id` bigint DEFAULT NULL,
  `operator_id` int DEFAULT NULL,
  `bloc` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `cod_postal` varchar(20) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `judet_id` int DEFAULT NULL,
  `localitate_id` int DEFAULT NULL,
  `nr` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `strada_id` int DEFAULT NULL,
  `etaj` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  `scara` varchar(10) COLLATE utf8mb4_romanian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nr_solicit` (`nr_solicit`),
  KEY `solicitari_solicitar_beneficiar_id_3c9668fd_fk_beneficia` (`beneficiar_id`),
  KEY `solicitari_solicitari_operator_id_28c213d4_fk_auth_user_id` (`operator_id`),
  KEY `solicitari_solicitari_nume_214e1fec` (`nume`),
  KEY `solicitari_solicitari_telefon_824889d4` (`telefon`),
  KEY `solicitari_solicitari_judet_id_30578ac6_fk_adrese_judet_cod` (`judet_id`),
  KEY `solicitari_solicitar_localitate_id_0dd8ca7e_fk_adrese_lo` (`localitate_id`),
  KEY `solicitari_solicitari_strada_id_1c973f81_fk_adrese_artera_cod` (`strada_id`),
  CONSTRAINT `solicitari_solicitar_beneficiar_id_3c9668fd_fk_beneficia` FOREIGN KEY (`beneficiar_id`) REFERENCES `beneficiari_beneficiar` (`id`),
  CONSTRAINT `solicitari_solicitar_localitate_id_0dd8ca7e_fk_adrese_lo` FOREIGN KEY (`localitate_id`) REFERENCES `adrese_localitate` (`cod`),
  CONSTRAINT `solicitari_solicitari_judet_id_30578ac6_fk_adrese_judet_cod` FOREIGN KEY (`judet_id`) REFERENCES `adrese_judet` (`cod`),
  CONSTRAINT `solicitari_solicitari_operator_id_28c213d4_fk_auth_user_id` FOREIGN KEY (`operator_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `solicitari_solicitari_strada_id_1c973f81_fk_adrese_artera_cod` FOREIGN KEY (`strada_id`) REFERENCES `adrese_artera` (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitari_solicitari`
--

LOCK TABLES `solicitari_solicitari` WRITE;
/*!40000 ALTER TABLE `solicitari_solicitari` DISABLE KEYS */;
INSERT INTO `solicitari_solicitari` VALUES (66,'ionAS','claudiu','0740105760','fizic',0,'BB-80DDFD','2025-02-26','nedelcu',NULL,NULL,'2025-02-26','15:16:50.000000','',NULL,NULL,NULL,NULL,25,127,NULL,300,NULL,NULL);
INSERT INTO `solicitari_solicitari` VALUES (67,'pop','mihai','0740105678','fizic',0,'BB-2AB053','2025-02-26','nedelcu',NULL,NULL,'2025-02-26','15:44:38.000000','',NULL,1,NULL,NULL,25,127,NULL,300,NULL,NULL);
INSERT INTO `solicitari_solicitari` VALUES (68,'pinpin','claudiu','0740105760','fizic',0,'BB-A10427','2025-02-26','nedelcu',NULL,NULL,'2025-02-26','16:54:01.000000','',NULL,1,'VD2',NULL,25,127,'3',270,'3','2');
INSERT INTO `solicitari_solicitari` VALUES (69,'georgescu','ion','0740105760','fizic',0,'BB-8ACD3C','2025-04-30','TEST','bmx','Motan','2025-04-30','21:41:42.000000','asxaa',NULL,2,'VD3',NULL,9,19,NULL,19,'3','2');
/*!40000 ALTER TABLE `solicitari_solicitari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'stargas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-06 16:58:00
