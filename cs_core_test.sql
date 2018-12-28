/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.40-log : Database - cs_core_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cs_core_test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cs_core_test`;

/*Table structure for table `tb_mgr_action` */

DROP TABLE IF EXISTS `tb_mgr_action`;

CREATE TABLE `tb_mgr_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `menu_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `val` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mgr_action` */

insert  into `tb_mgr_action`(`id`,`attr1`,`attr2`,`attr3`,`attr4`,`attr5`,`create_date`,`menu_code`,`name`,`val`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,'181','查看',1),(2,NULL,NULL,NULL,NULL,NULL,NULL,'181','新增',2),(3,NULL,NULL,NULL,NULL,NULL,NULL,'181','编辑',4),(4,NULL,NULL,NULL,NULL,NULL,NULL,'181','删除',8),(5,NULL,NULL,NULL,NULL,NULL,NULL,'183','查看',1),(6,NULL,NULL,NULL,NULL,NULL,NULL,'183','新增',2),(7,NULL,NULL,NULL,NULL,NULL,NULL,'183','编辑',4),(8,NULL,NULL,NULL,NULL,NULL,NULL,'183','删除',8),(9,NULL,NULL,NULL,NULL,NULL,NULL,'183','分配权限',16),(10,NULL,NULL,NULL,NULL,NULL,NULL,'184','查看',1),(11,NULL,NULL,NULL,NULL,NULL,NULL,'184','新增',2),(12,NULL,NULL,NULL,NULL,NULL,NULL,'184','编辑',4),(13,NULL,NULL,NULL,NULL,NULL,NULL,'184','删除',8),(14,NULL,NULL,NULL,NULL,NULL,NULL,'182','查看',1),(15,NULL,NULL,NULL,NULL,NULL,NULL,'182','新增',2),(16,NULL,NULL,NULL,NULL,NULL,NULL,'182','编辑',4),(17,NULL,NULL,NULL,NULL,NULL,NULL,'182','删除',8),(18,NULL,NULL,NULL,NULL,NULL,NULL,'182','初始化密码',16),(19,NULL,NULL,NULL,NULL,NULL,NULL,'182','分配角色',32);

/*Table structure for table `tb_mgr_admin` */

DROP TABLE IF EXISTS `tb_mgr_admin`;

CREATE TABLE `tb_mgr_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `code` varchar(16) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `head_img` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_k9afxe6j5kq1mgfue7g7d9maj` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mgr_admin` */

insert  into `tb_mgr_admin`(`id`,`account`,`addr`,`attr1`,`attr2`,`attr3`,`attr4`,`attr5`,`code`,`create_date`,`email`,`name`,`phone`,`pwd`,`qq`,`remark`,`sex`,`status`,`type`,`real_name`,`createDate`,`head_img`) values (2,'admin',NULL,NULL,NULL,NULL,NULL,NULL,'000001',NULL,NULL,'cosco',NULL,'51feed109df61566c83367030bfb66c9',NULL,NULL,1,0,0,NULL,NULL,NULL);

/*Table structure for table `tb_mgr_menu` */

DROP TABLE IF EXISTS `tb_mgr_menu`;

CREATE TABLE `tb_mgr_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `cls` varchar(24) DEFAULT '',
  `code` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `display` bit(1) DEFAULT NULL,
  `icon` varchar(128) DEFAULT '',
  `name` varchar(32) NOT NULL,
  `pid` int(11) DEFAULT '0',
  `url` varchar(128) NOT NULL DEFAULT '#',
  `weight` int(11) DEFAULT '0',
  `ss` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5xw0kgi9jbbg6co5onrs1lm91` (`name`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mgr_menu` */

insert  into `tb_mgr_menu`(`id`,`attr1`,`attr2`,`attr3`,`attr4`,`attr5`,`cls`,`code`,`create_date`,`display`,`icon`,`name`,`pid`,`url`,`weight`,`ss`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,'180','2017-03-02 19:37:47','',NULL,'系统管理',0,'#',0,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,'181','2017-04-29 02:04:17','',NULL,'菜单维护',1,'menu/list.cs',0,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,'182','2017-03-02 19:39:59','',NULL,'用户管理',1,'user/list.cs',1,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,'183','2017-01-20 17:10:22','',NULL,'角色维护',1,'role/list.cs',2,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,'184','2017-01-06 14:35:48','',NULL,'数据字典',1,'dic/list.cs',5,NULL);

/*Table structure for table `tb_mgr_role` */

DROP TABLE IF EXISTS `tb_mgr_role`;

CREATE TABLE `tb_mgr_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `code` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_f0googpud4qivy2o2iaeir6y9` (`name`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mgr_role` */

insert  into `tb_mgr_role`(`id`,`attr1`,`attr2`,`attr3`,`attr4`,`attr5`,`code`,`create_date`,`name`,`note`) values (1,NULL,NULL,NULL,NULL,NULL,'100',NULL,'超级管理员',''),(2,NULL,NULL,NULL,NULL,NULL,'101',NULL,'维护人员','');

/*Table structure for table `tb_mgr_role_menu` */

DROP TABLE IF EXISTS `tb_mgr_role_menu`;

CREATE TABLE `tb_mgr_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_val` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `menu_code` varchar(255) DEFAULT NULL,
  `role_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mgr_role_menu` */

insert  into `tb_mgr_role_menu`(`id`,`action_val`,`create_date`,`menu_code`,`role_code`) values (384,0,NULL,'180','101'),(385,15,NULL,'181','101'),(386,6,NULL,'182','101'),(387,31,NULL,'183','101'),(388,15,NULL,'184','101'),(389,0,NULL,'180','100'),(390,15,NULL,'181','100'),(391,63,NULL,'182','100'),(392,31,NULL,'183','100'),(393,15,NULL,'184','100');

/*Table structure for table `tb_mgr_user_role` */

DROP TABLE IF EXISTS `tb_mgr_user_role`;

CREATE TABLE `tb_mgr_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `role_code` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mgr_user_role` */

insert  into `tb_mgr_user_role`(`id`,`create_date`,`role_code`,`user_code`) values (25,'2017-03-02 17:38:12','100','000001');

/*Table structure for table `tb_sys_dic` */

DROP TABLE IF EXISTS `tb_sys_dic`;

CREATE TABLE `tb_sys_dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `code` varchar(16) NOT NULL,
  `is_fixed` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `type` varchar(16) NOT NULL,
  `value` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3swrcvt9chnmgtsbxoybecmp1` (`type`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_sys_dic` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
