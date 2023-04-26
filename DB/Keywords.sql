/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - keyword
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`keyword` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `keyword`;

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `oreg` */

insert  into `oreg`(`sno`,`id`,`name`,`password`,`mail_id`,`dob`,`Gender`,`profile`,`cont`,`address`) values (11,'01','sathya','sathya','cvsathyavani1999@gmail.com','21/01/1999','female','2222.jpg','9839828309','chennai'),(12,'00444','praba','11111','cvsathyavani1999@gmail.com','21/01/1999','female','ammam.jpg','982989389','chennai'),(13,'002','giri','giri','cvsathyavani1999@gmail.com','21/01/1999','Female','ammam.jpg','989843884','chennai'),(14,'003','praba','praba','cvsathyavani1999@gmail.com','21/01/1999','female','event.jpg','9839389839','kumbakonam'),(15,'12','Abi','1234','varun12@gmail.com','21/01/1999','Male','ENC.png','9786767657','Chennai'),(16,'12','Abi','1234','varun12@gmail.com','21/01/1999','Male','ENC.png','9786767657','Chennai');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Unactivated',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`sno`,`id`,`name`,`password`,`mail_id`,`dob`,`profile`,`Gender`,`cont`,`address`,`status`) values (1,'001','sathyapraba','sathyapraba','cvsathyavani1999@gmail.com','21/01/1999','ammam.jpg','Female','9839892839','chennai','Unactivated'),(2,'002','ragu','ragu','cvsathyavani1999@gmail.com','21/01/1997','eve.jpg','male','987654678','kumbakonam','Unactivated'),(3,'004','gaya3','gaya3','cvsathyavani1999@gmail.com','21/01/1997','amman1.jpg','female','9388028983','chennai','Unactivated'),(4,'123','Gokul','1234','varun12@Gmail.com','21/01/1997','en3.jpg','Male','8888552522','Chennai','Unactivated'),(5,'67','Maran','1234','varun12@Gmail.com','21/01/1999','cld.jpg','Male','978767565','chennai','Unactivated');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reg` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `trap` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'waiting',
  `fkey` varchar(200) DEFAULT '--------',
  `request` varchar(200) DEFAULT '0',
  `downlad` varchar(200) DEFAULT '0',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`sno`,`id`,`name`,`reg`,`oname`,`trap`,`image`,`status`,`fkey`,`request`,`downlad`) values (1,'001','sathyapraba','001','sathyapraba','49DE078ADF09D605','sathya.txt','Send Key','1348','1','1'),(2,'001','sathyapraba','001','sathyapraba','49DE078ADF09D605','sathya.txt','Send Key','1348','1','0'),(3,'002','ragu','002','giri','CE5126F844CE8540','te.txt','Send Key','21','1','0'),(4,'004','gaya3','003','praba','D049D8109C893E0E','Pro Student title.txt','Send Key','9480','1','1'),(5,'123','Gokul','12','Abi','13C6A004C4E36C76','Library Management System (1).txt','Send Key','2262','1','1'),(6,'123','Gokul','12','Abi','13C6A004C4E36C76','Library Management System (1).txt','Send Key','2262','1','0'),(7,'123','Gokul','12','Abi','9C763797C9642BA5','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','waiting','--------','1','0'),(8,'123','Gokul','12','Abi','9C763797C9642BA5','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','Send Key','5453','1','1');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `reg` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `trapdoor` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`reg`,`name`,`fname`,`fkey`,`dates`,`trapdoor`,`image`) values ('12','Abi','Test','5453','12/12/22 03:52:04','9C763797C9642BA5','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt');

/*Table structure for table `userreq` */

DROP TABLE IF EXISTS `userreq`;

CREATE TABLE `userreq` (
  `id` int(15) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  `status1` varchar(200) DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userreq` */

insert  into `userreq`(`id`,`user`,`status`,`status1`) values (123,'Gokul','Accept','Accept'),(123,'Gokul','Accept','Accept'),(123,'Gokul','Waiting','Waiting');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
