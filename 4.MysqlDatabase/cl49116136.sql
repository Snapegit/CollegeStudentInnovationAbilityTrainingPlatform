-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl49116136
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl49116136`
--

/*!40000 DROP DATABASE IF EXISTS `cl49116136`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl49116136` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl49116136`;

--
-- Table structure for table `bisaibaoming`
--

DROP TABLE IF EXISTS `bisaibaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bisaibaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `cansaiyaoqiu` varchar(200) DEFAULT NULL COMMENT '参赛要求',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='比赛报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bisaibaoming`
--

LOCK TABLES `bisaibaoming` WRITE;
/*!40000 ALTER TABLE `bisaibaoming` DISABLE KEYS */;
INSERT INTO `bisaibaoming` VALUES (131,'2024-03-26 07:42:20','比赛项目1','参赛要求1','2024-03-26 15:42:20','用户账号1','用户姓名1','2024-03-26 15:42:20','是',''),(132,'2024-03-26 07:42:20','比赛项目2','参赛要求2','2024-03-26 15:42:20','用户账号2','用户姓名2','2024-03-26 15:42:20','是',''),(133,'2024-03-26 07:42:20','比赛项目3','参赛要求3','2024-03-26 15:42:20','用户账号3','用户姓名3','2024-03-26 15:42:20','是',''),(134,'2024-03-26 07:42:20','比赛项目4','参赛要求4','2024-03-26 15:42:20','用户账号4','用户姓名4','2024-03-26 15:42:20','是',''),(135,'2024-03-26 07:42:20','比赛项目5','参赛要求5','2024-03-26 15:42:20','用户账号5','用户姓名5','2024-03-26 15:42:20','是',''),(136,'2024-03-26 07:42:20','比赛项目6','参赛要求6','2024-03-26 15:42:20','用户账号6','用户姓名6','2024-03-26 15:42:20','是','');
/*!40000 ALTER TABLE `bisaibaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuangxinnenglibisai`
--

DROP TABLE IF EXISTS `chuangxinnenglibisai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuangxinnenglibisai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `bisaineirong` varchar(200) DEFAULT NULL COMMENT '比赛内容',
  `cansaiyaoqiu` varchar(200) DEFAULT NULL COMMENT '参赛要求',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmian` longtext COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='创新能力比赛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuangxinnenglibisai`
--

LOCK TABLES `chuangxinnenglibisai` WRITE;
/*!40000 ALTER TABLE `chuangxinnenglibisai` DISABLE KEYS */;
INSERT INTO `chuangxinnenglibisai` VALUES (121,'2024-03-26 07:42:20','比赛项目1','比赛内容1','参赛要求1','2024-03-26 15:42:20','file/chuangxinnenglibisaiFengmian1.jpg,file/chuangxinnenglibisaiFengmian2.jpg,file/chuangxinnenglibisaiFengmian3.jpg'),(122,'2024-03-26 07:42:20','比赛项目2','比赛内容2','参赛要求2','2024-03-26 15:42:20','file/chuangxinnenglibisaiFengmian2.jpg,file/chuangxinnenglibisaiFengmian3.jpg,file/chuangxinnenglibisaiFengmian4.jpg'),(123,'2024-03-26 07:42:20','比赛项目3','比赛内容3','参赛要求3','2024-03-26 15:42:20','file/chuangxinnenglibisaiFengmian3.jpg,file/chuangxinnenglibisaiFengmian4.jpg,file/chuangxinnenglibisaiFengmian5.jpg'),(124,'2024-03-26 07:42:20','比赛项目4','比赛内容4','参赛要求4','2024-03-26 15:42:20','file/chuangxinnenglibisaiFengmian4.jpg,file/chuangxinnenglibisaiFengmian5.jpg,file/chuangxinnenglibisaiFengmian6.jpg'),(125,'2024-03-26 07:42:20','比赛项目5','比赛内容5','参赛要求5','2024-03-26 15:42:20','file/chuangxinnenglibisaiFengmian5.jpg,file/chuangxinnenglibisaiFengmian6.jpg,file/chuangxinnenglibisaiFengmian7.jpg'),(126,'2024-03-26 07:42:20','比赛项目6','比赛内容6','参赛要求6','2024-03-26 15:42:20','file/chuangxinnenglibisaiFengmian6.jpg,file/chuangxinnenglibisaiFengmian7.jpg,file/chuangxinnenglibisaiFengmian8.jpg');
/*!40000 ALTER TABLE `chuangxinnenglibisai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuangxinsiweipeiyang`
--

DROP TABLE IF EXISTS `chuangxinsiweipeiyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuangxinsiweipeiyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COMMENT '封面',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shipin` longtext COMMENT '视频',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='创新思维培养';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuangxinsiweipeiyang`
--

LOCK TABLES `chuangxinsiweipeiyang` WRITE;
/*!40000 ALTER TABLE `chuangxinsiweipeiyang` DISABLE KEYS */;
INSERT INTO `chuangxinsiweipeiyang` VALUES (101,'2024-03-26 07:42:20','file/chuangxinsiweipeiyangFengmian1.jpg,file/chuangxinsiweipeiyangFengmian2.jpg,file/chuangxinsiweipeiyangFengmian3.jpg','标题1','','2024-03-26'),(102,'2024-03-26 07:42:20','file/chuangxinsiweipeiyangFengmian2.jpg,file/chuangxinsiweipeiyangFengmian3.jpg,file/chuangxinsiweipeiyangFengmian4.jpg','标题2','','2024-03-26'),(103,'2024-03-26 07:42:20','file/chuangxinsiweipeiyangFengmian3.jpg,file/chuangxinsiweipeiyangFengmian4.jpg,file/chuangxinsiweipeiyangFengmian5.jpg','标题3','','2024-03-26'),(104,'2024-03-26 07:42:20','file/chuangxinsiweipeiyangFengmian4.jpg,file/chuangxinsiweipeiyangFengmian5.jpg,file/chuangxinsiweipeiyangFengmian6.jpg','标题4','','2024-03-26'),(105,'2024-03-26 07:42:20','file/chuangxinsiweipeiyangFengmian5.jpg,file/chuangxinsiweipeiyangFengmian6.jpg,file/chuangxinsiweipeiyangFengmian7.jpg','标题5','','2024-03-26'),(106,'2024-03-26 07:42:20','file/chuangxinsiweipeiyangFengmian6.jpg,file/chuangxinsiweipeiyangFengmian7.jpg,file/chuangxinsiweipeiyangFengmian8.jpg','标题6','','2024-03-26');
/*!40000 ALTER TABLE `chuangxinsiweipeiyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiangzuoxinxi`
--

DROP TABLE IF EXISTS `discussjiangzuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiangzuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='讲座信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiangzuoxinxi`
--

LOCK TABLES `discussjiangzuoxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiangzuoxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussjiangzuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` longtext COMMENT '封面',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (51,'2024-03-26 07:42:20','标题1','file/gonggaoxinxiFengmian1.jpg,file/gonggaoxinxiFengmian2.jpg,file/gonggaoxinxiFengmian3.jpg','简介1','内容1','2024-03-26'),(52,'2024-03-26 07:42:20','标题2','file/gonggaoxinxiFengmian2.jpg,file/gonggaoxinxiFengmian3.jpg,file/gonggaoxinxiFengmian4.jpg','简介2','内容2','2024-03-26'),(53,'2024-03-26 07:42:20','标题3','file/gonggaoxinxiFengmian3.jpg,file/gonggaoxinxiFengmian4.jpg,file/gonggaoxinxiFengmian5.jpg','简介3','内容3','2024-03-26'),(54,'2024-03-26 07:42:20','标题4','file/gonggaoxinxiFengmian4.jpg,file/gonggaoxinxiFengmian5.jpg,file/gonggaoxinxiFengmian6.jpg','简介4','内容4','2024-03-26'),(55,'2024-03-26 07:42:20','标题5','file/gonggaoxinxiFengmian5.jpg,file/gonggaoxinxiFengmian6.jpg,file/gonggaoxinxiFengmian7.jpg','简介5','内容5','2024-03-26'),(56,'2024-03-26 07:42:20','标题6','file/gonggaoxinxiFengmian6.jpg,file/gonggaoxinxiFengmian7.jpg,file/gonggaoxinxiFengmian8.jpg','简介6','内容6','2024-03-26');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiangzuoxinxi`
--

DROP TABLE IF EXISTS `jiangzuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiangzuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangzuomingcheng` varchar(200) DEFAULT NULL COMMENT '讲座名称',
  `fengmian` longtext COMMENT '封面',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `shipin` longtext COMMENT '视频',
  `jiangshimingcheng` varchar(200) DEFAULT NULL COMMENT '讲师名称',
  `jiangzuodidian` varchar(200) DEFAULT NULL COMMENT '讲座地点',
  `jiangzuoxiangqing` longtext COMMENT '讲座详情',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='讲座信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiangzuoxinxi`
--

LOCK TABLES `jiangzuoxinxi` WRITE;
/*!40000 ALTER TABLE `jiangzuoxinxi` DISABLE KEYS */;
INSERT INTO `jiangzuoxinxi` VALUES (61,'2024-03-26 07:42:20','讲座名称1','file/jiangzuoxinxiFengmian1.jpg,file/jiangzuoxinxiFengmian2.jpg,file/jiangzuoxinxiFengmian3.jpg','2024-03-26 15:42:20','','讲师名称1','讲座地点1','讲座详情1',1,1,1),(62,'2024-03-26 07:42:20','讲座名称2','file/jiangzuoxinxiFengmian2.jpg,file/jiangzuoxinxiFengmian3.jpg,file/jiangzuoxinxiFengmian4.jpg','2024-03-26 15:42:20','','讲师名称2','讲座地点2','讲座详情2',2,2,2),(63,'2024-03-26 07:42:20','讲座名称3','file/jiangzuoxinxiFengmian3.jpg,file/jiangzuoxinxiFengmian4.jpg,file/jiangzuoxinxiFengmian5.jpg','2024-03-26 15:42:20','','讲师名称3','讲座地点3','讲座详情3',3,3,3),(64,'2024-03-26 07:42:20','讲座名称4','file/jiangzuoxinxiFengmian4.jpg,file/jiangzuoxinxiFengmian5.jpg,file/jiangzuoxinxiFengmian6.jpg','2024-03-26 15:42:20','','讲师名称4','讲座地点4','讲座详情4',4,4,4),(65,'2024-03-26 07:42:20','讲座名称5','file/jiangzuoxinxiFengmian5.jpg,file/jiangzuoxinxiFengmian6.jpg,file/jiangzuoxinxiFengmian7.jpg','2024-03-26 15:42:20','','讲师名称5','讲座地点5','讲座详情5',5,5,5),(66,'2024-03-26 07:42:20','讲座名称6','file/jiangzuoxinxiFengmian6.jpg,file/jiangzuoxinxiFengmian7.jpg,file/jiangzuoxinxiFengmian8.jpg','2024-03-26 15:42:20','','讲师名称6','讲座地点6','讲座详情6',6,6,6);
/*!40000 ALTER TABLE `jiangzuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyanfankui`
--

DROP TABLE IF EXISTS `liuyanfankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liuyanfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fankuibiaoti` varchar(200) NOT NULL COMMENT '反馈标题',
  `fankuineirong` longtext NOT NULL COMMENT '反馈内容',
  `fankuishijian` datetime DEFAULT NULL COMMENT '反馈时间',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liuyanfankui`
--

LOCK TABLES `liuyanfankui` WRITE;
/*!40000 ALTER TABLE `liuyanfankui` DISABLE KEYS */;
INSERT INTO `liuyanfankui` VALUES (41,'2024-03-26 07:42:20','用户账号1','用户姓名1','反馈标题1','反馈内容1','2024-03-26 15:42:20','是',''),(42,'2024-03-26 07:42:20','用户账号2','用户姓名2','反馈标题2','反馈内容2','2024-03-26 15:42:20','是',''),(43,'2024-03-26 07:42:20','用户账号3','用户姓名3','反馈标题3','反馈内容3','2024-03-26 15:42:20','是',''),(44,'2024-03-26 07:42:20','用户账号4','用户姓名4','反馈标题4','反馈内容4','2024-03-26 15:42:20','是',''),(45,'2024-03-26 07:42:20','用户账号5','用户姓名5','反馈标题5','反馈内容5','2024-03-26 15:42:20','是',''),(46,'2024-03-26 07:42:20','用户账号6','用户姓名6','反馈标题6','反馈内容6','2024-03-26 15:42:20','是','');
/*!40000 ALTER TABLE `liuyanfankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-26 07:42:20','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common7\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common43\",\"menu\":\"管理员管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user3\",\"menu\":\"用户管理\",\"unicode\":\"&#xef99;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"fontClass\":\"icon-common20\",\"menu\":\"留言反馈\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"fontClass\":\"icon-common12\",\"menu\":\"公告信息管理\",\"unicode\":\"&#xedf4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"讲座信息\",\"menuJump\":\"列表\",\"tableName\":\"jiangzuoxinxi\"}],\"fontClass\":\"icon-common28\",\"menu\":\"讲座信息\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"团队申报\",\"menuJump\":\"列表\",\"tableName\":\"tuanduishenbao\"}],\"fontClass\":\"icon-common44\",\"menu\":\"团队申报\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"项目比赛\",\"menuJump\":\"列表\",\"tableName\":\"xiangmubisai\"}],\"fontClass\":\"icon-common29\",\"menu\":\"创新项目\",\"unicode\":\"&#xee2e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"创新思维培养\",\"menuJump\":\"列表\",\"tableName\":\"chuangxinsiweipeiyang\"}],\"fontClass\":\"icon-common9\",\"menu\":\"创新思维培养\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"首页总数\",\"首页统计\"],\"menu\":\"评分信息\",\"menuJump\":\"列表\",\"tableName\":\"pingfenxinxi\"}],\"fontClass\":\"icon-common38\",\"menu\":\"评分信息\",\"unicode\":\"&#xeeb2;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"首页总数\",\"首页统计\"],\"menu\":\"创新能力比赛\",\"menuJump\":\"列表\",\"tableName\":\"chuangxinnenglibisai\"}],\"fontClass\":\"icon-common40\",\"menu\":\"创新能力比赛\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\",\"评选\"],\"menu\":\"比赛报名\",\"menuJump\":\"列表\",\"tableName\":\"bisaibaoming\"}],\"fontClass\":\"icon-common13\",\"menu\":\"比赛报名\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"评选结果\",\"menuJump\":\"列表\",\"tableName\":\"pingxuanjieguo\"}],\"fontClass\":\"icon-common17\",\"menu\":\"评选结果\",\"unicode\":\"&#xedfe;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"评分\"],\"menu\":\"创新思维培养\",\"menuJump\":\"列表\",\"tableName\":\"chuangxinsiweipeiyang\"}],\"menu\":\"创新思维培养\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"讲座信息\",\"menuJump\":\"列表\",\"tableName\":\"jiangzuoxinxi\"}],\"menu\":\"讲座信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"报名\"],\"menu\":\"创新能力比赛\",\"menuJump\":\"列表\",\"tableName\":\"chuangxinnenglibisai\"}],\"menu\":\"创新能力比赛\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"团队申报\",\"menuJump\":\"列表\",\"tableName\":\"tuanduishenbao\"}],\"menu\":\"团队申报\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"留言反馈\",\"menuJump\":\"列表\",\"tableName\":\"liuyanfankui\"}],\"fontClass\":\"icon-common20\",\"menu\":\"留言反馈\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"团队申报\",\"menuJump\":\"列表\",\"tableName\":\"tuanduishenbao\"}],\"fontClass\":\"icon-common44\",\"menu\":\"团队申报\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"项目比赛\",\"menuJump\":\"列表\",\"tableName\":\"xiangmubisai\"}],\"fontClass\":\"icon-common29\",\"menu\":\"创新项目\",\"unicode\":\"&#xee2e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"评分信息\",\"menuJump\":\"列表\",\"tableName\":\"pingfenxinxi\"}],\"fontClass\":\"icon-common38\",\"menu\":\"评分信息\",\"unicode\":\"&#xeeb2;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"比赛报名\",\"menuJump\":\"列表\",\"tableName\":\"bisaibaoming\"}],\"fontClass\":\"icon-common13\",\"menu\":\"比赛报名\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"menu\":\"评选结果\",\"menuJump\":\"列表\",\"tableName\":\"pingxuanjieguo\"}],\"fontClass\":\"icon-common17\",\"menu\":\"评选结果\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common20\",\"menu\":\"我的收藏\",\"unicode\":\"&#xee02;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"评分\"],\"menu\":\"创新思维培养\",\"menuJump\":\"列表\",\"tableName\":\"chuangxinsiweipeiyang\"}],\"menu\":\"创新思维培养\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"讲座信息\",\"menuJump\":\"列表\",\"tableName\":\"jiangzuoxinxi\"}],\"menu\":\"讲座信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"报名\"],\"menu\":\"创新能力比赛\",\"menuJump\":\"列表\",\"tableName\":\"chuangxinnenglibisai\"}],\"menu\":\"创新能力比赛\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"团队申报\",\"menuJump\":\"列表\",\"tableName\":\"tuanduishenbao\"}],\"menu\":\"团队申报\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingfenxinxi`
--

DROP TABLE IF EXISTS `pingfenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingfenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `pingfen` double DEFAULT NULL COMMENT '评分',
  `pingfenyaoqiu` longtext COMMENT '评分要求',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='评分信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingfenxinxi`
--

LOCK TABLES `pingfenxinxi` WRITE;
/*!40000 ALTER TABLE `pingfenxinxi` DISABLE KEYS */;
INSERT INTO `pingfenxinxi` VALUES (111,'2024-03-26 07:42:20','标题1',1,'评分要求1','2024-03-26','用户账号1','用户姓名1'),(112,'2024-03-26 07:42:20','标题2',2,'评分要求2','2024-03-26','用户账号2','用户姓名2'),(113,'2024-03-26 07:42:20','标题3',3,'评分要求3','2024-03-26','用户账号3','用户姓名3'),(114,'2024-03-26 07:42:20','标题4',4,'评分要求4','2024-03-26','用户账号4','用户姓名4'),(115,'2024-03-26 07:42:20','标题5',5,'评分要求5','2024-03-26','用户账号5','用户姓名5'),(116,'2024-03-26 07:42:20','标题6',6,'评分要求6','2024-03-26','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `pingfenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingxuanjieguo`
--

DROP TABLE IF EXISTS `pingxuanjieguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingxuanjieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `cansaiyaoqiu` varchar(200) DEFAULT NULL COMMENT '参赛要求',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `jieguo` longtext COMMENT '结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='评选结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingxuanjieguo`
--

LOCK TABLES `pingxuanjieguo` WRITE;
/*!40000 ALTER TABLE `pingxuanjieguo` DISABLE KEYS */;
INSERT INTO `pingxuanjieguo` VALUES (141,'2024-03-26 07:42:20','比赛项目1','参赛要求1','2024-03-26 15:42:20','用户账号1','用户姓名1','2024-03-26 15:42:20','结果1'),(142,'2024-03-26 07:42:20','比赛项目2','参赛要求2','2024-03-26 15:42:20','用户账号2','用户姓名2','2024-03-26 15:42:20','结果2'),(143,'2024-03-26 07:42:20','比赛项目3','参赛要求3','2024-03-26 15:42:20','用户账号3','用户姓名3','2024-03-26 15:42:20','结果3'),(144,'2024-03-26 07:42:20','比赛项目4','参赛要求4','2024-03-26 15:42:20','用户账号4','用户姓名4','2024-03-26 15:42:20','结果4'),(145,'2024-03-26 07:42:20','比赛项目5','参赛要求5','2024-03-26 15:42:20','用户账号5','用户姓名5','2024-03-26 15:42:20','结果5'),(146,'2024-03-26 07:42:20','比赛项目6','参赛要求6','2024-03-26 15:42:20','用户账号6','用户姓名6','2024-03-26 15:42:20','结果6');
/*!40000 ALTER TABLE `pingxuanjieguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuanduishenbao`
--

DROP TABLE IF EXISTS `tuanduishenbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuanduishenbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `tuanduimingcheng` varchar(200) DEFAULT NULL COMMENT '团队名称',
  `tuanduimubiao` varchar(200) DEFAULT NULL COMMENT '团队目标',
  `chuangxinfangfa` varchar(200) DEFAULT NULL COMMENT '创新方法',
  `chengguo` varchar(200) DEFAULT NULL COMMENT '成果',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='团队申报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuanduishenbao`
--

LOCK TABLES `tuanduishenbao` WRITE;
/*!40000 ALTER TABLE `tuanduishenbao` DISABLE KEYS */;
INSERT INTO `tuanduishenbao` VALUES (81,'2024-03-26 07:42:20','用户账号1','用户姓名1','团队名称1','团队目标1','创新方法1','成果1','2024-03-26 15:42:20','是',''),(82,'2024-03-26 07:42:20','用户账号2','用户姓名2','团队名称2','团队目标2','创新方法2','成果2','2024-03-26 15:42:20','是',''),(83,'2024-03-26 07:42:20','用户账号3','用户姓名3','团队名称3','团队目标3','创新方法3','成果3','2024-03-26 15:42:20','是',''),(84,'2024-03-26 07:42:20','用户账号4','用户姓名4','团队名称4','团队目标4','创新方法4','成果4','2024-03-26 15:42:20','是',''),(85,'2024-03-26 07:42:20','用户账号5','用户姓名5','团队名称5','团队目标5','创新方法5','成果5','2024-03-26 15:42:20','是',''),(86,'2024-03-26 07:42:20','用户账号6','用户姓名6','团队名称6','团队目标6','创新方法6','成果6','2024-03-26 15:42:20','是','');
/*!40000 ALTER TABLE `tuanduishenbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-26 07:42:20','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmubisai`
--

DROP TABLE IF EXISTS `xiangmubisai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmubisai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmufenlei` varchar(200) DEFAULT NULL COMMENT '项目分类',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `xiangmuxiangqing` longtext COMMENT '项目详情',
  `xiangmushenqingshu` longtext COMMENT '项目申请书',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='项目比赛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmubisai`
--

LOCK TABLES `xiangmubisai` WRITE;
/*!40000 ALTER TABLE `xiangmubisai` DISABLE KEYS */;
INSERT INTO `xiangmubisai` VALUES (91,'2024-03-26 07:42:20','项目名称1','项目分类1','2024-03-26 15:42:20','项目详情1','','用户账号1','用户姓名1','是',''),(92,'2024-03-26 07:42:20','项目名称2','项目分类2','2024-03-26 15:42:20','项目详情2','','用户账号2','用户姓名2','是',''),(93,'2024-03-26 07:42:20','项目名称3','项目分类3','2024-03-26 15:42:20','项目详情3','','用户账号3','用户姓名3','是',''),(94,'2024-03-26 07:42:20','项目名称4','项目分类4','2024-03-26 15:42:20','项目详情4','','用户账号4','用户姓名4','是',''),(95,'2024-03-26 07:42:20','项目名称5','项目分类5','2024-03-26 15:42:20','项目详情5','','用户账号5','用户姓名5','是',''),(96,'2024-03-26 07:42:20','项目名称6','项目分类6','2024-03-26 15:42:20','项目详情6','','用户账号6','用户姓名6','是','');
/*!40000 ALTER TABLE `xiangmubisai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-26 07:42:20','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(32,'2024-03-26 07:42:20','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(33,'2024-03-26 07:42:20','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(34,'2024-03-26 07:42:20','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(35,'2024-03-26 07:42:20','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(36,'2024-03-26 07:42:20','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 15:14:50
