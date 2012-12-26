-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.66-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema home
--

CREATE DATABASE IF NOT EXISTS olam;
USE olam;

--
-- Definition of table `login_details`
--

DROP TABLE IF EXISTS `login_details`;
CREATE TABLE `login_details` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `USER_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

/*!40000 ALTER TABLE `login_details` DISABLE KEYS */;
INSERT INTO `login_details` (`ID`,`USER_NAME`,`PASSWORD`,`USER_ID`) VALUES 
 (1,'arun','9265c009aab3b8bbc91c4decd2db1a660c64ec70','1'),
 (2,'anand','anand','2'),
 (3,'dinoop','dinoop','3'),
 (4,'prithvi','prithvi','4'),
 (5,'premnath','premnath','5'),
 (6,'rahul','rahul','6');
/*!40000 ALTER TABLE `login_details` ENABLE KEYS */;


--
-- Definition of table `share_details`
--

DROP TABLE IF EXISTS `share_details`;
CREATE TABLE `share_details` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SPND_ID` int(11) DEFAULT NULL,
  `PER_HEAD` varchar(45) NOT NULL,
  `USER_ID` varchar(45) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CREDIT` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `CURRENT_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_share_details_1` (`SPND_ID`) USING BTREE,
  CONSTRAINT `FK_share_details_1` FOREIGN KEY (`SPND_ID`) REFERENCES `spend_details` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `share_details`
--

/*!40000 ALTER TABLE `share_details` DISABLE KEYS */;
INSERT INTO `share_details` (`ID`,`SPND_ID`,`PER_HEAD`,`USER_ID`,`DATE`,`CREDIT`,`CURRENT_DATE`) VALUES 
 (62,30,'83.33','1','2012-12-12 00:00:00',0,'2012-12-26 09:08:29'),
 (63,30,'83.33','2','2012-12-12 00:00:00',1,'2012-12-26 09:08:29'),
 (64,30,'83.33','3','2012-12-12 00:00:00',1,'2012-12-26 09:08:29'),
 (65,30,'83.33','4','2012-12-12 00:00:00',1,'2012-12-26 09:08:29'),
 (66,30,'83.33','5','2012-12-12 00:00:00',1,'2012-12-26 09:08:29'),
 (67,30,'83.33','6','2012-12-12 00:00:00',1,'2012-12-26 09:08:29'),
 (68,31,'25.0','1','2012-12-15 00:00:00',0,'2012-12-26 09:09:48'),
 (69,31,'25.0','2','2012-12-15 00:00:00',1,'2012-12-26 09:09:48'),
 (70,31,'25.0','3','2012-12-15 00:00:00',1,'2012-12-26 09:09:48'),
 (71,31,'25.0','4','2012-12-15 00:00:00',1,'2012-12-26 09:09:48'),
 (72,31,'25.0','5','2012-12-15 00:00:00',1,'2012-12-26 09:09:48'),
 (73,31,'25.0','6','2012-12-15 00:00:00',1,'2012-12-26 09:09:48'),
 (74,32,'29.2','1','2012-12-16 00:00:00',0,'2012-12-26 09:10:44'),
 (75,32,'29.2','2','2012-12-16 00:00:00',1,'2012-12-26 09:10:44'),
 (76,32,'29.2','3','2012-12-16 00:00:00',1,'2012-12-26 09:10:44'),
 (77,32,'29.2','4','2012-12-16 00:00:00',1,'2012-12-26 09:10:44'),
 (78,32,'29.2','6','2012-12-16 00:00:00',1,'2012-12-26 09:10:44'),
 (79,33,'10.83','1','2012-12-16 00:00:00',0,'2012-12-26 09:12:18'),
 (80,33,'10.83','2','2012-12-16 00:00:00',1,'2012-12-26 09:12:19'),
 (81,33,'10.83','3','2012-12-16 00:00:00',1,'2012-12-26 09:12:19'),
 (82,33,'10.83','4','2012-12-16 00:00:00',1,'2012-12-26 09:12:19'),
 (83,33,'10.83','5','2012-12-16 00:00:00',1,'2012-12-26 09:12:19'),
 (84,33,'10.83','6','2012-12-16 00:00:00',1,'2012-12-26 09:12:19'),
 (85,34,'6.67','1','2012-12-17 00:00:00',0,'2012-12-26 09:13:03'),
 (86,34,'6.67','2','2012-12-17 00:00:00',1,'2012-12-26 09:13:03'),
 (87,34,'6.67','3','2012-12-17 00:00:00',1,'2012-12-26 09:13:03'),
 (88,34,'6.67','4','2012-12-17 00:00:00',1,'2012-12-26 09:13:04'),
 (89,34,'6.67','5','2012-12-17 00:00:00',1,'2012-12-26 09:13:04'),
 (90,34,'6.67','6','2012-12-17 00:00:00',1,'2012-12-26 09:13:04'),
 (91,35,'13.33','1','2012-12-21 00:00:00',0,'2012-12-26 09:13:46'),
 (92,35,'13.33','2','2012-12-21 00:00:00',1,'2012-12-26 09:13:46'),
 (93,35,'13.33','4','2012-12-21 00:00:00',1,'2012-12-26 09:13:46'),
 (94,36,'16.67','1','2012-12-25 00:00:00',0,'2012-12-26 09:14:24'),
 (95,36,'16.67','2','2012-12-25 00:00:00',1,'2012-12-26 09:14:24'),
 (96,36,'16.67','3','2012-12-25 00:00:00',1,'2012-12-26 09:14:24'),
 (97,36,'16.67','4','2012-12-25 00:00:00',1,'2012-12-26 09:14:24'),
 (98,36,'16.67','5','2012-12-25 00:00:00',1,'2012-12-26 09:14:24'),
 (99,36,'16.67','6','2012-12-25 00:00:00',1,'2012-12-26 09:14:24'),
 (100,37,'16.67','2','2012-12-12 00:00:00',0,'2012-12-26 09:15:43'),
 (101,37,'16.67','1','2012-12-12 00:00:00',1,'2012-12-26 09:15:43'),
 (102,37,'16.67','3','2012-12-12 00:00:00',1,'2012-12-26 09:15:43'),
 (103,37,'16.67','4','2012-12-12 00:00:00',1,'2012-12-26 09:15:43'),
 (104,37,'16.67','5','2012-12-12 00:00:00',1,'2012-12-26 09:15:43'),
 (105,37,'16.67','6','2012-12-12 00:00:00',1,'2012-12-26 09:15:43'),
 (106,38,'13.0','2','2012-12-12 00:00:00',0,'2012-12-26 09:16:27'),
 (107,38,'13.0','1','2012-12-12 00:00:00',1,'2012-12-26 09:16:27'),
 (108,38,'13.0','3','2012-12-12 00:00:00',1,'2012-12-26 09:16:27'),
 (109,38,'13.0','4','2012-12-12 00:00:00',1,'2012-12-26 09:16:27'),
 (110,38,'13.0','5','2012-12-12 00:00:00',1,'2012-12-26 09:16:27'),
 (111,38,'13.0','6','2012-12-12 00:00:00',1,'2012-12-26 09:16:27'),
 (112,39,'6.67','2','2012-12-15 00:00:00',0,'2012-12-26 09:16:58'),
 (113,39,'6.67','1','2012-12-15 00:00:00',1,'2012-12-26 09:16:58'),
 (114,39,'6.67','3','2012-12-15 00:00:00',1,'2012-12-26 09:16:58'),
 (115,39,'6.67','4','2012-12-15 00:00:00',1,'2012-12-26 09:16:58'),
 (116,39,'6.67','5','2012-12-15 00:00:00',1,'2012-12-26 09:16:58'),
 (117,39,'6.67','6','2012-12-15 00:00:00',1,'2012-12-26 09:16:58'),
 (118,40,'16.67','2','2012-12-17 00:00:00',0,'2012-12-26 09:17:45'),
 (119,40,'16.67','1','2012-12-17 00:00:00',1,'2012-12-26 09:17:45'),
 (120,40,'16.67','3','2012-12-17 00:00:00',1,'2012-12-26 09:17:45'),
 (121,40,'16.67','4','2012-12-17 00:00:00',1,'2012-12-26 09:17:45'),
 (122,40,'16.67','5','2012-12-17 00:00:00',1,'2012-12-26 09:17:45'),
 (123,40,'16.67','6','2012-12-17 00:00:00',1,'2012-12-26 09:17:45'),
 (124,41,'50.33','2','2012-12-25 00:00:00',0,'2012-12-26 09:18:50'),
 (125,41,'50.33','1','2012-12-25 00:00:00',1,'2012-12-26 09:18:50'),
 (126,41,'50.33','4','2012-12-25 00:00:00',1,'2012-12-26 09:18:50'),
 (127,42,'5.0','3','2012-12-01 00:00:00',0,'2012-12-26 09:20:11'),
 (128,42,'5.0','1','2012-12-01 00:00:00',1,'2012-12-26 09:20:11'),
 (129,42,'5.0','2','2012-12-01 00:00:00',1,'2012-12-26 09:20:11'),
 (130,42,'5.0','4','2012-12-01 00:00:00',1,'2012-12-26 09:20:11'),
 (131,42,'5.0','5','2012-12-01 00:00:00',1,'2012-12-26 09:20:11'),
 (132,42,'5.0','6','2012-12-01 00:00:00',1,'2012-12-26 09:20:11'),
 (133,43,'40.0','3','2012-12-02 00:00:00',0,'2012-12-26 09:21:07'),
 (134,43,'40.0','4','2012-12-02 00:00:00',1,'2012-12-26 09:21:08'),
 (135,43,'40.0','5','2012-12-02 00:00:00',1,'2012-12-26 09:21:08'),
 (136,44,'6.67','3','2012-12-13 00:00:00',0,'2012-12-26 09:21:51'),
 (137,44,'6.67','1','2012-12-13 00:00:00',1,'2012-12-26 09:21:51'),
 (138,44,'6.67','2','2012-12-13 00:00:00',1,'2012-12-26 09:21:51'),
 (139,44,'6.67','4','2012-12-13 00:00:00',1,'2012-12-26 09:21:51'),
 (140,44,'6.67','5','2012-12-13 00:00:00',1,'2012-12-26 09:21:51'),
 (141,44,'6.67','6','2012-12-13 00:00:00',1,'2012-12-26 09:21:51'),
 (142,45,'15.42','3','2012-12-15 00:00:00',0,'2012-12-26 09:23:05'),
 (143,45,'15.42','1','2012-12-15 00:00:00',1,'2012-12-26 09:23:05'),
 (144,45,'15.42','2','2012-12-15 00:00:00',1,'2012-12-26 09:23:05'),
 (145,45,'15.42','4','2012-12-15 00:00:00',1,'2012-12-26 09:23:05'),
 (146,45,'15.42','5','2012-12-15 00:00:00',1,'2012-12-26 09:23:05'),
 (147,45,'15.42','6','2012-12-15 00:00:00',1,'2012-12-26 09:23:05'),
 (148,46,'3.33','3','2012-12-16 00:00:00',0,'2012-12-26 09:24:04'),
 (149,46,'3.33','1','2012-12-16 00:00:00',1,'2012-12-26 09:24:04'),
 (150,46,'3.33','2','2012-12-16 00:00:00',1,'2012-12-26 09:24:04'),
 (151,46,'3.33','4','2012-12-16 00:00:00',1,'2012-12-26 09:24:04'),
 (152,46,'3.33','5','2012-12-16 00:00:00',1,'2012-12-26 09:24:04'),
 (153,46,'3.33','6','2012-12-16 00:00:00',1,'2012-12-26 09:24:04'),
 (154,47,'10.0','5','2012-12-15 00:00:00',0,'2012-12-26 09:26:17'),
 (155,47,'10.0','1','2012-12-15 00:00:00',1,'2012-12-26 09:26:18'),
 (156,47,'10.0','2','2012-12-15 00:00:00',1,'2012-12-26 09:26:18'),
 (157,47,'10.0','3','2012-12-15 00:00:00',1,'2012-12-26 09:26:18'),
 (158,47,'10.0','4','2012-12-15 00:00:00',1,'2012-12-26 09:26:18'),
 (159,47,'10.0','6','2012-12-15 00:00:00',1,'2012-12-26 09:26:18'),
 (160,48,'5.67','5','2012-12-17 00:00:00',0,'2012-12-26 09:28:51'),
 (161,48,'5.67','1','2012-12-17 00:00:00',1,'2012-12-26 09:28:51'),
 (162,48,'5.67','2','2012-12-17 00:00:00',1,'2012-12-26 09:28:51'),
 (163,48,'5.67','3','2012-12-17 00:00:00',1,'2012-12-26 09:28:51'),
 (164,48,'5.67','4','2012-12-17 00:00:00',1,'2012-12-26 09:28:51'),
 (165,48,'5.67','6','2012-12-17 00:00:00',1,'2012-12-26 09:28:51'),
 (166,49,'4.5','4','2012-12-01 00:00:00',0,'2012-12-26 09:30:37'),
 (167,49,'4.5','1','2012-12-01 00:00:00',1,'2012-12-26 09:30:37'),
 (168,49,'4.5','2','2012-12-01 00:00:00',1,'2012-12-26 09:30:37'),
 (169,49,'4.5','3','2012-12-01 00:00:00',1,'2012-12-26 09:30:37'),
 (170,49,'4.5','5','2012-12-01 00:00:00',1,'2012-12-26 09:30:37'),
 (171,49,'4.5','6','2012-12-01 00:00:00',1,'2012-12-26 09:30:37'),
 (172,50,'5.33','4','2012-12-02 00:00:00',0,'2012-12-26 09:31:07'),
 (173,50,'5.33','1','2012-12-02 00:00:00',1,'2012-12-26 09:31:07'),
 (174,50,'5.33','2','2012-12-02 00:00:00',1,'2012-12-26 09:31:07'),
 (175,50,'5.33','3','2012-12-02 00:00:00',1,'2012-12-26 09:31:07'),
 (176,50,'5.33','5','2012-12-02 00:00:00',1,'2012-12-26 09:31:07'),
 (177,50,'5.33','6','2012-12-02 00:00:00',1,'2012-12-26 09:31:07'),
 (178,51,'7.33','4','2012-12-10 00:00:00',0,'2012-12-26 09:33:18'),
 (179,51,'7.33','1','2012-12-10 00:00:00',1,'2012-12-26 09:33:18'),
 (180,51,'7.33','2','2012-12-10 00:00:00',1,'2012-12-26 09:33:18'),
 (181,51,'7.33','3','2012-12-10 00:00:00',1,'2012-12-26 09:33:18'),
 (182,51,'7.33','5','2012-12-10 00:00:00',1,'2012-12-26 09:33:18'),
 (183,51,'7.33','6','2012-12-10 00:00:00',1,'2012-12-26 09:33:18'),
 (184,52,'3.67','4','2012-12-14 00:00:00',0,'2012-12-26 09:34:00'),
 (185,52,'3.67','1','2012-12-14 00:00:00',1,'2012-12-26 09:34:00'),
 (186,52,'3.67','2','2012-12-14 00:00:00',1,'2012-12-26 09:34:00'),
 (187,52,'3.67','3','2012-12-14 00:00:00',1,'2012-12-26 09:34:00'),
 (188,52,'3.67','5','2012-12-14 00:00:00',1,'2012-12-26 09:34:00'),
 (189,52,'3.67','6','2012-12-14 00:00:00',1,'2012-12-26 09:34:00'),
 (190,53,'4.33','4','2012-12-17 00:00:00',0,'2012-12-26 09:34:34'),
 (191,53,'4.33','1','2012-12-17 00:00:00',1,'2012-12-26 09:34:34'),
 (192,53,'4.33','2','2012-12-17 00:00:00',1,'2012-12-26 09:34:34'),
 (193,53,'4.33','3','2012-12-17 00:00:00',1,'2012-12-26 09:34:34'),
 (194,53,'4.33','5','2012-12-17 00:00:00',1,'2012-12-26 09:34:34'),
 (195,53,'4.33','6','2012-12-17 00:00:00',1,'2012-12-26 09:34:34'),
 (196,54,'41.83','4','2012-12-17 00:00:00',0,'2012-12-26 09:35:12'),
 (197,54,'41.83','1','2012-12-17 00:00:00',1,'2012-12-26 09:35:12'),
 (198,54,'41.83','2','2012-12-17 00:00:00',1,'2012-12-26 09:35:12'),
 (199,54,'41.83','3','2012-12-17 00:00:00',1,'2012-12-26 09:35:12'),
 (200,54,'41.83','5','2012-12-17 00:00:00',1,'2012-12-26 09:35:12'),
 (201,54,'41.83','6','2012-12-17 00:00:00',1,'2012-12-26 09:35:12'),
 (202,55,'43.33','4','2012-12-20 00:00:00',0,'2012-12-26 09:36:01'),
 (203,55,'43.33','1','2012-12-20 00:00:00',1,'2012-12-26 09:36:01'),
 (204,55,'43.33','2','2012-12-20 00:00:00',1,'2012-12-26 09:36:01'),
 (205,56,'14.67','6','2012-12-01 00:00:00',0,'2012-12-26 09:37:28'),
 (206,56,'14.67','2','2012-12-01 00:00:00',1,'2012-12-26 09:37:28'),
 (207,56,'14.67','5','2012-12-01 00:00:00',1,'2012-12-26 09:37:28'),
 (208,57,'4.67','6','2012-12-01 00:00:00',0,'2012-12-26 09:38:08'),
 (209,57,'4.67','3','2012-12-01 00:00:00',1,'2012-12-26 09:38:08'),
 (210,57,'4.67','5','2012-12-01 00:00:00',1,'2012-12-26 09:38:08'),
 (211,58,'17.0','6','2012-12-02 00:00:00',0,'2012-12-26 09:38:45'),
 (212,58,'17.0','2','2012-12-02 00:00:00',1,'2012-12-26 09:38:45'),
 (213,59,'7.0','6','2012-12-02 00:00:00',0,'2012-12-26 09:39:21'),
 (214,59,'7.0','3','2012-12-02 00:00:00',1,'2012-12-26 09:39:21'),
 (215,60,'50.5','6','2012-12-02 00:00:00',0,'2012-12-26 09:40:29'),
 (216,60,'50.5','2','2012-12-02 00:00:00',1,'2012-12-26 09:40:29'),
 (217,60,'50.5','3','2012-12-02 00:00:00',1,'2012-12-26 09:40:29'),
 (218,60,'50.5','5','2012-12-02 00:00:00',1,'2012-12-26 09:40:29'),
 (219,61,'3.33','6','2012-12-02 00:00:00',0,'2012-12-26 09:41:13'),
 (220,61,'3.33','1','2012-12-02 00:00:00',1,'2012-12-26 09:41:13'),
 (221,61,'3.33','2','2012-12-02 00:00:00',1,'2012-12-26 09:41:13'),
 (222,62,'6.4','6','2012-12-11 00:00:00',0,'2012-12-26 09:42:09'),
 (223,62,'6.4','1','2012-12-11 00:00:00',1,'2012-12-26 09:42:09'),
 (224,62,'6.4','3','2012-12-11 00:00:00',1,'2012-12-26 09:42:09'),
 (225,62,'6.4','4','2012-12-11 00:00:00',1,'2012-12-26 09:42:09'),
 (226,62,'6.4','5','2012-12-11 00:00:00',1,'2012-12-26 09:42:09'),
 (227,63,'33.33','6','2012-12-17 00:00:00',0,'2012-12-26 09:42:48'),
 (228,63,'33.33','1','2012-12-17 00:00:00',1,'2012-12-26 09:42:48'),
 (229,63,'33.33','2','2012-12-17 00:00:00',1,'2012-12-26 09:42:48'),
 (230,63,'33.33','3','2012-12-17 00:00:00',1,'2012-12-26 09:42:48'),
 (231,63,'33.33','4','2012-12-17 00:00:00',1,'2012-12-26 09:42:48'),
 (232,63,'33.33','5','2012-12-17 00:00:00',1,'2012-12-26 09:42:48');
/*!40000 ALTER TABLE `share_details` ENABLE KEYS */;


--
-- Definition of table `spend_details`
--

DROP TABLE IF EXISTS `spend_details`;
CREATE TABLE `spend_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AMOUNT_SPEND` varchar(45) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DESCRIPTION` varchar(450) DEFAULT NULL,
  `CURRENT_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spend_details`
