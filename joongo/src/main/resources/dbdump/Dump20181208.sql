CREATE DATABASE  IF NOT EXISTS `joongo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `joongo`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 192.168.0.21    Database: joongo
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `catNo` int(8) NOT NULL AUTO_INCREMENT,
  `catName` varchar(24) NOT NULL,
  PRIMARY KEY (`catNo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'의류'),(2,'가전제품'),(3,'화장품'),(4,'악기음향기기'),(5,'도서'),(6,'생활용품'),(7,'스포츠'),(8,'식품'),(9,'기타');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorite` (
  `favoNo` int(8) NOT NULL AUTO_INCREMENT,
  `userNo` int(8) NOT NULL,
  `proNo` int(8) NOT NULL,
  `wdate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`favoNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image` (
  `imgNo` int(11) NOT NULL AUTO_INCREMENT,
  `proNo` int(11) NOT NULL,
  `imagePath` text NOT NULL,
  PRIMARY KEY (`imgNo`,`proNo`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,1,'src'),(2,1,'src/image'),(3,1,'src/path'),(4,1,'src/onon'),(5,1,'slf/ds'),(6,1,'dsknv/sdf'),(7,1,'smdf'),(8,1,'slknfl'),(9,1,'dfknn'),(10,1,'slkdn'),(11,2,'a'),(12,2,'b'),(13,2,'c'),(14,2,'d'),(15,3,'f'),(16,3,'g'),(17,3,'q'),(18,3,'d'),(21,7,'imagePath'),(22,62,'/joongo/upload/ebb07105-215c-4eec-9040-b677f127e3ab.jpg'),(23,62,'/joongo/upload/9589392c-66de-4c65-a408-5922e48ea63f.bmp'),(24,62,'/joongo/upload/5499f500-c8a3-475a-a004-a2a038e90c68.png'),(25,62,'/joongo/upload/3a9d8d7d-5824-4081-aaa7-a3276b97ddec.gif'),(26,63,'/joongo/upload/a2d0d20c-ac68-4da2-8fc5-793c50eac1a5.bmp'),(27,63,'/joongo/upload/0a9e8e83-791d-4a81-a112-5d87509c1c68.png'),(28,63,'/joongo/upload/d69caee8-c8ef-489a-b73c-6548d0539f51.jpg'),(29,63,'/joongo/upload/bc538841-3d28-477a-a530-abe1314bf7b8.gif'),(30,64,'/joongo/upload/13612e92-f9e8-4794-b485-4d042a9d2a3f.png'),(31,64,'/joongo/upload/a013c880-12ef-4714-82e3-51f095d6f5ed.bmp'),(32,64,'/joongo/upload/af862a88-2d0e-4024-ad62-1f9f6c22afd2.jpg'),(33,64,'/joongo/upload/c5a167f5-fcd2-401c-b1ba-6cda7b815eb6.gif'),(34,65,'/joongo/upload/24965d05-ee6a-4ef4-b7f6-e5c0026e8377.bmp'),(35,65,'/joongo/upload/3da76075-db02-4e2d-bae6-fb22dd2061a1.jpg'),(36,65,'/joongo/upload/8909dca0-ea90-42e9-9dd3-74bda9333c67.png'),(37,65,'/joongo/upload/b5546ed5-6e9a-4386-857e-796fc2cc3fc2.gif'),(38,66,'/joongo/upload/ea6f6f3b-d20f-4a30-ac03-bb9c92522272.png'),(39,66,'/joongo/upload/8d6dd2fd-b3c9-4ed6-b81f-4e1f3c5e6de8.jpg'),(40,66,'/joongo/upload/a7c6d29a-293b-451c-9d80-e33c4f3a16c1.bmp'),(41,66,'/joongo/upload/943f8286-9c42-4c98-8356-c3bcae4c79d8.gif'),(42,67,'/joongo/upload/8597a72a-7559-474b-a3ed-a0ee027482a4.png'),(43,68,'/joongo/upload/4194142c-b229-4b1e-b888-64d162288c2e.png'),(44,69,'/joongo/upload/4194142c-b229-4b1e-b888-64d162288c2e.png'),(45,70,'/joongo/upload/4194142c-b229-4b1e-b888-64d162288c2e.png'),(46,71,'/joongo/upload/4194142c-b229-4b1e-b888-64d162288c2e.png');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `messNo` int(11) NOT NULL AUTO_INCREMENT,
  `sendNo` int(8) NOT NULL,
  `destNo` int(8) NOT NULL,
  `content` text,
  `wdate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`messNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notice` (
  `noticeNo` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `userNo` int(8) NOT NULL,
  `nickname` varchar(24) NOT NULL,
  `content` text,
  `wdate` timestamp NULL DEFAULT NULL,
  `flag` varchar(2) DEFAULT 'Y',
  PRIMARY KEY (`noticeNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `proNo` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `catNo` int(8) NOT NULL,
  `userNo` int(8) NOT NULL,
  `nickname` varchar(24) NOT NULL,
  `condit` varchar(24) DEFAULT '판매중',
  `price` varchar(15) DEFAULT NULL,
  `content` text,
  `tags` varchar(256) DEFAULT NULL,
  `wdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `able` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`proNo`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'title',3,3,'asdf','condit','20000','content','tags','2018-11-27 10:55:18',1),(2,'루나스 일렉기타',9,3,'asdf','판매중','800000','일렉기타 팔아요','일렉기타','2018-11-27 10:56:10',1),(3,'타마 드럼',9,3,'asdf','판매중','1000000','드럼ㅍㅍ','드럼 타마 팝니다','2018-11-27 10:57:12',1),(4,'그랜드피아노',9,3,'asdf','판매중','5000000','피아노','영창 그랜드피아노','2018-11-27 10:58:20',1),(5,'아울로스 단소',9,3,'asdf','판매중','3000','교육용 단소','단소,교육용','2018-11-27 11:00:31',1),(6,'심로 콘트라베이스',9,3,'asdf','판매중','600000','콘트라베이스 전문가용','전문가 콘트라베이스,제발 사줘','2018-11-27 11:01:45',1),(7,'영창 어쿠스틱기타',4,3,'asdf','판매중','300000','기타 팔아요','전문가용 기타 통기타 ','2018-11-27 11:10:35',1),(8,'야하마 드럼',4,3,'asdf','판매중','1000000','전문가용 드럼 팔아요','일렉기타 전문가용 일렉','2018-11-27 11:10:35',1),(9,'아우로스 리코더',4,3,'asdf','판매중','3000','교육용 리코더 ㅍㅍ','교육용 리코더 최저가','2018-11-27 11:10:35',1),(10,'산조 가야금',4,3,'asdf','판매중','2300000','가야금 ','가야금 ','2018-11-27 11:10:35',1),(11,'더페이스샵 립스틱',3,3,'asdf','판매중','30000','립밤팔아요','더페이스샵 립스틱','2018-11-27 11:10:35',1),(12,'파운데이션',3,3,'asdf','판매중','50000','마루빌즈 파운데이션','마루빌즈','2018-11-27 11:10:35',1),(13,'파운데이션',3,3,'asdf','판매중','80000','더페이스샵 파운데이션','더페이스샵','2018-11-27 11:10:35',1),(14,'아이오페 로션',3,3,'asdf','판매중','15000','아이오페 로션 ㅍㅍ','아이오페 로션','2018-11-27 11:10:35',1),(15,'마스카라',3,3,'asdf','판매중','10000','마스카라 팔아요','아이오페 마스카라','2018-11-27 11:10:35',1),(16,'립밤',3,3,'asdf','판매중','5000','림밤 팝니다','니베아','2018-11-27 11:10:35',1),(17,'토니모르 수분크림',3,3,'asdf','판매중','80000','수분크림 ㅍㅍㅍ','토니모리 수분크림','2018-11-27 11:10:35',1),(18,'이니스프리 스킨',3,3,'asdf','판매중','10000','스킨 ㅍㅍㅍㅍㅍ','스킨 이니스프리','2018-11-27 11:10:35',1),(19,'올인원 화장품',3,3,'asdf','판매중','10000','이니스프리','이니스프리 로션 스킨 올인원','2018-11-27 11:10:35',1),(20,'MAC립스틱',3,3,'asdf','판매중','70000','립스틱 ㅍㅍㅍㅍㅍ','립스틱','2018-11-27 11:10:35',0),(21,'로션',3,3,'asdf','판매완료','200000','로션','로션','2018-12-01 06:18:17',1),(22,'로션',3,3,'asdf','판매중','300000','로션','로션','2018-12-01 06:18:17',0),(23,'ㄷㄱㄷㄱㄹ',1,1,'1','판매중','343,434','<p>고슋</p>','ㄴㅁㅇㅇㄴㅁ,ㅁㄴㄹㅇ','2018-12-01 08:43:33',1),(24,'ㅁㅇㄴㄴㅁㅇㅁㅇㄴ',1,1,'1','판매중','234,234,234','<p><img src=\"/joongo/upload/36ea5f30-27d5-4e73-9919-753e51ad649a.jpg&#10;\" title=\"fruit.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/426c2fed-5491-4997-9e0d-d4362d6d0336.jpg&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C%20(1).jpg\"></p><p><span style=\"font-size: 36pt;\">ㅁㄴㅇㅁㄴㅇㅁㅇㄴ</span></p><p><span style=\"font-size: 48px;\"><b>ㅁㅇㄴㅁㅇㄴㅁㅇㄴ</b></span></p><p><span style=\"font-size: 48px;\"><b><span style=\"color: rgb(255, 108, 0);\">ㅁㅇㄴㅁㅇㄴ</span><br style=\"clear:both;\"></b></span>&nbsp;</p>','','2018-12-01 08:45:03',1),(25,'44',1,1,'1','판매중','222','<p>dsfsdf</p>','dfs,ㄴㅇㄹ','2018-12-01 09:02:51',1),(26,'asd',1,1,'1','판매중','324','<p>asd</p>','','2018-12-01 09:07:29',1),(27,'ㅁㄴ',8,1,'1ㅁㄴㅇ','판매중','ㅇ','<p><img src=\"/joongo/upload/2d5342e7-9685-4eb1-8af5-d873981a989e.jpg&#10;\" title=\"fruit.jpg\"><br style=\"clear:both;\">&nbsp;</p>','ㅁㄴㅇ','2018-12-01 09:21:06',1),(28,'title',8,2,'asdf','판매중','77777',NULL,'','2018-12-03 10:56:13',1),(29,'titl',8,3,'ickname','판매중','123','content','tag','2018-12-03 11:16:00',1),(30,'asd',8,1,'1','판매중','123','<p>d</p>','asd','2018-12-04 10:23:02',1),(31,'2',8,1,'1','판매중','123','<p>a</p>','','2018-12-04 10:31:20',1),(32,'2',7,1,'1','판매중','123','<p><img src=\"/joongo/upload/5a37637b-ca76-40c9-a985-94c20e02c2b7.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 10:31:52',1),(33,'123',7,1,'1','판매중','123','<p>dd</p>','asd','2018-12-04 10:38:39',1),(34,'123',7,1,'1','판매중','123','<p><img src=\"/joongo/upload/41a85b39-3d84-44c8-9f6c-30655ffac40d.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 10:39:07',1),(35,'1',7,1,'1','판매중','123','<p><img src=\"/joongo/upload/b05cd3b5-4b0e-4fe1-a17e-5f7c0f16f213.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 10:46:18',1),(36,'123',7,1,'1','판매중','123','<p><img src=\"/joongo/upload/ad2dcf1b-14da-4ce6-8466-4590771b3bda.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 10:47:05',1),(37,'123',6,1,'1','판매중','123','<p><img src=\"/joongo/upload/ad2dcf1b-14da-4ce6-8466-4590771b3bda.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><img src=\"/joongo/upload/d48485b2-add8-4776-a778-67b3bce20633.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/291e0adb-6b36-481f-bcf5-feaa81fe1b80.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/8ab049ab-fc51-45f1-95a2-03c5e0acf4d9.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 10:48:12',1),(38,'asd',6,1,'1','판매중','123','<p><img src=\"/joongo/upload/44d1ad09-6a66-4f2c-99c6-7b14d56b05b0.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/9b8812d1-471b-4733-b974-dbfa834d1d1f.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/e6d05713-165e-43c4-ac00-6a87ec30e6ab.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/b72d40d8-0b4b-433d-962f-02697e0d5aa7.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 10:50:32',1),(39,'2',6,1,'1','판매중','123','<p><img src=\"/joongo/upload/71b5d734-e738-49b6-b3ed-764b245f3add.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/a5855414-b476-40cf-a3df-e1b05beb1938.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/f8344295-02b8-40ba-aa62-644e0fcc2f8d.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/df0a43c7-9252-479e-80e4-ed1163f4706a.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:03:22',1),(40,'2',6,1,'1','판매중','123','<p><img src=\"/joongo/upload/71b5d734-e738-49b6-b3ed-764b245f3add.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/a5855414-b476-40cf-a3df-e1b05beb1938.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/f8344295-02b8-40ba-aa62-644e0fcc2f8d.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/df0a43c7-9252-479e-80e4-ed1163f4706a.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:04:16',1),(41,'2',6,1,'1','판매중','123','<p><img src=\"/joongo/upload/71b5d734-e738-49b6-b3ed-764b245f3add.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/a5855414-b476-40cf-a3df-e1b05beb1938.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/f8344295-02b8-40ba-aa62-644e0fcc2f8d.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/df0a43c7-9252-479e-80e4-ed1163f4706a.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:05:30',1),(42,'123',5,1,'1','판매중','4','<p><img src=\"/joongo/upload/beb28108-b274-49f2-b82d-55bddbd5e1c8.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/c3a937d2-1940-4943-9e15-261cd13f3365.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/8a27cd40-90aa-4c11-8545-e70f6d3a5df1.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/2e035e84-c958-4a0a-b3d5-378cf272b877.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:05:51',1),(43,'123',5,1,'1','판매중','4','<p><img src=\"/joongo/upload/beb28108-b274-49f2-b82d-55bddbd5e1c8.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/c3a937d2-1940-4943-9e15-261cd13f3365.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/8a27cd40-90aa-4c11-8545-e70f6d3a5df1.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/2e035e84-c958-4a0a-b3d5-378cf272b877.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:10:41',1),(44,'1',5,1,'1','판매중','123','<p><img src=\"/joongo/upload/610c277f-49b7-406b-adf0-e2b9d75bd904.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/c6f5e8fa-2da3-4db3-b24e-b09a3ee290ca.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/46e7abeb-0c2a-4495-a2b1-803af8729c7e.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/4f041b32-3586-4826-813f-d1547fa2f871.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:12:26',1),(45,'1',5,1,'1','판매중','123','<p><img src=\"/joongo/upload/79564542-6455-4f3c-a127-40a338b369b6.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/e64fe9e5-4fa8-42c4-a4d7-2c64e34063dd.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/c478de83-53f0-4e89-8c91-aff7373c7315.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/e5f9fd95-2e0e-4a9d-8b19-ba0dccb2e020.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:14:06',1),(46,'1',5,1,'1','판매중','123','<p><img src=\"/joongo/upload/4ccc8222-2e96-4563-a5e1-a26dc481d05f.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/53a6d14f-c16e-4c9d-85a3-90058f329b9e.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/d13e59b7-60c2-4732-9dba-62d4fb8b61b3.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/a58fcccd-d689-4ae2-934d-847b0206d952.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:16:58',1),(47,'1',4,1,'1','판매중','123','<p><img src=\"/joongo/upload/4ccc8222-2e96-4563-a5e1-a26dc481d05f.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/53a6d14f-c16e-4c9d-85a3-90058f329b9e.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/d13e59b7-60c2-4732-9dba-62d4fb8b61b3.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/a58fcccd-d689-4ae2-934d-847b0206d952.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:17:24',1),(48,'1',4,1,'1','판매중','123','<p><img src=\"/joongo/upload/0d116388-bcd3-4493-aadd-36e9d5c16c54.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/bd1d9f8d-10d9-4d55-8a49-28af473b3e50.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/1f96ffbe-a7c0-440e-a00a-ec6b388a6cae.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/e9eae044-f3e5-4c84-b667-96eee86ec834.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:17:51',1),(49,'1',4,1,'1','판매중','123','<p><img src=\"/joongo/upload/3b8e6e99-41a7-4a22-8983-083dea43aaaa.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/0f93fbdc-a9cc-43be-8260-510a81604c44.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\"><img src=\"/joongo/upload/fa6609b0-598c-4004-a92f-f8ada4332e28.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/9bbc3a6d-4a35-4ac5-bf83-7c4e69f7f915.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:19:39',1),(50,'123',4,1,'1','판매중','123','<p><img src=\"/joongo/upload/84709b4a-ebff-406a-b62d-da2d0240e5a5.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/8cb00c68-1629-40fb-a423-81e9866035a2.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\"><img src=\"/joongo/upload/3af34c3b-d366-4e55-ba0a-1071d32b90f1.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/288dab08-a6b2-4d81-a641-8a2170124f87.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:27:35',1),(51,'123',4,1,'1','판매중','123','<p><img src=\"/joongo/upload/84709b4a-ebff-406a-b62d-da2d0240e5a5.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/8cb00c68-1629-40fb-a423-81e9866035a2.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\"><img src=\"/joongo/upload/3af34c3b-d366-4e55-ba0a-1071d32b90f1.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/288dab08-a6b2-4d81-a641-8a2170124f87.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:28:20',1),(52,'asd',1,1,'1','판매중','123','<p><img src=\"/joongo/upload/16dc74f4-afd6-4e5d-bcc4-79ca7823817b.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/dde07164-edd5-45b3-a467-6f07269457bf.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/d85c3f87-369f-448b-8a90-0a9162f23b8e.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/052cb418-9494-4faa-bdd4-a6aa27deba45.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:29:51',1),(53,'ads',1,1,'1','판매중','123','<p><img src=\"/joongo/upload/249fd0f7-489a-4e79-ab6c-14b9ece810e3.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/766c77fb-fb3f-4595-a522-75e9d5b5f85c.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/662a9930-9656-4dea-8a7c-b454509169d8.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/37e02d1c-7309-4f49-81fd-efa3987b9f60.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:36:11',1),(54,'asd',1,1,'1','판매중','123','<p><img src=\"/joongo/upload/dd82c56c-dcff-42e7-ba70-f97915021bac.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/0ab89ab7-9d75-4a93-8dab-2d0ea6e54971.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/85f573a5-9ed0-466d-85cc-3bd286762f0b.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/9457f2d3-135b-40ca-b2dd-44e7c0fc90b4.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:47:12',1),(55,'asd',1,1,'1','판매중','123','<p><img src=\"/joongo/upload/e2d94b32-18a0-4b48-9e41-c5e27e9fcee5.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/e5115517-47c8-46fb-b3ed-ac898845af93.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/1ad44927-fa8a-494b-921e-684f135e4946.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/6fc859c1-c50a-40bc-b384-79f8f4a0b3c8.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:50:51',1),(56,'as',1,1,'1','판매중','123','<p><img src=\"/joongo/upload/e8642701-09d5-471c-95ed-a5c70f936b88.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/f8f8b5bc-5728-46a0-8052-0257b62be905.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/da619387-c942-4eb7-a370-6c359846d178.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/065ad742-1fab-4fc0-a66e-694f398c674e.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 11:54:36',1),(57,'as',3,1,'1','판매중','123','<p><img src=\"/joongo/upload/e8642701-09d5-471c-95ed-a5c70f936b88.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/f8f8b5bc-5728-46a0-8052-0257b62be905.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/da619387-c942-4eb7-a370-6c359846d178.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/065ad742-1fab-4fc0-a66e-694f398c674e.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 12:02:43',1),(58,'asd',3,1,'1','판매중','123','<p><img src=\"/joongo/upload/1478f04f-361e-490d-a107-e5661b8f28ef.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/d3bfa993-33c9-4767-94b2-7923ab06bf86.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/3a84879b-653b-47b6-b206-4048dad1c049.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/2f7363fd-b8ff-43a3-97d9-6f7275bc2f18.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 12:03:16',1),(59,'글',3,1,'1','판매중','123,456','<p><img src=\"/joongo/upload/e2cb4ad1-056f-4a91-9f19-31fd620a080c.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/e72f18c6-5d84-45e6-8098-e386488ede2b.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/34039b9c-566f-4c34-b293-4d3c0ca5435a.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/c3479ec0-f869-4d74-81f6-f415a0c9d711.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 12:13:52',1),(60,'제목',3,1,'1','판매완료','20000','내용','태그','2018-12-04 12:15:12',1),(61,'ㅁㄴㅇ',3,1,'1','판매중','123,456','<p><img src=\"/joongo/upload/ebb07105-215c-4eec-9040-b677f127e3ab.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/9589392c-66de-4c65-a408-5922e48ea63f.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/5499f500-c8a3-475a-a004-a2a038e90c68.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/3a9d8d7d-5824-4081-aaa7-a3276b97ddec.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 12:19:18',1),(62,'ㅁㄴㅇ',2,1,'1','판매중','123,456','<p><img src=\"/joongo/upload/ebb07105-215c-4eec-9040-b677f127e3ab.jpg&#10;\" title=\"LG%20%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/9589392c-66de-4c65-a408-5922e48ea63f.bmp&#10;\" title=\"cEdDG.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/5499f500-c8a3-475a-a004-a2a038e90c68.png&#10;\" title=\"%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/3a9d8d7d-5824-4081-aaa7-a3276b97ddec.gif&#10;\" title=\"Wizard-Clap-by-Markus-Magnusson.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-04 12:20:00',1),(63,'asd',2,1,'1','판매중','123','<p><img src=\"/joongo/upload/a2d0d20c-ac68-4da2-8fc5-793c50eac1a5.bmp&#10;\" title=\"asd.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/0a9e8e83-791d-4a81-a112-5d87509c1c68.png&#10;\" title=\"asd.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/d69caee8-c8ef-489a-b73c-6548d0539f51.jpg&#10;\" title=\"asd.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/bc538841-3d28-477a-a530-abe1314bf7b8.gif&#10;\" title=\"asd.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-05 09:38:22',1),(64,'asd',2,1,'1','판매중','123,456','<p><img src=\"/joongo/upload/13612e92-f9e8-4794-b485-4d042a9d2a3f.png&#10;\" title=\"asd.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/a013c880-12ef-4714-82e3-51f095d6f5ed.bmp&#10;\" title=\"asd.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/af862a88-2d0e-4024-ad62-1f9f6c22afd2.jpg&#10;\" title=\"asd.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/c5a167f5-fcd2-401c-b1ba-6cda7b815eb6.gif&#10;\" title=\"asd.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-05 09:39:37',1),(65,'asd',2,1,'1','판매중','12,345','<p><img src=\"/joongo/upload/24965d05-ee6a-4ef4-b7f6-e5c0026e8377.bmp&#10;\" title=\"asd.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/3da76075-db02-4e2d-bae6-fb22dd2061a1.jpg&#10;\" title=\"asd.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/8909dca0-ea90-42e9-9dd3-74bda9333c67.png&#10;\" title=\"asd.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/b5546ed5-6e9a-4386-857e-796fc2cc3fc2.gif&#10;\" title=\"asd.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-05 10:28:30',1),(66,'asdf',2,1,'1','판매중','1,235,637','<p><img src=\"/joongo/upload/ea6f6f3b-d20f-4a30-ac03-bb9c92522272.png&#10;\" title=\"asd.png\"><br style=\"clear:both;\"><img src=\"/joongo/upload/8d6dd2fd-b3c9-4ed6-b81f-4e1f3c5e6de8.jpg&#10;\" title=\"asd.jpg\"><br style=\"clear:both;\"><img src=\"/joongo/upload/a7c6d29a-293b-451c-9d80-e33c4f3a16c1.bmp&#10;\" title=\"asd.bmp\"><br style=\"clear:both;\"><img src=\"/joongo/upload/943f8286-9c42-4c98-8356-c3bcae4c79d8.gif&#10;\" title=\"asd.gif\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-05 11:54:24',1),(67,'asdsadads',1,1,'1','판매중','2,134,214','<p>asdsad<img src=\"/joongo/upload/8597a72a-7559-474b-a3ed-a0ee027482a4.png&#10;\" title=\"2.png\">&nbsp;</p>','','2018-12-07 12:11:41',1),(68,'고용노동부 출석 내공100',1,1,'1','판매중','3,444','<p><img src=\"/joongo/upload/4194142c-b229-4b1e-b888-64d162288c2e.png&#10;\" title=\"2.png\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-08 03:13:43',1),(69,'고용노동부 출석 내공100',1,1,'1','판매중','3,444','<p><img src=\"/joongo/upload/4194142c-b229-4b1e-b888-64d162288c2e.png&#10;\" title=\"2.png\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-08 03:13:47',1),(70,'고용노동부 출석 내공100',1,1,'1','판매중','3,444','<p><img src=\"/joongo/upload/4194142c-b229-4b1e-b888-64d162288c2e.png&#10;\" title=\"2.png\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-08 03:13:50',1),(71,'고용노동부 출석 내공100',1,1,'1','판매중','3,444','<p><img src=\"/joongo/upload/4194142c-b229-4b1e-b888-64d162288c2e.png&#10;\" title=\"2.png\"><br style=\"clear:both;\">&nbsp;</p>','','2018-12-08 03:13:54',1),(72,'고용노동부 출석 내공100',1,1,'1','판매중','3,444','<p>d<br style=\"clear:both;\">&nbsp;</p>','','2018-12-08 03:14:03',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `report` (
  `reportNo` int(11) NOT NULL AUTO_INCREMENT,
  `demandNo` int(11) NOT NULL,
  `claimeeNo` int(11) NOT NULL,
  `reportId` int(11) NOT NULL,
  `content` text,
  `wdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reportNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportcategories`
--

DROP TABLE IF EXISTS `reportcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reportcategories` (
  `reportId` int(11) NOT NULL AUTO_INCREMENT,
  `reportType` varchar(100) NOT NULL,
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportcategories`
--

LOCK TABLES `reportcategories` WRITE;
/*!40000 ALTER TABLE `reportcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review` (
  `reviewNo` int(8) NOT NULL AUTO_INCREMENT,
  `userNo` int(8) NOT NULL,
  `nickname` varchar(24) NOT NULL,
  `content` text,
  `wdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`reviewNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `userNo` int(11) NOT NULL AUTO_INCREMENT,
  `loginId` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_q` varchar(256) NOT NULL,
  `password_a` varchar(256) NOT NULL,
  `nickname` varchar(24) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `introduce` text,
  `bdate` timestamp NULL DEFAULT NULL,
  `rdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isadmin` tinyint(1) DEFAULT '0',
  `able` tinyint(1) DEFAULT '1',
  `kakao` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userNo`),
  UNIQUE KEY `loginId` (`loginId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'parkjg20','parkjg20','나의 보물 1호는?','박진국','parkjg200','박국진','parkjg20@naver.com','010-5543-1787','서울특별시 강동구','김승용 병~신','2000-06-22 15:00:00','2018-11-27 10:42:57',0,1,0),(2,'nnvkk','nnvkk','내가 졸업한 초등학교의 이름은?','박진국','나는야김승용','김승용','nnvkk@naver.com','010-8529-7193','서울특별시 중랑구',NULL,'2000-11-25 15:00:00','2018-11-27 10:45:52',0,1,0),(3,'qkqk1','qhqh1','내가 졸업한 초등학교의 이름은?','박진국','이현승','이현승','saksdkdsk@naver.com','010-1100-1111','제주특별자치도 서귀포시',NULL,'1979-12-31 15:00:00','2018-11-27 12:22:16',0,1,0),(4,'qkqk2','qhqh2','내가 졸업한 초등학교의 이름은?','박진국','김형렬','김형렬','dkdkdk@naver.com','010-1111-1110','경기도 연천군',NULL,'1988-08-04 15:00:00','2018-11-27 12:22:16',0,1,0),(5,'qkqk3','qhqh3','내가 졸업한 초등학교의 이름은?','박진국','김성현','김성현','tjdtjd@naver.com','010-2225-3467','경상북도 울릉군',NULL,'1990-03-30 15:00:00','2018-11-27 12:22:16',0,1,0),(7,'test123','testest123','내가 졸업한 초등학교의 이름은?','박진국123','parkjg20123','박진국123','parkjg20123@naver.com','010-5663-1787','서울특별시 도봉공',NULL,'2000-01-22 15:00:00','2018-11-29 12:00:07',0,0,0),(8,'ss','123412','내가 졸업한 초등학교의 이름은?','123412','123412','aa','parkjg20@naver.com','010-[object Object]-[object Object]','서울특별시 강남구',NULL,'2000-06-22 15:00:00','2018-12-03 09:22:31',0,1,0),(9,'975608027','975608027','가장 기억에 남는 장소는?','초초초등학교','ㅁㄴㅇㄹ','박진국','pahk741@naver.com','010-1234-1212','서울특별시 강동구','안녕안녕하세용ㅇㅇㅎㅎ','2000-12-14 15:00:00','2018-12-03 11:33:36',0,1,1),(10,'asdf','123456','내가 졸업한 초등학교의 이름은?','123456','123456','aa','parkjg20@gmail.com','010-1234-5678','서울특별시 강서구',NULL,'2026-10-30 15:00:00','2018-12-03 12:36:04',0,1,0),(14,'aaaa','12341234','내가 졸업한 초등학교의 이름은?','초초초등학교','ㅁㄴㅇㄹ','asdfasdfas','aaaa@nate.com','010-1234-2321','경상북도 울릉군',NULL,'1975-10-22 15:00:00','2018-12-04 11:07:43',0,1,0),(15,'a','aaaaaa','자신이 나온 초등학교 이름은?','a','a','a','a@naver.com','010-1111-1111','서울특별시 중랑구','aaaa','2000-11-25 15:00:00','2018-12-08 02:21:09',0,1,0);
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

-- Dump completed on 2018-12-08 14:02:02
