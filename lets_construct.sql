/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.5.20-log : Database - lets_construct
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lets_construct` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lets_construct`;

/*Table structure for table `builders` */

DROP TABLE IF EXISTS `builders`;

CREATE TABLE `builders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `pin` bigint(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `builders` */

insert  into `builders`(`id`,`lid`,`name`,`place`,`post`,`pin`,`email`,`phone`,`latitude`,`longitude`) values 
(1,3,'BUILDER NEW','kzkd','kzr',686501,'builder@gmail.com',9632587411,'9.751877','76.540607'),
(2,7,'','','',0,'',0,'','');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `complaint` varchar(500) DEFAULT NULL,
  `reply` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`id`,`uid`,`complaint`,`reply`,`date`) values 
(1,2,'lag','wkjerqje','2023-10-09');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`username`,`password`,`type`) values 
(1,'admin','admin','admin'),
(2,NULL,NULL,'pending'),
(3,'builder','builder','builder'),
(4,'','','pending'),
(5,'','','pending'),
(6,'','','pending'),
(7,'','','pending');

/*Table structure for table `rating_and_review` */

DROP TABLE IF EXISTS `rating_and_review`;

CREATE TABLE `rating_and_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `rating_and_review` */

insert  into `rating_and_review`(`id`,`bid`,`uid`,`rating`,`review`,`date`) values 
(1,3,2,5,'hbbb','2023-10-08');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `request` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`id`,`uid`,`wid`,`date`,`request`,`status`) values 
(1,2,1,'2023-10-10','hello',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `pin` bigint(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`lid`,`first_name`,`last_name`,`place`,`post`,`pin`,`email`,`phone`) values 
(1,2,'amil','harshak','kzkd','kzr',673307,'amil@gmail.com',9207684985),
(2,4,'','','','',0,'',0),
(3,5,'','','','',0,'',0);

/*Table structure for table `works` */

DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `cost` bigint(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `works` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
