-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: snmproject
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `filedata`
--

DROP TABLE IF EXISTS `filedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filedata` (
  `f_id` int unsigned NOT NULL AUTO_INCREMENT,
  `fdata` blob,
  `filename` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` int DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `filedata_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filedata`
--

LOCK TABLES `filedata` WRITE;
/*!40000 ALTER TABLE `filedata` DISABLE KEYS */;
INSERT INTO `filedata` VALUES (2,_binary 'Of course! I\'ve incorporated the line you liked into the updated script. Here\'s the revised version with that included:\r\n\r\n---\r\n\r\n**Voice-over Script for Two People with Introductions:**\r\n\r\n**Person 1:**\r\n\"Hello everyone! I’m [Your Name], and this is my teammate [Teammate\'s Name]. We’re excited to present our project—a clone of the popular design platform, Dribbble. We built this website using HTML, CSS, and Bootstrap.\"\r\n\r\n**Person 2:**\r\n\"Hi, I’m [Teammate\'s Name]. Using **HTML**, we structured the layout of the website, defining key elements like the navigation bar, image grid, and footer. Then, with **CSS**, we styled the website to match Dribbble’s sleek design, focusing on colors, fonts, and layout precision.\"\r\n\r\n**Person 1:**\r\n\"Bootstrap made the website fully responsive, ensuring it looks great on any screen, whether it’s a phone, tablet, or desktop. We used Bootstrap’s grid system to achieve that.\"\r\n\r\n**Person 2:**\r\n\"Some of the key features include a grid-based homepage to display design projects, a responsive navigation bar, and hover animations for a smooth user experience. We also included a footer with social media links to keep the design consistent with the original Dribbble.\"\r\n\r\n**Person 1:**\r\n\"We’d like to thank our mentor, **Ram Sir**, for his guidance throughout this project. His support helped us improve the quality of our work.\"\r\n\r\n**Person 2:**\r\n\"Thank you for watching our presentation. We hope you enjoyed it!','voice over.txt','2024-12-19 14:59:24',4),(5,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0*\0\0\0X\��\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0	�IDATx^\�\�UE\��$�%����[Z\�NE\�\�t+��\�\�]\�\�]\"(~}�g-֞3W�}\�>�̇\�\�ܻ\�;{��\�:3k����|\�T9o�$�/�@r��$�/�@r��$�/�@�\�\����\�j\�\�UV�@\n�ѣ&��ej�fM;Y�&�?�M%��N�\�v\nղE�&\"\"���@�_�I\r0R}޸�*\�ImU�nKգ�@�|\�J\�\�\�}\�pr�\��q\�f�y\�V�\�ƈ\�Q�Ǐ�N\'�\�$e�\�zL\�J\r�~�ի\�i=X�d�U�\�\�#GU�\�]\��\�e\�c㽄T\�.�խ�7�\�	��\��\�\�\�o՘+ZY\�\�/o\��>t�\�1u\�l�Ƥc�\�<&�XtH�FNP\�\�\�\�2d\�TT]8\�z�\�Ar\�{\�\Z_\�{�J�\'\�g\�\�\�[*\�;)\�\�/6�\��qS��]�vժ1ɘ��\�W�P\�\��@i\�\�]�\0��\rZ����ӧN�\�\�ɓ�s���+S\�\"\�\�\�\�.U*7\�\��8m~��\�O\�,_�\�_y|ѱd\�2����jL��A_�X�\�σ\�1n\��&(��\�\�\�@�7\�.]�h\��/]R�\�\�X�b}�\�U@\�C\�ҷs\�n�#\'��\�@\�}�t�~�\�?\�y��\�V�\�\�	3�s�=sƪ	��\�\�/\�ԁ��>xpT��=�\�Zu/�{�V��]=��}�i{\�D�\���\�H�*�ӥs/�\�d\�ʵ|�sg\�Z5&ի5\��\�\�JX�ȳ���5X\�aՅ�@�m�_=\�\�\�\�;���\�\�\��߾\�\�Vͫ0v\�d\��܅!\�*\�{ԯ\�*\�g\�\�#���\�;q��ڿ/�ʗ]�h=~7�_\�Kh��YU�\�yU�\�CC\�(�i�E\�!}(BJ����Aҳ\� �6\\DL ɲv\�\�IV͵�WX�%sQ�\�M�}\�&\�c\�wt`��ź���zC/�\�`ș���-kqu\�\�\�19��d�\r��۴q�0�I�\\\�8k\�l\��/\���<\�p1�$\�\�\�\�vZ5�P�\n�{p�.\�\�`K� �9\�\�\�Q��B>$혡\���JV׳�f\��Σ>�\�јT�\�ȣ�r��Ǐ{`�mڤ\�\�\�.\�C�\�S��\�>d���sy\�\�!cَ\�\�${���@Bi�/�$qf]5\�4\0�Jz@r\��&;�9�:\�ԁ0K\�rҚ�n�/ڳ\�F\�$Y\�\�\�<c�\�G�`\�z�B�\\�\�̞\�v\�{\�\�c\�8@65ћ��|�:l�s�\�\�\"�+z\����\�3H{���@B�^\�\�ZX5D\�=X�e\�6�#a&�I\�X�<-\�F\�/$� ;�2�/�v\�ڣ\�T�5�׳~\�ڍlG�\"�|b\�m߶�\�5�\�\�\�Ӿe;�\�9e\�,nt�aCǱ\�\�\�\0,�d_\�\��w��\�\�ID�,kgL\�>X\�I�VV}�s�\�64ꐬ/V�u�k5\�\\[0�c{B\�1\�\�ls\�\�FVy�\�]�r�+)0i\�L\�\�9\�C\�\�W\�4�؆@�zР~+\�\�ص\�y`�ŋ~b{\�6\�\�S\�,\�ؖ7\�\'\�.~�$_*���U�	k��t�\�9�у\�uȆN\�\\\�y7���\�F\�4�w\�\�\�G>,�\�H�\�$�Rc��DsL����XY��ڨ\�S\�\'�gAP�\n��px ɲ6W\�RV���\�x\�6d\�m�3f6\�\�\�\�ݰ�\�\�\�\�\�lH�ɇ-\�\�C>��\�\��u�0�a�3#\��\�{\��� \�v\�E��,Q�m�|h��\�[��`\��0y\�u�\�.q�v\�\�a�\�z�\�i\�^S��\�\�_l��\r/�\�\�4g����Ҟ\�\�\�\�I�\�-�\�`\�\�\�G6�ԣO�vm��].G(\�\�l�O\�)RB-��\�\�\n��|�\n\��h��~?	<�z\�\Z\�\�߶#P}���-,ed;r���ɗ8m\��\�q]>\�n\�\�ש݌\�`\�F�\�N��:�F�\��6	\�L\�a�!;fA\��A�9�a\�v�{�6\�@�	hf,$�h�(^�\�\09���\�H�#o��\�\"\0T�5m\�Q���\�p��t8�Z\n(�\�.\�?.]�v�<�|@\��AɎ�\�\�,FK-�X����mС�7�<[�?�8�`��VF��r��	\�\\\�r\r$%�eJ״jy䂖+��)<��[)�\�\�\��\�;:\�$\�\�\�\�\�\�\�%�\�\"{��m�-�\03���\�\�9YyJ��<p0D�%P갬ݻ��\Zù$T�ԃ\�u\�2�-�\�@In\\�ʰi\0�%0����\�\��h>}\�\�2B\�E61	<l,!\�?\�\�H�%c\n��#�q�0\��i,E�o\�\�\�<��Mkt\�#\�T�$\�@B%AR6\�$�\�\�B:\n8\�;d\�/O���	Ty��\�Yވ��F\�X\nN	wlk\�{H�ь\�:\�^�\r�\�E��D�f(�\�B\�\�ѹ%�~�p6[\�\0M8\�R4�	6\�\�Vj^�d�5@qN�_\�\�\Z\�O�\�J�\�\�\�\�\�X&\�hj��/��=k�g�\nˀy�~\�O+C�8$�\�\�\�E�\�\�/1\ZH8G���Ƭ,[Q٠Q8\��E�?#�3�$7&���W\'FIvb_���8\"�\r$썡\�\"b��\�\�Rg;�\�\\K�Q��RC\�=h\�(ݩ��m�\�&�@r��p�\�\�H_p�\�\�H_p�\�\�H_p�\�\���\�/�P6DJ�BT\0\0\0\0IEND�B`�','dribble.PNG','2024-12-19 15:30:18',4),(6,_binary 'Rajulapati Someswararao    04-01-1967  309477898113  57\r\nRajulapati pavanipriya     02-09-1981  301083162382  43\r\nRajulapati Aswitha         18-11-2000  850241506025  23\r\nRajulapati Naga Vijaykumar 10-05-2000  780526635556  24 ','ttd.txt','2024-12-23 11:36:59',4);
/*!40000 ALTER TABLE `filedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `ndescription` text,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `title` (`title`),
  KEY `userid` (`userid`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (4,'ffghhjj','adafgfgshsjdkdfl,','2024-12-19 12:16:11',4),(7,'python','ppppppppppppppoihujyhtfcvb nm','2024-12-21 12:30:00',4),(8,'sql','kjhgtrcf','2024-12-23 11:37:46',4);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `password` varbinary(10) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'aswitha','rajulapatiaswitha@gmail.com',_binary '1234'),(3,'Mounika','bindumounikakanneganti@gmail.com',_binary '7777'),(4,'pinky','aswitharajulapati@gmail.com',_binary '123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-23 11:49:37
