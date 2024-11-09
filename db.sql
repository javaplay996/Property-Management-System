/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhinengwuyeguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhinengwuyeguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhinengwuyeguanli`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称 Search111 ',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111 ',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌 Search111 ',
  `cheliang_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`yonghu_id`,`cheliang_name`,`cheliang_types`,`chepai`,`cheliang_content`,`insert_time`,`create_time`) values (3,1,'车辆1',1,'豫a888888','','2021-04-29 11:24:23','2021-04-29 11:24:23'),(4,1,'车辆2',3,'豫B666666','','2021-04-29 11:39:30','2021-04-29 11:39:30'),(5,2,'车辆3',3,'豫a777777','','2021-04-29 14:07:33','2021-04-29 14:07:33');

/*Table structure for table `chewei` */

DROP TABLE IF EXISTS `chewei`;

CREATE TABLE `chewei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chewei_name` varchar(200) DEFAULT NULL COMMENT '车位名称 Search111 ',
  `chewei_address` varchar(200) DEFAULT NULL COMMENT '车位地址 Search111 ',
  `chewei_new_money` decimal(10,2) DEFAULT NULL COMMENT '车位月价格',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '车位创建时间',
  `chewei_content` text COMMENT '车位详情',
  `chewei_types` int(11) DEFAULT NULL COMMENT '是否被使用 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  `chewei_photo` varchar(200) DEFAULT NULL COMMENT '车位图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='车位';

/*Data for the table `chewei` */

insert  into `chewei`(`id`,`chewei_name`,`chewei_address`,`chewei_new_money`,`insert_time`,`chewei_content`,`chewei_types`,`create_time`,`chewei_photo`) values (3,'车位101','负一层101','100.00','2021-04-29 11:40:01','车位101的详情\r\n',2,'2021-04-29 11:40:01','http://localhost:8080/zhinengwuyeguanli/file/download?fileName=1619675235769.jpg'),(4,'车位102','负一层102','200.00','2021-04-29 11:41:34','车位102的详情\r\n',1,'2021-04-29 11:41:34','http://localhost:8080/zhinengwuyeguanli/file/download?fileName=1619675227163.jpg'),(5,'车位103','负一层103','205.00','2021-04-29 14:08:37','车位103的详情\r\n',1,'2021-04-29 14:08:37','http://localhost:8080/zhinengwuyeguanli/file/download?fileName=1619676515399.jpg');

/*Table structure for table `chewei_collection` */

DROP TABLE IF EXISTS `chewei_collection`;

CREATE TABLE `chewei_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chewei_id` int(11) DEFAULT NULL COMMENT '车位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='车位收藏';

/*Data for the table `chewei_collection` */

