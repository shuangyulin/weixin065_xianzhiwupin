/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm6e722
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm6e722` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm6e722`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1621048487755 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-15 10:59:48',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-15 10:59:48',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-15 10:59:48',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-15 10:59:48',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-15 10:59:48',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-15 10:59:48',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1621047809263,'2021-05-15 11:03:28',11,'宝源大厦','11','11111111111','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1621048487754,'2021-05-15 11:14:47',1621048308492,'商务中心大厦','王芳','15214121412','是');

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
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621048521106 DEFAULT CHARSET=utf8 COMMENT='购物车表';

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

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm6e722/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm6e722/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm6e722/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussguangchang` */

DROP TABLE IF EXISTS `discussguangchang`;

CREATE TABLE `discussguangchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621048393488 DEFAULT CHARSET=utf8 COMMENT='广场评论表';

/*Data for the table `discussguangchang` */

insert  into `discussguangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-05-15 10:59:48',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussguangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-05-15 10:59:48',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussguangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-05-15 10:59:48',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussguangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-05-15 10:59:48',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussguangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-05-15 10:59:48',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussguangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-05-15 10:59:48',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussguangchang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621048393487,'2021-05-15 11:13:13',31,1621048308492,'2','55555','');

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
) ENGINE=InnoDB AUTO_INCREMENT=1621048612321 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-05-15 10:59:48',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-05-15 10:59:48',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-05-15 10:59:48',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-05-15 10:59:48',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-05-15 10:59:48',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-05-15 10:59:48',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621048233815,'2021-05-15 11:10:33',51,11,'1','东西很不错','666');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621048612320,'2021-05-15 11:16:52',51,1621048308492,'2','88888','');

/*Table structure for table `guangchang` */

DROP TABLE IF EXISTS `guangchang`;

CREATE TABLE `guangchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `neirong` longtext COMMENT '内容',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='广场';

/*Data for the table `guangchang` */

