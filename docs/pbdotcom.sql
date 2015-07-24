-- MySQL dump 10.13  Distrib 5.5.25a, for Win32 (x86)
--
-- Host: localhost    Database: pbdotcom
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `pbcategory`
--

DROP TABLE IF EXISTS `pbcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbcategory` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `postfolder` varchar(256) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `backgroundtitle` varchar(256) NOT NULL,
  `backgroundtitlecolor` varchar(256) NOT NULL,
  `carouseltitle` varchar(256) NOT NULL,
  `carouselsubtitle` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcategory`
--

LOCK TABLES `pbcategory` WRITE;
/*!40000 ALTER TABLE `pbcategory` DISABLE KEYS */;
INSERT INTO `pbcategory` VALUES (1,'techstuff','Tech Stuff','#e40177','../../tech-stuff/','http://barraud-w7-1/peterbarraud/blogs/tech-stuff/','Tech Stuff','Tech Stuff','#5a5a5a','Tech Stuff','Tech is something I just love. I\'ve been programming all the way since Visual Basic 6, then VB.Net and C#. Scripting from macros in Word 95, in Perl, Python. And now, Javascript and all it\'s libraries.'),(2,'writersblock','Writer\'s Block','#9f5700','../../writers-block/','http://barraud-w7-1/peterbarraud/blogs/estk/','Writer\'s Block','Writer\'s Block','#5a5a5a','Writer\'s Block','When you\'re a technical writer, FrameMaker can never really be far behind. I\'ve been using this for a while now (started off with Fm 6) and I\'ve some stories to tell, I think'),(3,'blogs','Blogs all','#004065','../../blogs/','http://barraud-w7-1/peterbarraud/blogs/','Blogs all','Blogs all','#5a5a5a','Blogs all','Though you do loads of stuff with Perl. In my blog, I\'m going to talk mostly about doing stuff with text. We\'ll do stuff like reading from a file, or maybe even updating the contents of a file.'),(4,'FrameMaker','Adobe FrameMaker','#9f5700','../../blogs/fm/','http://barraud-w7-1/peterbarraud/blogs/fm/','Authoring in FrameMaker','Authoring in FrameMaker','#5a5a5a','Authoring in FrameMaker','So FrameMaker is what author in and author for at Adobe. And that\'s what we\'re going to do here. I\'ll try to add videos to show you how to get started with some things like say Structure author or DITA');
/*!40000 ALTER TABLE `pbcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbglobal`
--

DROP TABLE IF EXISTS `pbglobal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbglobal` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `templatefolder` varchar(256) NOT NULL,
  `posttemplatename` varchar(256) NOT NULL,
  `postfolder` varchar(256) NOT NULL,
  `posturl` varchar(256) NOT NULL,
  `categorytemplatename` varchar(256) NOT NULL,
  `indextemplatename` varchar(256) NOT NULL,
  `indexfolder` varchar(256) NOT NULL,
  `indexfilename` varchar(256) NOT NULL,
  `lightcarousel` varchar(500) NOT NULL,
  `darkcarousel` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbglobal`
--

