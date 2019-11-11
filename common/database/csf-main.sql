/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.11 : Database - csf-main
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`csf-main` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `csf-main`;

/*Table structure for table `tbl_auth_assignment` */

DROP TABLE IF EXISTS `tbl_auth_assignment`;

CREATE TABLE `tbl_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `tbl_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_auth_assignment` */

/*Table structure for table `tbl_auth_item` */

DROP TABLE IF EXISTS `tbl_auth_item`;

CREATE TABLE `tbl_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `tbl_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `tbl_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_auth_item` */

/*Table structure for table `tbl_auth_item_child` */

DROP TABLE IF EXISTS `tbl_auth_item_child`;

CREATE TABLE `tbl_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `tbl_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_auth_item_child` */

/*Table structure for table `tbl_auth_rule` */

DROP TABLE IF EXISTS `tbl_auth_rule`;

CREATE TABLE `tbl_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_auth_rule` */

/*Table structure for table `tbl_csfrating` */

DROP TABLE IF EXISTS `tbl_csfrating`;

CREATE TABLE `tbl_csfrating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_type` varchar(100) DEFAULT NULL,
  `q1` int(11) DEFAULT NULL,
  `q2` int(11) DEFAULT NULL,
  `q3` int(11) DEFAULT NULL,
  `q4` int(11) DEFAULT NULL,
  `q5` int(11) DEFAULT NULL,
  `rating_name` varchar(100) DEFAULT NULL,
  `rating_comment` varchar(255) DEFAULT NULL,
  `rating_date` date DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_csfrating` */

insert  into `tbl_csfrating`(`rating_id`,`unit_type`,`q1`,`q2`,`q3`,`q4`,`q5`,`rating_name`,`rating_comment`,`rating_date`) values (9,'HUMAN RESOURCES',5,5,5,5,5,'','','2019-10-21'),(10,'S&T INFORMATION CENTER',5,5,5,5,5,'','','2019-10-21'),(11,'CASHIERING',5,5,5,5,5,'','','2019-10-21'),(12,'CASHIERING',5,5,5,5,5,'','','2019-10-21'),(13,'HUMAN RESOURCES',5,5,5,5,5,'','','2019-10-21'),(14,'HUMAN RESOURCES',5,5,5,5,5,'','','2019-10-21'),(15,'HUMAN RESOURCES',5,5,5,5,5,'','','2019-10-21'),(16,'HUMAN RESOURCES',5,5,5,5,5,'','','2019-10-21'),(17,'CASHIERING',5,4,5,5,5,'Larry','Test','2019-10-22'),(18,'CASHIERING',5,5,5,5,5,'','','2019-10-22'),(19,'CASHIERING',5,5,5,5,5,'','','2019-10-22'),(20,'S&T INFORMATION CENTER',5,5,4,4,4,'','','2019-10-28'),(21,'S&T INFORMATION CENTER',5,5,5,5,5,'','','2019-10-28');

/*Table structure for table `tbl_division` */

DROP TABLE IF EXISTS `tbl_division`;

CREATE TABLE `tbl_division` (
  `division_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_division` */

insert  into `tbl_division`(`division_id`,`code`,`name`) values (1,'ORD','Office of the Regional Director'),(2,'FASS','Finance and Administrative Support Services'),(4,'FOS','Field Operations Services'),(11,'TS','Technical Services');

/*Table structure for table `tbl_division_head` */

DROP TABLE IF EXISTS `tbl_division_head`;

CREATE TABLE `tbl_division_head` (
  `division_head_id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`division_head_id`),
  KEY `division_id` (`division_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_division_head_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `tbl_division` (`division_id`),
  CONSTRAINT `tbl_division_head_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_division_head` */

/*Table structure for table `tbl_imagemanager` */

DROP TABLE IF EXISTS `tbl_imagemanager`;

CREATE TABLE `tbl_imagemanager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileName` varchar(128) NOT NULL,
  `fileHash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `createdBy` int(10) unsigned DEFAULT NULL,
  `modifiedBy` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_imagemanager` */

/*Table structure for table `tbl_industry` */

DROP TABLE IF EXISTS `tbl_industry`;

CREATE TABLE `tbl_industry` (
  `industry_id` int(11) NOT NULL AUTO_INCREMENT,
  `classification` varchar(250) CHARACTER SET latin1 NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_industry` */

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `tbl_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `tbl_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_menu` */

/*Table structure for table `tbl_message` */

DROP TABLE IF EXISTS `tbl_message`;

CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `created_at` datetime NOT NULL,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_message` */

/*Table structure for table `tbl_message_allowed_contacts` */

DROP TABLE IF EXISTS `tbl_message_allowed_contacts`;

CREATE TABLE `tbl_message_allowed_contacts` (
  `user_id` int(11) NOT NULL,
  `is_allowed_to_write` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`is_allowed_to_write`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_message_allowed_contacts` */

/*Table structure for table `tbl_message_ignorelist` */

DROP TABLE IF EXISTS `tbl_message_ignorelist`;

CREATE TABLE `tbl_message_ignorelist` (
  `user_id` int(11) NOT NULL,
  `blocks_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`blocks_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_message_ignorelist` */

/*Table structure for table `tbl_migration` */

DROP TABLE IF EXISTS `tbl_migration`;

CREATE TABLE `tbl_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_migration` */

/*Table structure for table `tbl_names` */

DROP TABLE IF EXISTS `tbl_names`;

CREATE TABLE `tbl_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `student_num` varchar(25) NOT NULL,
  `checked_in` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_names` */

/*Table structure for table `tbl_package` */

DROP TABLE IF EXISTS `tbl_package`;

CREATE TABLE `tbl_package` (
  `PackageID` int(11) NOT NULL AUTO_INCREMENT,
  `PackageName` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`PackageID`),
  UNIQUE KEY `PackageName` (`PackageName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_package` */

/*Table structure for table `tbl_position` */

DROP TABLE IF EXISTS `tbl_position`;

CREATE TABLE `tbl_position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_position` */

insert  into `tbl_position`(`position_id`,`code`,`name`) values (1,'Clerk I','Clerk I'),(2,'Clerk II','Clerk II'),(3,'Clerk III','Clerk III'),(4,'Clerk IV','Clerk IV'),(5,'PA I','Project Assistant I'),(6,'PA II','Project Assistant II'),(7,'PA III','Project Assistant III'),(8,'PDO I','Project Development Officer I'),(9,'PDO II','Project Development Officer II'),(10,'PDO III','Project Development Officer III'),(11,'Lab Aide I','Laboratory Aide I'),(12,'Lab Aide II','Laboratory Aide II'),(13,'SRA','Science Research Analyst'),(14,'SRA','Science Research Assistant'),(15,'SRS I','Science Research Specialist I'),(16,'SRS II','Science Research Specialist II'),(17,'SrSRS','Senior Science Research Specialist'),(18,'SuSRS','Supervising Science Research Specialist'),(19,'AA I','Administrative Assistant I'),(20,'AA II','Administrative Assistant II'),(21,'AA III','Administrative Assistant III'),(22,'AA IV','Administrative Assistant IV'),(23,'AA I','Administrative Aide I'),(24,'AA II','Administrative Aide II'),(25,'AA III','Administrative Aide III'),(26,'AA IV','Administrative Aide IV'),(27,'AO I','Administrative Officer I'),(28,'AO II','Administrative Officer II'),(29,'AO III','Administrative Officer III'),(30,'AO IV','Administrative Officer IV'),(31,'AO V','Administrative Officer V');

/*Table structure for table `tbl_profile` */

DROP TABLE IF EXISTS `tbl_profile`;

CREATE TABLE `tbl_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `middleinitial` varchar(50) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `contact_numbers` varchar(100) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `division_id` (`division_id`),
  CONSTRAINT `tbl_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_profile_ibfk_2` FOREIGN KEY (`division_id`) REFERENCES `tbl_division` (`division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_profile` */

/*Table structure for table `tbl_program` */

DROP TABLE IF EXISTS `tbl_program`;

CREATE TABLE `tbl_program` (
  `program_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `yearStarted` int(11) NOT NULL,
  `imageIcon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_program` */

insert  into `tbl_program`(`program_id`,`code`,`name`,`description`,`yearStarted`,`imageIcon`) values (1,'SETUP','Small Enterprise Technology Upgrading Program','is a nationwide strategy to encourage and assist small and medium enterprises (SMEs) to adopt technology innovations to improve their operations and expand the reach of their businesses.\r\n\r\nThe program focuses on the following six (6) priority sectors: 1. Food Processing; 2. Furniture; 3. Gifts, Decors & Handicrafts; 4. Marine and Aquatic Resources; 5. Horticulture (Cut flowers, fruits, high value crops); and 6. Metals and Engineering.',2000,'SETUP_logo.png'),(2,'DOST-GIA','Grants-In-Aid Program','The DOST-GIA Program, through the leadership of the Undersecretary for R&D, provides financial grants to S&T programs/projects to spur and attain economic growth and development by harnessing the country\'s scientific and technological capabilities',2000,'dost-gia.png'),(3,'SCHOLARSHIP','Undergraduate S&T Scholarships Program','Implemented by the Science Education Institute (DOST-SEI), the program is open yearly to talented and deserving students who wish to pursue 4- or 5- year courses in priority science and technology fields. The RA 7687 Scholarships and the Merit Scholarships both aim to produce and develop high quality human resources who will man the Science and Technology (S&T) and Research Development (R&D) efforts in the country.',1996,'s&t-scholarship.png');

/*Table structure for table `tbl_project` */

DROP TABLE IF EXISTS `tbl_project`;

CREATE TABLE `tbl_project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_project` */

insert  into `tbl_project`(`project_id`,`code`,`name`,`description`) values (1,'Project 1','Project 1','Project 1');

/*Table structure for table `tbl_quarter` */

DROP TABLE IF EXISTS `tbl_quarter`;

CREATE TABLE `tbl_quarter` (
  `quarter_id` int(11) NOT NULL AUTO_INCREMENT,
  `quarter` varchar(11) NOT NULL,
  `period_month` varchar(22) NOT NULL,
  PRIMARY KEY (`quarter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_quarter` */

/*Table structure for table `tbl_section` */

DROP TABLE IF EXISTS `tbl_section`;

CREATE TABLE `tbl_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_section` */

insert  into `tbl_section`(`section_id`,`division_id`,`code`,`name`) values (1,1,'','Office of the Regional Director'),(2,2,'','Supply Unit'),(3,2,'','Accounting Unit'),(4,2,'','Cashiering Unit'),(5,3,'','S&T Scholarships Unit'),(6,3,'','S&T Information Center'),(7,3,'','Information and Communication Technnology Unit'),(8,3,'','RSTL Office'),(9,3,'','Metrology and Calibration Laboratory'),(10,3,'','Chemical Testing Laboratory'),(11,3,'','Microbiological Testing Laboratory'),(12,4,'','Field Operations Services Office'),(13,4,'','PSTC-Zamboanga del Sur'),(14,4,'','PSTC-Zamboanga del Norte'),(15,4,'','PSTC-Zamboanga Sibugay'),(16,4,'','PSTC-Isabela Basilan'),(17,2,'','Human Resource and Development'),(18,0,'','Please select');

/*Table structure for table `tbl_status` */

DROP TABLE IF EXISTS `tbl_status`;

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_status` */

/*Table structure for table `tbl_status_sub` */

DROP TABLE IF EXISTS `tbl_status_sub`;

CREATE TABLE `tbl_status_sub` (
  `status_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL,
  `subname` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`status_sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_status_sub` */

/*Table structure for table `tbl_type` */

DROP TABLE IF EXISTS `tbl_type`;

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_type` */

insert  into `tbl_type`(`type_id`,`name`) values (1,'Regular Fund'),(2,'Scholarship Fund'),(3,'Trust Fund'),(4,'MDS Trust Fund');

/*Table structure for table `tbl_upload_package` */

DROP TABLE IF EXISTS `tbl_upload_package`;

CREATE TABLE `tbl_upload_package` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(100) DEFAULT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_upload_package` */

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