--

/*!40000 ALTER TABLE `spend_details` DISABLE KEYS */;
INSERT INTO `spend_details` (`ID`,`AMOUNT_SPEND`,`USER_ID`,`DATE`,`DESCRIPTION`,`CURRENT_DATE`) VALUES 
 (30,'500.0',1,'2012-12-12 00:00:00','Chicken + Rice','2012-12-26 09:08:28'),
 (31,'150.0',1,'2012-12-15 00:00:00','Rice ','2012-12-26 09:09:48'),
 (32,'146.0',1,'2012-12-16 00:00:00','Rice','2012-12-26 09:10:44'),
 (33,'65.0',1,'2012-12-16 00:00:00','Common','2012-12-26 09:12:18'),
 (34,'40.0',1,'2012-12-17 00:00:00','water','2012-12-26 09:13:03'),
 (35,'40.0',1,'2012-12-21 00:00:00','me anand prithvi','2012-12-26 09:13:46'),
 (36,'100.0',1,'2012-12-25 00:00:00','Somehing','2012-12-26 09:14:23'),
 (37,'100.0',2,'2012-12-12 00:00:00',' oil','2012-12-26 09:15:43'),
 (38,'78.0',2,'2012-12-12 00:00:00','onion ginger garlic paste','2012-12-26 09:16:27'),
 (39,'40.0',2,'2012-12-15 00:00:00','water','2012-12-26 09:16:58'),
 (40,'100.0',2,'2012-12-17 00:00:00','rice','2012-12-26 09:17:45'),
 (41,'151.0',2,'2012-12-25 00:00:00','fish + rice + thenga','2012-12-26 09:18:50'),
 (42,'30.0',3,'2012-12-01 00:00:00',' veg','2012-12-26 09:20:11'),
 (43,'120.0',3,'2012-12-02 00:00:00','prithvi dinoop prem','2012-12-26 09:21:07'),
 (44,'40.0',3,'2012-12-13 00:00:00','water','2012-12-26 09:21:51'),
 (45,'92.5',3,'2012-12-15 00:00:00','rice + vegetables','2012-12-26 09:23:05'),
 (46,'20.0',3,'2012-12-16 00:00:00','common','2012-12-26 09:24:04'),
 (47,'60.0',5,'2012-12-15 00:00:00',' rice','2012-12-26 09:26:17'),
 (48,'34.0',5,'2012-12-17 00:00:00',' vegitables','2012-12-26 09:28:51'),
 (49,'27.0',4,'2012-12-01 00:00:00',' veg','2012-12-26 09:30:37'),
 (50,'32.0',4,'2012-12-02 00:00:00','veg','2012-12-26 09:31:07'),
 (51,'44.0',4,'2012-12-10 00:00:00','veg','2012-12-26 09:33:18'),
 (52,'22.0',4,'2012-12-14 00:00:00','veg','2012-12-26 09:34:00'),
 (53,'26.0',4,'2012-12-17 00:00:00','veg','2012-12-26 09:34:34'),
 (54,'251.0',4,'2012-12-17 00:00:00','rice + oil','2012-12-26 09:35:11'),
 (55,'130.0',4,'2012-12-20 00:00:00','fish','2012-12-26 09:36:01'),
 (56,'44.0',6,'2012-12-01 00:00:00',' veg','2012-12-26 09:37:28'),
 (57,'14.0',6,'2012-12-01 00:00:00','premdinop rahul','2012-12-26 09:38:08'),
 (58,'34.0',6,'2012-12-02 00:00:00','anad rahul','2012-12-26 09:38:45'),
 (59,'14.0',6,'2012-12-02 00:00:00','dinoop rahul','2012-12-26 09:39:21'),
 (60,'202.0',6,'2012-12-02 00:00:00','anand prem dinoop','2012-12-26 09:40:29'),
 (61,'10.0',6,'2012-12-02 00:00:00','anand arun rahul','2012-12-26 09:41:13'),
 (62,'32.0',6,'2012-12-11 00:00:00','arun prem prthvi dinoop rahul','2012-12-26 09:42:09'),
 (63,'200.0',6,'2012-12-17 00:00:00','rice','2012-12-26 09:42:48');
/*!40000 ALTER TABLE `spend_details` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `DESCRIPTION` varchar(45) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(45) DEFAULT NULL,
  `STATUS` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`USER_ID`,`NAME`,`DESCRIPTION`,`MOBILE_NUMBER`,`STATUS`) VALUES 
 (1,'ARUNDEV P','SOFTWARE ENGINEER','+918147793029',0),
 (2,'ANAND K NAIR','SOFTWARE ENGINEER',NULL,0),
 (3,'DINOOP PALOLI','SOFTWARE ENGINEER',NULL,0),
 (4,'PRITHVILAL M','SOFTWARE ENGINEER',NULL,0),
 (5,'PREMNATH GR','SOFTWARE ENGINEER',NULL,0),
 (6,'RAHUL K K','SOFTWARE ENGINEER',NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
