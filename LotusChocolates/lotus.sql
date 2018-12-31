/*
SQLyog Community Edition- MySQL GUI v8.02 
MySQL - 5.5.27 : Database - lotuschocolate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`lotuschocolate` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lotuschocolate`;

/*Table structure for table `abhee_branch` */

DROP TABLE IF EXISTS `abhee_branch`;

CREATE TABLE `abhee_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branchhead` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abhee_branch` */

/*Table structure for table `abhee_company` */

DROP TABLE IF EXISTS `abhee_company`;

CREATE TABLE `abhee_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyimg` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abhee_company` */

/*Table structure for table `abhee_customer` */

DROP TABLE IF EXISTS `abhee_customer`;

CREATE TABLE `abhee_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `communicationaddress` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobilenumber` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `purchase_customer` bit(1) NOT NULL,
  `registedred_from_android` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abhee_customer` */

/*Table structure for table `abhee_product` */

DROP TABLE IF EXISTS `abhee_product`;

CREATE TABLE `abhee_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_model_specifications` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `categoryid` varchar(255) DEFAULT NULL,
  `companyid` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `max_allowed_discount` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productmodelpics` varchar(255) DEFAULT NULL,
  `productmodelvideoslinks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abhee_product` */

/*Table structure for table `abhee_sales_request` */

DROP TABLE IF EXISTS `abhee_sales_request`;

CREATE TABLE `abhee_sales_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `customerid` varchar(255) DEFAULT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enable` varchar(255) DEFAULT NULL,
  `imgfiles` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `modelnumber` varchar(255) DEFAULT NULL,
  `quotation_documents` varchar(255) DEFAULT NULL,
  `reqdesc` varchar(255) DEFAULT NULL,
  `salesrequestnumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abhee_sales_request` */

/*Table structure for table `abhee_task` */

DROP TABLE IF EXISTS `abhee_task`;

CREATE TABLE `abhee_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_type` varchar(255) DEFAULT NULL,
  `add_comment` varchar(255) DEFAULT NULL,
  `additionalinfo` varchar(255) DEFAULT NULL,
  `amountreceived` varchar(255) DEFAULT NULL,
  `assignby` varchar(255) DEFAULT NULL,
  `assignto` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `communicationaddress` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `kstatus` varchar(255) DEFAULT NULL,
  `modelid` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `severity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `taskdeadline` varchar(255) DEFAULT NULL,
  `taskno` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `uploadfile` varchar(255) DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abhee_task` */

/*Table structure for table `abhee_task_history` */

DROP TABLE IF EXISTS `abhee_task_history`;

CREATE TABLE `abhee_task_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `taskdeadline` varchar(255) DEFAULT NULL,
  `taskid` varchar(255) DEFAULT NULL,
  `taskno` varchar(255) DEFAULT NULL,
  `taskstatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abhee_task_history` */

/*Table structure for table `abheecategory` */

DROP TABLE IF EXISTS `abheecategory`;

CREATE TABLE `abheecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `categoryimg` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `kp_org_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheecategory` */

/*Table structure for table `abheecustomerorderitems` */

DROP TABLE IF EXISTS `abheecustomerorderitems`;

CREATE TABLE `abheecustomerorderitems` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheecustomerorderitems` */

/*Table structure for table `abheecustomerorders` */

DROP TABLE IF EXISTS `abheecustomerorders`;

CREATE TABLE `abheecustomerorders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheecustomerorders` */

/*Table structure for table `abheecustomertypes` */

DROP TABLE IF EXISTS `abheecustomertypes`;

CREATE TABLE `abheecustomertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheecustomertypes` */

/*Table structure for table `abheedesignation` */

DROP TABLE IF EXISTS `abheedesignation`;

CREATE TABLE `abheedesignation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheedesignation` */

/*Table structure for table `abheemultiroles` */

DROP TABLE IF EXISTS `abheemultiroles`;

CREATE TABLE `abheemultiroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designationid` varchar(255) DEFAULT NULL,
  `desigrole` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheemultiroles` */

/*Table structure for table `abheepriority` */

DROP TABLE IF EXISTS `abheepriority`;

CREATE TABLE `abheepriority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheepriority` */

/*Table structure for table `abheeproductguarantee` */

DROP TABLE IF EXISTS `abheeproductguarantee`;