insert  into `guangchang`(`id`,`addtime`,`biaoti`,`tupian`,`shipin`,`neirong`,`faburiqi`,`clicktime`,`clicknum`) values (31,'2021-05-15 10:59:48','XXXXX内容','http://localhost:8080/ssm6e722/upload/guangchang_tupian1.jpg','http://localhost:8080/ssm6e722/upload/1621047940724.mp4','<p><img src=\"http://localhost:8080/ssm6e722/upload/1621047946390.jpg\"></p><p><br></p><p>这里发布一些相关信内容，比如什么新鲜事物等等那些有趣事情都是可以的，这里的内容都是要用于测试功能， 随便添加的，都是可以自行添加修改删除的。</p>','2021-05-15 10:59:48','2021-05-15 11:13:40',5);
insert  into `guangchang`(`id`,`addtime`,`biaoti`,`tupian`,`shipin`,`neirong`,`faburiqi`,`clicktime`,`clicknum`) values (32,'2021-05-15 10:59:48','标题2','http://localhost:8080/ssm6e722/upload/guangchang_tupian2.jpg','','内容2','2021-05-15 10:59:48','2021-05-15 10:59:48',2);
insert  into `guangchang`(`id`,`addtime`,`biaoti`,`tupian`,`shipin`,`neirong`,`faburiqi`,`clicktime`,`clicknum`) values (33,'2021-05-15 10:59:48','标题3','http://localhost:8080/ssm6e722/upload/guangchang_tupian3.jpg','','内容3','2021-05-15 10:59:48','2021-05-15 10:59:48',3);
insert  into `guangchang`(`id`,`addtime`,`biaoti`,`tupian`,`shipin`,`neirong`,`faburiqi`,`clicktime`,`clicknum`) values (34,'2021-05-15 10:59:48','标题4','http://localhost:8080/ssm6e722/upload/guangchang_tupian4.jpg','','内容4','2021-05-15 10:59:48','2021-05-15 10:59:48',4);
insert  into `guangchang`(`id`,`addtime`,`biaoti`,`tupian`,`shipin`,`neirong`,`faburiqi`,`clicktime`,`clicknum`) values (35,'2021-05-15 10:59:48','标题5','http://localhost:8080/ssm6e722/upload/guangchang_tupian5.jpg','','内容5','2021-05-15 10:59:48','2021-05-15 10:59:48',5);
insert  into `guangchang`(`id`,`addtime`,`biaoti`,`tupian`,`shipin`,`neirong`,`faburiqi`,`clicktime`,`clicknum`) values (36,'2021-05-15 10:59:48','标题6','http://localhost:8080/ssm6e722/upload/guangchang_tupian6.jpg','','内容6','2021-05-15 10:59:48','2021-05-15 10:59:48',6);

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='卖家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`zhanghao`,`mima`,`maijiaxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`dianhua`,`money`) values (21,'2021-05-15 10:59:48','1','1','刘倩','女','http://localhost:8080/ssm6e722/upload/maijia_touxiang1.jpg','440300199101010001','13823888881',100);
insert  into `maijia`(`id`,`addtime`,`zhanghao`,`mima`,`maijiaxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`dianhua`,`money`) values (22,'2021-05-15 10:59:48','卖家2','123456','卖家姓名2','男','http://localhost:8080/ssm6e722/upload/maijia_touxiang2.jpg','440300199202020002','13823888882',100);
insert  into `maijia`(`id`,`addtime`,`zhanghao`,`mima`,`maijiaxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`dianhua`,`money`) values (23,'2021-05-15 10:59:48','卖家3','123456','卖家姓名3','男','http://localhost:8080/ssm6e722/upload/maijia_touxiang3.jpg','440300199303030003','13823888883',100);
insert  into `maijia`(`id`,`addtime`,`zhanghao`,`mima`,`maijiaxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`dianhua`,`money`) values (24,'2021-05-15 10:59:48','卖家4','123456','卖家姓名4','男','http://localhost:8080/ssm6e722/upload/maijia_touxiang4.jpg','440300199404040004','13823888884',100);
insert  into `maijia`(`id`,`addtime`,`zhanghao`,`mima`,`maijiaxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`dianhua`,`money`) values (25,'2021-05-15 10:59:48','卖家5','123456','卖家姓名5','男','http://localhost:8080/ssm6e722/upload/maijia_touxiang5.jpg','440300199505050005','13823888885',100);
insert  into `maijia`(`id`,`addtime`,`zhanghao`,`mima`,`maijiaxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`dianhua`,`money`) values (26,'2021-05-15 10:59:48','卖家6','123456','卖家姓名6','男','http://localhost:8080/ssm6e722/upload/maijia_touxiang6.jpg','440300199606060006','13823888886',100);

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
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1621048529339 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`,`zhanghao`) values (1621047826501,'2021-05-15 11:03:46','20215151134024162716','shangpinxinxi',11,54,'商品名称4','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian4.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','宝源大厦','11111111111','11','账号4');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`,`zhanghao`) values (1621047826590,'2021-05-15 11:03:46','20215151134012588089','shangpinxinxi',11,51,'商品名称1','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','宝源大厦','11111111111','11','1');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`,`zhanghao`) values (1621047826776,'2021-05-15 11:03:46','20215151134034871704','shangpinxinxi',11,52,'商品名称2','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian2.jpg',2,99.9,99.9,199.8,199.8,1,'已发货','宝源大厦','11111111111','11','1');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`,`zhanghao`) values (1621048492080,'2021-05-15 11:14:51','202151511144557066094','shangpinxinxi',1621048308492,51,'新品衣服','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian1.jpg',5,80,80,400,400,1,'已完成','商务中心大厦','15214121412','王芳','1');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`,`zhanghao`) values (1621048492276,'2021-05-15 11:14:51','202151511144567272020','shangpinxinxi',1621048308492,52,'商品名称2','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian2.jpg',2,99.9,99.9,199.8,199.8,1,'已取消','商务中心大厦','15214121412','王芳','1');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`,`zhanghao`) values (1621048492534,'2021-05-15 11:14:51','202151511144576860180','shangpinxinxi',1621048308492,53,'商品名称3','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','商务中心大厦','15214121412','王芳','1');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`,`zhanghao`) values (1621048529338,'2021-05-15 11:15:28','202151511152226122697','shangpinxinxi',1621048308492,51,'新品衣服','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian1.jpg',4,80,80,320,320,1,'已支付','商务中心大厦','15214121412','王芳','1');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (41,'2021-05-15 10:59:48','衣服');
insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (42,'2021-05-15 10:59:48','商品类型2');
insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (43,'2021-05-15 10:59:48','商品类型3');
insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (44,'2021-05-15 10:59:48','商品类型4');
insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (45,'2021-05-15 10:59:48','商品类型5');
insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (46,'2021-05-15 10:59:48','商品类型6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuanjia` int(11) NOT NULL COMMENT '原价',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`yuanjia`,`dianhua`,`zhanghao`,`maijiaxingming`,`faburiqi`,`shangpinxiangqing`,`sfsh`,`shhf`,`price`,`onelimittimes`,`alllimittimes`,`userid`) values (51,'2021-05-15 10:59:48','新品衣服','衣服','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian1.jpg',150,'15214121412','1','刘倩','2021-05-15','<p><img src=\"http://localhost:8080/ssm6e722/upload/1621048150896.png\"></p><p><img src=\"http://localhost:8080/ssm6e722/upload/1621048156730.jpg\"></p><p><br></p><p>这里可以发布一些相关商品详简介内容的，可以图文结合描述的，这里的所有内容都是用于测试的</p>','是','同意发布',80,100,91,1);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`yuanjia`,`dianhua`,`zhanghao`,`maijiaxingming`,`faburiqi`,`shangpinxiangqing`,`sfsh`,`shhf`,`price`,`onelimittimes`,`alllimittimes`,`userid`) values (52,'2021-05-15 10:59:48','商品名称2','商品类型2','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian2.jpg',2,'电话2','1','卖家姓名2','2021-05-15','<p>商品详情2</p>','是','',99.9,2,95,2);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`yuanjia`,`dianhua`,`zhanghao`,`maijiaxingming`,`faburiqi`,`shangpinxiangqing`,`sfsh`,`shhf`,`price`,`onelimittimes`,`alllimittimes`,`userid`) values (53,'2021-05-15 10:59:48','商品名称3','商品类型3','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian3.jpg',3,'电话3','1','卖家姓名3','2021-05-15','<p>商品详情3</p>','是','',99.9,3,97,3);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`yuanjia`,`dianhua`,`zhanghao`,`maijiaxingming`,`faburiqi`,`shangpinxiangqing`,`sfsh`,`shhf`,`price`,`onelimittimes`,`alllimittimes`,`userid`) values (54,'2021-05-15 10:59:48','商品名称4','商品类型4','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian4.jpg',4,'电话4','账号4','卖家姓名4','2021-05-15','商品详情4','是','',99.9,4,97,4);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`yuanjia`,`dianhua`,`zhanghao`,`maijiaxingming`,`faburiqi`,`shangpinxiangqing`,`sfsh`,`shhf`,`price`,`onelimittimes`,`alllimittimes`,`userid`) values (55,'2021-05-15 10:59:48','商品名称5','商品类型5','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian5.jpg',5,'电话5','账号5','卖家姓名5','2021-05-15','商品详情5','是','',99.9,5,99,5);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`yuanjia`,`dianhua`,`zhanghao`,`maijiaxingming`,`faburiqi`,`shangpinxiangqing`,`sfsh`,`shhf`,`price`,`onelimittimes`,`alllimittimes`,`userid`) values (56,'2021-05-15 10:59:48','商品名称6','商品类型6','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian6.jpg',6,'电话6','账号6','卖家姓名6','2021-05-15','商品详情6','是','',99.9,6,99,6);

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
) ENGINE=InnoDB AUTO_INCREMENT=1621048407052 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621048378839,'2021-05-15 11:12:58',1621048308492,31,'guangchang','XXXXX内容','http://localhost:8080/ssm6e722/upload/guangchang_tupian1.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621048407051,'2021-05-15 11:13:26',1621048308492,51,'shangpinxinxi','新品衣服','http://localhost:8080/ssm6e722/upload/shangpinxinxi_tupian1.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','i1wk57sbbqn9fgi3v581yfan59fihsuv','2021-05-15 11:01:08','2021-05-15 12:04:52');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','xuesheng','学生','4l8isrrmsdwvrk5gdll9n9zn6piytwas','2021-05-15 11:02:44','2021-05-23 21:51:31');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,21,'1','maijia','卖家','ufg06fww3bcjlb78nqo0mvlebnftoptc','2021-05-15 11:04:08','2021-05-15 12:15:47');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1621048308492,'2','xuesheng','学生','khw1rzcwy92gukw9e7gcih1nd10hzsqb','2021-05-15 11:12:28','2021-05-15 12:16:05');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-15 10:59:48');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621048308493 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`touxiang`,`xueyuan`,`shenfenzheng`,`shoujihao`,`money`) values (11,'2021-05-15 10:59:48','1','1','姓名1','男','http://localhost:8080/ssm6e722/upload/xuesheng_touxiang1.jpg','学院1','440300199101010001','13823888881',2111910);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`touxiang`,`xueyuan`,`shenfenzheng`,`shoujihao`,`money`) values (12,'2021-05-15 10:59:48','学生2','123456','姓名2','男','http://localhost:8080/ssm6e722/upload/xuesheng_touxiang2.jpg','学院2','440300199202020002','13823888882',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`touxiang`,`xueyuan`,`shenfenzheng`,`shoujihao`,`money`) values (13,'2021-05-15 10:59:48','学生3','123456','姓名3','男','http://localhost:8080/ssm6e722/upload/xuesheng_touxiang3.jpg','学院3','440300199303030003','13823888883',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`touxiang`,`xueyuan`,`shenfenzheng`,`shoujihao`,`money`) values (14,'2021-05-15 10:59:48','学生4','123456','姓名4','男','http://localhost:8080/ssm6e722/upload/xuesheng_touxiang4.jpg','学院4','440300199404040004','13823888884',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`touxiang`,`xueyuan`,`shenfenzheng`,`shoujihao`,`money`) values (15,'2021-05-15 10:59:48','学生5','123456','姓名5','男','http://localhost:8080/ssm6e722/upload/xuesheng_touxiang5.jpg','学院5','440300199505050005','13823888885',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`touxiang`,`xueyuan`,`shenfenzheng`,`shoujihao`,`money`) values (16,'2021-05-15 10:59:48','学生6','123456','姓名6','男','http://localhost:8080/ssm6e722/upload/xuesheng_touxiang6.jpg','学院6','440300199606060006','13823888886',100);
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`touxiang`,`xueyuan`,`shenfenzheng`,`shoujihao`,`money`) values (1621048308492,'2021-05-15 11:11:48','2','1','王芳','女','http://localhost:8080/ssm6e722/upload/1621048369002.png','上海大学','441214120412141211','15214121411',2211490);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
