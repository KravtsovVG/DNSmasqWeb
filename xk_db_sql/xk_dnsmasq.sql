-- MySQL dump 10.13  Distrib 5.5.36-34.1, for Linux (x86_64)
--
-- Host: localhost    Database: xk_dnsmasq
-- ------------------------------------------------------
-- Server version	5.5.36-34.1-log

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
-- Table structure for table `xk_dhcp_host`
--

DROP TABLE IF EXISTS `xk_dhcp_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xk_dhcp_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(50) DEFAULT NULL COMMENT 'Hostname',
  `mac` varchar(20) DEFAULT NULL COMMENT 'MAC adress',
  `ip` varchar(15) DEFAULT NULL COMMENT 'IP adress',
  `comment` varchar(30) DEFAULT NULL COMMENT 'comment',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  `status` varchar(3) NOT NULL DEFAULT 'yes' COMMENT 'Rule Status',
  `action` varchar(10) NOT NULL DEFAULT 'allow' COMMENT 'Rule action',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xk_dhcp_host`
--

LOCK TABLES `xk_dhcp_host` WRITE;
/*!40000 ALTER TABLE `xk_dhcp_host` DISABLE KEYS */;
INSERT INTO `xk_dhcp_host` VALUES (3,'rhel65xx','00:0c:29:f6:04:34','192.168.1.60','rhel 6.5xfff','2014-11-26 14:17:12','yes','allow'),(4,'test','00:0c:29:f6:04:35','192.168.1.61','dd','2014-11-26 14:27:22','yes','allow'),(5,'win7','00:0c:29:f6:04:29','192.168.1.7','win7x64','2014-11-26 14:39:51','yes','allow'),(6,'winxp','00:0c:29:f6:04:33','192.168.1.33','33xp','2014-11-26 15:29:01','yes','allow');
/*!40000 ALTER TABLE `xk_dhcp_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xk_domain`
--

DROP TABLE IF EXISTS `xk_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xk_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(60) NOT NULL COMMENT 'domain name',
  `file` varchar(200) NOT NULL COMMENT 'The configuration file',
  `file_md5` varchar(64) NOT NULL COMMENT 'MD5 value',
  `create_time` datetime NOT NULL COMMENT 'Created time',
  `up_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time',
  `comment` varchar(200) NOT NULL COMMENT 'Remarks',
  `status` varchar(3) NOT NULL DEFAULT 'yes' COMMENT 'Status',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xk_domain`
--

LOCK TABLES `xk_domain` WRITE;
/*!40000 ALTER TABLE `xk_domain` DISABLE KEYS */;
INSERT INTO `xk_domain` VALUES (1,'luxiaok.com','luxiaok.com.conf','5dcd3226a211b004c9376d864ab99d7f','2014-11-22 22:25:26','2014-11-24 14:28:25','Test domain','yes'),(2,'test.com','test.com.conf','6f91829bebd8663db73498090ab69557','2014-11-22 22:34:00','2014-11-22 19:47:02','Test domain 2','yes'),(3,'qq.com','qq.com.conf','4228386eafc1a2f3dc4c908f84d34a6b','2014-11-23 17:58:32','2014-11-23 09:58:32','QQ Domain','yes'),(4,'google.com','google.com.conf','1023883e5729868925ffca6032eb5300','2014-11-24 22:48:07','2014-11-24 15:34:25','Google','yes');
/*!40000 ALTER TABLE `xk_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xk_login_logs`
--

DROP TABLE IF EXISTS `xk_login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xk_login_logs` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(3) NOT NULL COMMENT 'User ID',
  `username` varchar(30) DEFAULT NULL COMMENT 'Username',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Login time',
  `login_host` varchar(15) DEFAULT NULL COMMENT 'Login IP',
  `login_location` varchar(20) DEFAULT NULL COMMENT 'Login location',
  `login_status` int(1) NOT NULL DEFAULT '0' COMMENT '0:Success，1:Failure，2:User_disabled，3:Username_Error，4:Password_Error，5:Abnormal，6:Unknown_state',
  `user_agent` varchar(200) DEFAULT NULL COMMENT 'User Agent',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xk_login_logs`
--

LOCK TABLES `xk_login_logs` WRITE;
/*!40000 ALTER TABLE `xk_login_logs` DISABLE KEYS */;
INSERT INTO `xk_login_logs` VALUES (1,1,'luxiaok','2014-11-22 09:03:00','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(2,1,'luxiaok','2014-11-22 09:03:08','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(3,1,'luxiaok','2014-11-22 09:06:16','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(4,2,'admin','2014-11-22 09:06:40','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(5,1,'luxiaok','2014-11-22 09:58:03','192.168.1.7',NULL,0,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(6,1,'luxiaok','2014-11-22 10:03:53','192.168.1.7',NULL,0,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(7,1,'luxiaok','2014-11-22 10:05:19','192.168.1.7',NULL,0,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(8,1,'luxiaok','2014-11-22 10:20:29','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(9,1,'luxiaok','2014-11-23 02:38:29','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(10,1,'luxiaok','2014-11-23 03:20:17','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(11,1,'luxiaok','2014-11-23 03:25:42','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(12,1,'luxiaok','2014-11-23 04:16:41','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(13,1,'luxiaok','2014-11-23 04:20:18','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(14,1,'luxiaok','2014-11-23 04:27:27','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(15,1,'luxiaok','2014-11-23 08:03:08','192.168.1.7',NULL,0,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(16,1,'luxiaok','2014-11-23 12:23:00','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(17,1,'luxiaok','2014-11-24 14:20:54','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(18,1,'luxiaok','2014-11-25 14:34:16','192.168.1.7',NULL,0,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(19,1,'luxiaok','2014-11-25 15:10:21','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36'),(20,1,'luxiaok','2014-11-26 12:51:41','192.168.1.7',NULL,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36');
/*!40000 ALTER TABLE `xk_login_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xk_options`
--

DROP TABLE IF EXISTS `xk_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xk_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xk_options`
--

LOCK TABLES `xk_options` WRITE;
/*!40000 ALTER TABLE `xk_options` DISABLE KEYS */;
INSERT INTO `xk_options` VALUES (1,'dhcp','xk_dhcp_status','yes','DHCP switch'),(2,'dhcp','xk_dhcp_pool_start','192.168.1.11','DHCP pool start address'),(3,'dhcp','xk_dhcp_pool_stop','192.168.1.101','DHCP pool end address'),(4,'dhcp','xk_dhcp_pool_netmask','255.255.255.0','DHCP pool mask'),(5,'dhcp','xk_dhcp_pool_lease','6h','DHCP lease'),(6,'dhcp','xk_dhcp_pool_gw','192.168.1.254','DHCP default gateway'),(7,'dhcp','xk_dhcp_pool_dns1','114.114.114.114','DHCP Primary DNS server'),(8,'dhcp','xk_dhcp_pool_dns2','8.8.8.8','DHCP Secondary DNS server'),(9,'dhcp','xk_dhcp_pool_domain','luxiaok.com','DHCP Default domain'),(10,'dhcp','xk_dhcp_pool_ntp','','DHCP Time server'),(11,'dhcp','xk_dhcp_pool_comment','test','DHCP pool comments'),(12,'dhcp','xk_dhcp_conf_md5','','MD5 of DHCP config file');
/*!40000 ALTER TABLE `xk_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xk_record`
--

DROP TABLE IF EXISTS `xk_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xk_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL COMMENT 'Domain ID',
  `record` varchar(50) NOT NULL COMMENT 'Host record',
  `type` varchar(10) NOT NULL COMMENT 'Record type',
  `value` varchar(50) NOT NULL COMMENT 'Record value',
  `priority` int(11) DEFAULT NULL COMMENT 'MX Priority',
  `create_time` datetime NOT NULL COMMENT 'Create Time',
  `up_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `comment` varchar(100) DEFAULT NULL COMMENT 'Comment',
  `status` varchar(3) NOT NULL DEFAULT 'yes' COMMENT 'Status value',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xk_record`
--

LOCK TABLES `xk_record` WRITE;
/*!40000 ALTER TABLE `xk_record` DISABLE KEYS */;
INSERT INTO `xk_record` VALUES (1,1,'www2','A','192.168.1.12',NULL,'2014-11-22 23:23:00','2014-11-23 11:32:51','2222','yes'),(2,2,'blog','A','192.168.1.1',NULL,'2014-11-22 23:29:06','2014-11-22 16:59:01','Test Blog','yes'),(4,2,'news','A','192.168.1.2',NULL,'2014-11-22 23:32:23','2014-11-22 17:02:03','New page','yes'),(5,2,'mail','A','113.108.16.61',NULL,'2014-11-23 00:08:09','2014-11-22 16:08:09','','yes'),(7,2,'www','A','192.168.2.9',NULL,'2014-11-23 01:57:21','2014-11-22 17:57:21','','yes'),(8,1,'blog','A','192.168.1.99',NULL,'2014-11-23 02:06:54','2014-11-22 18:06:54','','yes'),(9,1,'@','MX','mail.luxiaok.com',50,'2014-11-23 03:05:35','2014-11-22 19:19:40','MX records','yes'),(10,1,'mail','A','192.168.2.28',NULL,'2014-11-23 03:05:57','2014-11-22 19:05:57','','yes'),(11,2,'@','MX','mail.test.com',12,'2014-11-23 03:20:14','2014-11-22 19:20:14','','yes'),(12,2,'@','TXT','Hello World',NULL,'2014-11-23 03:24:57','2014-11-22 19:24:57','','yes'),(13,2,'hello','TXT','Hello Luxiaok',NULL,'2014-11-23 03:28:26','2014-11-22 19:28:26','','yes'),(14,2,'mail3','CNAME','mail.test.com',NULL,'2014-11-23 03:46:55','2014-11-22 19:46:55','','yes'),(15,1,'host1','CNAME','www.luxiaok.com',NULL,'2014-11-23 17:58:04','2014-11-24 14:28:24','','yes'),(16,3,'www','A','180.96.86.192',NULL,'2014-11-23 17:59:19','2014-11-23 09:59:19','','yes'),(17,1,'www','A','192.168.1.118',NULL,'2014-11-24 22:24:17','2014-11-24 14:24:17','','yes'),(18,4,'','A','192.88.1.88',NULL,'2014-11-24 22:48:33','2014-11-24 15:33:27','Test analysis','yes'),(19,4,'www','A','192.168.1.1',NULL,'2014-11-24 23:34:21','2014-11-24 15:34:21','www','yes');
/*!40000 ALTER TABLE `xk_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xk_users`
--

DROP TABLE IF EXISTS `xk_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xk_users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL COMMENT 'Phone number',
  `email` varchar(50) DEFAULT NULL COMMENT 'E-mail',
  `cdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mask` varchar(3) NOT NULL DEFAULT '999',
  `is_admin` varchar(3) NOT NULL DEFAULT 'no' COMMENT 'Is an administrator',
  `status` varchar(3) NOT NULL DEFAULT 'yes',
  `comment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='User';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xk_users`
--

LOCK TABLES `xk_users` WRITE;
/*!40000 ALTER TABLE `xk_users` DISABLE KEYS */;
INSERT INTO `xk_users` VALUES (1,'luxiaok','Lu_small_K','6b1230a362a507f432b56d4694cb7846',NULL,NULL,'2014-11-22 16:37:50','2014-11-22 08:37:50','999','yes','yes','Lu_small_K'),(2,'admin','Administrator','21232f297a57a5a743894a0e4a801fc3',NULL,NULL,'2014-11-22 16:37:50','2014-11-22 08:37:50','999','yes','yes','System administrator'),(3,'test','Test user','098f6bcd4621d373cade4e832627b4f6',NULL,NULL,'2014-11-22 16:46:18','2014-11-22 08:46:18','999','no','no','Test user');
/*!40000 ALTER TABLE `xk_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-26 23:31:55