CREATE TABLE `abheeproductguarantee` (
  `order_id` varchar(255) NOT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `customerid` varchar(255) DEFAULT NULL,
  `expireddate` varchar(255) DEFAULT NULL,
  `productmodelid` varchar(255) DEFAULT NULL,
  `purchaseddate` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheeproductguarantee` */

/*Table structure for table `abheeservicetype` */

DROP TABLE IF EXISTS `abheeservicetype`;

CREATE TABLE `abheeservicetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servicetype_id` varchar(255) DEFAULT NULL,
  `servicetypename` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheeservicetype` */

/*Table structure for table `abheeseverity` */

DROP TABLE IF EXISTS `abheeseverity`;

CREATE TABLE `abheeseverity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `colour` varchar(255) DEFAULT NULL,
  `severity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheeseverity` */

/*Table structure for table `abheetaskstatus` */

DROP TABLE IF EXISTS `abheetaskstatus`;

CREATE TABLE `abheetaskstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scolour` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheetaskstatus` */

/*Table structure for table `abheeusers` */

DROP TABLE IF EXISTS `abheeusers`;

CREATE TABLE `abheeusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobilenumber` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reportto` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_liransf860ggj3ted30yjq0oq` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheeusers` */

/*Table structure for table `abheeuserslogs` */

DROP TABLE IF EXISTS `abheeuserslogs`;

CREATE TABLE `abheeuserslogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logintime` datetime DEFAULT NULL,
  `sessionname` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abheeuserslogs` */

/*Table structure for table `all_service_requests` */

DROP TABLE IF EXISTS `all_service_requests`;

CREATE TABLE `all_service_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime DEFAULT NULL,
  `cust_desc` varchar(255) DEFAULT NULL,
  `custid` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `servicecategory` varchar(255) DEFAULT NULL,
  `servicenumber` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `all_service_requests` */

/*Table structure for table `home_table` */

DROP TABLE IF EXISTS `home_table`;

CREATE TABLE `home_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `home_table` */

insert  into `home_table`(`id`,`created_time`,`location`,`mobile_number`,`name`,`updated_time`) values (1,'2018-10-10 18:36:06','Guntur','8555863691','Raju','2018-10-10 18:36:06'),(2,'2018-10-10 18:39:03','Guntur','8555863691','Raju','2018-10-10 18:39:03'),(3,'2018-10-10 18:42:39','vijayawada','8555863691','prasad','2018-10-10 18:42:39'),(4,'2018-10-11 16:42:40','guntur','8555863691','Raju','2018-10-11 16:42:40'),(5,'2018-10-11 16:44:48','guntur','8555863691','Raju','2018-10-11 16:44:48'),(6,'2018-10-11 17:30:20','','','','2018-10-11 17:30:20'),(7,'2018-10-11 18:10:20','','','','2018-10-11 18:10:20'),(8,'2018-10-12 16:11:32','','8555863691','Raju','2018-10-12 16:11:32'),(9,'2018-10-12 16:13:22','','8555863691','Raju','2018-10-12 16:13:22'),(10,'2018-10-12 16:14:48','','8555863691','Raju','2018-10-12 16:14:48'),(11,'2018-10-12 16:15:49','','8555863691','Raju','2018-10-12 16:15:49'),(12,'2018-10-12 16:16:22','','8555863691','Raju','2018-10-12 16:16:22'),(13,'2018-10-12 16:17:05','','8555863691','Raju','2018-10-12 16:17:05'),(14,'2018-10-12 16:21:01','','8555863691','Raju','2018-10-12 16:21:01'),(15,'2018-10-12 16:21:39','','8555863691','Raju','2018-10-12 16:21:39'),(16,'2018-10-12 16:22:25','','8555863691','Raju','2018-10-12 16:22:25'),(17,'2018-10-12 16:22:32','','8555863691','Raju','2018-10-12 16:22:32'),(18,'2018-10-12 16:22:50','','8555863691','Raju','2018-10-12 16:22:50'),(19,'2018-10-12 16:22:58','','8555863691','Raju','2018-10-12 16:22:58'),(20,'2018-10-12 16:23:13','','8555863691','Raju','2018-10-12 16:23:13'),(21,'2018-10-12 16:23:20','','8555863691','Raju','2018-10-12 16:23:20'),(22,'2018-10-12 16:23:26','','8555863691','Raju','2018-10-12 16:23:26'),(23,'2018-10-12 16:23:34','','8555863691','Raju','2018-10-12 16:23:34'),(24,'2018-10-12 16:23:44','','8555863691','Raju','2018-10-12 16:23:44'),(25,'2018-10-12 16:26:59','','8555863691','Raju','2018-10-12 16:26:59'),(26,'2018-10-12 16:27:17','','8555863691','Raju','2018-10-12 16:27:17'),(27,'2018-10-12 16:27:43','','8555863691','Raju','2018-10-12 16:27:43'),(28,'2018-10-12 16:30:07','','8555863691','Raju','2018-10-12 16:30:07'),(29,'2018-10-12 16:30:44','','8555863691','Raju','2018-10-12 16:30:44');

/*Table structure for table `ordertable` */

DROP TABLE IF EXISTS `ordertable`;

CREATE TABLE `ordertable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `delivery_location` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `message_on_chocolate` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `ordertable` */

insert  into `ordertable`(`id`,`created_time`,`delivery_date`,`delivery_location`,`image`,`message_on_chocolate`,`mobile_number`,`name`,`updated_time`,`weight`) values (1,'2018-10-10 19:43:46','2019-03-10 00:00:00','guntur','Koala.jpg','hi','8555863691','Raju','2018-10-10 19:43:46','1'),(2,'2018-10-10 19:56:27','2019-03-10 00:00:00','guntur','Lighthouse.jpg','hi','8555863691','Raju','2018-10-10 19:56:27','1'),(3,'2018-10-10 20:15:48','2018-10-11 00:00:00','guntur','Jellyfish.jpg','hi','8555863691','Raju','2018-10-10 20:15:48','1'),(4,'2018-10-10 20:23:09','2018-10-11 00:00:00','guntur','Hydrangeas.jpg','hi','8555863691','Raju','2018-10-10 20:23:09','1'),(5,'2018-10-11 08:06:31','2018-10-12 00:00:00','guntur','Desert.jpg','hi','8555863691','Raju','2018-10-11 08:06:31','1'),(6,'2018-10-11 08:11:53','2018-10-12 00:00:00','guntur','Chrysanthemum.jpg','hi','8555863691','Raju','2018-10-11 08:11:53','1'),(7,'2018-10-11 08:21:14','2018-10-12 00:00:00','guntur','Desert.jpg','hi','8555863691','Raju','2018-10-11 08:21:14','1'),(8,'2018-10-11 10:55:12','2018-10-12 00:00:00','guntur','Jellyfish.jpg','hi','8555863691','Raju','2018-10-11 10:55:12','1'),(9,'2018-10-11 11:03:22','2018-10-11 00:00:00','guntur','Koala.jpg','hi','8555863691','Raju','2018-10-11 11:03:22','1'),(10,'2018-10-11 11:20:01','2018-10-11 00:00:00','guntur','Koala.jpg','hi','8555863691','Raju','2018-10-11 11:20:01','1'),(11,'2018-10-11 11:22:24','2018-10-19 00:00:00','guntur','Chrysanthemum.jpg','New ','8555863691','Raju','2018-10-11 11:22:24','2'),(12,'2018-10-11 16:48:12','2018-10-12 00:00:00','guntur','Desert.jpg','New ','8555863691','Raju','2018-10-11 16:48:12','1'),(13,'2018-10-11 18:38:14','2018-10-12 00:00:00','guntur','Lighthouse.jpg','New ','8555863691','Raju','2018-10-11 18:38:14','2'),(14,'2018-10-11 18:44:01','2018-10-12 00:00:00','guntur','Tulips.jpg','New ','8555863691','Raju','2018-10-11 18:44:01','250 Grams');

/*Table structure for table `otp_details` */

DROP TABLE IF EXISTS `otp_details`;

CREATE TABLE `otp_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otpnumber` varchar(255) DEFAULT NULL,
  `otpstatus` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `otp_details` */

/*Table structure for table `task_history_logs` */

DROP TABLE IF EXISTS `task_history_logs`;

CREATE TABLE `task_history_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified_by` varchar(255) DEFAULT NULL,
  `service_type` varchar(255) DEFAULT NULL,
  `add_comment` varchar(255) DEFAULT NULL,
  `additionalinfo` varchar(255) DEFAULT NULL,
  `assignby` varchar(255) DEFAULT NULL,
  `assignto` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `communicationaddress` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `kstatus` varchar(255) DEFAULT NULL,
  `modelid` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `severity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `taskdeadline` varchar(255) DEFAULT NULL,
  `taskid` int(11) DEFAULT NULL,
  `taskno` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `uploadfile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `task_history_logs` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