insert  into `chewei_collection`(`id`,`chewei_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,4,1,'2021-04-29 13:51:48','2021-04-29 13:51:48'),(2,5,3,'2021-04-29 14:09:30','2021-04-29 14:09:30'),(3,4,2,'2021-04-29 14:15:31','2021-04-29 14:15:31');

/*Table structure for table `chewei_order` */

DROP TABLE IF EXISTS `chewei_order`;

CREATE TABLE `chewei_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chewei_id` int(11) DEFAULT NULL COMMENT '车位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chewei_order_yes_no_types` int(11) DEFAULT NULL COMMENT '是否同意',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='车位订单';

/*Data for the table `chewei_order` */

insert  into `chewei_order`(`id`,`chewei_id`,`yonghu_id`,`chewei_order_yes_no_types`,`insert_time`,`create_time`) values (3,3,1,3,'2021-04-29 13:58:09','2021-04-29 13:58:09'),(4,5,3,1,'2021-04-29 14:09:48','2021-04-29 14:09:48');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zhinengwuyeguanli/upload/1619667958548.jpg'),(2,'轮播图2','http://localhost:8080/zhinengwuyeguanli/upload/1619676472223.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-29 10:46:51'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-29 10:46:51'),(3,'cheliang_types','车辆类型名称',1,'大众',NULL,'2021-04-29 10:46:51'),(4,'cheliang_types','车辆类型名称',2,'奔驰',NULL,'2021-04-29 10:46:51'),(5,'cheliang_types','车辆类型名称',3,'五菱',NULL,'2021-04-29 10:46:51'),(6,'chewei_types','车位是否被使用',1,'未使用',NULL,'2021-04-29 10:46:51'),(7,'chewei_types','车位是否被使用',2,'已使用',NULL,'2021-04-29 10:46:51'),(8,'fuwu_types','服务类型名称',1,'服务类型1',NULL,'2021-04-29 10:46:51'),(9,'fuwu_types','服务类型名称',2,'服务类型2',NULL,'2021-04-29 10:46:51'),(10,'fuwu_yes_no_types','服务申请是否同意',1,'待审批',NULL,'2021-04-29 10:46:51'),(11,'fuwu_yes_no_types','服务申请是否同意',2,'不同意',NULL,'2021-04-29 10:46:51'),(12,'fuwu_yes_no_types','服务申请是否同意',3,'同意',NULL,'2021-04-29 10:46:51'),(13,'jiaofei_types','缴费类型名称',1,'电费',NULL,'2021-04-29 10:46:51'),(14,'jiaofei_types','缴费类型名称',2,'水费',NULL,'2021-04-29 10:46:51'),(15,'jiaofei_types','缴费类型名称',3,'物业费',NULL,'2021-04-29 10:46:51'),(16,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-04-29 10:46:51'),(17,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-04-29 10:46:51'),(18,'liuyan_types','留言类型名称',1,'留言类型1',NULL,'2021-04-29 10:46:51'),(19,'liuyan_types','留言类型名称',2,'留言类型2',NULL,'2021-04-29 10:46:51'),(20,'tousu_types','投诉类型名称',1,'流程投诉',NULL,'2021-04-29 10:46:51'),(21,'tousu_types','投诉类型名称',2,'人员投诉',NULL,'2021-04-29 10:46:51'),(22,'tousu_yes_no_types','投诉是否处理',1,'未处理',NULL,'2021-04-29 10:46:51'),(23,'tousu_yes_no_types','投诉是否处理',2,'已处理',NULL,'2021-04-29 10:46:52'),(24,'chewei_order_yes_no_types','申请车位是否同意',1,'待审批',NULL,'2021-04-29 10:46:52'),(25,'chewei_order_yes_no_types','申请车位是否同意',2,'不同意',NULL,'2021-04-29 10:46:52'),(26,'chewei_order_yes_no_types','申请车位是否同意',3,'同意',NULL,'2021-04-29 10:46:52'),(27,'cheliang_types','车辆类型名称',4,'比亚迪',NULL,'2021-04-29 14:14:44');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `fangwu_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`yonghu_id`,`building`,`unit`,`room`,`fangwu_content`,`insert_time`,`create_time`) values (3,2,'1','1','101','','2021-04-29 11:16:29','2021-04-29 11:16:29'),(4,1,'1','1','102','','2021-04-29 11:16:43','2021-04-29 11:16:43'),(5,2,'1','1','103','','2021-04-29 11:16:56','2021-04-29 11:16:56'),(6,3,'1','1','104','','2021-04-29 14:07:09','2021-04-29 14:07:09');

/*Table structure for table `fuwu` */

DROP TABLE IF EXISTS `fuwu`;

CREATE TABLE `fuwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fuwu_name` varchar(200) DEFAULT NULL COMMENT '服务名称 Search111 ',
  `fuwu_types` int(11) DEFAULT NULL COMMENT '服务类型 Search111 ',
  `fuwu_content` text COMMENT '服务详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `fuwu_yes_no_types` int(11) DEFAULT NULL COMMENT '是否同意 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='服务';

/*Data for the table `fuwu` */

insert  into `fuwu`(`id`,`yonghu_id`,`fuwu_name`,`fuwu_types`,`fuwu_content`,`insert_time`,`fuwu_yes_no_types`,`create_time`) values (3,3,'服务1',1,'服务1的详情\r\n','2021-04-29 14:12:42',3,'2021-04-29 14:12:42'),(4,1,'服务2',1,'申请服务1\r\n','2021-04-29 14:21:31',1,'2021-04-29 14:21:31');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',2,'2021-04-29 13:15:22','公告1的详情\r\n','2021-04-29 13:15:22'),(4,'公告2',1,'2021-04-29 14:13:25','公告2的详情\r\n','2021-04-29 14:13:25');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaofei_name` varchar(200) DEFAULT NULL COMMENT '缴费名称 Search111 ',
  `jiaofei_time` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiaofei_types` int(11) DEFAULT NULL COMMENT '缴费类型 Search111 ',
  `jiaofei_yu_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额 ',
  `jiaofei_shi_money` decimal(10,2) DEFAULT NULL COMMENT '实收金额 ',
  `jiaofei_content` text COMMENT '缴费详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='缴费';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`yonghu_id`,`jiaofei_name`,`jiaofei_time`,`jiaofei_types`,`jiaofei_yu_money`,`jiaofei_shi_money`,`jiaofei_content`,`create_time`) values (3,1,'2021年1月水费','2021-02',3,'1000.00',NULL,'','2021-04-29 13:14:27'),(4,2,'2021年2月物业费','2020-02',3,'200.00',NULL,'','2021-04-29 13:15:05'),(5,3,'2021年3月水费','2021-03',2,'300.00','300.00','3月份缴费\r\n','2021-04-29 14:11:04');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言名称 Search111 ',
  `liuyan_types` int(11) DEFAULT NULL COMMENT '留言类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `liuyan_content` text COMMENT '留言详情',
  `reply_content` text COMMENT '回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_types`,`insert_time`,`liuyan_content`,`reply_content`,`create_time`) values (3,1,'留言1',2,'2021-04-29 13:27:11','留言内容1\r\n','‍\r\n','2021-04-29 13:27:11'),(4,1,'留言2',1,'2021-04-29 13:27:27','留言内容2\r\n','回复1\r\n','2021-04-29 13:27:27'),(5,1,'留言3',2,'2021-04-29 14:22:51','留言1\r\n','‍\r\n','2021-04-29 14:22:51');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','m5s78tjoga54mx4zcyxrxyglpk7hjcsb','2021-04-29 11:05:13','2021-04-29 15:12:54'),(2,1,'a1','yonghu','用户','3viphlicnld3054cxtjd4zpnpq6dmsbo','2021-04-29 13:15:59','2021-04-29 15:19:39'),(3,3,'a3','yonghu','用户','sra2gs43bdeiirh8u17caw0icexj6llt','2021-04-29 14:08:03','2021-04-29 15:15:49'),(4,2,'a2','yonghu','用户','04ytuoek0viuoaajo81ntrc84r7fw5ex','2021-04-29 14:14:59','2021-04-29 15:14:59');

