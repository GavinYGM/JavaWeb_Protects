# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2019-04-02 19:12:21
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "card"
#

DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `job` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "card"
#

INSERT INTO `card` VALUES ('1','张盼盼','1','1','1'),('2','张屁屁','2','2','2'),('3','张如意','3','3','3');

#
# Structure for table "card1"
#

DROP TABLE IF EXISTS `card1`;
CREATE TABLE `card1` (
  `job1` varchar(255) NOT NULL DEFAULT '0',
  `name1` varchar(255) DEFAULT NULL,
  `tel1` varchar(255) DEFAULT NULL,
  `qq1` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "card1"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `name` varchar(255) NOT NULL DEFAULT '0',
  `psw` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES ('1','1'),('2','2'),('mahow','111'),('3','3'),('q','q'),('pp','11');
