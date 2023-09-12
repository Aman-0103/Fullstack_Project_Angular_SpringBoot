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
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college` (
  `clid` int NOT NULL AUTO_INCREMENT,
  `clnm` varchar(50) DEFAULT NULL,
  `ct_catid` int DEFAULT NULL,
  `descrip` varchar(500) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `pic` blob,
  PRIMARY KEY (`clid`),
  KEY `FK1186t4o6kh8liex1skd0nnwbr` (`ct_catid`),
  CONSTRAINT `FK1186t4o6kh8liex1skd0nnwbr` FOREIGN KEY (`ct_catid`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (10,'All India Institute of Medical Sciences (AIIMS)',1,'AIIMS is one of India\'s most prestigious medical institutions, offering undergraduate and postgraduate medical courses.','New Delhi',100,_binary '�\��\�\0JFIF\0\0�\0�\0\0�\�\0C\0\n\n\n\r\r�\�\0C		\r\r��\0\0�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0���e5+.)+�J\�\�\"�4���\�>�\r[sTB\�L�Ȩ\�k6�\"\"�EIM\"�f���\Z��aZ�TȈ�2\�4\�+6�S!\�i��3.)�MCF��\�YjVZeE�\"\�h�6\�PUε�zz\�|�\�\�?�/�xW@\�5롍\�cH#\�B\�8A\�\�\n��\�\�\�\�_�\��\�˸\�.�0\��i�\��\0�>�\�}��C|xҿb�	\��ivv\���\�{�\�\�\� S���3�\�\\�~l�B0*q���jC\r��5Ik�\�wg�F��\\��>L����9\�ٵ\��\�Q����$�\�e,O�+\��C\�Wº�\�n��\�\�:�\'Z_B\�ʟU`�r\��\0nύ�~���\�Y/F\�\�[]X۴R�B�\�޵�f���~\�\��#�J�N��\�\�\�n�pVd@\�0ǖ�E<N	��jc��	\�X\�E��^7\��\�t\���M\�~gm\��5�zz���Pzz�\0\��k޿b\�\���<�]����т\�\�FU�?�����dj��8�xZ2�7�2�\�i#\�u���(�����xoW\�t\���7��2\���Wk��r9\�\�=_W~\�\��\�\�\��0�\0�[\�孢X�\�\�s\�\�\�\�8�#�|�\�X\�\�\�\�P�Z\�\�o[v\�k+E\�M\"���]M\r2\"�\�SL+Rj�\�\\T��EfѪd;M1��e\�3mCF��m4T�Ts\��\']�S~\�ZkJ�Z;����\�~\�\'�p]\�]�Ԟ;�Al\�qH�s��\�Ǡ\�?�r���\0\�\��S�\0<5\����\�.�>w@\�RN;��O\�\n�\��\����O��\�~۷��\�B\�?�æ��\���\�U�\�T�\�\�A\�3�3(\�3�խ�gT�^\�\�a\�c�g�89��\��J��ī1��٬[gUL\�?\\*��E��|I�6��\�:������\�\�\�Bx���\�_��\�b��?e}wT�����C�\�`$\�1M�B\�\�F@%�گ?�\n�o��\�u\ZI|��/\ru>w��\�\�\�)�> k\Zv�n\�&]Nx-`�w4�����\��1\�+\�_[~�]���&�~#x�X\�4g.�2�6@z\�X\"�\��5\��\0�O�6ڶ��|Y�XX�6\�܏�K���bOF��\0�}��?iύ\�_�-j�\"vt\�э��nǈ�������?\\t\�Z?\�X�\��\�Y\�\�]�Z�9���#o��99$�^�\�*VSLǯf��\�h`�ݐ�\�*r*6Z��\"\"�EIM\"�h\�2\"�\�SL+Rj�\�\\T��EfѪd;M&\�*l]ε�=FGq^��_�����&ݬ�?�\�u�\����Fg�{�̮��°\'5\�dSk\�\�a�\�a\�\��I3N��\�f}���P>$\�b�\��w\�6�X\�\��pO����ĵxO��\�\�\�\�֓�\�z��ֹ�L �\�\�k?3,k�TU��w&���\�\�>����\0c�\0\����\r㇋\�	{yh�!|6\�\�L�\�!}M|\�/�ɨ��zk\�KH�wg�Nu1\�\�nT��> i��\�?�dn�F\�䍰\�Fs��9\�+�\�\���yW��\'��>\'hp\�\���k\�m\�?6����u#!��P*�\0�\�y\�V�\0d�\��\�_�m犼X�P�\�~�ss�0Xb#��H���\��V��\�~�\�\�\�-�#�\��_�[�Ժ�Lo�L}\���Pr\��<y�c��5�aei�\�9\�\��\0��\�n^\�~�\�?�L�?[�\�?|f\�5�F qm��Cv\�r\�G��+\�?�<]�\�\�؞+\�\�\�IG�mwn\�\�\�pZ7�\�8\� 0\�\�\�3U�\�u(56�\�\��݃\�uk)�X\�t*�\���+&�lO\�SU\�5�[�xed�\�h{\\[�}àH\�:d�]u+cr���z�Ҝ�OD�N�gU5٣�_\�*V^:s��\0\�}kꝙΙ-2�\"�e�h\�2\")�T�\�+6�\"+LaSLe�5L��S�\�Sb\�u��\�\�H\�SDp\�4\�q��;T�e���\0\�kڕ��>]k�\�_������4�\ZH\�\Z\r��^�0\�Ձ[\�\�\�\��\���Z�\0��|s�\�,��m\��/\rxd�H	%\�v�\��\�?\�-\�+״ح�a_\�>K\�i�\�\�\0�vO��\nr{�\0z�:n���\�Y\�v�yX��Hr\�\�\�{���\�\�\�W��6X\����}e�G�9{\njyn}��\0�\�-\���\�7�V\�}.7�22BK�\��־[�\�\�\��\0\Z<ui{%\�kw��\Zf`\��\Z\���z�\�o\�Ŗ���۱�\�\�y3ۿ��\�G�J+\�/�����\0l ���\�\Za\�/\"E���b�\��\0\�����\�^�\�c^�\��Ib+�\0�J�������\��\�8=����\n�xc�F���j�Ӧ�\�H˟��-UX�\�\��+\�<�\0\����k0��.t�\�j�\0���W\�%\�\�\�E��Z\�kO��c��\�\�G\�;���\�Q�}n�\�(m̅���\�\�r3�GS\�9�*�k\��xW\�ܓml��4�	Q�\�|+��\�ޘ\�jf��c\�\�Sk\�-�G2w� �\�H�YM3\�ScD\�Yi�9-CF��M\"���Y�h�\�)�h�.\�Xˊ��j\�z�g�\�I\�_Yʳ�.\�m�)ʶ�\0�;T$Tl��jQ��>b,\�~\"|X�\�{�;�\�:\�ֈ\�ۛ��\�Rrp\���Ҹ�*R)���:p�JqIv\�m\�\���ԉ���\�֗��U�xF�\�hZơ�\�2\�3\�\�O\�\�r08\�U)���\�<�W����\�[��e��\�l�_��R��m�\��W��6�Y\�\"��\�=y\�\�_B}\�m�\�SX:+܊���;�\�\�$SqR�\�ES-2:��Ԭ�����dZi+)�}j,h�-2�\"�e�h\�2=�S��*l]δ�)�Yj2��h�dșqM\"�\"�e\�CF��2\�H�H�2\�4j�-7mJE1��\�2&SQ�\�\�Le5\r\Z�BE1�+.)�Vl\�2:��Ԭ�����dZk\n��\�u64C6�)���\�\�\�1\�5��e\�Q\��Z>Y2��j������T��:\�oM\�S a��4���\���7\n\�źv\��j\�\�>?��J}Y��U\�*��\��pl)�W�\�/���v�\0ȏ�4\�\�}3�}��#�\0�d\�D\�E�z\�L\�ֽ�}3�}��#�\0�1�+�Ϸ�D�*�\�\�\�E�v\�\�\rz/�\"�g��\�G�\0⩍\�]3�}��#�\0�U�MY\�F�Ez/�\"\�g{o���\0\�M>\��\0\�\��\0\"?�\0P\�D\�E�vj6Z�f��\0>�����a��\0>\������mT�\�[}\�D�\0�OL�\0�o���\0\�EO��Z�f�\�ޥe��\�}��ok%\�\�\�\�v\�\�]���åG�\�~�\�{T>\�ŭ��e\"Yy��\�����_O�y��6\�\�q��a�\�i�u⸙Й\�S���3�Vƅ\�x��]T\�xf\�\�\�3�\nk	T�4���o-�\nCZ\Zƅ�h7_e\����:\��n�h��`\rg\�u%\�ti�э+L5)���)2ZmJi��&��jc-IHy�-2,{\�O\�E\"�r\�)\�Ћ��a\'GT?�\�W\�\�f|�OF�B���(/\�H\�Q^$�g���4QEfhz\�\���\�\�\�+m+Tv\Z]��\�]B�U�DdX#�fu\�� \��E�a\�M\�\�.5G\�\�-KH\�Zi��e\r\"��RUx.Qފ+�n$�9\�\�I�u%��lc\�a>\'|,��\0ů\\\���\��L7\06\�N\�=�\�zA5�7\�Ox�Wѥ�O&�y-�ʤ\�\�6(H\�8;h��8Z�Nyӿ���y�R\�i47J(�\�Y\�\�6�*\r\nJ(�5BQEXg�\�');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
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
