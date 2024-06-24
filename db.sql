/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhuyuanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhuyuanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhuyuanguanli`;

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '诊断编号',
  `bingli_name` varchar(200) DEFAULT NULL COMMENT '诊断名称 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `bingli_bingqing` varchar(200) DEFAULT NULL COMMENT '病情',
  `jianchaxiangmu` varchar(200) DEFAULT NULL COMMENT '检查项目',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `bingli_file` varchar(200) DEFAULT NULL COMMENT '诊断附件',
  `bingli_time` date DEFAULT NULL COMMENT '日期',
  `yisheng_id` int(200) DEFAULT NULL COMMENT '医生',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='诊断记录';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`bingli_uuid_number`,`bingli_name`,`yonghu_id`,`bingli_bingqing`,`jianchaxiangmu`,`jianchajieguo`,`bingli_file`,`bingli_time`,`yisheng_id`,`create_time`) values (1,'164942423549617','诊断名称1',3,'病情1','检查项目1','检查结果1','http://localhost:8080/zhuyuanguanli/upload/file.rar','2022-04-08',3,'2022-04-08 21:23:55'),(2,'16494242354966','诊断名称2',3,'病情2','检查项目2','检查结果2','http://localhost:8080/zhuyuanguanli/upload/file.rar','2022-04-08',3,'2022-04-08 21:23:55'),(3,'164942423549620','诊断名称3',3,'病情3','检查项目3','检查结果3','http://localhost:8080/zhuyuanguanli/upload/file.rar','2022-04-08',1,'2022-04-08 21:23:55'),(4,'164942423549619','诊断名称4',1,'病情4','检查项目4','检查结果4','http://localhost:8080/zhuyuanguanli/upload/file.rar','2022-04-08',3,'2022-04-08 21:23:55'),(5,'164942423549720','诊断名称5',3,'病情5','检查项目5','检查结果5','http://localhost:8080/zhuyuanguanli/upload/file.rar','2022-04-08',1,'2022-04-08 21:23:55');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'yaopin_types','药品类型',1,'药品类型1',NULL,NULL,'2022-04-08 21:23:52'),(2,'yaopin_types','药品类型',2,'药品类型2',NULL,NULL,'2022-04-08 21:23:52'),(3,'yaopin_types','药品类型',3,'药品类型3',NULL,NULL,'2022-04-08 21:23:52'),(4,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-08 21:23:52'),(5,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-08 21:23:52'),(6,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-08 21:23:52'),(7,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-08 21:23:52'),(8,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-08 21:23:52');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/zhuyuanguanli/upload/news1.jpg','2022-04-08 21:23:55','公告详情1','2022-04-08 21:23:55'),(2,'公告标题2',2,'http://localhost:8080/zhuyuanguanli/upload/news2.jpg','2022-04-08 21:23:55','公告详情2','2022-04-08 21:23:55'),(3,'公告标题3',1,'http://localhost:8080/zhuyuanguanli/upload/news3.jpg','2022-04-08 21:23:55','公告详情3','2022-04-08 21:23:55'),(4,'公告标题4',1,'http://localhost:8080/zhuyuanguanli/upload/news4.jpg','2022-04-08 21:23:55','公告详情4','2022-04-08 21:23:55'),(5,'公告标题5',1,'http://localhost:8080/zhuyuanguanli/upload/news5.jpg','2022-04-08 21:23:55','公告详情5','2022-04-08 21:23:55');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','nsg3bl88nghxqlnxmpbli65ae2lqzklb','2022-04-08 21:44:54','2022-04-08 22:46:05'),(2,2,'a2','yisheng','医生','io2nocxu56h16i5d0vbmxvhh0byj3nqv','2022-04-08 21:46:24','2022-04-08 22:46:24'),(3,1,'a1','yisheng','医生','87f6l2tlydgwu1dhl5l0vkliims4n4ov','2022-04-08 21:46:32','2022-04-08 22:46:33'),(4,1,'admin','users','管理员','4l7wkpjwuctn8ug9kzmod1zff82gjb9g','2022-04-08 21:47:11','2022-04-08 22:49:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称 Search111',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_kucun_number` int(11) DEFAULT NULL COMMENT '药品库存',
  `yaopin_zuoyong` varchar(200) DEFAULT NULL COMMENT '主要药效',
  `fuzuoyong` varchar(200) DEFAULT NULL COMMENT '副作用',
  `yaopin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `yaopin_content` text COMMENT '药品详情',
  `yaopin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yaopin_name`,`yaopin_types`,`yaopin_kucun_number`,`yaopin_zuoyong`,`fuzuoyong`,`yaopin_new_money`,`yaopin_content`,`yaopin_delete`,`create_time`) values (1,'药品名称1',2,101,'主要药效1','副作用1','348.38','药品详情1',1,'2022-04-08 21:23:55'),(2,'药品名称2',3,102,'主要药效2','副作用2','206.95','药品详情2',1,'2022-04-08 21:23:55'),(3,'药品名称3',2,103,'主要药效3','副作用3','165.40','药品详情3',1,'2022-04-08 21:23:55'),(4,'药品名称4',1,124,'主要药效4','副作用4','378.37','药品详情4',1,'2022-04-08 21:23:55'),(5,'药品名称5',2,105,'主要药效5','副作用5','300.82','药品详情5',1,'2022-04-08 21:23:55');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号 ',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`yisheng_photo`,`sex_types`,`yisheng_phone`,`yisheng_id_number`,`yisheng_email`,`create_time`) values (1,'a1','123456','医生姓名1','http://localhost:8080/zhuyuanguanli/upload/yisheng1.jpg',1,'17703786901','410224199610232001','1@qq.com','2022-04-08 21:23:55'),(2,'a2','123456','医生姓名2','http://localhost:8080/zhuyuanguanli/upload/yisheng2.jpg',2,'17703786902','410224199610232002','2@qq.com','2022-04-08 21:23:55'),(3,'a3','123456','医生姓名3','http://localhost:8080/zhuyuanguanli/upload/yisheng3.jpg',1,'17703786903','410224199610232003','3@qq.com','2022-04-08 21:23:55');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/zhuyuanguanli/upload/yonghu1.jpg','17703786901','1@qq.com',2,1,'2022-04-08 21:23:55'),(2,'a2','123456','用户姓名2','http://localhost:8080/zhuyuanguanli/upload/yonghu2.jpg','17703786902','2@qq.com',2,1,'2022-04-08 21:23:55'),(3,'a3','123456','用户姓名3','http://localhost:8080/zhuyuanguanli/upload/yonghu3.jpg','17703786903','3@qq.com',2,1,'2022-04-08 21:23:55');

/*Table structure for table `yongyaojilu` */

DROP TABLE IF EXISTS `yongyaojilu`;

CREATE TABLE `yongyaojilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yaopin_id` int(11) DEFAULT NULL COMMENT '药品',
  `yongyaojilu_number` int(11) DEFAULT NULL COMMENT '数量',
  `yongyaojilu_time` date DEFAULT NULL COMMENT '日期',
  `yisheng_id` int(200) DEFAULT NULL COMMENT '医生',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用药记录';

/*Data for the table `yongyaojilu` */

insert  into `yongyaojilu`(`id`,`yonghu_id`,`yaopin_id`,`yongyaojilu_number`,`yongyaojilu_time`,`yisheng_id`,`create_time`) values (1,3,1,245,'2022-04-08',3,'2022-04-08 21:23:55'),(2,1,2,73,'2022-04-08',3,'2022-04-08 21:23:55'),(3,3,3,445,'2022-04-08',2,'2022-04-08 21:23:55'),(4,3,4,81,'2022-04-08',3,'2022-04-08 21:23:55'),(5,3,5,472,'2022-04-08',1,'2022-04-08 21:23:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