/*Table structure for table `tousu` */

DROP TABLE IF EXISTS `tousu`;

CREATE TABLE `tousu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tousu_name` varchar(200) DEFAULT NULL COMMENT '投诉名称 Search111 ',
  `tousu_types` int(11) DEFAULT NULL COMMENT '投诉类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉时间',
  `tousu_content` text COMMENT '投诉详情',
  `tousu_yes_no_types` int(11) DEFAULT NULL COMMENT '是否处理 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='投诉';

/*Data for the table `tousu` */

insert  into `tousu`(`id`,`yonghu_id`,`tousu_name`,`tousu_types`,`insert_time`,`tousu_content`,`tousu_yes_no_types`,`create_time`) values (3,1,'投诉名称1',2,'2021-04-29 13:29:17','投诉内容1\r\n',2,'2021-04-29 13:29:17');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/zhinengwuyeguanli/file/download?fileName=1619665925320.jpg',2,'2021-04-29 11:12:07'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/zhinengwuyeguanli/file/download?fileName=1619665943171.jpg',1,'2021-04-29 11:12:25'),(3,'a3','123456','张三','17703786903','410224199610232003','http://localhost:8080/zhinengwuyeguanli/file/download?fileName=1619676384421.jpg',2,'2021-04-29 14:06:33');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