LOCK TABLES `pbglobal` WRITE;
/*!40000 ALTER TABLE `pbglobal` DISABLE KEYS */;
INSERT INTO `pbglobal` VALUES (1,'templates/','blog_post.html','../../blogs/','http://barraud-w7-1/peterbarraud/blogs/blogs/','category_index.html','peterbarraud_index.html','../../','index.html','PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzY2NiI+PC9yZWN0Pjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjQ1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojNmE2YTZhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjU2cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+U2Vjb25kIHNsaWRlPC90ZXh0Pjwvc3ZnPg==','PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzU1NSI+PC9yZWN0Pjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjQ1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojNWE1YTVhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjU2cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+VGhpcmQgc2xpZGU8L3RleHQ+PC9zdmc+');
/*!40000 ALTER TABLE `pbglobal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbpost`
--

DROP TABLE IF EXISTS `pbpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbpost` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) NOT NULL,
  `subtitle` varchar(1000) DEFAULT NULL,
  `pagename` varchar(1024) DEFAULT NULL,
  `blog` text,
  `readyforpublish` char(0) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `publishdate` datetime DEFAULT NULL,
  `unpublishdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbpost`
--

LOCK TABLES `pbpost` WRITE;
/*!40000 ALTER TABLE `pbpost` DISABLE KEYS */;
INSERT INTO `pbpost` VALUES (1,'hh','h',NULL,'h',NULL,'2015-06-21 14:16:45','2015-06-21 14:16:45',NULL,NULL),(2,'adsfasf','asdfasdf',NULL,'asdfasdf',NULL,'2015-06-21 14:23:44','2015-06-21 14:23:44',NULL,NULL),(3,'adsfasf','asdfasdf',NULL,'asdfasdf',NULL,'2015-06-21 14:23:51','2015-06-21 14:23:51',NULL,NULL),(4,'adsfasf','asdfasdf',NULL,'asdfasdf',NULL,'2015-06-21 14:30:37','2015-06-21 14:30:37',NULL,NULL),(5,'adsfasf','asdfasdf',NULL,'asdfasdf',NULL,'2015-06-21 14:31:34','2015-06-21 14:31:34',NULL,NULL),(6,'lkjasdf',';lkjasdf',NULL,';lkj',NULL,'2015-06-21 14:33:13','2015-06-21 14:33:13',NULL,NULL),(7,'lkjasdf',';lkjasdf',NULL,';lkj',NULL,'2015-06-21 14:33:23','2015-06-21 14:33:23',NULL,NULL),(8,'ddd',NULL,NULL,NULL,NULL,'2015-06-21 14:33:54','2015-06-21 14:33:54',NULL,NULL),(9,'ddd',NULL,NULL,NULL,NULL,'2015-06-21 14:36:39','2015-06-21 14:36:39',NULL,NULL),(10,'ddd',NULL,NULL,NULL,NULL,'2015-06-21 14:38:19','2015-06-21 14:39:39',NULL,NULL),(11,'abc','def',NULL,'ghi',NULL,'2015-06-21 15:07:31','2015-06-21 15:07:31',NULL,NULL),(12,'kp',NULL,NULL,NULL,NULL,'2015-06-21 15:08:39','2015-06-21 15:08:39',NULL,NULL),(13,'kp001',NULL,NULL,NULL,NULL,'2015-06-21 15:08:49','2015-06-21 15:08:49',NULL,NULL),(14,'abc',NULL,NULL,NULL,NULL,'2015-06-21 15:12:35','2015-06-21 15:12:35',NULL,NULL),(15,'abchhh',NULL,NULL,NULL,NULL,'2015-06-21 15:13:31','2015-06-21 15:13:31',NULL,NULL),(16,'aaaa',NULL,NULL,NULL,NULL,'2015-06-21 16:18:03','2015-06-28 19:07:53',NULL,NULL),(17,'abc',NULL,NULL,NULL,NULL,'2015-06-21 16:19:57','2015-06-21 16:19:57',NULL,NULL),(18,'abcd',NULL,NULL,NULL,NULL,'2015-06-21 16:23:42','2015-06-21 16:23:42',NULL,NULL),(19,'aaa',NULL,NULL,NULL,NULL,'2015-06-21 16:31:25','2015-06-21 16:31:25',NULL,NULL),(20,'abc',NULL,NULL,NULL,NULL,'2015-06-21 16:32:13','2015-06-21 16:32:13',NULL,NULL),(21,'abc',NULL,NULL,NULL,NULL,'2015-06-21 16:32:22','2015-06-21 16:32:22',NULL,NULL),(22,'hug01',NULL,NULL,NULL,NULL,'2015-06-21 16:32:33','2015-06-28 19:23:39',NULL,NULL),(23,'asdfasdfaa00n',NULL,NULL,NULL,NULL,'2015-06-21 16:36:03','2015-06-28 19:12:58',NULL,NULL),(24,'a brand new blogbb-009','with some sub-title',NULL,'<p>and a blog to <u>boot</u></p>\n',NULL,'2015-06-28 19:24:55','2015-07-02 11:45:03',NULL,NULL),(25,'abc','<p>d</p>\n\n<p>e</p>\n\n<p>d</p>\n\n<p>f</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>a</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>d</p>\n\n<p>f</p>\n\n<p>a</p>\n\n<p>d</p>\n\n<p>f</p>\n\n<p>a</p>\n\n<p>f</p>\n',NULL,NULL,NULL,'2015-06-30 09:46:26','2015-06-30 09:46:26',NULL,NULL),(26,'xxxx','sssss',NULL,NULL,NULL,'2015-07-02 09:50:34','2015-07-02 09:50:34',NULL,NULL),(27,'aaa',NULL,NULL,NULL,NULL,'2015-07-02 10:45:07','2015-07-02 10:45:07',NULL,NULL),(28,'title 1','sub title 1',NULL,'<p>blog 1</p>\n',NULL,'2015-07-02 10:46:00','2015-07-02 10:46:00',NULL,NULL),(29,'new2','new',NULL,'<p>and another new that is <strong>bold and then we also have the famous unbolder that comes </strong>next</p>\n',NULL,'2015-07-02 10:48:02','2015-07-14 08:26:36','2015-07-14 08:26:39',NULL),(30,'abcPPnhh','this also has a subtite',NULL,NULL,NULL,'2015-07-02 10:48:51','2015-07-14 09:02:17','2015-07-14 09:03:53',NULL),(31,'abhbhbsss','ahh',NULL,'<p>aps<u><em><strong>tv</strong></em></u></p>\n\n<p>a</p>\n\n<p><u>a</u></p>\n\n<p>a</p>\n\n<p style=\"text-align:right\">a</p>\n\n<p style=\"text-align:right\">a</p>\n',NULL,'2015-07-02 10:56:40','2015-07-10 10:29:52','2015-07-10 10:30:01',NULL),(32,'jhh jddhhnnh','adsfnn',NULL,'<p>n</p>\n',NULL,'2015-07-05 22:23:07','2015-07-14 09:02:34','2015-07-14 09:02:37',NULL),(33,'sss',NULL,NULL,NULL,NULL,'2015-07-14 09:10:44','2015-07-14 09:10:44',NULL,NULL),(34,'ggg',NULL,NULL,NULL,NULL,'2015-07-14 09:18:00','2015-07-14 09:18:00',NULL,NULL);
/*!40000 ALTER TABLE `pbpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbpostcategory`
--

DROP TABLE IF EXISTS `pbpostcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbpostcategory` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `postid` smallint(5) unsigned NOT NULL,
  `categoryid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  KEY `categoryid` (`categoryid`),
  CONSTRAINT `pbpostcategory_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `pbpost` (`id`),
  CONSTRAINT `pbpostcategory_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `pbcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbpostcategory`
--

LOCK TABLES `pbpostcategory` WRITE;
/*!40000 ALTER TABLE `pbpostcategory` DISABLE KEYS */;
INSERT INTO `pbpostcategory` VALUES (1,14,1),(2,14,2),(3,15,1),(4,15,2),(5,15,1),(6,15,2),(22,16,1),(23,16,3),(27,23,1),(28,23,2),(29,23,3),(30,22,4),(49,27,1),(50,27,2),(51,27,3),(52,28,1),(55,24,1),(56,24,4),(107,31,1),(108,31,2),(109,31,3),(110,31,4),(118,29,1),(119,29,2),(124,30,1),(125,30,2),(126,32,1),(127,32,2);
/*!40000 ALTER TABLE `pbpostcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbposttype`
--

DROP TABLE IF EXISTS `pbposttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbposttype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `postid` smallint(5) unsigned NOT NULL,
  `typeid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  KEY `typeid` (`typeid`),
  CONSTRAINT `pbposttype_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `pbpost` (`id`),
  CONSTRAINT `pbposttype_ibfk_2` FOREIGN KEY (`typeid`) REFERENCES `pbtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbposttype`
--

LOCK TABLES `pbposttype` WRITE;
/*!40000 ALTER TABLE `pbposttype` DISABLE KEYS */;
INSERT INTO `pbposttype` VALUES (2,23,3),(3,23,4),(4,22,2),(25,24,1),(26,24,4),(55,31,2),(56,31,4);
/*!40000 ALTER TABLE `pbposttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbtype`
--

DROP TABLE IF EXISTS `pbtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbtype` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbtype`
--

LOCK TABLES `pbtype` WRITE;
/*!40000 ALTER TABLE `pbtype` DISABLE KEYS */;
INSERT INTO `pbtype` VALUES (1,'Sticky',NULL),(2,'Video',NULL),(3,'Quick Start',NULL),(4,'Tutorial',NULL);
/*!40000 ALTER TABLE `pbtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbuserreply`
--

DROP TABLE IF EXISTS `pbuserreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbuserreply` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `responseid` smallint(6) NOT NULL,
  `reply` text NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `replydate` datetime DEFAULT NULL,
  `isok` char(0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `responseid` (`responseid`),
  CONSTRAINT `pbuserreply_ibfk_1` FOREIGN KEY (`responseid`) REFERENCES `pbuserresponse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbuserreply`
--

LOCK TABLES `pbuserreply` WRITE;
/*!40000 ALTER TABLE `pbuserreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbuserreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbuserresponse`
--

DROP TABLE IF EXISTS `pbuserresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbuserresponse` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `postid` smallint(5) unsigned NOT NULL,
  `response` text NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `responsedate` datetime DEFAULT NULL,
  `isok` char(0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `pbuserresponse_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `pbpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbuserresponse`
--

LOCK TABLES `pbuserresponse` WRITE;
/*!40000 ALTER TABLE `pbuserresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbuserresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tccategory`
--

DROP TABLE IF EXISTS `tccategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tccategory` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `postfolder` varchar(256) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tccategory`
--

LOCK TABLES `tccategory` WRITE;
/*!40000 ALTER TABLE `tccategory` DISABLE KEYS */;
INSERT INTO `tccategory` VALUES (1,'a','/a','http://a','testing'),(3,'ab','/ab','http://ab','ab cded f'),(4,'ab c','/ab c','http://ab c','ab c'),(5,'ab_c_d','/ab_c_d','http://ab_c_d','ab c d'),(6,'ab_c_d_e','/ab_c_d_e','http://ab_c_d_e','ab c d e'),(7,'ab_c_d_e_f','/ab_c_d_e_f','http://ab_c_d_e_f','ab c d e f'),(8,'business','/business','http://business','business'),(9,'brand_new','/brand_new','http://brand_new','brand new'),(10,'again','/again','http://again','again'),(11,'more','/more','http://more','more'),(12,'some_again','/some_again','http://some_again','some again'),(13,'aaa','/aaa','http://aaa','aaa'),(15,'aaacc','/aaacc','http://aaacc','aaacc'),(16,'jyues','/jyues','http://jyues','jyues');
/*!40000 ALTER TABLE `tccategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcglobal`
--

DROP TABLE IF EXISTS `tcglobal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcglobal` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `templatefolder` varchar(256) NOT NULL,
  `posttemplatename` varchar(256) NOT NULL,
  `postfolder` varchar(256) NOT NULL,
  `posturl` varchar(256) NOT NULL,
  `categorytemplatename` varchar(256) NOT NULL,
  `indextemplatename` varchar(256) NOT NULL,
  `indexfolder` varchar(256) NOT NULL,
  `indexfilename` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcglobal`
--

LOCK TABLES `tcglobal` WRITE;
/*!40000 ALTER TABLE `tcglobal` DISABLE KEYS */;
INSERT INTO `tcglobal` VALUES (1,'../templates/','blog_post.html','../../stories/','http://barraud-w7-1/thecorrespondent.in/stories/','category_index.html','peterbarraud_index.html','../../','index.html');
/*!40000 ALTER TABLE `tcglobal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcgroup`
--

DROP TABLE IF EXISTS `tcgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcgroup` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(20) NOT NULL,
  `createstory` char(0) DEFAULT NULL,
  `deletestory` char(0) DEFAULT NULL,
  `publishstory` char(0) DEFAULT NULL,
  `createcategory` char(0) DEFAULT NULL,
  `publishcategory` char(0) DEFAULT NULL,
  `managesql` char(0) DEFAULT NULL,
  `createuser` char(0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcgroup`
--

LOCK TABLES `tcgroup` WRITE;
/*!40000 ALTER TABLE `tcgroup` DISABLE KEYS */;
INSERT INTO `tcgroup` VALUES (5,'Sub-Editors','','','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tcgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcimage`
--

DROP TABLE IF EXISTS `tcimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcimage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcimage`
--

LOCK TABLES `tcimage` WRITE;
/*!40000 ALTER TABLE `tcimage` DISABLE KEYS */;
INSERT INTO `tcimage` VALUES (1,'','http://someurl/'),(11,'p','http://someurl/p'),(12,'j','http://someurl/j'),(20,'po','http://someurl/po'),(21,'opo','http://someurl/opo'),(23,'opok','http://someurl/opok'),(24,'opokl','http://someurl/opoklpng'),(25,'opoklp','http://someurl/opoklp.png'),(26,'opoklpl','http://someurl/opoklpl.png'),(28,'opoklpll','http://someurl/opoklpll.png'),(30,'opoklpllk','http://someurl/opoklpllk.png.png'),(31,'captain america running for his life','http://barraud-w7-1/thecorrespondent.in/imgs/captain_america_running_for_his_life.png.png'),(32,'captain america running for his life again','http://barraud-w7-1/thecorrespondent.in/imgs/captain_america_running_for_his_life_again.png'),(33,'captain america running for his life againx','http://barraud-w7-1/thecorrespondent.in/imgs/captain_america_running_for_his_life_againx.png'),(35,'captain america running for his life againxy','http://barraud-w7-1/thecorrespondent.in/imgs/captain_america_running_for_his_life_againxy.png'),(36,'popker','http://barraud-w7-1/thecorrespondent.in/imgs/popker.png'),(37,'poker','http://barraud-w7-1/thecorrespondent.in/imgs/poker.png'),(40,'pokerj','http://barraud-w7-1/thecorrespondent.in/imgs/pokerj.png'),(44,'pokerjk','http://barraud-w7-1/thecorrespondent.in/imgs/pokerjk.png'),(46,'pokerjjkk','http://barraud-w7-1/thecorrespondent.in/imgs/pokerjjkk.png'),(47,'pokerjhn','http://barraud-w7-1/thecorrespondent.in/imgs/pokerjhn.png'),(49,'jhm','http://barraud-w7-1/thecorrespondent.in/imgs/jhm.png'),(50,'jhnj','http://barraud-w7-1/thecorrespondent.in/imgs/jhnj.png'),(52,'jhnjp','http://barraud-w7-1/thecorrespondent.in/imgs/jhnjp.png'),(53,'pokper','http://barraud-w7-1/thecorrespondent.in/imgs/pokper.png'),(54,'plopkk','http://barraud-w7-1/thecorrespondent.in/imgs/plopkk.png'),(55,'the relative url','../../imgs/the_relative_url.png'),(57,'the relative url again','http://barraud-w7-1/thecorrespondent.in/imgs/the_relative_url_again.png'),(58,'poker john','http://thecorrespondent.in/beta/imgs/poker_john.png'),(60,'poker john m','http://barraud-w7-1/thecorrespondent.in/imgs/poker_john_m.png'),(61,'poker hohn','http://barraud-w7-1/thecorrespondent.in/imgs/poker_hohn.png'),(62,'poker hohnd','http://barraud-w7-1/thecorrespondent.in/imgs/poker_hohnd.png'),(63,'poker d','http://barraud-w7-1/thecorrespondent.in/imgs/poker_d.png'),(64,'poker df','http://barraud-w7-1/thecorrespondent.in/imgs/poker_df.png'),(65,'jjjjjjjjj','http://barraud-w7-1/thecorrespondent.in/imgs/jjjjjjjjj.png'),(66,'pokerhjh','http://thecorrespondent.in/beta/imgs/pokerhjh.png'),(67,'qr image','http://thecorrespondent.in/beta/images/qr_image.png'),(68,'another q','http://barraud-w7-1/thecorrespondent.in/images/another_q.png'),(69,'first on left','http://barraud-w7-1/thecorrespondent.in/images/first_on_left.jpg'),(70,'second on left','http://barraud-w7-1/thecorrespondent.in/images/second_on_left.jpg'),(71,'third on left','http://barraud-w7-1/thecorrespondent.in/images/third_on_left.jpg'),(72,'fourth on left','http://barraud-w7-1/thecorrespondent.in/images/fourth_on_left.jpg'),(73,'fifth on left','http://barraud-w7-1/thecorrespondent.in/images/fifth_on_left.jpg'),(74,'first on right','http://barraud-w7-1/thecorrespondent.in/images/first_on_right.jpg'),(75,'second on right','http://barraud-w7-1/thecorrespondent.in/images/second_on_right.jpg'),(76,'booka','http://thecorrespondent.in/beta/images/booka.jpg'),(77,'b','http://thecorrespondent.in/beta/images/b.jpg'),(78,'kk','http://thecorrespondent.in/beta/images/kk.png'),(79,'undefined','http://thecorrespondent.in/beta/images/undefined.png'),(91,'ju','http://thecorrespondent.in/beta/images/ju.png'),(92,'juk','http://thecorrespondent.in/beta/images/juk.png'),(93,'plokij','http://thecorrespondent.in/beta/images/plokij.png'),(94,'lokjnb','http://thecorrespondent.in/beta/images/lokjnb.png'),(95,'olp','http://thecorrespondent.in/beta/images/olp.png'),(96,'title of new image','http://thecorrespondent.in/images/title_of_new_image.png'),(97,'anao','http://thecorrespondent.in/images/anao.png'),(99,'anaoh','http://thecorrespondent.in/images/anaoh.png'),(101,'jkk','http://thecorrespondent.in/images/jkk.png'),(102,'klkk','http://thecorrespondent.in/images/klkk.png'),(103,'polkkk','http://thecorrespondent.in/images/polkkk.png'),(104,'lo','http://thecorrespondent.in/images/lo.png'),(105,'lo and behold','http://thecorrespondent.in/images/lo_and_behold.png'),(106,'lkjjggf','http://thecorrespondent.in/images/lkjjggf.png'),(107,'poker image','http://thecorrespondent.in/images/poker_image.png'),(108,'poker image 2','http://thecorrespondent.in/images/poker_image_2.png'),(109,'pk','http://thecorrespondent.in/images/pk.png'),(110,'pk2','http://thecorrespondent.in/images/pk2.png'),(111,'pk3','http://thecorrespondent.in/images/pk3.png'),(112,'PK4','http://thecorrespondent.in/images/PK4.png'),(113,'pk5','http://thecorrespondent.in/images/pk5.png'),(114,'pk6','http://thecorrespondent.in/images/pk6.png'),(115,'PK7','http://thecorrespondent.in/images/PK7.png'),(116,'pk8','http://thecorrespondent.in/images/pk8.png'),(117,'pk9','http://thecorrespondent.in/images/pk9.png'),(118,'pk10','http://thecorrespondent.in/images/pk10.png'),(119,'pk11','http://thecorrespondent.in/images/pk11.png'),(120,'pk12','http://thecorrespondent.in/images/pk12.png'),(122,'pk13','http://thecorrespondent.in/images/pk13.png'),(123,'pk14','http://thecorrespondent.in/images/pk14.png'),(124,'pk15','http://thecorrespondent.in/images/pk15.png'),(125,'pk16','http://thecorrespondent.in/images/pk16.png'),(127,'pk17','http://thecorrespondent.in/images/pk17.png'),(128,'pk18','http://thecorrespondent.in/images/pk18.png'),(129,'p1','http://thecorrespondent.in/images/p1.png'),(130,'p2','http://thecorrespondent.in/images/p2.png'),(131,'p3','http://thecorrespondent.in/images/p3.png'),(132,'p4','http://thecorrespondent.in/images/p4.png'),(133,'p5','http://thecorrespondent.in/images/p5.png'),(134,'p6','http://thecorrespondent.in/images/p6.png'),(135,'p8','http://thecorrespondent.in/images/p8.png'),(136,'p0','http://thecorrespondent.in/images/p0.png'),(137,'o1','http://thecorrespondent.in/images/o1.png'),(138,'k9','http://thecorrespondent.in/images/k9.png'),(139,'af','http://thecorrespondent.in/images/af.png'),(140,'a1','http://thecorrespondent.in/images/a1.png'),(141,'a2','http://thecorrespondent.in/images/a2.png'),(142,'a9','http://thecorrespondent.in/images/a9.png'),(143,'h1','http://thecorrespondent.in/images/h1.png'),(144,'poki','http://thecorrespondent.in/images/poki.png'),(145,'l0','http://thecorrespondent.in/images/l0.png'),(146,'poo0','http://thecorrespondent.in/images/poo0.png'),(147,'k8','http://thecorrespondent.in/images/k8.png'),(148,'h27','http://thecorrespondent.in/images/h27.png'),(149,'p01','http://thecorrespondent.in/images/p01.png'),(150,'lasod','http://thecorrespondent.in/images/lasod.png'),(151,'dh7','http://thecorrespondent.in/images/dh7.png'),(152,'j786','http://thecorrespondent.in/images/j786.png'),(153,'poker good image','http://thecorrespondent.in/images/poker_good_image.png'),(154,'idd','http://thecorrespondent.in/images/idd.png'),(155,'jjkk','http://thecorrespondent.in/images/jjkk.png'),(156,'afds','http://thecorrespondent.in/images/afds.png'),(157,'afds0','http://thecorrespondent.in/images/afds0.png'),(158,'pokrejh','http://thecorrespondent.in/images/pokrejh.JPG'),(160,'pokrejhJ','http://thecorrespondent.in/images/pokrejhJ.JPG'),(161,'pokrejhJL','http://thecorrespondent.in/images/pokrejhJL.JPG'),(162,'pokrejhJLK','http://thecorrespondent.in/images/pokrejhJLK.JPG'),(163,'pokrejhJLKK','http://thecorrespondent.in/images/pokrejhJLKK.JPG');
/*!40000 ALTER TABLE `tcimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpost`
--

DROP TABLE IF EXISTS `tcpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpost` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) NOT NULL,
  `subtitle` varchar(1000) DEFAULT NULL,
  `pagename` varchar(1024) DEFAULT NULL,
  `blog` text,
  `readyforpublish` char(0) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `publishdate` datetime DEFAULT NULL,
  `unpublishdate` datetime DEFAULT NULL,
  `titleimage` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpost`
--

LOCK TABLES `tcpost` WRITE;
/*!40000 ALTER TABLE `tcpost` DISABLE KEYS */;
INSERT INTO `tcpost` VALUES (44,'aa',NULL,NULL,'<p>s</p>\n',NULL,'2014-10-29 20:13:06','2014-10-29 20:13:19',NULL,NULL,NULL),(45,'aa',NULL,NULL,'<p>aaaaaaaaaggffsssJJJ</p>\n',NULL,'2014-10-29 20:16:13','2014-10-29 20:31:12',NULL,NULL,NULL),(46,'bb','bbJJHHHH\'s',NULL,'<p>bbJJkJGD</p>\n',NULL,'2014-10-29 20:32:31','2014-11-02 08:39:05',NULL,NULL,NULL),(47,'a',NULL,NULL,NULL,NULL,'2014-11-05 09:27:24','2014-11-05 09:27:24',NULL,NULL,NULL),(48,'aa',NULL,NULL,NULL,NULL,'2014-11-05 10:36:58','2014-11-05 10:36:58',NULL,NULL,NULL),(49,'aa',NULL,NULL,NULL,NULL,'2014-11-05 10:41:07','2014-11-05 10:41:07',NULL,NULL,NULL),(50,'aa',NULL,NULL,NULL,NULL,'2014-11-05 10:47:22','2014-11-05 10:47:22',NULL,NULL,'0'),(51,'hh',NULL,NULL,NULL,NULL,'2014-11-05 10:50:45','2014-11-05 10:50:45',NULL,NULL,'0'),(52,'hh',NULL,NULL,NULL,NULL,'2014-11-05 10:53:50','2014-11-05 10:53:50',NULL,NULL,'0'),(53,'JJ',NULL,NULL,NULL,NULL,'2014-11-05 10:54:50','2014-11-05 10:54:50',NULL,NULL,'0'),(54,'L',NULL,NULL,NULL,NULL,'2014-11-05 10:56:06','2014-11-05 10:56:06',NULL,NULL,'0'),(55,'JJ',NULL,NULL,NULL,NULL,'2014-11-05 10:57:50','2014-11-05 10:57:50',NULL,NULL,'0'),(56,'HH',NULL,NULL,NULL,NULL,'2014-11-05 10:59:12','2014-11-05 11:01:03',NULL,NULL,'ID>> 149\nTitle>> p01\nURL>> http://thecorrespondent.in/images/p01.png\nFilesArray>> 0\n'),(57,'good image',NULL,NULL,NULL,NULL,'2014-11-05 11:09:45','2014-11-05 11:09:45',NULL,NULL,'153'),(58,'goo','jupaaaHHHHSS',NULL,NULL,NULL,'2014-11-05 11:10:16','2014-11-05 11:16:37',NULL,NULL,'155'),(59,'afsa','abd','afsa.html','<p>abdaaaassggaasssddswHHsHSAAHHSHHFF</p>\n',NULL,'2014-11-05 11:18:07','2014-11-05 22:04:26','2014-11-05 22:04:27',NULL,'157');
/*!40000 ALTER TABLE `tcpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpostcategory`
--

DROP TABLE IF EXISTS `tcpostcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpostcategory` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `postid` smallint(5) unsigned NOT NULL,
  `categoryid` tinyint(3) unsigned NOT NULL,
  `categoryrank` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  KEY `categoryid` (`categoryid`),
  CONSTRAINT `tcpostcategory_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `tcpost` (`id`),
  CONSTRAINT `tcpostcategory_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `tccategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpostcategory`
--

LOCK TABLES `tcpostcategory` WRITE;
/*!40000 ALTER TABLE `tcpostcategory` DISABLE KEYS */;
INSERT INTO `tcpostcategory` VALUES (256,44,1,NULL),(257,44,1,NULL),(258,45,3,NULL),(259,45,3,NULL),(260,45,3,NULL),(261,45,3,NULL),(262,45,3,NULL),(263,45,3,NULL),(264,45,3,NULL),(265,45,3,NULL),(266,45,3,NULL),(267,45,3,NULL),(268,45,3,NULL),(269,45,3,NULL),(270,45,3,NULL),(271,45,3,NULL),(272,45,3,NULL),(273,45,3,NULL),(274,46,1,NULL),(275,46,4,NULL),(276,46,8,NULL),(277,46,10,NULL),(278,56,1,NULL),(279,57,1,NULL),(280,58,1,NULL),(281,59,1,NULL);
/*!40000 ALTER TABLE `tcpostcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcposttag`
--

DROP TABLE IF EXISTS `tcposttag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcposttag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `postid` smallint(5) unsigned NOT NULL,
  `tagid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  KEY `tagid` (`tagid`),
  CONSTRAINT `tcposttag_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `tcpost` (`id`),
  CONSTRAINT `tcposttag_ibfk_2` FOREIGN KEY (`tagid`) REFERENCES `tctag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcposttag`
--

LOCK TABLES `tcposttag` WRITE;
/*!40000 ALTER TABLE `tcposttag` DISABLE KEYS */;
INSERT INTO `tcposttag` VALUES (19,11,8),(36,12,28),(46,5,25),(47,5,29),(48,5,29),(54,14,31),(57,3,30),(58,2,26),(59,2,27),(62,18,32);
/*!40000 ALTER TABLE `tcposttag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tctag`
--

DROP TABLE IF EXISTS `tctag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tctag` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tctag`
--

LOCK TABLES `tctag` WRITE;
/*!40000 ALTER TABLE `tctag` DISABLE KEYS */;
INSERT INTO `tctag` VALUES (25,'abc'),(28,'ad'),(32,'bssshhhhjjssssbbhccndd'),(7,'dangerous'),(31,'def'),(27,'hnd'),(30,'jump'),(1,'jup'),(26,'new'),(29,'now'),(6,'other'),(2,'taggg'),(3,'tags'),(5,'tagss'),(4,'trying'),(8,'zoo');
/*!40000 ALTER TABLE `tctag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcuser`
--

DROP TABLE IF EXISTS `tcuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcuser` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `createstory` char(0) DEFAULT NULL,
  `deletestory` char(0) DEFAULT NULL,
  `publishstory` char(0) DEFAULT NULL,
  `createcategory` char(0) DEFAULT NULL,
  `publishcategory` char(0) DEFAULT NULL,
  `managesql` char(0) DEFAULT NULL,
  `createuser` char(0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcuser`
--

LOCK TABLES `tcuser` WRITE;
/*!40000 ALTER TABLE `tcuser` DISABLE KEYS */;
INSERT INTO `tcuser` VALUES (1,'mktayal','krishna','','','',NULL,'',NULL,''),(2,'poker','john',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'new','user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'newhh','user','',NULL,NULL,NULL,NULL,NULL,NULL),(5,'peterb','p','','','','',NULL,NULL,NULL),(6,'jk','j','',NULL,'',NULL,NULL,NULL,NULL),(7,'trypublishcat1','j','',NULL,'','',NULL,NULL,NULL),(8,'trypublishcat2','j','',NULL,'','',NULL,NULL,NULL),(9,'trypublishcat3','j','',NULL,'',NULL,'',NULL,NULL),(10,'poker1','po','',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tcuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcuserreply`
--

DROP TABLE IF EXISTS `tcuserreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcuserreply` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `responseid` smallint(6) NOT NULL,
  `reply` text NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `replydate` datetime DEFAULT NULL,
  `isok` char(0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `responseid` (`responseid`),
  CONSTRAINT `tcuserreply_ibfk_1` FOREIGN KEY (`responseid`) REFERENCES `tcuserresponse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcuserreply`
--

LOCK TABLES `tcuserreply` WRITE;
/*!40000 ALTER TABLE `tcuserreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcuserreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcuserresponse`
--

DROP TABLE IF EXISTS `tcuserresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcuserresponse` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `postid` smallint(5) unsigned NOT NULL,
  `response` text NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `responsedate` datetime DEFAULT NULL,
  `isok` char(0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `tcuserresponse_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `tcpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcuserresponse`
--

LOCK TABLES `tcuserresponse` WRITE;
/*!40000 ALTER TABLE `tcuserresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcuserresponse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-17  9:40:38
