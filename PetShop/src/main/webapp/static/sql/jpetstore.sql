# MySQL-Front 5.1  (Build 1.5)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: 127.0.0.1    Database: jpetstore
# ------------------------------------------------------
# Server version 5.0.67-community-nt

DROP DATABASE IF EXISTS `jpetstore`;
CREATE DATABASE `jpetstore` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jpetstore`;

#
# Source for table account
#

CREATE TABLE `account` (
  `username` varchar(80) NOT NULL,
  `password` varchar(60) default NULL,
  `email` varchar(80) NOT NULL,
  `xm` varchar(80) character set utf8 NOT NULL default '',
  `status` varchar(2) default NULL,
  `address` varchar(40) character set utf8 default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table account
#

INSERT INTO `account` VALUES ('12','119','wk2003119@163.com','23','OK','');
INSERT INTO `account` VALUES ('323232','1212','wk2003119@163.com','322332',NULL,'12212121');
INSERT INTO `account` VALUES ('6666','111','wk2003119@163.com','dddd',NULL,'1222112');
INSERT INTO `account` VALUES ('8886','111','wk2003119@163.com',' v',NULL,'12212121');
INSERT INTO `account` VALUES ('9009','123','wk2003119@163.com','胡静',NULL,'sdfdsf');
INSERT INTO `account` VALUES ('ACID','119','acid@yourdomain.com','ABC','OK','MS UCUP02-206');
INSERT INTO `account` VALUES ('cococa','119','wk2003119@163.com','sss',NULL,'你好');
INSERT INTO `account` VALUES ('nihao','111','wk2003119@163.com','你好','OK','到外');
INSERT INTO `account` VALUES ('oop212121','1111','wk2003119@163.com','dsfsdf',NULL,'212121212121');
INSERT INTO `account` VALUES ('rerere','123','weew','333232',NULL,'32323232');
INSERT INTO `account` VALUES ('rerere4343','123','weew','333232',NULL,'32323232');
INSERT INTO `account` VALUES ('ttt5545','555','wk2003119@163.com','ttttt','OK','frfddffdfdfd');
INSERT INTO `account` VALUES ('uuuu','111','wk2003119@163.com','ok','OK','32323232');
INSERT INTO `account` VALUES ('wangshan','111','wk2003119@163.com','王珊','OK','太平');
INSERT INTO `account` VALUES ('weewewewre','111','wk2003119@163.com','fdsdsf',NULL,'12212121');
INSERT INTO `account` VALUES ('weikun','333','wk2003119@163.com','卫昆1','OK','哈尔滨');

#
# Source for table banner
#

CREATE TABLE `banner` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) default NULL,
  PRIMARY KEY  (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table banner
#

INSERT INTO `banner` VALUES ('BIRDS','<image src=\"../images/banner_birds.gif\">');
INSERT INTO `banner` VALUES ('CATS','<image src=\"../images/banner_cats.gif\">');
INSERT INTO `banner` VALUES ('DOGS','<image src=\"../images/banner_dogs.gif\">');
INSERT INTO `banner` VALUES ('FISH','<image src=\"../images/banner_fish.gif\">');
INSERT INTO `banner` VALUES ('REPTILES','<image src=\"../images/banner_reptiles.gif\">');

#
# Source for table cart
#

CREATE TABLE `cart` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table cart
#


#
# Source for table category
#

CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) default NULL,
  `descn` varchar(255) default NULL,
  PRIMARY KEY  (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table category
#

INSERT INTO `category` VALUES ('BIRDS','Birds','<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS','Cats','<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS','Dogs','<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH','Fish','<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES','Reptiles','<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

#
# Source for table inventory
#

CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table inventory
#

INSERT INTO `inventory` VALUES ('EST_1',10000);
INSERT INTO `inventory` VALUES ('EST_10',10000);
INSERT INTO `inventory` VALUES ('EST_11',10000);
INSERT INTO `inventory` VALUES ('EST_12',10000);
INSERT INTO `inventory` VALUES ('EST_13',10000);
INSERT INTO `inventory` VALUES ('EST_14',10000);
INSERT INTO `inventory` VALUES ('EST_15',10000);
INSERT INTO `inventory` VALUES ('EST_16',10000);
INSERT INTO `inventory` VALUES ('EST_17',10000);
INSERT INTO `inventory` VALUES ('EST_18',10000);
INSERT INTO `inventory` VALUES ('EST_19',10000);
INSERT INTO `inventory` VALUES ('EST_2',10000);
INSERT INTO `inventory` VALUES ('EST_20',10000);
INSERT INTO `inventory` VALUES ('EST_21',10000);
INSERT INTO `inventory` VALUES ('EST_22',10000);
INSERT INTO `inventory` VALUES ('EST_23',10000);
INSERT INTO `inventory` VALUES ('EST_24',10000);
INSERT INTO `inventory` VALUES ('EST_25',10000);
INSERT INTO `inventory` VALUES ('EST_26',10000);
INSERT INTO `inventory` VALUES ('EST_27',10000);
INSERT INTO `inventory` VALUES ('EST_28',10000);
INSERT INTO `inventory` VALUES ('EST_3',10000);
INSERT INTO `inventory` VALUES ('EST_4',10000);
INSERT INTO `inventory` VALUES ('EST_5',10000);
INSERT INTO `inventory` VALUES ('EST_6',10000);
INSERT INTO `inventory` VALUES ('EST_7',10000);
INSERT INTO `inventory` VALUES ('EST_8',10000);
INSERT INTO `inventory` VALUES ('EST_9',10000);

#
# Source for table item
#

CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) default NULL,
  `unitcost` decimal(10,2) default NULL,
  `supplier` int(11) default NULL,
  `status` varchar(2) default NULL,
  `attr1` varchar(80) default NULL,
  `attr2` varchar(80) default NULL,
  `attr3` varchar(80) default NULL,
  `attr4` varchar(80) default NULL,
  `attr5` varchar(80) default NULL,
  PRIMARY KEY  (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table item
#

INSERT INTO `item` VALUES ('EST_1','FI-SW-01',16.5,10,1,'P','Large',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_10','K9-DL-01',18.5,12,1,'P','Spotted Adult Female',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_11','RP-SN-01',18.5,12,1,'P','Venomless',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_12','RP-SN-01',18.5,12,1,'P','Rattleless',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_13','RP-LI-02',18.5,12,1,'P','Green Adult',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_14','FL-DSH-01',58.5,12,1,'P','Tailless',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_15','FL-DSH-01',23.5,12,1,'P','With tail',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_16','FL-DLH-02',93.5,12,1,'P','Adult Female',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_17','FL-DLH-02',93.5,12,1,'P','Adult Male',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_18','AV-CB-01',193.5,92,1,'P','Adult Male',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_19','AV-SB-02',15.5,2,1,'P','Adult Male',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_2','FI-SW-01',16.5,10,1,'P','Small',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_20','FI-FW-02',5.5,2,1,'P','Adult Male',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_21','FI-FW-02',5.29,1,1,'P','Adult Female',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_22','K9-RT-02',135.5,100,1,'P','Adult Male',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_23','K9-RT-02',145.49,100,1,'P','Adult Female',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_24','K9-RT-02',255.5,92,1,'P','Adult Male',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_25','K9-RT-02',325.29,90,1,'P','Adult Female',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_26','K9-CW-01',125.5,92,1,'P','Adult Male',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_27','K9-CW-01',155.29,90,1,'P','Adult Female',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_28','K9-RT-01',155.29,90,1,'P','Adult Female',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_3','FI-SW-02',18.5,12,1,'P','Toothless',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_4','FI-FW-01',18.5,12,1,'P','Spotted',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_5','FI-FW-01',18.5,12,1,'P','Spotless',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_6','K9-BD-01',18.5,12,1,'P','Male Adult',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_7','K9-BD-01',18.5,12,1,'P','Female Puppy',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_8','K9-PO-02',18.5,12,1,'P','Male Puppy',NULL,NULL,NULL,NULL);
INSERT INTO `item` VALUES ('EST_9','K9-DL-01',18.5,12,1,'P','Spotless Male Puppy',NULL,NULL,NULL,NULL);

#
# Source for table lineitem
#

CREATE TABLE `lineitem` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table lineitem
#

INSERT INTO `lineitem` VALUES (1,1001,'EST_13',1,18.5);
INSERT INTO `lineitem` VALUES (2,1002,'EST_3',3,55.5);
INSERT INTO `lineitem` VALUES (3,1002,'EST_15',1,23.5);
INSERT INTO `lineitem` VALUES (4,1003,'EST_3',3,55.5);
INSERT INTO `lineitem` VALUES (5,1003,'EST_15',1,23.5);
INSERT INTO `lineitem` VALUES (6,1004,'EST_19',1,15.5);
INSERT INTO `lineitem` VALUES (7,1004,'EST_15',2,47);
INSERT INTO `lineitem` VALUES (8,1005,'EST_11',1,18.5);
INSERT INTO `lineitem` VALUES (9,1005,'EST_28',2,310.58);
INSERT INTO `lineitem` VALUES (10,1006,'EST_11',1,18.5);
INSERT INTO `lineitem` VALUES (11,1006,'EST_28',2,310.58);
INSERT INTO `lineitem` VALUES (12,1006,'EST_19',1,15.5);
INSERT INTO `lineitem` VALUES (13,1007,'EST_11',1,18.5);
INSERT INTO `lineitem` VALUES (14,1007,'EST_28',2,310.58);
INSERT INTO `lineitem` VALUES (15,1007,'EST_19',1,15.5);
INSERT INTO `lineitem` VALUES (16,1008,'EST_11',1,18.5);
INSERT INTO `lineitem` VALUES (17,1008,'EST_28',2,310.58);
INSERT INTO `lineitem` VALUES (18,1008,'EST_19',1,15.5);
INSERT INTO `lineitem` VALUES (19,1009,'EST_19',1,15.5);
INSERT INTO `lineitem` VALUES (20,1010,'EST_12',1,18.5);
INSERT INTO `lineitem` VALUES (21,1011,'EST_12',1,18.5);
INSERT INTO `lineitem` VALUES (22,1012,'EST_15',1,23.5);
INSERT INTO `lineitem` VALUES (23,1013,'EST_19',1,15.5);

#
# Source for table orders
#

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL default '0' COMMENT '订单序号',
  `orderdate` date NOT NULL default '0000-00-00' COMMENT '订单日期',
  `userid` varchar(80) character set utf8 NOT NULL default '' COMMENT '用户id',
  `shipaddr` varchar(80) character set utf8 NOT NULL default '' COMMENT '用户地址',
  `shipcity` varchar(80) character set utf8 NOT NULL default '' COMMENT '用户所在城市',
  `shipname` varchar(80) character set utf8 NOT NULL default '' COMMENT '购买用户名',
  `cardno` varchar(80) NOT NULL default '' COMMENT '卡号',
  `cardtype` varchar(80) character set utf8 NOT NULL default '' COMMENT '卡类型',
  `totalprice` decimal(10,2) default NULL COMMENT '总价格',
  PRIMARY KEY  (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table orders
#

INSERT INTO `orders` VALUES (1001,'2010-08-29','weikun','的','俄','45454545','999 9999 9999 9999','Visa',0);
INSERT INTO `orders` VALUES (1002,'2010-08-29','weikun','32332','2323232','我','999 9999 9999 9999','Visa',0);
INSERT INTO `orders` VALUES (1003,'2010-08-29','weikun','是','是','我','999 9999 9999 9999','Visa',0);
INSERT INTO `orders` VALUES (1004,'2010-08-29','weikun','是','是','我','999 9999 9999 9999','Visa',0);
INSERT INTO `orders` VALUES (1005,'2010-08-29','weikun','东方饭店','反对反对反对','热热热','999 9999 9999 9999','工行牡丹卡',62.5);
INSERT INTO `orders` VALUES (1006,'2010-08-29','weikun','22','233232','发达省份的所得税','999 9999 9999 9999','Visa',329.08);
INSERT INTO `orders` VALUES (1007,'2010-08-29','weikun','434343','434343','广泛','999 9999 9999 9999','Visa',344.58);
INSERT INTO `orders` VALUES (1008,'2010-08-29','weikun','434343','434343','广泛','999 9999 9999 9999','Visa',344.58);
INSERT INTO `orders` VALUES (1009,'2010-08-29','weikun','434343','434343','广泛','999 9999 9999 9999','Visa',344.58);
INSERT INTO `orders` VALUES (1010,'2010-08-29','weikun','额外额外','我饿饿我','额额我饿我','999 9999 9999 9999','Visa',15.5);
INSERT INTO `orders` VALUES (1011,'2010-08-29','weikun','rere','rere','errere','999 9999 9999 9999','Visa',18.5);
INSERT INTO `orders` VALUES (1012,'2010-08-29','weikun','rerere','rere','rrere','999 9999 9999 9999','工行牡丹卡',18.5);
INSERT INTO `orders` VALUES (1013,'2010-08-29','weikun','gfgf','gfgf','gfgfgf','999 9999 9999 9999','建行龙卡',23.5);
INSERT INTO `orders` VALUES (1014,'2010-08-29','weikun','3232','3232','3232','999 9999 9999 9999','建行龙卡',15.5);

#
# Source for table product
#

CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) default NULL,
  `descn` varchar(255) default NULL,
  PRIMARY KEY  (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table product
#

INSERT INTO `product` VALUES ('AV-CB-01','BIRDS','Amazon Parrot','<image src=\"../images/bird4.gif\">Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02','BIRDS','Finch','<image src=\"../images/bird1.gif\">Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01','FISH','Koi','<image src=\"../images/fish3.gif\">Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02','FISH','Goldfish','<image src=\"../images/fish2.gif\">Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01','FISH','Angelfish','<image src=\"../images/fish1.jpg\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02','FISH','Tiger Shark','<image src=\"../images/fish4.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02','CATS','Persian','<image src=\"../images/cat1.gif\">Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01','CATS','Manx','<image src=\"../images/cat3.gif\">Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01','DOGS','Bulldog','<image src=\"../images/dog2.gif\">Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01','DOGS','Chihuahua','<image src=\"../images/dog4.gif\">Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01','DOGS','Dalmation','<image src=\"../images/dog5.gif\">Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02','DOGS','Poodle','<image src=\"../images/dog6.gif\">Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01','DOGS','Golden Retriever','<image src=\"../images/dog1.gif\">Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02','DOGS','Labrador Retriever','<image src=\"../images/dog5.gif\">Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02','REPTILES','Iguana','<image src=\"../images/lizard2.gif\">Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01','REPTILES','Rattlesnake','<image src=\"../images/lizard3.gif\">Doubles as a watch dog');

#
# Source for table profile
#

CREATE TABLE `profile` (
  `username` varchar(80) character set utf8 NOT NULL default '',
  `langpref` varchar(80) character set utf8 NOT NULL default '',
  `favcategory` varchar(30) character set utf8 default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table profile
#

INSERT INTO `profile` VALUES ('12','japanese','FISH');
INSERT INTO `profile` VALUES ('ACID','english','CATS');
INSERT INTO `profile` VALUES ('j2ee','japanese','DOGS');
INSERT INTO `profile` VALUES ('nihao','英文','DOGS');
INSERT INTO `profile` VALUES ('ttt5545','中文','BIRDS');
INSERT INTO `profile` VALUES ('uuuu','中文','BIRDS');
INSERT INTO `profile` VALUES ('wangshan','英文','BIRDS');
INSERT INTO `profile` VALUES ('weikun','英文','FISH');

#
# Source for table sequence
#

CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table sequence
#

INSERT INTO `sequence` VALUES ('linenum',1000);
INSERT INTO `sequence` VALUES ('ordernum',1000);

#
# Source for table signon
#

CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table signon
#

INSERT INTO `signon` VALUES ('12','123');
INSERT INTO `signon` VALUES ('ACID','ACID');
INSERT INTO `signon` VALUES ('j2ee','j2ee');

#
# Source for table supplier
#

CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) default NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) default NULL,
  `addr2` varchar(80) default NULL,
  `city` varchar(80) default NULL,
  `state` varchar(80) default NULL,
  `zip` varchar(5) default NULL,
  `phone` varchar(80) default NULL,
  PRIMARY KEY  (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table supplier
#

INSERT INTO `supplier` VALUES (1,'XYZ Pets','AC','600 Avon Way','','Los Angeles','CA','94024','212-947-0797');
INSERT INTO `supplier` VALUES (2,'ABC Pets','AC','700 Abalone Way','','San Francisco ','CA','94024','415-947-0797');

#
#  Foreign keys for table item
#

ALTER TABLE `item`
ADD CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
ADD CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`);

#
#  Foreign keys for table product
#

ALTER TABLE `product`
ADD CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
