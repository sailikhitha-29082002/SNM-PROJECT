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
INSERT INTO `filedata` VALUES (2,_binary 'Of course! I\'ve incorporated the line you liked into the updated script. Here\'s the revised version with that included:\r\n\r\n---\r\n\r\n**Voice-over Script for Two People with Introductions:**\r\n\r\n**Person 1:**\r\n\"Hello everyone! Iâ€™m [Your Name], and this is my teammate [Teammate\'s Name]. Weâ€™re excited to present our projectâ€”a clone of the popular design platform, Dribbble. We built this website using HTML, CSS, and Bootstrap.\"\r\n\r\n**Person 2:**\r\n\"Hi, Iâ€™m [Teammate\'s Name]. Using **HTML**, we structured the layout of the website, defining key elements like the navigation bar, image grid, and footer. Then, with **CSS**, we styled the website to match Dribbbleâ€™s sleek design, focusing on colors, fonts, and layout precision.\"\r\n\r\n**Person 1:**\r\n\"Bootstrap made the website fully responsive, ensuring it looks great on any screen, whether itâ€™s a phone, tablet, or desktop. We used Bootstrapâ€™s grid system to achieve that.\"\r\n\r\n**Person 2:**\r\n\"Some of the key features include a grid-based homepage to display design projects, a responsive navigation bar, and hover animations for a smooth user experience. We also included a footer with social media links to keep the design consistent with the original Dribbble.\"\r\n\r\n**Person 1:**\r\n\"Weâ€™d like to thank our mentor, **Ram Sir**, for his guidance throughout this project. His support helped us improve the quality of our work.\"\r\n\r\n**Person 2:**\r\n\"Thank you for watching our presentation. We hope you enjoyed it!','voice over.txt','2024-12-19 14:59:24',4),(5,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0’\0\0\0*\0\0\0X\â–\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0	ˆIDATx^\íš\å»UE\Æý$•%¥»»¤[Z\éNE\é\î¾t+‚¤\Ò\Ý]\Ò\Ý]\"(~}‡g-Öž3W‰}\î>úÌ‡\ß\óÜ»\Ö;{Ÿ³\÷:3k­™·þ|\öT9oŠ$‡/¸@rø‚$‡/¸@rø‚$‡/¸@ú\ò\íœùª¿\áj\Å\òUV¸@\n˜Ñ£&ª²ej©fM;Yý&¿?ýM%ˆŸN½\óv\nÕ²E«&\"\"ÿú@­_·I\r0R}Þ¸*\÷ImU¯nKÕ£û@µ|\ÙJ\õ\è\á}\ë¸prÿ\Þµq\Ãfµy\ÓV«\ßÆˆ\áQúÇ—N\'›\Æ$eŠ\ÜzL\åJ\r¬~“Õ«\Öi=Xºd¹U\Ò\Ñ#GU‹\æ]\Ôû\ïe\ä‡cã½„T\×.½Õ­›7¬\×	¢¦\óý\÷\í\ÝoÕ˜+ZY\ë\ä/o\õ›>t˜\ï1u\Êl«Æ¤c‡\î<&ˆXtH£FNP\ñ\â¦\å‡\ò2d\ÎTT]8\Þz½\×Ar\ñÂ…{\Í\Z_\è{¦J™\'\Äg\ã\Î\í[*\Ö;)\õ\ä/6\ÉøqSø»]¿vÕª1É˜¡°\ÖW¬P\Ï\êŠ@i\Ç\ö]ü\0‰†\rZ«…–ªÓ§N±\î\ÔÉ“ªs§žž+S\Æ\"\ê\æ\ëž\ë½.U*7\Ô\×ü8m~ý\ÙO\ô,_›\Ö_y|Ñ±d\ñ2þŒ‡²jL°œA_¼X«\ßÏƒ\î1n\ì«&(›‘\ð\ð\ð@š7\ë¬.]¼h\Õ—/]Rù\ó•\ã‡X©b}«\îU@\îC\×Ò·s\Çn¶#\'‘¾\è@\â}út­~“\ß?\âyø°\ñV\É\Ä	3øs=sÆª	ŠÀ\é\Ø/\ÇÔý¬>xpT­€=»\÷Zu/’{ºV«–]=¾¾}†i{\âD™\õ—¾\èH*Ó¥s/«\ßd\ÕÊµ|ÿsg\ÏZ5&Õ«5\Öú\ì\ÙJXýÈ³Š©¤5X\ôaÕ…ƒ@“m“_=\Ð\Ë\Â\Ý;·­þ\î\ß\à‡ß¾\Ý\×VÍ«0v\Ìd\õýÜ…!\öÂ…*\ê{Ô¯\×*\Äg\ã\ð¡#ü¹¨\Ê;qü„Ú¿/úÊ—]ûh=~7®_\ÓKh²¤YUš\ÔyUŸ\ÞCC\ô(ûi¹E\á!}(BJ—ªÁŸAÒ³\Ç 6\\DL É²v\Ì\èIVÍµ«WX“%sQ«\æM¹}\ë&\ßc\îwt`þ¼Åº´®zC/ˆ\Æ`È™£ÿŸ-kqu\æ\ô\é19²—d\r³ŠÛ´qû0›IŸ\\\ö8k\×l\àü/\Ñû™<\Úp1$\Ë\Ú\í\ÛvZ5 PÁ\n¬{pÿ.\Û\ñ²`K˜ ½9\Æ\Æ\ÈQººB>$í˜¡\èú¥JV×³ýf\ÎøÎ£>­\ëÑ˜T­\ÒÈ£¿rù’Ç{`†mÚ¤\Û\ò\ä.\ëC³\ñ»±Sý½\Ü>dû¬™sy\Ì\Ð!cÙŽ\Ù\ñ${¸ˆ˜@Bi/$qf]5\Ù4\0Jz@r\éÀ&;ú9:\öÔ0K\ÈrÒš‰n“/Ú³\ÏF\Ò$Y\Ô\Ã\÷<c¼\äG»`\ò¤™zûB¡\\®\çÌž\Ïv\Ì{\÷\ìc\å8@65Ñ›‚­|¹:l¹s•\Ñ\ö\"…+z\ìøþ°\ã3H{¸ˆˆ@B‡^\Ý\ÏZX5D\Ç=X»e\ó6¶#a&»I\ìX©<-\äF\ä“/$ÿ ;û2¤/¤v\ïÚ£\í´T€5«×³~\ÝÚlGƒ\"‚|b\òmß¶ƒ\í5ª\Î\ö\éÓ¾e;\ß9e\ò,nt‚aCÇ±\ö\ä‰\í\0,½d_\ð\Ã¶wûª\Û\ÃID’,kgL\÷>X\ìI‘VV}¹s•\Ö64ê¬/V•uµk5\õ\\[0°c{B\Ú1\Ã\Ñls\È\ÜFVy”\Ã]½r™+)0i\âL\Ö\ä9\äC\Ë\ËW\Ú4ùØ†@•zÐ ~+\ö\ÛØµ\óy`ƒÅ‹~b{\Û6\Ý\ôS\Ö,\ÅØ–7\Ï\'\Ñ.~$_*›†¨U³	k©ÿtþ\Ü9¶Ñƒ\ÆuÈ†N\ã±\\\Äy7µ¶›\ÍF\ä4w\é\Ã\ìG>,´\ÔH›\Ô$¾Rc‚½DsLº°XY¡Â“Ú¨\ñS\Ù\'ÁgAP¡\n–úpx É²6W\ÎRV„–\ôx\È6d\ðm“3f6\Ø\ð\ð\åÝ°þ\Å\Ì\ò\óŠ\ÕlHŠÉ‡-\é\ÃC>µ\õ\è’uø0»a‡3#\ÙÀ\ó{\ô² \Ëv\äE°•,Qmø|h•\ò½­[¶³`\Öþ0y\õu·\ð.qv\Ø\éaü\ÛzŽ\Þi\å^S¾¼\Ï\Ë_l§\r/¶\Ï\ê4g€†®Òž\ì˜\Õ\â\ÆI£\í¶-¹\ä`\é\Ä\ì…G6³Ô£O¾vm»±].G(\Ó\ål‘O\î)RB-š\Ð\ö\nŽ|‚\n\Åüh˜š~?	<z\÷\Z\Â\ãß¶#P}‘–ª-,ed;rø¨¶É—8m\êü\Øq]>\Ãn\î\Ð×©ÝŒ\Ç`\ÛFú\ÐN ®:ªF²\ËÀ6	\ÍL\òa¦!;fA\ÛšA9»a\Ûv’{º6\ò@´	hf,$øh”(^\í\09ž¼¦\ßH”#o‘ý\Ô\"\0T…5m\ÒQÿþ\ép‚t8ªZ\n(‘\É.\Ý?.]Áv€<Œ|@\Î˜AÉŽ–\Ù\å,FK-ÀX²™»¡mÐ¡ý7ž<[²?¨8`›ŽVFŠr…ø	\ä\\\ær\r$%¾eJ×´jyä‚–+¼š)<¤•[)”\ë\È\Ù \Ï;:\Æ$\Ë\æ\ñ\á\ã\á\ã%¡\Ò\"{£†mø-«\03‡¼‚\Â\ì9YyJÿ<p0D%Pê°¬Ý»û¢\ZÃ¹$T¾Ôƒ\Âu\Ð2€-¦\î@In\\¢Ê°i\0ú%0€Žš \ä\Åÿh>}\ò˜\õ2B\ßE61	<l,!\ô?\å»\ÔH°%c\n¹µ#Áqû0\õ’i,E¤o\Ý\ê\Ë<“„Mkt\ã#\éT¤$\Ð@B%AR6\ì$ø\å¡\ßB:\n8\ä;d\Ã/OŽ‘§	Ty‹þ\èYÞˆÁƒF\óX\nN	wlk\È{H°ÑŒ\ä:\Ý^¡\r¿\êE Dûf(ÿ\åŒB\à\åÑ¹%€~ùp6[\Ë\0M8\ÌR4³	6\Ã\ñVj^¢d¶5@qN¼_\ß\á\Z\äO¦\ßJŒ\ä¨\ñ\Ó\ô\ßX&\èhjµª/„˜=kžg¯\nË€y ~\ÙO+C¶8$¢\Ø\Ã\ÉE›\ß\á/1\ZH8Gƒ ÀÆ¬,[QÙ Q8\ïûEº?#«3€$7&»´ŽW\'FIvb_œ™ÿ8\"“\r$ì¡\Ç\"b™ \ô\ÆRg;¹\èˆ\\K¶Q¡RC\Ù=h\à(Ý©þ§mŽ\È&°@rü¿p\ä\ðH_p\ä\ðH_p\ä\ðH_p\ä\ð§\ê/©P6DJ¯BT\0\0\0\0IEND®B`‚','dribble.PNG','2024-12-19 15:30:18',4),(6,_binary 'Rajulapati Someswararao    04-01-1967  309477898113  57\r\nRajulapati pavanipriya     02-09-1981  301083162382  43\r\nRajulapati Aswitha         18-11-2000  850241506025  23\r\nRajulapati Naga Vijaykumar 10-05-2000  780526635556  24 ','ttd.txt','2024-12-23 11:36:59',4);
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
