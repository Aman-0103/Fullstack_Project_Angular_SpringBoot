-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: projectdatabase
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `crid` int NOT NULL AUTO_INCREMENT,
  `crnm` varchar(50) DEFAULT NULL,
  `ct_catid` int DEFAULT NULL,
  `descrip` varchar(500) DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `pic` blob,
  PRIMARY KEY (`crid`),
  KEY `FK1186t4o6kh8liex1sld2nnwbr` (`ct_catid`),
  CONSTRAINT `FK1186t4o6kh8liex1sld2nnwbr` FOREIGN KEY (`ct_catid`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (11,'MBBS',1,'It is the top Medical Course for the students interested in Medical field  ',100,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0ÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0\0–\0ƒ\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0øþ£e5+.)+úJ\Ç\Ë\"­4Š•”\Ó>µ\r[sTB\ËL©È¨\Ùk6\"\"šEIM\"³f‰‘¦\Z˜ŠaZ“TÈˆ¦2\â¥4\Ò+6S!\ÚiŒµ3.)›MCF©\ÓYjVZeE\"\Úh©6\ÑPUÎµ½zz\è|ð\Û\Å?µ/°xW@\Ô5ë¡\écH#\ÏB\ì8A\î\Ä\n»ð§\á\å\ï\Å_ˆ\Ú„\ìË¸\Õ.–0\ç÷i‚\Îÿ\0‚>ø\Å}óûC|xÒ¿b¿	\éþivv\Úô–\â{‹\É\â\Þ Sòù®3û\É\\‚~l€B0*qøú”jC\r†‡5Ik®\ÉwgFš”\\¤ô>Lºý…¾9\ÚÙµ\Ãø\á£Q¸ˆ¯­$û\áe,O¶+\ÄüC\á½WÂº¤\Ún³¦\Ý\é:Œ\'Z_B\ÐÊŸU`¯r\Óÿ\0nÏú~¨·­\ãY/F\à\Ò[]XÛ´Rò¥Bþ\ÎÞµõf¿û~\Ì\×þ#‹J‡Nø‰\á\è\Ün‰pVd@\æ0Ç–ŠE<N	õ¸jc±ø	\ÆX\ØEÁ»^7\Òý\ît\Æ¦­M\ê~gm\ç…5½zz™—¯Pzzÿ\0\ÖýkÞ¿b\ï\Ùù¾<ü]·ŠúþÑ‚\Þ\êŽFUÀ?»„û»Ÿdjöñ8ŠxZ2¯7¢2‚\æi#\ÆuŸ‡þ(ðþ“©ªxoW\Ót\Éöù7·–2\Å›†Wk²€r9\à\×=_W~\ß\ß“\â¯\Ä\Åð¾‹0ÿ\0„[\Âå­¢X¿\Õ\Ïs\Ñ\ä\ì¸\Ø8þ#­|¨\ËX\à\ê\Õ\ÄPZ\Ñ\åo[v\ìk+E\ÙM\"¤¦‘]M\r2\"´\ÃSL+Rj™\Æ\\T¦šEfÑªd;M1–¦e\Å3mCF©‘m4T˜Ts\ìŸø\']¼S~\ÓZkJŠZ;¶Œ·ð¾\Å~\×\'ûp]\Ü]þÔž;ûAl\ÅqH¬s„ñ\íÇ \ç?r¿³ÿ\0\Ä\ïøSÿ\0<5\â©½¥•\Î.’>w@\êRN;¬O\Ô\nú\Ëö\êýœµO‰—\Ö~Û·‰´\ÝB\Î?¶Ã¦þõ\Øû¹\ãUû\êT€\Ø\ÉA\Æ33(\á3ˆÕ­¤gTú^\ç‰\Þa\ÜcºgÀ89¯½\à•JúÄ«1·Ù¬[gUL\Ã?\\*ø§Eð‰|I­6¤\è:•þª­±¬\í\í\åBxù”¯\ã_ þ\Ñbý„?e}wTñ§Ž¼C¸\Ã`$\Ë1M±B\ê\ìF@%±Ú¯?­\n˜oªÁ\Þu\ZI|÷ô/\ru>w±ù\ë\â\Í)¯> k\Zv—n\×&]Nx-`w4™˜ª¢Ž\äð1\î+\ïŸ_[~ÂŸ²]¯†¬&~#x¥X\Í4g.’26@z\í‰X\"û\à÷5\æÿ\0ðO‚6Ú¶½ª|YñXX´6\ÒÜ–K»žbOF½ÿ\0¼}«Á?iÏ\×_¾-jž\"vt\ÒÑ®—nÇˆ­”§ø›–?\\t\ÍZ?\ÚX¸\áð\éY\Ë\Î]¬Z„9ú½#o›–99$Ÿ^”\Â*VSLÇ¯f¾®\Éh`›Ý²\Ó*r*6Z–\"\"šEIM\"³h\Ñ2\"´\ÃSL+Rj™\Æ\\T¦šEfÑªd;M&\Ê*l]Îµ—=FGq^¿ð_ö°øð&Ý¬ü?ª\Çu¤\Ïý“ªFg¶{§Ì®„õÂ°\'5\ädSk\Ò\Äa¨\âa\ì\ëÁI3N¤ \ïf}…¨ÁP>$\Íb‘\Úøw\Ã6·X\Ã\Ü§pOª©—ÄµxOö§\Ä\Ú\Ï\âÖ“§\êz¤úÖ¹©L „\È\Ãk?3,k…TUœœw&¼Á¸\È\Ï>™¯¿ÿ\0cÿ\0\é³ŸÁ\rã‡‹\á	{yh³!|6\ç\ç£Lû\à!}M|\Î/ƒÉ¨º˜zk\ÚKHõwg¡Nu1\å›\ÑnTý·> iþø\à?ƒdnµF\Ôä°\ÞFsµˆ9\Ý+’\Í\ê¹þõyWÁø\'ŸŽ>\'hp\ë\Úö¡k\àm\â?6½‰¤¹u#!¼P*ÿ\0¼\Êy\éVÿ\0d\Üþ\Ó_µmçŠ¼X§PŽ\×~µss0Xb#ûªHÀôŽ«þ\Þ´V³ñ\â~­\à\Û\é-ü#¡\Ïö_²[¾Ôº¸Lo’L}\í­•Pr\Üõ<y´c‰£5—aeiµ\Í9\î\îÿ\0¯¸\èn^\Ú~‰\Ä?ðL½?[†\î?|f\Ò5­F qmž¡Cv\Ér\åGüý+\å?<]ð\Ä\ßØž+\Ó\Ö\ÞIG™mwn\Å\í\î”pZ7À\Î8\È 0\È\È\æ¹3U¾\Ðu(56ò\â\ÂþÝƒ\Ãuk)ŽX\Øt*À\ä¡ú+&¬lO\ØSU\Ô5¥[¿xed“\íh{\\[¨}Ã H\È:dþ]u+crº•z¾ÒœšOD­NgU5Ù£ó_\Ò*V^:sÿ\0\ê¦}kê™Î™-2§\"£e¨h\Õ2\")¤T”\Ò+6\"+LaSLe¨5LôS¶\ÑSb\îu¬´\Æ\èH\ëSDp\É4\Éq¼’;TŒe˜“€\0\îkÚ•’»>]k¡\ë_²¿À»4ý\ZH\ä\Z\r™û^©0\ÎÕ[\î\ê\ç\åö\äö¯Zÿ\0‚„|sƒ\Å,´øm\áù/\rxd¸H	%\Èv\Ó¯\Ê?\Ú-\è+×´Ø­¿a_\Ù>K\Éiñ\Ä\ã\0’vO”»\nr{ÿ\0z¿:n§–ò\âY\çv–yX¼’Hr\Ì\Ä\ä’{œ“ù\×\Ç\áWö®6X\Éžó}eþG«9{\njyn}Ÿÿ\0·\Ô-\áø\ã7‘V\æ}.722BKó\ßøÖ¾[ø\ç¤\Ý\èÿ\0\Z<ui{%\Òkw…·\Zf`\Ø÷\Z\Ñøñz÷\ào\ÅÅ–±´ñÛ±†\î\Ùy3Û¿¹\èGûJ+\í/ŽŸ³‡ÿ\0l ø›ð›\Ä\Za\Õ/\"E¾µ¸b‘\ÎÀ\0\í£˜”†\í^˜\Íc^ª\ÊóIb+ÿ\0¢Jýšü‹¦½µ\ïó‰³\Î8=¾µúû\n£xcöFø¥­j¡Ó¦š\îHËŸ••-UX\Ç\åü+\Ë<ÿ\0\ÑøŸ«k0§ˆ.tŸ\éjÿ\0¾¹ûW\Ú%\Ù\ß\ËEþñZ\ê¿kOøcð†\Ç\àG\Ã;¸®­\áQ­}nÁ\Ô(mÌ…—†‘\ß\ær3ŽGS\Æ9–*–k\ìðxW\ÎÜ“ml’ó4£	Q¼\æ|+Œó\ëÞ˜\Êjfü»c\Ó\ØSk\ì-¢G2w» ú\ÓH©YM3\ëScD\ÈYi•9-CF©‘M\"¤¦‘Y´h™\Ú)ûh©.\çXËŠµ¤j\×z­g©\ØI\ä_YÊ³Á.\Õm’)Ê¶Á\0ò;T$Tl¸¯jQº³>b,\ê~\"|Xñ\Å{»;Ÿ\ë·:\ÜÖˆ\ÑÛ›£\ËRrp\Éž§Ò¸ò*R)Œµ:p£JqIv\èm\Ì\äù›Ô‰—¨õ\àÖ—‡üU®xFô\ÞhZÆ¡¢\Þ2\í3\é\×O\ã\Ór08\àU)Œ´§\Î<’Wù¥®Ž\Ç[¬üeøƒ\âlµ_ø›R²”m’\ÞóW¸š6…Y\È\"¸¦\Ï=y\ë\Ï_B}\êm´\ÆSXÂ…:+ÜŠ¡·;–\î\ä$SqR²\âšES-2:”Ô¬¸¤¨±ªdZi+)¦}j,h™-2§\"£e¨h\Õ2=´S¶š*l]Î´®)©Yj2¸¯hùdÈ™qM\"¦\"£e\ÅCF©‘2\ÓH©H¦2\Ô4j™-7mJE1–¤\Ñ2&SQ²\â§\ÛLe5\r\Z¦BE1—+.)¤Vl\Õ2:”Ô¬¸¤¨±ªdZk\n•”\Ôu64C6Š)ø¢¦\Å\Ü\ë1\Í5–¦e\ïQ\ãšöZ>Y2¸¤j•–š±´ŒT»Š:\ÖoM\ÍS a¥4©®’\ÇÁ÷7\n\áÅºv\Ë…j\Ç\á>?¾²J}YˆþU\Í*°‰\Ñ¶pl)¤W¡\Â/¦ùvÿ\0Èþ4\Ã\á}3þ}¿ò#ÿ\0d\ëD\ÙEžz\ËL\ãÖ½þ}3þ}¿ò#ÿ\01¼+¦Ï·þDþ*£\Û\Ä\ÑEžv\Ü\Ó\rz/ü\"úgüû\äGÿ\0â©\á]3þ}¿ò#ÿ\0ñU´MY\çFšEz/ü\"\Úg{oüˆÿ\0\ãM>\Òÿ\0\ç\Ûÿ\0\"?ÿ\0P\ëD\ÕEžvj6Zôfð®™ÿ\0>¿ù¿øªað®—ÿ\0>\ßù¿øªŸmT™\ç[}\è¯Dÿ\0„OLÿ\0Ÿoüˆÿ\0\ãEO¶‰Z™f˜\ËÞ¥e¦ž\ã¥}©ò‰‰ok%\Ý\Â\Å\îv\é\ç]¶“¡Ã¥G\Î~ô‡¯\Ð{T>\ÒÅ­¨¹e\"Yyû«\éøõ­¦_O­y•ª6\ìŽ\Êq¶¬aú\Óiôuâ¸™Ð™\ÆSŠ”Ž3ùVÆ…\àx©´]T\Öxf\Ó\ì\äœ3ü\nk	T„4‘´o-Œ\nCZ\ZÆ…©h7_e\Ôôû­:\çòn¡hŸ¸`\rg\Ñu%\ÍtiªÑ+L5)¦•©)2ZmJiŒµ&©Œjc-IHy©-2,{\ÑO\ÛE\"®r\Ì)\ÖÐ‹‹¸a\'GT?‰\ÅW\×\Ëf|”OFBªªŒ(/\éH\ÔQ^$·g ºµ4QEfhz\Ï\ìÁð¢\Ã\ã\Å+m+Tv\Z]­»\ß]B¬U§DdX# fu\Ïû \ã¿Eüa\âM\à\ï€.5G\Ó\Ú-KH\ÐZi° e\r\"¢…RUx.QÞŠ+òn$©9\ã\ãI¿u%¡õlc\ì¯a>\'|,ðÿ\0Å¯\\\èšõš\ÏŠL7\06\ÞN\Ï=ô\èzA5ù7\â­Ox—WÑ¥”O&Ÿy-›Ê¤\á\Ú6(H\Ï8;h¢»8Z­NyÓ¿»¦†y„R\åi47J(¯\ÑY\ãŒ\Å6Š*\r\nJ(¨5BQEXgÿ\Ù'),(12,'ECE',2,'ECE',100,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0ÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0\0–\0ƒ\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0øþ£e5+.)+úJ\Ç\Ë\"­4Š•”\Ó>µ\r[sTB\ËL©È¨\Ùk6\"\"šEIM\"³f‰‘¦\Z˜ŠaZ“TÈˆ¦2\â¥4\Ò+6S!\ÚiŒµ3.)›MCF©\ÓYjVZeE\"\Úh©6\ÑPUÎµ½zz\è|ð\Û\Å?µ/°xW@\Ô5ë¡\écH#\ÏB\ì8A\î\Ä\n»ð§\á\å\ï\Å_ˆ\Ú„\ìË¸\Õ.–0\ç÷i‚\Îÿ\0‚>ø\Å}óûC|xÒ¿b¿	\éþivv\Úô–\â{‹\É\â\Þ Sòù®3û\É\\‚~l€B0*qøú”jC\r†‡5Ik®\ÉwgFš”\\¤ô>Lºý…¾9\ÚÙµ\Ãø\á£Q¸ˆ¯­$û\áe,O¶+\ÄüC\á½WÂº¤\Ún³¦\Ý\é:Œ\'Z_B\ÐÊŸU`¯r\Óÿ\0nÏú~¨·­\ãY/F\à\Ò[]XÛ´Rò¥Bþ\ÎÞµõf¿û~\Ì\×þ#‹J‡Nø‰\á\è\Ün‰pVd@\æ0Ç–ŠE<N	õ¸jc±ø	\ÆX\ØEÁ»^7\Òý\ît\Æ¦­M\ê~gm\ç…5½zz™—¯Pzzÿ\0\ÖýkÞ¿b\ï\Ùù¾<ü]·ŠúþÑ‚\Þ\êŽFUÀ?»„û»Ÿdjöñ8ŠxZ2¯7¢2‚\æi#\ÆuŸ‡þ(ðþ“©ªxoW\Ót\Éöù7·–2\Å›†Wk²€r9\à\×=_W~\ß\ß“\â¯\Ä\Åð¾‹0ÿ\0„[\Âå­¢X¿\Õ\Ïs\Ñ\ä\ì¸\Ø8þ#­|¨\ËX\à\ê\Õ\ÄPZ\Ñ\åo[v\ìk+E\ÙM\"¤¦‘]M\r2\"´\ÃSL+Rj™\Æ\\T¦šEfÑªd;M1–¦e\Å3mCF©‘m4T˜Ts\ìŸø\']¼S~\ÓZkJŠZ;¶Œ·ð¾\Å~\×\'ûp]\Ü]þÔž;ûAl\ÅqH¬s„ñ\íÇ \ç?r¿³ÿ\0\Ä\ïøSÿ\0<5\â©½¥•\Î.’>w@\êRN;¬O\Ô\nú\Ëö\êýœµO‰—\Ö~Û·‰´\ÝB\Î?¶Ã¦þõ\Øû¹\ãUû\êT€\Ø\ÉA\Æ33(\á3ˆÕ­¤gTú^\ç‰\Þa\ÜcºgÀ89¯½\à•JúÄ«1·Ù¬[gUL\Ã?\\*ø§Eð‰|I­6¤\è:•þª­±¬\í\í\åBxù”¯\ã_ þ\Ñbý„?e}wTñ§Ž¼C¸\Ã`$\Ë1M±B\ê\ìF@%±Ú¯?­\n˜oªÁ\Þu\ZI|÷ô/\ru>w±ù\ë\â\Í)¯> k\Zv—n\×&]Nx-`w4™˜ª¢Ž\äð1\î+\ïŸ_[~ÂŸ²]¯†¬&~#x¥X\Í4g.’26@z\í‰X\"û\à÷5\æÿ\0ðO‚6Ú¶½ª|YñXX´6\ÒÜ–K»žbOF½ÿ\0¼}«Á?iÏ\×_¾-jž\"vt\ÒÑ®—nÇˆ­”§ø›–?\\t\ÍZ?\ÚX¸\áð\éY\Ë\Î]¬Z„9ú½#o›–99$Ÿ^”\Â*VSLÇ¯f¾®\Éh`›Ý²\Ó*r*6Z–\"\"šEIM\"³h\Ñ2\"´\ÃSL+Rj™\Æ\\T¦šEfÑªd;M&\Ê*l]Îµ—=FGq^¿ð_ö°øð&Ý¬ü?ª\Çu¤\Ïý“ªFg¶{§Ì®„õÂ°\'5\ädSk\Ò\Äa¨\âa\ì\ëÁI3N¤ \ïf}…¨ÁP>$\Íb‘\Úøw\Ã6·X\Ã\Ü§pOª©—ÄµxOö§\Ä\Ú\Ï\âÖ“§\êz¤úÖ¹©L „\È\Ãk?3,k…TUœœw&¼Á¸\È\Ï>™¯¿ÿ\0cÿ\0\é³ŸÁ\rã‡‹\á	{yh³!|6\ç\ç£Lû\à!}M|\Î/ƒÉ¨º˜zk\ÚKHõwg¡Nu1\å›\ÑnTý·> iþø\à?ƒdnµF\Ôä°\ÞFsµˆ9\Ý+’\Í\ê¹þõyWÁø\'ŸŽ>\'hp\ë\Úö¡k\àm\â?6½‰¤¹u#!¼P*ÿ\0¼\Êy\éVÿ\0d\Üþ\Ó_µmçŠ¼X§PŽ\×~µss0Xb#ûªHÀôŽ«þ\Þ´V³ñ\â~­\à\Û\é-ü#¡\Ïö_²[¾Ôº¸Lo’L}\í­•Pr\Üõ<y´c‰£5—aeiµ\Í9\î\îÿ\0¯¸\èn^\Ú~‰\Ä?ðL½?[†\î?|f\Ò5­F qmž¡Cv\Ér\åGüý+\å?<]ð\Ä\ßØž+\Ó\Ö\ÞIG™mwn\Å\í\î”pZ7À\Î8\È 0\È\È\æ¹3U¾\Ðu(56ò\â\ÂþÝƒ\Ãuk)ŽX\Øt*À\ä¡ú+&¬lO\ØSU\Ô5¥[¿xed“\íh{\\[¨}Ã H\È:dþ]u+crº•z¾ÒœšOD­NgU5Ù£ó_\Ò*V^:sÿ\0\ê¦}kê™Î™-2§\"£e¨h\Õ2\")¤T”\Ò+6\"+LaSLe¨5LôS¶\ÑSb\îu¬´\Æ\èH\ëSDp\É4\Éq¼’;TŒe˜“€\0\îkÚ•’»>]k¡\ë_²¿À»4ý\ZH\ä\Z\r™û^©0\ÎÕ[\î\ê\ç\åö\äö¯Zÿ\0‚„|sƒ\Å,´øm\áù/\rxd¸H	%\Èv\Ó¯\Ê?\Ú-\è+×´Ø­¿a_\Ù>K\Éiñ\Ä\ã\0’vO”»\nr{ÿ\0z¿:n§–ò\âY\çv–yX¼’Hr\Ì\Ä\ä’{œ“ù\×\Ç\áWö®6X\Éžó}eþG«9{\njyn}Ÿÿ\0·\Ô-\áø\ã7‘V\æ}.722BKó\ßøÖ¾[ø\ç¤\Ý\èÿ\0\Z<ui{%\Òkw…·\Zf`\Ø÷\Z\Ñøñz÷\ào\ÅÅ–±´ñÛ±†\î\Ùy3Û¿¹\èGûJ+\í/ŽŸ³‡ÿ\0l ø›ð›\Ä\Za\Õ/\"E¾µ¸b‘\ÎÀ\0\í£˜”†\í^˜\Íc^ª\ÊóIb+ÿ\0¢Jýšü‹¦½µ\ïó‰³\Î8=¾µúû\n£xcöFø¥­j¡Ó¦š\îHËŸ••-UX\Ç\åü+\Ë<ÿ\0\ÑøŸ«k0§ˆ.tŸ\éjÿ\0¾¹ûW\Ú%\Ù\ß\ËEþñZ\ê¿kOøcð†\Ç\àG\Ã;¸®­\áQ­}nÁ\Ô(mÌ…—†‘\ß\ær3ŽGS\Æ9–*–k\ìðxW\ÎÜ“ml’ó4£	Q¼\æ|+Œó\ëÞ˜\Êjfü»c\Ó\ØSk\ì-¢G2w» ú\ÓH©YM3\ëScD\ÈYi•9-CF©‘M\"¤¦‘Y´h™\Ú)ûh©.\çXËŠµ¤j\×z­g©\ØI\ä_YÊ³Á.\Õm’)Ê¶Á\0ò;T$Tl¸¯jQº³>b,\ê~\"|Xñ\Å{»;Ÿ\ë·:\ÜÖˆ\ÑÛ›£\ËRrp\Éž§Ò¸ò*R)Œµ:p£JqIv\èm\Ì\äù›Ô‰—¨õ\àÖ—‡üU®xFô\ÞhZÆ¡¢\Þ2\í3\é\×O\ã\Ór08\àU)Œ´§\Î<’Wù¥®Ž\Ç[¬üeøƒ\âlµ_ø›R²”m’\ÞóW¸š6…Y\È\"¸¦\Ï=y\ë\Ï_B}\êm´\ÆSXÂ…:+ÜŠ¡·;–\î\ä$SqR²\âšES-2:”Ô¬¸¤¨±ªdZi+)¦}j,h™-2§\"£e¨h\Õ2=´S¶š*l]Î´®)©Yj2¸¯hùdÈ™qM\"¦\"£e\ÅCF©‘2\ÓH©H¦2\Ô4j™-7mJE1–¤\Ñ2&SQ²\â§\ÛLe5\r\Z¦BE1—+.)¤Vl\Õ2:”Ô¬¸¤¨±ªdZk\n•”\Ôu64C6Š)ø¢¦\Å\Ü\ë1\Í5–¦e\ïQ\ãšöZ>Y2¸¤j•–š±´ŒT»Š:\ÖoM\ÍS a¥4©®’\ÇÁ÷7\n\áÅºv\Ë…j\Ç\á>?¾²J}YˆþU\Í*°‰\Ñ¶pl)¤W¡\Â/¦ùvÿ\0Èþ4\Ã\á}3þ}¿ò#ÿ\0d\ëD\ÙEžz\ËL\ãÖ½þ}3þ}¿ò#ÿ\01¼+¦Ï·þDþ*£\Û\Ä\ÑEžv\Ü\Ó\rz/ü\"úgüû\äGÿ\0â©\á]3þ}¿ò#ÿ\0ñU´MY\çFšEz/ü\"\Úg{oüˆÿ\0\ãM>\Òÿ\0\ç\Ûÿ\0\"?ÿ\0P\ëD\ÕEžvj6Zôfð®™ÿ\0>¿ù¿øªað®—ÿ\0>\ßù¿øªŸmT™\ç[}\è¯Dÿ\0„OLÿ\0Ÿoüˆÿ\0\ãEO¶‰Z™f˜\ËÞ¥e¦ž\ã¥}©ò‰‰ok%\Ý\Â\Å\îv\é\ç]¶“¡Ã¥G\Î~ô‡¯\Ð{T>\ÒÅ­¨¹e\"Yyû«\éøõ­¦_O­y•ª6\ìŽ\Êq¶¬aú\Óiôuâ¸™Ð™\ÆSŠ”Ž3ùVÆ…\àx©´]T\Öxf\Ó\ì\äœ3ü\nk	T„4‘´o-Œ\nCZ\ZÆ…©h7_e\Ôôû­:\çòn¡hŸ¸`\rg\Ñu%\ÍtiªÑ+L5)¦•©)2ZmJiŒµ&©Œjc-IHy©-2,{\ÑO\ÛE\"®r\Ì)\ÖÐ‹‹¸a\'GT?‰\ÅW\×\Ëf|”OFBªªŒ(/\éH\ÔQ^$·g ºµ4QEfhz\Ï\ìÁð¢\Ã\ã\Å+m+Tv\Z]­»\ß]B¬U§DdX# fu\Ïû \ã¿Eüa\âM\à\ï€.5G\Ó\Ú-KH\ÐZi° e\r\"¢…RUx.QÞŠ+òn$©9\ã\ãI¿u%¡õlc\ì¯a>\'|,ðÿ\0Å¯\\\èšõš\ÏŠL7\06\ÞN\Ï=ô\èzA5ù7\â­Ox—WÑ¥”O&Ÿy-›Ê¤\á\Ú6(H\Ï8;h¢»8Z­NyÓ¿»¦†y„R\åi47J(¯\ÑY\ãŒ\Å6Š*\r\nJ(¨5BQEXgÿ\Ù');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11  9:43:47
