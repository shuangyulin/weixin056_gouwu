/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - php6qf4v
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`php6qf4v` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `php6qf4v`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-17 11:12:42',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-17 11:12:42',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-17 11:12:42',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-17 11:12:42',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-17 11:12:42',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-17 11:12:42',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (7,'2021-05-17 11:16:04',1621221271,'华强北','dgdf','12546585465','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/php6qf4v/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/php6qf4v/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/php6qf4v/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussgouwuzixun` */

DROP TABLE IF EXISTS `discussgouwuzixun`;

CREATE TABLE `discussgouwuzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='购物资讯评论表';

/*Data for the table `discussgouwuzixun` */

insert  into `discussgouwuzixun`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-17 11:12:42',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussgouwuzixun`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-05-17 11:12:42',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussgouwuzixun`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-05-17 11:12:42',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussgouwuzixun`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-05-17 11:12:42',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussgouwuzixun`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-05-17 11:12:42',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussgouwuzixun`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-05-17 11:12:42',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussgouwuzixun`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (137,'2021-05-17 11:15:13',51,1621221271,'1','范德萨发','');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-17 11:12:42',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-17 11:12:42',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-17 11:12:42',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-17 11:12:42',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-17 11:12:42',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-17 11:12:42',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (127,'2021-05-17 11:14:49',26,1621221271,'1','瑞特发给对方','');

/*Table structure for table `gouwuzixun` */

DROP TABLE IF EXISTS `gouwuzixun`;

CREATE TABLE `gouwuzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunmingcheng` varchar(200) DEFAULT NULL COMMENT '资讯名称',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源',
  `zixunneirong` longtext COMMENT '资讯内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='购物资讯';

/*Data for the table `gouwuzixun` */

insert  into `gouwuzixun`(`id`,`addtime`,`zixunmingcheng`,`zixunleixing`,`laiyuan`,`zixunneirong`,`faburiqi`,`fengmiantupian`) values (51,'2021-05-17 11:12:42','资讯名称1','资讯类型1','来源1','资讯内容1','2021-05-17','http://localhost:8080/php6qf4v/upload/gouwuzixun_fengmiantupian1.jpg');
insert  into `gouwuzixun`(`id`,`addtime`,`zixunmingcheng`,`zixunleixing`,`laiyuan`,`zixunneirong`,`faburiqi`,`fengmiantupian`) values (52,'2021-05-17 11:12:42','资讯名称2','资讯类型2','来源2','资讯内容2','2021-05-17','http://localhost:8080/php6qf4v/upload/gouwuzixun_fengmiantupian2.jpg');
insert  into `gouwuzixun`(`id`,`addtime`,`zixunmingcheng`,`zixunleixing`,`laiyuan`,`zixunneirong`,`faburiqi`,`fengmiantupian`) values (53,'2021-05-17 11:12:42','资讯名称3','资讯类型3','来源3','资讯内容3','2021-05-17','http://localhost:8080/php6qf4v/upload/gouwuzixun_fengmiantupian3.jpg');
insert  into `gouwuzixun`(`id`,`addtime`,`zixunmingcheng`,`zixunleixing`,`laiyuan`,`zixunneirong`,`faburiqi`,`fengmiantupian`) values (54,'2021-05-17 11:12:42','资讯名称4','资讯类型4','来源4','资讯内容4','2021-05-17','http://localhost:8080/php6qf4v/upload/gouwuzixun_fengmiantupian4.jpg');
insert  into `gouwuzixun`(`id`,`addtime`,`zixunmingcheng`,`zixunleixing`,`laiyuan`,`zixunneirong`,`faburiqi`,`fengmiantupian`) values (55,'2021-05-17 11:12:42','资讯名称5','资讯类型5','来源5','资讯内容5','2021-05-17','http://localhost:8080/php6qf4v/upload/gouwuzixun_fengmiantupian5.jpg');
insert  into `gouwuzixun`(`id`,`addtime`,`zixunmingcheng`,`zixunleixing`,`laiyuan`,`zixunneirong`,`faburiqi`,`fengmiantupian`) values (56,'2021-05-17 11:12:42','资讯名称6','资讯类型6','来源6','资讯内容6','2021-05-17','http://localhost:8080/php6qf4v/upload/gouwuzixun_fengmiantupian6.jpg');
insert  into `gouwuzixun`(`id`,`addtime`,`zixunmingcheng`,`zixunleixing`,`laiyuan`,`zixunneirong`,`faburiqi`,`fengmiantupian`) values (57,'2021-05-17 11:18:46','各地发给房东','类型1','股份大股东是','<p>高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是高浮雕鬼地方是<img src=\"http://localhost:8080/php6qf4v/upload/1621221524.jpg\"></p>','2021-05-17','http://localhost:8080/php6qf4v/upload/1621221516.jpg');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-17 11:12:42',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-17 11:12:42',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-17 11:12:42',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-17 11:12:42',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-17 11:12:42',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-17 11:12:42',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (117,'2021-05-17 11:16:29',1621221271,'1','可以给后台管理留言','的广泛广泛的是');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1,'2021-05-17 11:16:12','202151711133279622196','shangpinxinxi',1621221271,21,'商品编号1','http://localhost:8080/php6qf4v/upload/shangpinxinxi_tupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已发货','华强北','12546585465','dgdf');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`leixing`) values (31,'2021-05-17 11:12:41','日用品');
insert  into `shangpinfenlei`(`id`,`addtime`,`leixing`) values (32,'2021-05-17 11:12:41','类型2');
insert  into `shangpinfenlei`(`id`,`addtime`,`leixing`) values (33,'2021-05-17 11:12:41','类型3');
insert  into `shangpinfenlei`(`id`,`addtime`,`leixing`) values (34,'2021-05-17 11:12:41','类型4');
insert  into `shangpinfenlei`(`id`,`addtime`,`leixing`) values (35,'2021-05-17 11:12:41','类型5');
insert  into `shangpinfenlei`(`id`,`addtime`,`leixing`) values (36,'2021-05-17 11:12:41','类型6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `gonghuoshang` varchar(200) DEFAULT NULL COMMENT '供货商',
  `shangpinjianjie` longtext COMMENT '商品简介',
  `chuchanriqi` date DEFAULT NULL COMMENT '出产日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`gonghuoshang`,`shangpinjianjie`,`chuchanriqi`,`baozhiqi`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (21,'2021-05-17 11:12:41','商品编号1','商品名称1','商品类型1','供货商1','商品简介1','2021-05-17','保质期1','http://localhost:8080/php6qf4v/upload/shangpinxinxi_tupian1.jpg',1,1,'2021-05-17 03:15:02',3,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`gonghuoshang`,`shangpinjianjie`,`chuchanriqi`,`baozhiqi`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (22,'2021-05-17 11:12:41','商品编号2','商品名称2','商品类型2','供货商2','商品简介2','2021-05-17','保质期2','http://localhost:8080/php6qf4v/upload/shangpinxinxi_tupian2.jpg',2,2,'2021-05-17 11:12:41',2,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`gonghuoshang`,`shangpinjianjie`,`chuchanriqi`,`baozhiqi`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (23,'2021-05-17 11:12:41','商品编号3','商品名称3','商品类型3','供货商3','商品简介3','2021-05-17','保质期3','http://localhost:8080/php6qf4v/upload/shangpinxinxi_tupian3.jpg',3,3,'2021-05-17 11:12:41',3,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`gonghuoshang`,`shangpinjianjie`,`chuchanriqi`,`baozhiqi`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (24,'2021-05-17 11:12:41','商品编号4','商品名称4','商品类型4','供货商4','商品简介4','2021-05-17','保质期4','http://localhost:8080/php6qf4v/upload/shangpinxinxi_tupian4.jpg',4,4,'2021-05-17 11:12:41',4,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`gonghuoshang`,`shangpinjianjie`,`chuchanriqi`,`baozhiqi`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (25,'2021-05-17 11:12:41','商品编号5','商品名称5','商品类型5','供货商5','商品简介5','2021-05-17','保质期5','http://localhost:8080/php6qf4v/upload/shangpinxinxi_tupian5.jpg',5,5,'2021-05-17 11:12:41',5,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`gonghuoshang`,`shangpinjianjie`,`chuchanriqi`,`baozhiqi`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (26,'2021-05-17 11:12:41','商品编号6','商品名称6','商品类型6','供货商6','商品简介6','2021-05-17','保质期6','http://localhost:8080/php6qf4v/upload/shangpinxinxi_tupian6.jpg',7,6,'2021-05-17 03:14:51',8,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`gonghuoshang`,`shangpinjianjie`,`chuchanriqi`,`baozhiqi`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (27,'2021-05-17 11:17:49','1621221289360','地方撒','类型1','股份大股东','但是高浮雕高浮雕','2021-05-11','2个月','http://localhost:8080/php6qf4v/upload/1621221465.jpg',0,0,'2021-05-17 03:17:49',0,200);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1,'2021-05-17 11:14:40',1621221271,26,'shangpinxinxi','商品编号6','http://localhost:8080/php6qf4v/upload/shangpinxinxi_tupian6.jpg');

/*Table structure for table `tongzhigonggao` */

DROP TABLE IF EXISTS `tongzhigonggao`;

CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `tongzhigonggao` */

insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`gonggaoleixing`,`gonggaoneirong`,`faburiqi`,`tupian`) values (41,'2021-05-17 11:12:41','标题1','公告类型1','公告内容1','2021-05-17','http://localhost:8080/php6qf4v/upload/tongzhigonggao_tupian1.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`gonggaoleixing`,`gonggaoneirong`,`faburiqi`,`tupian`) values (42,'2021-05-17 11:12:41','标题2','公告类型2','公告内容2','2021-05-17','http://localhost:8080/php6qf4v/upload/tongzhigonggao_tupian2.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`gonggaoleixing`,`gonggaoneirong`,`faburiqi`,`tupian`) values (43,'2021-05-17 11:12:41','标题3','公告类型3','公告内容3','2021-05-17','http://localhost:8080/php6qf4v/upload/tongzhigonggao_tupian3.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`gonggaoleixing`,`gonggaoneirong`,`faburiqi`,`tupian`) values (44,'2021-05-17 11:12:41','标题4','公告类型4','公告内容4','2021-05-17','http://localhost:8080/php6qf4v/upload/tongzhigonggao_tupian4.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`gonggaoleixing`,`gonggaoneirong`,`faburiqi`,`tupian`) values (45,'2021-05-17 11:12:41','标题5','公告类型5','公告内容5','2021-05-17','http://localhost:8080/php6qf4v/upload/tongzhigonggao_tupian5.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`gonggaoleixing`,`gonggaoneirong`,`faburiqi`,`tupian`) values (46,'2021-05-17 11:12:41','标题6','公告类型6','公告内容6','2021-05-17','http://localhost:8080/php6qf4v/upload/tongzhigonggao_tupian6.jpg');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`gonggaoleixing`,`gonggaoneirong`,`faburiqi`,`tupian`) values (47,'2021-05-17 11:18:17','的法国队','股份大股东','<p>广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭广泛大锅饭大锅饭<img src=\"http://localhost:8080/php6qf4v/upload/1621221495.jpg\"></p>','2021-05-17','http://localhost:8080/php6qf4v/upload/1621221488.jpg');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 11:12:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221272 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`zhuzhi`,`shenfenzheng`,`touxiang`,`money`) values (11,'2021-05-17 11:12:41','用户1','123456','姓名1','女','13823888881','住址1','440300199101010001','http://localhost:8080/php6qf4v/upload/yonghu_touxiang1.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`zhuzhi`,`shenfenzheng`,`touxiang`,`money`) values (12,'2021-05-17 11:12:41','用户2','123456','姓名2','男','13823888882','住址2','440300199202020002','http://localhost:8080/php6qf4v/upload/yonghu_touxiang2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`zhuzhi`,`shenfenzheng`,`touxiang`,`money`) values (13,'2021-05-17 11:12:41','用户3','123456','姓名3','男','13823888883','住址3','440300199303030003','http://localhost:8080/php6qf4v/upload/yonghu_touxiang3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`zhuzhi`,`shenfenzheng`,`touxiang`,`money`) values (14,'2021-05-17 11:12:41','用户4','123456','姓名4','男','13823888884','住址4','440300199404040004','http://localhost:8080/php6qf4v/upload/yonghu_touxiang4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`zhuzhi`,`shenfenzheng`,`touxiang`,`money`) values (15,'2021-05-17 11:12:41','用户5','123456','姓名5','男','13823888885','住址5','440300199505050005','http://localhost:8080/php6qf4v/upload/yonghu_touxiang5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`zhuzhi`,`shenfenzheng`,`touxiang`,`money`) values (16,'2021-05-17 11:12:41','用户6','123456','姓名6','男','13823888886','住址6','440300199606060006','http://localhost:8080/php6qf4v/upload/yonghu_touxiang6.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`zhuzhi`,`shenfenzheng`,`touxiang`,`money`) values (1621221271,'2021-05-17 11:14:31','1','1','1','男','12546545654',NULL,NULL,NULL,900.1);

/*Table structure for table `zixunfenlei` */

DROP TABLE IF EXISTS `zixunfenlei`;

CREATE TABLE `zixunfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='资讯分类';

/*Data for the table `zixunfenlei` */

insert  into `zixunfenlei`(`id`,`addtime`,`leixing`) values (61,'2021-05-17 11:12:42','德国法国地方');
insert  into `zixunfenlei`(`id`,`addtime`,`leixing`) values (62,'2021-05-17 11:12:42','类型2');
insert  into `zixunfenlei`(`id`,`addtime`,`leixing`) values (63,'2021-05-17 11:12:42','类型3');
insert  into `zixunfenlei`(`id`,`addtime`,`leixing`) values (64,'2021-05-17 11:12:42','类型4');
insert  into `zixunfenlei`(`id`,`addtime`,`leixing`) values (65,'2021-05-17 11:12:42','类型5');
insert  into `zixunfenlei`(`id`,`addtime`,`leixing`) values (66,'2021-05-17 11:12:42','类型6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
