/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.11 : Database - csf
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`csf` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `csf`;

/*Table structure for table `tbl_assignatory` */

DROP TABLE IF EXISTS `tbl_assignatory`;

CREATE TABLE `tbl_assignatory` (
  `assignatory_id` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyTitle` varchar(100) DEFAULT NULL,
  `RegionOffice` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `report_title` varchar(255) DEFAULT NULL,
  `assignatory_1` int(11) DEFAULT NULL,
  `assignatory_2` int(11) DEFAULT NULL,
  `assignatory_3` int(11) DEFAULT NULL,
  `assignatory_4` int(11) DEFAULT NULL,
  `assignatory_5` int(11) DEFAULT NULL,
  `assignatory_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`assignatory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_assignatory` */

insert  into `tbl_assignatory`(`assignatory_id`,`CompanyTitle`,`RegionOffice`,`Address`,`report_title`,`assignatory_1`,`assignatory_2`,`assignatory_3`,`assignatory_4`,`assignatory_5`,`assignatory_6`) values (1,'DEPARTMENT OF SCIENCE AND TECHNOLOGY','Regional Office No. IX','Pettit Barracks Zamboanga City','Purchase Request',1,2,NULL,NULL,NULL,NULL),(2,'DEPARTMENT OF SCIENCE AND TECHNOLOGY - IX','Regional Office No. IX','Pettit Barracks Zamboanga City','Obligation Request',4,10,NULL,NULL,NULL,NULL),(3,'DEPARTMENT OF SCIENCE AND TECHNOLOGY','Regional Office No. IX','Pettit Barracks Zamboanga City','Request for Quotation',1,1,NULL,NULL,NULL,NULL),(4,'DEPARTMENT OF SCIENCE AND TECHNOLOGY','Regional Office No. IX','Pettit Barracks Zamboanga City','Abstract of Bids',4,20,9,29,10,2),(5,'DEPARTMENT OF SCIENCE AND TECHNOLOGY','Regional Office No. IX','Pettit Barracks Zamboanga City','Disbursement',4,8,2,NULL,NULL,NULL),(6,'DEPARTMENT OF SCIENCE AND TECHNOLOGY','Regional Office No. IX','Pettit Barracks Zamboanga City','Inspection',42,5,11,32,NULL,NULL),(7,'DEPARTMENT OF SCIENCE AND TECHNOLOGY','Regional Office No. IX','Pettit Barracks Zamboanga City','Purchase Order',8,2,NULL,NULL,NULL,NULL);

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

insert  into `tbl_auth_assignment`(`item_name`,`user_id`,`created_at`) values ('access-book','1',1567387753),('access-gii','1',1548207831),('access-his-profile','5',1514427468),('access-inspection','13',1562030819),('access-procurement','1',1554881010),('access-registration','4',1536717617),('bac-secretary','13',1537775207),('bac-secretary','15',1557984535),('bac-secretary','18',1557824694),('basic-role','10',1555385911),('basic-role','11',1555385971),('basic-role','14',1555398084),('basic-role','16',1555386307),('basic-role','17',1555386448),('basic-role','19',1555386483),('basic-role','20',1555386505),('basic-role','21',1555386526),('basic-role','22',1555386549),('basic-role','23',1555386620),('basic-role','24',1555386653),('basic-role','25',1555386756),('basic-role','26',1555386779),('basic-role','27',1555386798),('basic-role','28',1555386835),('basic-role','29',1555386867),('basic-role','30',1555386970),('basic-role','31',1555315235),('basic-role','32',1552020787),('basic-role','33',1555387171),('basic-role','34',1555387188),('basic-role','35',1555387213),('basic-role','36',1555387256),('basic-role','37',1561511370),('basic-role','38',1555387273),('basic-role','39',1555394394),('basic-role','40',1555387310),('basic-role','41',1555387389),('basic-role','42',1555387400),('basic-role','43',1555387417),('basic-role','44',1555387428),('basic-role','45',1555387446),('basic-role','46',1555387458),('basic-role','47',1555387483),('basic-role','48',1555387527),('basic-role','49',1555387539),('basic-role','5',1555384953),('basic-role','50',1555387562),('basic-role','52',1555387579),('basic-role','53',1555387590),('basic-role','54',1548138833),('basic-role','55',1555387682),('basic-role','56',1555387699),('basic-role','57',1555387710),('basic-role','58',1555387722),('basic-role','59',1555387747),('basic-role','6',1557824683),('basic-role','60',1555387758),('basic-role','61',1555387796),('basic-role','62',1555387806),('basic-role','63',1555387816),('basic-role','64',1555387833),('basic-role','65',1555387862),('basic-role','66',1555387936),('basic-role','67',1555387949),('basic-role','68',1555387972),('basic-role','69',1555388101),('basic-role','7',1555385841),('basic-role','70',1555403186),('basic-role','74',1563263470),('basic-role','75',1569313130),('basic-role','76',1569313151),('basic-role','77',1569313175),('basic-role','78',1569313045),('basic-role','79',1569313280),('basic-role','8',1555385858),('basic-role','82',1555380351),('basic-role','84',1555397257),('basic-role','85',1559611001),('basic-role','86',1561337217),('basic-role','87',1565234236),('basic-role','9',1555385883),('super-administrator','1',NULL);

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

insert  into `tbl_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/*',2,NULL,NULL,NULL,1513914178,1513914178),('/accounting/*',2,NULL,NULL,NULL,1515371555,1515371555),('/admin/*',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/assignment/*',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/assignment/assign',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/assignment/index',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/assignment/revoke',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/assignment/view',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/default/*',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/default/index',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/menu/*',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/menu/create',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/menu/delete',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/menu/index',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/menu/update',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/menu/view',2,NULL,NULL,NULL,1512924430,1512924430),('/admin/permission/*',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/permission/assign',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/permission/create',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/permission/delete',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/permission/index',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/permission/remove',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/permission/update',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/permission/view',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/role/*',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/role/assign',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/role/create',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/role/delete',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/role/index',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/role/remove',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/role/update',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/role/view',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/route/*',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/route/assign',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/route/create',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/route/index',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/route/refresh',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/route/remove',2,NULL,NULL,NULL,1512924431,1512924431),('/admin/rule/*',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/rule/create',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/rule/delete',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/rule/index',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/rule/update',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/rule/view',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/*',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/activate',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/change-password',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/deactivate',2,NULL,NULL,NULL,1513914178,1513914178),('/admin/user/delete',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/index',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/listunit',2,NULL,NULL,NULL,1537770035,1537770035),('/admin/user/login',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/logout',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/request-password-reset',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/reset-password',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/signup',2,NULL,NULL,NULL,1512924432,1512924432),('/admin/user/update',2,NULL,NULL,NULL,1513914178,1513914178),('/admin/user/view',2,NULL,NULL,NULL,1512924432,1512924432),('/ajax/*',2,NULL,NULL,NULL,1520920929,1520920929),('/ajax/departments',2,NULL,NULL,NULL,1537770035,1537770035),('/ajax/getaccount',2,NULL,NULL,NULL,1520920931,1520920931),('/ajax/lineitembudget',2,NULL,NULL,NULL,1537770036,1537770036),('/ajax/mymethod',2,NULL,NULL,NULL,1537770036,1537770036),('/ajax/purchaseorderandobligation',2,NULL,NULL,NULL,1537770036,1537770036),('/ajax/purchaserequest',2,NULL,NULL,NULL,1537770035,1537770035),('/ajax/quotationbidsandawards',2,NULL,NULL,NULL,1527646464,1527646464),('/ajax/supplierlist',2,NULL,NULL,NULL,1537770036,1537770036),('/api/*',2,NULL,NULL,NULL,1520296331,1520296331),('/api/create',2,NULL,NULL,NULL,1520296331,1520296331),('/api/delete',2,NULL,NULL,NULL,1520296331,1520296331),('/api/index',2,NULL,NULL,NULL,1520296331,1520296331),('/api/options',2,NULL,NULL,NULL,1520296331,1520296331),('/api/update',2,NULL,NULL,NULL,1520296331,1520296331),('/api/view',2,NULL,NULL,NULL,1520296331,1520296331),('/cashiering/*',2,NULL,NULL,NULL,1515379311,1515379311),('/debug/*',2,NULL,NULL,NULL,1512924433,1512924433),('/debug/default/*',2,NULL,NULL,NULL,1512924433,1512924433),('/debug/default/db-explain',2,NULL,NULL,NULL,1512924432,1512924432),('/debug/default/download-mail',2,NULL,NULL,NULL,1512924433,1512924433),('/debug/default/index',2,NULL,NULL,NULL,1512924433,1512924433),('/debug/default/toolbar',2,NULL,NULL,NULL,1512924433,1512924433),('/debug/default/view',2,NULL,NULL,NULL,1512924433,1512924433),('/debug/user/*',2,NULL,NULL,NULL,1512924433,1512924433),('/debug/user/reset-identity',2,NULL,NULL,NULL,1512924433,1512924433),('/debug/user/set-identity',2,NULL,NULL,NULL,1512924433,1512924433),('/gii/*',2,NULL,NULL,NULL,1512924433,1512924433),('/gii/default/*',2,NULL,NULL,NULL,1512924433,1512924433),('/gii/default/action',2,NULL,NULL,NULL,1512924433,1512924433),('/gii/default/diff',2,NULL,NULL,NULL,1512924433,1512924433),('/gii/default/index',2,NULL,NULL,NULL,1512924433,1512924433),('/gii/default/preview',2,NULL,NULL,NULL,1512924433,1512924433),('/gii/default/view',2,NULL,NULL,NULL,1512924433,1512924433),('/gridview/*',2,NULL,NULL,NULL,1516673162,1516673162),('/gridview/export/*',2,NULL,NULL,NULL,1516673161,1516673161),('/gridview/export/download',2,NULL,NULL,NULL,1516673160,1516673160),('/imagemanager/*',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/default/*',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/default/index',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/manager/*',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/manager/crop',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/manager/delete',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/manager/get-original-image',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/manager/index',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/manager/upload',2,NULL,NULL,NULL,1516673162,1516673162),('/imagemanager/manager/view',2,NULL,NULL,NULL,1516673162,1516673162),('/inventory/*',2,NULL,NULL,NULL,1515133710,1515133710),('/inventory/categorytype/*',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/categorytype/create',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/categorytype/delete',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/categorytype/index',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/categorytype/update',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/categorytype/view',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/default/*',2,NULL,NULL,NULL,1516673162,1516673162),('/inventory/default/index',2,NULL,NULL,NULL,1516673162,1516673162),('/inventory/products/*',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/products/add-inventory-entries',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/products/add-inventory-withdrawaldetails',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/products/create',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/products/delete',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/products/index',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/products/pdf',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/products/update',2,NULL,NULL,NULL,1517209185,1517209185),('/inventory/products/view',2,NULL,NULL,NULL,1517209185,1517209185),('/lab/*',2,NULL,NULL,NULL,1514814971,1514814971),('/lab/default/*',2,NULL,NULL,NULL,1516673162,1516673162),('/lab/default/index',2,NULL,NULL,NULL,1516673162,1516673162),('/maintenance/*',2,NULL,NULL,NULL,1514539173,1514539173),('/maintenance/index',2,NULL,NULL,NULL,1514539139,1514539139),('/message/*',2,NULL,NULL,NULL,1515721342,1515721342),('/message/message/*',2,NULL,NULL,NULL,1515721342,1515721342),('/message/message/check-for-new-messages',2,NULL,NULL,NULL,1515721341,1515721341),('/message/message/compose',2,NULL,NULL,NULL,1515721342,1515721342),('/message/message/delete',2,NULL,NULL,NULL,1515721342,1515721342),('/message/message/ignorelist',2,NULL,NULL,NULL,1515721341,1515721341),('/message/message/inbox',2,NULL,NULL,NULL,1515721341,1515721341),('/message/message/mark-all-as-read',2,NULL,NULL,NULL,1515721342,1515721342),('/message/message/sent',2,NULL,NULL,NULL,1515721341,1515721341),('/message/message/view',2,NULL,NULL,NULL,1515721342,1515721342),('/paai/registration',2,NULL,NULL,NULL,1536829778,1536829778),('/paai/registration/*',2,NULL,NULL,NULL,1536829843,1536829843),('/package/*',2,NULL,NULL,NULL,1514431824,1514431824),('/package/createmodule',2,NULL,NULL,NULL,1515390508,1515390508),('/package/export',2,NULL,NULL,NULL,1515390508,1515390508),('/package/extract',2,NULL,NULL,NULL,1515054294,1515054294),('/package/getcss',2,NULL,NULL,NULL,1515721342,1515721342),('/package/index',2,NULL,NULL,NULL,1514431824,1514431824),('/package/manager',2,NULL,NULL,NULL,1515721342,1515721342),('/package/removemodule',2,NULL,NULL,NULL,1515390508,1515390508),('/package/update',2,NULL,NULL,NULL,1515721342,1515721342),('/package/upload',2,NULL,NULL,NULL,1515390507,1515390507),('/package/view',2,NULL,NULL,NULL,1515721342,1515721342),('/package/writeini',2,NULL,NULL,NULL,1515054294,1515054294),('/procurement/*',2,NULL,NULL,NULL,1519976243,1519976243),('/procurement/bids/*',2,NULL,NULL,NULL,1527646454,1527646454),('/procurement/bids/checkbidstatus',2,NULL,NULL,NULL,1537770032,1537770032),('/procurement/bids/checkselected',2,NULL,NULL,NULL,1527646464,1527646464),('/procurement/bids/checksupplier',2,NULL,NULL,NULL,1527646464,1527646464),('/procurement/bids/createpo',2,NULL,NULL,NULL,1527646464,1527646464),('/procurement/bids/createpurchase',2,NULL,NULL,NULL,1537770032,1537770032),('/procurement/bids/editPrice',2,NULL,NULL,NULL,1527646464,1527646464),('/procurement/bids/editRemarks',2,NULL,NULL,NULL,1537770032,1537770032),('/procurement/bids/index',2,NULL,NULL,NULL,1527646464,1527646464),('/procurement/bids/mtest',2,NULL,NULL,NULL,1527646464,1527646464),('/procurement/bids/regeneratesupplier',2,NULL,NULL,NULL,1537770032,1537770032),('/procurement/bids/report',2,NULL,NULL,NULL,1527646464,1527646464),('/procurement/bids/reportabstract',2,NULL,NULL,NULL,1537770032,1537770032),('/procurement/bids/view',2,NULL,NULL,NULL,1527646464,1527646464),('/procurement/default/*',2,NULL,NULL,NULL,1520296331,1520296331),('/procurement/default/index',2,NULL,NULL,NULL,1520296331,1520296331),('/procurement/department/*',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/department/create',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/department/delete',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/department/index',2,NULL,NULL,NULL,1537770032,1537770032),('/procurement/department/update',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/department/view',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/disbursement/*',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/disbursement/index',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/division/*',2,NULL,NULL,NULL,1520296331,1520296331),('/procurement/division/create',2,NULL,NULL,NULL,1520296331,1520296331),('/procurement/division/delete',2,NULL,NULL,NULL,1520296331,1520296331),('/procurement/division/index',2,NULL,NULL,NULL,1520296331,1520296331),('/procurement/division/update',2,NULL,NULL,NULL,1520296331,1520296331),('/procurement/division/view',2,NULL,NULL,NULL,1520296331,1520296331),('/procurement/employee/*',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/employee/create',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/employee/delete',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/employee/index',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/employee/update',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/employee/view',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/*',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/addexpenditure',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/addobjectdetails',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/create',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/delete',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/editLibObject',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/index',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/update',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/updateobjects',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/line-item-budget/view',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/lineitembudget/*',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/addexpenditure',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/addobjectdetails',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/create',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/delete',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/editamount',2,NULL,NULL,NULL,1548299590,1548299590),('/procurement/lineitembudget/editLibObject',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/editLibObjects',2,NULL,NULL,NULL,1548299593,1548299593),('/procurement/lineitembudget/index',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/update',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/updateobjects',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudget/view',2,NULL,NULL,NULL,1528941182,1528941182),('/procurement/lineitembudgetobjectdetails/*',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/lineitembudgetobjectdetails/create',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/lineitembudgetobjectdetails/delete',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/lineitembudgetobjectdetails/index',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/lineitembudgetobjectdetails/listobjectdetails',2,NULL,NULL,NULL,1548992199,1548992199),('/procurement/lineitembudgetobjectdetails/update',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/lineitembudgetobjectdetails/view',2,NULL,NULL,NULL,1537770033,1537770033),('/procurement/obligationrequest/*',2,NULL,NULL,NULL,1555394867,1555394867),('/procurement/obligationrequest/create',2,NULL,NULL,NULL,0,0),('/procurement/obligationrequest/index',2,NULL,NULL,NULL,1537770036,1537770036),('/procurement/ppmp/*',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/ppmp/create',2,NULL,NULL,NULL,1528941743,1528941743),('/procurement/ppmp/delete',2,NULL,NULL,NULL,1528941743,1528941743),('/procurement/ppmp/index',2,NULL,NULL,NULL,1528941743,1528941743),('/procurement/ppmp/update',2,NULL,NULL,NULL,1528941743,1528941743),('/procurement/ppmp/view',2,NULL,NULL,NULL,1528941743,1528941743),('/procurement/project-request/*',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project-request/create',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project-request/delete',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project-request/index',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project-request/update',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project-request/view',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project/*',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project/create',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project/delete',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project/index',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project/update',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/project/view',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaseorder/*',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaseorder/index',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaseorder/purchase-order',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaseorder/view',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaserequest/*',2,NULL,NULL,NULL,1520904403,1520904403),('/procurement/purchaserequest/create',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaserequest/delete',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaserequest/index',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaserequest/reportpr',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaserequest/testajax',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/purchaserequest/update',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaserequest/view',2,NULL,NULL,NULL,1537770034,1537770034),('/procurement/purchaserequestdetails/*',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/purchaserequestdetails/create',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/purchaserequestdetails/delete',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/purchaserequestdetails/index',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/purchaserequestdetails/update',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/purchaserequestdetails/view',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/registration/*',2,NULL,NULL,NULL,1536717529,1536717529),('/procurement/registration/checkin',2,NULL,NULL,NULL,1536723061,1536723061),('/procurement/registration/clearnames',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/registration/create',2,NULL,NULL,NULL,1536717529,1536717529),('/procurement/registration/delete',2,NULL,NULL,NULL,1536717529,1536717529),('/procurement/registration/drawnames',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/registration/gender',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/registration/index',2,NULL,NULL,NULL,1536717529,1536717529),('/procurement/registration/raffle',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/registration/replacename',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/registration/summary',2,NULL,NULL,NULL,1537770035,1537770035),('/procurement/registration/update',2,NULL,NULL,NULL,1536717529,1536717529),('/procurement/registration/view',2,NULL,NULL,NULL,1536717529,1536717529),('/procurement/registration/votes',2,NULL,NULL,NULL,1537770035,1537770035),('/procurementplan/ppmp/*',2,NULL,NULL,NULL,1558420374,1558420374),('/procurementplan/ppmp/create',2,NULL,NULL,NULL,1558420387,1558420387),('/procurementplan/ppmp/delete',2,NULL,NULL,NULL,1558420392,1558420392),('/procurementplan/ppmp/index',2,NULL,NULL,NULL,1558420397,1558420397),('/procurementplan/ppmp/update',2,NULL,NULL,NULL,1558420403,1558420403),('/procurementplan/ppmp/view',2,NULL,NULL,NULL,1558420412,1558420412),('/profile/*',2,NULL,NULL,NULL,1513914178,1513914178),('/profile/create',2,NULL,NULL,NULL,1513914178,1513914178),('/profile/delete',2,NULL,NULL,NULL,1513914178,1513914178),('/profile/deleteimage',2,NULL,NULL,NULL,1514536468,1514536468),('/profile/index',2,NULL,NULL,NULL,1513914178,1513914178),('/profile/update',2,NULL,NULL,NULL,1513914178,1513914178),('/profile/uploadPhoto',2,NULL,NULL,NULL,1513930949,1513930949),('/profile/view',2,NULL,NULL,NULL,1513914178,1513914178),('/sample/*',2,NULL,NULL,NULL,1515141962,1515141962),('/settings/*',2,NULL,NULL,NULL,1514536468,1514536468),('/settings/disable',2,NULL,NULL,NULL,1514536468,1514536468),('/settings/enable',2,NULL,NULL,NULL,1514536468,1514536468),('/settings/index',2,NULL,NULL,NULL,1514536468,1514536468),('/site/*',2,NULL,NULL,NULL,1512923763,1512923763),('/site/about',2,NULL,NULL,NULL,1513840641,1513840641),('/site/captcha',2,NULL,NULL,NULL,1513840641,1513840641),('/site/contact',2,NULL,NULL,NULL,1513840641,1513840641),('/site/error',2,NULL,NULL,NULL,1512924433,1512924433),('/site/index',2,NULL,NULL,NULL,1512924433,1512924433),('/site/login',2,NULL,NULL,NULL,1512924433,1512924433),('/site/logout',2,NULL,NULL,NULL,1512924433,1512924433),('/site/query',2,NULL,NULL,NULL,1520296331,1520296331),('/site/request-password-reset',2,NULL,NULL,NULL,1513840641,1513840641),('/site/requestpasswordreset',2,NULL,NULL,NULL,1516091491,1516091491),('/site/reset-password',2,NULL,NULL,NULL,1514249865,1514249865),('/site/sendmail',2,NULL,NULL,NULL,1516091490,1516091490),('/site/signup',2,NULL,NULL,NULL,1513840641,1513840641),('/site/success',2,NULL,NULL,NULL,1516091491,1516091491),('/site/upload',2,NULL,NULL,NULL,1513930949,1513930949),('/site/verify',2,NULL,NULL,NULL,1516091491,1516091491),('/tagging/*',2,NULL,NULL,NULL,1515130615,1515130615),('/tagging/default/*',2,NULL,NULL,NULL,1516673162,1516673162),('/tagging/default/index',2,NULL,NULL,NULL,1516673162,1516673162),('/test/*',2,NULL,NULL,NULL,1516084595,1516084595),('/test2/*',2,NULL,NULL,NULL,1516085459,1516085459),('/test3/*',2,NULL,NULL,NULL,1516085788,1516085788),('/tt/*',2,NULL,NULL,NULL,1516086131,1516086131),('/uploads/*',2,NULL,NULL,NULL,1514350073,1514350073),('/user/*',2,NULL,NULL,NULL,1513843345,1513843345),('/user/create',2,NULL,NULL,NULL,1513843345,1513843345),('/user/delete',2,NULL,NULL,NULL,1513843345,1513843345),('/user/index',2,NULL,NULL,NULL,1513843344,1513843344),('/user/update',2,NULL,NULL,NULL,1513843345,1513843345),('/user/view',2,NULL,NULL,NULL,1513843344,1513843344),('access-accounting',2,'This permission allow user to access accounting module',NULL,NULL,1515371555,1515371555),('access-ajax',2,'Access Ajax',NULL,NULL,1520920954,1520920954),('access-assignment',2,'Permission will allow user to access assignment',NULL,NULL,1514425828,1514425828),('access-bidsquotation',2,NULL,NULL,NULL,1537774882,1537774882),('access-book',2,NULL,NULL,NULL,1567387626,1567387626),('access-cashiering',2,'This permission allow user to access cashiering module',NULL,NULL,1515379311,1515379311),('access-debug',2,'This Permission allow user to access debug module',NULL,NULL,1513840103,1513840103),('access-disbursement',2,NULL,NULL,NULL,1552215599,1552215599),('access-division',2,'Permission that will access Division Page.',NULL,NULL,1520296458,1520296458),('access-gii',2,'This permission allow user to access GII Tool',NULL,NULL,1513839929,1513839929),('access-his-profile',2,'This permission will only allow user access on his own profile',NULL,NULL,1513925187,1513925187),('access-inspection',2,NULL,NULL,NULL,1552031646,1552031646),('access-inventory',2,'This permission allow user to access inventory module',NULL,NULL,1515133710,1515133710),('access-lab',2,'This permission allow user to access Laboratory module',NULL,NULL,1514815010,1514815010),('access-lineitembudget',2,'access-lineitembudget',NULL,NULL,1528941680,1528941680),('access-lineitembudgetobjectdetails',2,NULL,NULL,NULL,1548307347,1548307347),('access-menu',2,'Permission to allow access menu ',NULL,NULL,1514426762,1514426762),('access-message',2,'This permssion allow user to access message module',NULL,NULL,1515721386,1515721386),('access-obligation',2,NULL,NULL,NULL,1552212257,1552212257),('access-paai',2,'access-paai',NULL,NULL,1536829719,1536829719),('access-package',2,'This permission allow user to access package manager',NULL,NULL,1514431815,1514431815),('access-package-list',2,'Allow Users to access package list',NULL,NULL,1515486771,1515486771),('access-permission',2,'Permission to access permission',NULL,NULL,1514426671,1514426671),('access-ppmp',2,'access-ppmp',NULL,NULL,1528941719,1528941719),('access-pre-procurement',2,'access-pre-procurement',NULL,NULL,1548140036,1548140036),('access-procurement',2,'This permission allow user to access procurement module',NULL,NULL,1519976243,1519976243),('access-procurementplan',2,NULL,NULL,NULL,1558420599,1558420599),('access-profile',2,'This permission allow users access on Profile',NULL,NULL,1513924948,1513924948),('access-purchaseorder',2,NULL,NULL,NULL,1537774912,1537774958),('access-purchaserequest',2,'Access Purchase Request',NULL,NULL,1520904551,1520904551),('access-rbac',2,'This permission allow users to access RBAC but depends on other permissions to access other features of RBAC.',NULL,NULL,1514364821,1514364821),('access-registration',2,'access-registration',NULL,NULL,1536717562,1536717562),('access-role',2,'Permission to allow access role',NULL,NULL,1514426382,1514426382),('access-route',2,'Permission to allow access route',NULL,NULL,1514425999,1514425999),('access-rule',2,'Permission to access Rule',NULL,NULL,1514426816,1514426896),('access-sample',2,'This permission allow user to access sample module',NULL,NULL,1515141962,1515141962),('access-settings',2,'This permission allows user to access settings',NULL,NULL,1514536456,1514536456),('access-signup',2,'This permission allow user to signup',NULL,NULL,1513840579,1513840579),('access-system-tools',2,'Access System Tools for Admin',NULL,NULL,1529301931,1529301931),('access-tagging',2,'This permission allow user to access tagging module',NULL,NULL,1515130615,1515130615),('access-test',2,'This permission allow user to access test module',NULL,NULL,1516084596,1516084596),('access-test2',2,'This permission allow user to access test2 module',NULL,NULL,1516085459,1516085459),('access-test3',2,'This permission allow user to access test3 module',NULL,NULL,1516085788,1516085788),('access-tt',2,'This permission allow user to access tt module',NULL,NULL,1516086131,1516086131),('access-user',2,'This permission allow user to access User Account',NULL,NULL,1514425679,1514425679),('allow-access-backend',2,'This Permission allow users to access backend',NULL,NULL,1513908976,1513908976),('allow-gridview-export',2,'this permissions will allow access export/download',NULL,NULL,1517209167,1517209167),('bac-member',1,'bac-member',NULL,NULL,1528940411,1528940411),('bac-secretary',1,'bac-secretary',NULL,NULL,1528940380,1528940380),('basic-role',1,'Basic role for newly created user',NULL,NULL,1517967802,1517967802),('can-delete-profile',2,'This permission allow user to delete profile',NULL,NULL,1514428789,1514428789),('Guest',1,'This the default Role',NULL,NULL,1517381088,1517381088),('profile-full-access',2,'This permission allow users to access profile with full access',NULL,NULL,1513914161,1513914161),('rbac-assign-permission',2,'This permission allows user to assign roles',NULL,NULL,1512924223,1513840446),('rbac-full-access',2,'This permission has all the rights to access rbac',NULL,NULL,1513840364,1513840364),('super-administrator',1,'This role reserve all the rights and permissions',NULL,NULL,1513838897,1513840008),('Unit Head',1,'Head of a Unit',NULL,NULL,1519955844,1519955844),('User',1,'User',NULL,NULL,1519955864,1519955864),('user-full-access',2,'This Permission allows user to access User module',NULL,NULL,1513843398,1513843398);

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

insert  into `tbl_auth_item_child`(`parent`,`child`) values ('super-administrator','/*'),('access-accounting','/accounting/*'),('super-administrator','/accounting/*'),('rbac-full-access','/admin/*'),('super-administrator','/admin/*'),('rbac-assign-permission','/admin/assignment/*'),('super-administrator','/admin/assignment/*'),('super-administrator','/admin/assignment/assign'),('access-assignment','/admin/assignment/index'),('super-administrator','/admin/assignment/index'),('super-administrator','/admin/assignment/revoke'),('access-assignment','/admin/assignment/view'),('access-rbac','/admin/assignment/view'),('super-administrator','/admin/assignment/view'),('super-administrator','/admin/default/*'),('super-administrator','/admin/default/index'),('super-administrator','/admin/menu/*'),('super-administrator','/admin/menu/create'),('super-administrator','/admin/menu/delete'),('access-menu','/admin/menu/index'),('super-administrator','/admin/menu/index'),('super-administrator','/admin/menu/update'),('access-menu','/admin/menu/view'),('super-administrator','/admin/menu/view'),('super-administrator','/admin/permission/*'),('super-administrator','/admin/permission/assign'),('super-administrator','/admin/permission/create'),('super-administrator','/admin/permission/delete'),('access-permission','/admin/permission/index'),('super-administrator','/admin/permission/index'),('super-administrator','/admin/permission/remove'),('super-administrator','/admin/permission/update'),('access-permission','/admin/permission/view'),('super-administrator','/admin/permission/view'),('super-administrator','/admin/role/*'),('super-administrator','/admin/role/assign'),('super-administrator','/admin/role/create'),('super-administrator','/admin/role/delete'),('access-role','/admin/role/index'),('super-administrator','/admin/role/index'),('super-administrator','/admin/role/remove'),('super-administrator','/admin/role/update'),('access-role','/admin/role/view'),('super-administrator','/admin/role/view'),('super-administrator','/admin/route/*'),('access-route','/admin/route/assign'),('super-administrator','/admin/route/assign'),('super-administrator','/admin/route/create'),('access-route','/admin/route/index'),('super-administrator','/admin/route/index'),('super-administrator','/admin/route/refresh'),('super-administrator','/admin/route/remove'),('super-administrator','/admin/rule/*'),('super-administrator','/admin/rule/create'),('super-administrator','/admin/rule/delete'),('access-rule','/admin/rule/index'),('super-administrator','/admin/rule/index'),('super-administrator','/admin/rule/update'),('access-rule','/admin/rule/view'),('super-administrator','/admin/rule/view'),('access-user','/admin/user/*'),('super-administrator','/admin/user/*'),('super-administrator','/admin/user/activate'),('super-administrator','/admin/user/change-password'),('super-administrator','/admin/user/deactivate'),('super-administrator','/admin/user/delete'),('super-administrator','/admin/user/index'),('super-administrator','/admin/user/listunit'),('super-administrator','/admin/user/login'),('super-administrator','/admin/user/logout'),('super-administrator','/admin/user/request-password-reset'),('super-administrator','/admin/user/reset-password'),('super-administrator','/admin/user/signup'),('super-administrator','/admin/user/update'),('super-administrator','/admin/user/view'),('access-ajax','/ajax/*'),('super-administrator','/ajax/*'),('super-administrator','/ajax/departments'),('super-administrator','/ajax/getaccount'),('super-administrator','/ajax/lineitembudget'),('super-administrator','/ajax/mymethod'),('access-obligation','/ajax/purchaseorderandobligation'),('access-purchaseorder','/ajax/purchaseorderandobligation'),('access-purchaserequest','/ajax/purchaseorderandobligation'),('super-administrator','/ajax/purchaseorderandobligation'),('access-purchaserequest','/ajax/purchaserequest'),('super-administrator','/ajax/purchaserequest'),('access-bidsquotation','/ajax/quotationbidsandawards'),('access-purchaserequest','/ajax/quotationbidsandawards'),('super-administrator','/ajax/quotationbidsandawards'),('super-administrator','/ajax/supplierlist'),('super-administrator','/api/*'),('super-administrator','/api/create'),('super-administrator','/api/delete'),('super-administrator','/api/index'),('super-administrator','/api/options'),('super-administrator','/api/update'),('super-administrator','/api/view'),('access-cashiering','/cashiering/*'),('super-administrator','/cashiering/*'),('access-debug','/debug/*'),('super-administrator','/debug/*'),('super-administrator','/debug/default/*'),('super-administrator','/debug/default/db-explain'),('super-administrator','/debug/default/download-mail'),('super-administrator','/debug/default/index'),('super-administrator','/debug/default/toolbar'),('super-administrator','/debug/default/view'),('super-administrator','/debug/user/*'),('super-administrator','/debug/user/reset-identity'),('super-administrator','/debug/user/set-identity'),('access-gii','/gii/*'),('super-administrator','/gii/*'),('super-administrator','/gii/default/*'),('super-administrator','/gii/default/action'),('super-administrator','/gii/default/diff'),('super-administrator','/gii/default/index'),('super-administrator','/gii/default/preview'),('super-administrator','/gii/default/view'),('allow-gridview-export','/gridview/*'),('super-administrator','/gridview/*'),('super-administrator','/gridview/export/*'),('super-administrator','/gridview/export/download'),('super-administrator','/imagemanager/*'),('super-administrator','/imagemanager/default/*'),('super-administrator','/imagemanager/default/index'),('super-administrator','/imagemanager/manager/*'),('super-administrator','/imagemanager/manager/crop'),('super-administrator','/imagemanager/manager/delete'),('super-administrator','/imagemanager/manager/get-original-image'),('super-administrator','/imagemanager/manager/index'),('super-administrator','/imagemanager/manager/upload'),('super-administrator','/imagemanager/manager/view'),('access-inventory','/inventory/*'),('super-administrator','/inventory/*'),('super-administrator','/inventory/categorytype/*'),('super-administrator','/inventory/categorytype/create'),('super-administrator','/inventory/categorytype/delete'),('super-administrator','/inventory/categorytype/index'),('super-administrator','/inventory/categorytype/update'),('super-administrator','/inventory/categorytype/view'),('super-administrator','/inventory/default/*'),('super-administrator','/inventory/default/index'),('super-administrator','/inventory/products/*'),('super-administrator','/inventory/products/add-inventory-entries'),('super-administrator','/inventory/products/add-inventory-withdrawaldetails'),('super-administrator','/inventory/products/create'),('super-administrator','/inventory/products/delete'),('super-administrator','/inventory/products/index'),('super-administrator','/inventory/products/pdf'),('super-administrator','/inventory/products/update'),('super-administrator','/inventory/products/view'),('access-lab','/lab/*'),('super-administrator','/lab/*'),('super-administrator','/lab/default/*'),('super-administrator','/lab/default/index'),('Guest','/maintenance/*'),('super-administrator','/maintenance/*'),('super-administrator','/maintenance/index'),('access-message','/message/*'),('super-administrator','/message/*'),('super-administrator','/message/message/*'),('super-administrator','/message/message/check-for-new-messages'),('super-administrator','/message/message/compose'),('super-administrator','/message/message/delete'),('super-administrator','/message/message/ignorelist'),('super-administrator','/message/message/inbox'),('super-administrator','/message/message/mark-all-as-read'),('super-administrator','/message/message/sent'),('super-administrator','/message/message/view'),('super-administrator','/paai/registration'),('super-administrator','/paai/registration/*'),('access-package','/package/*'),('super-administrator','/package/*'),('access-package','/package/createmodule'),('super-administrator','/package/createmodule'),('access-package','/package/export'),('super-administrator','/package/export'),('access-package','/package/extract'),('super-administrator','/package/extract'),('super-administrator','/package/getcss'),('access-package','/package/index'),('super-administrator','/package/index'),('super-administrator','/package/manager'),('access-package','/package/removemodule'),('super-administrator','/package/removemodule'),('super-administrator','/package/update'),('access-package','/package/upload'),('super-administrator','/package/upload'),('super-administrator','/package/view'),('access-package','/package/writeini'),('super-administrator','/package/writeini'),('bac-secretary','/procurement/*'),('super-administrator','/procurement/*'),('access-bidsquotation','/procurement/bids/*'),('super-administrator','/procurement/bids/*'),('access-bidsquotation','/procurement/bids/checkbidstatus'),('super-administrator','/procurement/bids/checkbidstatus'),('access-bidsquotation','/procurement/bids/checkselected'),('super-administrator','/procurement/bids/checkselected'),('access-bidsquotation','/procurement/bids/checksupplier'),('super-administrator','/procurement/bids/checksupplier'),('access-bidsquotation','/procurement/bids/createpo'),('super-administrator','/procurement/bids/createpo'),('access-bidsquotation','/procurement/bids/createpurchase'),('super-administrator','/procurement/bids/createpurchase'),('access-bidsquotation','/procurement/bids/editPrice'),('super-administrator','/procurement/bids/editPrice'),('access-bidsquotation','/procurement/bids/editRemarks'),('super-administrator','/procurement/bids/editRemarks'),('access-bidsquotation','/procurement/bids/index'),('super-administrator','/procurement/bids/index'),('access-bidsquotation','/procurement/bids/mtest'),('super-administrator','/procurement/bids/mtest'),('access-bidsquotation','/procurement/bids/regeneratesupplier'),('super-administrator','/procurement/bids/regeneratesupplier'),('access-bidsquotation','/procurement/bids/report'),('super-administrator','/procurement/bids/report'),('access-bidsquotation','/procurement/bids/reportabstract'),('super-administrator','/procurement/bids/reportabstract'),('access-bidsquotation','/procurement/bids/view'),('super-administrator','/procurement/bids/view'),('super-administrator','/procurement/default/*'),('super-administrator','/procurement/default/index'),('super-administrator','/procurement/department/*'),('super-administrator','/procurement/department/create'),('super-administrator','/procurement/department/delete'),('super-administrator','/procurement/department/index'),('super-administrator','/procurement/department/update'),('super-administrator','/procurement/department/view'),('access-disbursement','/procurement/disbursement/*'),('super-administrator','/procurement/disbursement/*'),('access-disbursement','/procurement/disbursement/index'),('super-administrator','/procurement/disbursement/index'),('access-division','/procurement/division/*'),('super-administrator','/procurement/division/*'),('super-administrator','/procurement/division/create'),('super-administrator','/procurement/division/delete'),('super-administrator','/procurement/division/index'),('super-administrator','/procurement/division/update'),('super-administrator','/procurement/division/view'),('super-administrator','/procurement/employee/*'),('super-administrator','/procurement/employee/create'),('super-administrator','/procurement/employee/delete'),('super-administrator','/procurement/employee/index'),('super-administrator','/procurement/employee/update'),('super-administrator','/procurement/employee/view'),('super-administrator','/procurement/line-item-budget/*'),('super-administrator','/procurement/line-item-budget/addexpenditure'),('super-administrator','/procurement/line-item-budget/addobjectdetails'),('super-administrator','/procurement/line-item-budget/create'),('super-administrator','/procurement/line-item-budget/delete'),('super-administrator','/procurement/line-item-budget/editLibObject'),('super-administrator','/procurement/line-item-budget/index'),('super-administrator','/procurement/line-item-budget/update'),('super-administrator','/procurement/line-item-budget/updateobjects'),('super-administrator','/procurement/line-item-budget/view'),('super-administrator','/procurement/lineitembudget/*'),('access-lineitembudget','/procurement/lineitembudget/addexpenditure'),('super-administrator','/procurement/lineitembudget/addexpenditure'),('access-lineitembudget','/procurement/lineitembudget/addobjectdetails'),('super-administrator','/procurement/lineitembudget/addobjectdetails'),('access-lineitembudget','/procurement/lineitembudget/create'),('super-administrator','/procurement/lineitembudget/create'),('super-administrator','/procurement/lineitembudget/delete'),('access-lineitembudget','/procurement/lineitembudget/editamount'),('super-administrator','/procurement/lineitembudget/editLibObject'),('access-lineitembudget','/procurement/lineitembudget/editLibObjects'),('access-lineitembudget','/procurement/lineitembudget/index'),('super-administrator','/procurement/lineitembudget/index'),('access-lineitembudget','/procurement/lineitembudget/update'),('super-administrator','/procurement/lineitembudget/update'),('access-lineitembudget','/procurement/lineitembudget/updateobjects'),('super-administrator','/procurement/lineitembudget/updateobjects'),('access-lineitembudget','/procurement/lineitembudget/view'),('super-administrator','/procurement/lineitembudget/view'),('super-administrator','/procurement/lineitembudgetobjectdetails/*'),('access-lineitembudgetobjectdetails','/procurement/lineitembudgetobjectdetails/create'),('super-administrator','/procurement/lineitembudgetobjectdetails/create'),('access-lineitembudgetobjectdetails','/procurement/lineitembudgetobjectdetails/delete'),('super-administrator','/procurement/lineitembudgetobjectdetails/delete'),('access-lineitembudgetobjectdetails','/procurement/lineitembudgetobjectdetails/index'),('super-administrator','/procurement/lineitembudgetobjectdetails/index'),('access-lineitembudgetobjectdetails','/procurement/lineitembudgetobjectdetails/listobjectdetails'),('access-lineitembudgetobjectdetails','/procurement/lineitembudgetobjectdetails/update'),('super-administrator','/procurement/lineitembudgetobjectdetails/update'),('access-lineitembudgetobjectdetails','/procurement/lineitembudgetobjectdetails/view'),('super-administrator','/procurement/lineitembudgetobjectdetails/view'),('basic-role','/procurement/obligationrequest/*'),('access-obligation','/procurement/obligationrequest/create'),('access-obligation','/procurement/obligationrequest/index'),('super-administrator','/procurement/ppmp/*'),('access-ppmp','/procurement/ppmp/create'),('super-administrator','/procurement/ppmp/create'),('access-ppmp','/procurement/ppmp/delete'),('super-administrator','/procurement/ppmp/delete'),('access-ppmp','/procurement/ppmp/index'),('super-administrator','/procurement/ppmp/index'),('access-ppmp','/procurement/ppmp/update'),('super-administrator','/procurement/ppmp/update'),('access-ppmp','/procurement/ppmp/view'),('super-administrator','/procurement/ppmp/view'),('super-administrator','/procurement/project-request/*'),('super-administrator','/procurement/project-request/create'),('super-administrator','/procurement/project-request/delete'),('super-administrator','/procurement/project-request/index'),('super-administrator','/procurement/project-request/update'),('super-administrator','/procurement/project-request/view'),('super-administrator','/procurement/project/*'),('super-administrator','/procurement/project/create'),('super-administrator','/procurement/project/delete'),('super-administrator','/procurement/project/index'),('super-administrator','/procurement/project/update'),('super-administrator','/procurement/project/view'),('access-purchaseorder','/procurement/purchaseorder/*'),('super-administrator','/procurement/purchaseorder/*'),('access-purchaseorder','/procurement/purchaseorder/index'),('super-administrator','/procurement/purchaseorder/index'),('access-purchaseorder','/procurement/purchaseorder/purchase-order'),('super-administrator','/procurement/purchaseorder/purchase-order'),('access-purchaseorder','/procurement/purchaseorder/view'),('super-administrator','/procurement/purchaseorder/view'),('access-purchaserequest','/procurement/purchaserequest/*'),('super-administrator','/procurement/purchaserequest/*'),('super-administrator','/procurement/purchaserequest/create'),('super-administrator','/procurement/purchaserequest/delete'),('super-administrator','/procurement/purchaserequest/index'),('super-administrator','/procurement/purchaserequest/reportpr'),('super-administrator','/procurement/purchaserequest/testajax'),('super-administrator','/procurement/purchaserequest/update'),('super-administrator','/procurement/purchaserequest/view'),('super-administrator','/procurement/purchaserequestdetails/*'),('super-administrator','/procurement/purchaserequestdetails/create'),('super-administrator','/procurement/purchaserequestdetails/delete'),('super-administrator','/procurement/purchaserequestdetails/index'),('super-administrator','/procurement/purchaserequestdetails/update'),('super-administrator','/procurement/purchaserequestdetails/view'),('access-registration','/procurement/registration/*'),('super-administrator','/procurement/registration/*'),('access-registration','/procurement/registration/checkin'),('super-administrator','/procurement/registration/checkin'),('super-administrator','/procurement/registration/clearnames'),('access-registration','/procurement/registration/create'),('super-administrator','/procurement/registration/create'),('access-registration','/procurement/registration/delete'),('super-administrator','/procurement/registration/delete'),('super-administrator','/procurement/registration/drawnames'),('super-administrator','/procurement/registration/gender'),('access-registration','/procurement/registration/index'),('super-administrator','/procurement/registration/index'),('super-administrator','/procurement/registration/raffle'),('super-administrator','/procurement/registration/replacename'),('super-administrator','/procurement/registration/summary'),('access-registration','/procurement/registration/update'),('super-administrator','/procurement/registration/update'),('access-registration','/procurement/registration/view'),('super-administrator','/procurement/registration/view'),('super-administrator','/procurement/registration/votes'),('access-procurementplan','/procurementplan/ppmp/*'),('access-procurementplan','/procurementplan/ppmp/create'),('access-procurementplan','/procurementplan/ppmp/delete'),('access-procurementplan','/procurementplan/ppmp/index'),('access-procurementplan','/procurementplan/ppmp/update'),('access-procurementplan','/procurementplan/ppmp/view'),('profile-full-access','/profile/*'),('super-administrator','/profile/*'),('access-his-profile','/profile/create'),('super-administrator','/profile/create'),('super-administrator','/profile/delete'),('super-administrator','/profile/deleteimage'),('access-his-profile','/profile/index'),('access-profile','/profile/index'),('super-administrator','/profile/index'),('access-his-profile','/profile/update'),('super-administrator','/profile/update'),('access-his-profile','/profile/uploadPhoto'),('profile-full-access','/profile/uploadPhoto'),('super-administrator','/profile/uploadPhoto'),('access-his-profile','/profile/view'),('access-profile','/profile/view'),('super-administrator','/profile/view'),('access-sample','/sample/*'),('super-administrator','/sample/*'),('access-settings','/settings/*'),('super-administrator','/settings/*'),('super-administrator','/settings/disable'),('super-administrator','/settings/enable'),('super-administrator','/settings/index'),('Guest','/site/*'),('super-administrator','/site/*'),('super-administrator','/site/about'),('super-administrator','/site/captcha'),('super-administrator','/site/contact'),('super-administrator','/site/error'),('super-administrator','/site/index'),('super-administrator','/site/login'),('super-administrator','/site/logout'),('super-administrator','/site/query'),('super-administrator','/site/request-password-reset'),('super-administrator','/site/requestpasswordreset'),('super-administrator','/site/reset-password'),('super-administrator','/site/sendmail'),('access-signup','/site/signup'),('super-administrator','/site/signup'),('super-administrator','/site/success'),('profile-full-access','/site/upload'),('super-administrator','/site/upload'),('super-administrator','/site/verify'),('access-tagging','/tagging/*'),('super-administrator','/tagging/*'),('super-administrator','/tagging/default/*'),('super-administrator','/tagging/default/index'),('access-test','/test/*'),('super-administrator','/test/*'),('access-test2','/test2/*'),('super-administrator','/test2/*'),('access-test3','/test3/*'),('super-administrator','/test3/*'),('access-tt','/tt/*'),('super-administrator','/tt/*'),('super-administrator','/uploads/*'),('super-administrator','/user/*'),('user-full-access','/user/*'),('super-administrator','/user/create'),('super-administrator','/user/delete'),('super-administrator','/user/index'),('super-administrator','/user/update'),('super-administrator','/user/view'),('super-administrator','access-accounting'),('bac-secretary','access-ajax'),('basic-role','access-ajax'),('super-administrator','access-ajax'),('super-administrator','access-assignment'),('bac-secretary','access-bidsquotation'),('super-administrator','access-bidsquotation'),('bac-secretary','access-book'),('super-administrator','access-cashiering'),('super-administrator','access-debug'),('basic-role','access-disbursement'),('super-administrator','access-division'),('super-administrator','access-gii'),('basic-role','access-his-profile'),('super-administrator','access-his-profile'),('bac-secretary','access-inspection'),('super-administrator','access-inspection'),('super-administrator','access-inventory'),('super-administrator','access-lab'),('access-pre-procurement','access-lineitembudget'),('bac-member','access-lineitembudget'),('bac-secretary','access-lineitembudget'),('super-administrator','access-lineitembudget'),('User','access-lineitembudget'),('access-pre-procurement','access-lineitembudgetobjectdetails'),('basic-role','access-lineitembudgetobjectdetails'),('super-administrator','access-menu'),('basic-role','access-message'),('super-administrator','access-message'),('basic-role','access-obligation'),('super-administrator','access-paai'),('super-administrator','access-package'),('super-administrator','access-package-list'),('super-administrator','access-permission'),('access-pre-procurement','access-ppmp'),('bac-member','access-ppmp'),('bac-secretary','access-ppmp'),('super-administrator','access-ppmp'),('User','access-ppmp'),('bac-member','access-procurement'),('bac-secretary','access-procurement'),('basic-role','access-procurement'),('super-administrator','access-procurement'),('User','access-procurement'),('bac-secretary','access-procurementplan'),('profile-full-access','access-profile'),('super-administrator','access-profile'),('bac-secretary','access-purchaseorder'),('super-administrator','access-purchaseorder'),('access-procurement','access-purchaserequest'),('bac-member','access-purchaserequest'),('bac-secretary','access-purchaserequest'),('basic-role','access-purchaserequest'),('super-administrator','access-purchaserequest'),('User','access-purchaserequest'),('super-administrator','access-rbac'),('super-administrator','access-registration'),('super-administrator','access-role'),('super-administrator','access-route'),('super-administrator','access-rule'),('super-administrator','access-sample'),('basic-role','access-settings'),('super-administrator','access-settings'),('User','access-settings'),('Guest','access-signup'),('super-administrator','access-signup'),('super-administrator','access-system-tools'),('super-administrator','access-tagging'),('super-administrator','access-test'),('super-administrator','access-test2'),('super-administrator','access-test3'),('super-administrator','access-tt'),('super-administrator','access-user'),('User','access-user'),('super-administrator','allow-access-backend'),('super-administrator','allow-gridview-export'),('super-administrator','can-delete-profile'),('super-administrator','profile-full-access'),('rbac-full-access','rbac-assign-permission'),('super-administrator','rbac-assign-permission'),('super-administrator','rbac-full-access'),('super-administrator','user-full-access');

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

/*Table structure for table `tbl_division` */

DROP TABLE IF EXISTS `tbl_division`;

CREATE TABLE `tbl_division` (
  `division_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_division` */

insert  into `tbl_division`(`division_id`,`code`,`name`) values (1,'ORD','Office of the Regional Director'),(2,'FASS','Finance and Administrative Support Services'),(3,'TS','Technical Services'),(4,'FOS','Field Operations Services');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_imagemanager` */

insert  into `tbl_imagemanager`(`id`,`fileName`,`fileHash`,`created`,`modified`,`createdBy`,`modifiedBy`) values (21,'DOST-XI.jpg','_6l0KmBXSf-N66ifLeIHLsCrv01Jj7jh','2018-01-15 16:41:37','2018-01-15 16:41:37',NULL,NULL),(22,'ab0551ea9fa84e128d4c483a04c86d99479e9408.jpg','fSP0soWS9gn3vcEB987TDc6IHIfClpLl','2018-01-15 16:43:37','2018-01-15 16:43:37',NULL,NULL),(23,'c1f44f4d32ce6b10fcb6ec71f292cfa43323ee6c.jpg','LFfWrKffJEgDqdOpxE0als3_E5_PorzR','2018-01-15 16:44:03','2018-01-15 16:44:03',NULL,NULL),(25,'ab0551ea9fa84e128d4c483a04c86d99479e9408_crop_486x507.jpg','cV16OuH8IjljOXQVx5SHh55zAERPT2nj','2018-01-22 13:30:23','2018-01-22 13:30:23',NULL,NULL),(29,'26971913-1546772542043190-774125253-o.jpg','Jn3RHKW2voCPAI_5HJEeXvBDOdZDI35y','2018-01-22 14:23:02','2018-01-22 14:23:02',NULL,NULL);

/*Table structure for table `tbl_industry` */

DROP TABLE IF EXISTS `tbl_industry`;

CREATE TABLE `tbl_industry` (
  `industry_id` int(11) NOT NULL AUTO_INCREMENT,
  `classification` varchar(250) CHARACTER SET latin1 NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_industry` */

insert  into `tbl_industry`(`industry_id`,`classification`,`active`) values (1,'Agriculture, forestry and fishing',1),(2,'Mining and Quarrying',1),(3,'Manufacturing',1),(4,'Electricity, gas, steam and air-conditioning supply',1),(5,'Water supply, sewerage, waste management and remediation activities',1),(6,'Construction',1),(7,'Wholesale and retail trade; repair of motor vehicles and motorcycles',1),(8,'Transportation and Storage',1),(9,'Accommodation and food service activities',1),(10,'Information and Communication',1),(11,'Financial and insurance activities',1),(12,'Real estate activities',1),(13,'Professional, scientific and technical services',1),(14,'Administrative and support service activities',1),(15,'Public administrative and defense; compulsory social security',1),(16,'Education',1),(17,'Human health and social work activities',1),(18,'Arts, entertainment and recreation',1),(19,'Other service activities',1),(20,'Activities of private households as employers and undifferentiated goods and services and producing activities of households for own use',1),(21,'Activities of extraterritorial organizations and bodies',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (1,'Home',NULL,'/site/index',1,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_message` */

insert  into `tbl_message`(`id`,`hash`,`from`,`to`,`status`,`title`,`message`,`created_at`,`context`) values (1,'413de46eb1c6e970e0018752cc663b91',1,2,1,'Test','Testing emai;l','2018-01-12 11:05:13',''),(2,'c161f92cc41ea66b50f668da2f7cbe19',1,2,1,'Test','fggggfgfgfgf','2018-01-12 11:05:47',''),(3,'1745c19267b5aeddcd062048d7ec4912',2,1,1,'Re: Test','OK admin...thanks','2018-01-12 12:02:31',''),(4,'b1f0d2b59640dbacb0e8b6710a9f2df8',2,1,1,'Re: Test','OK admin...thanks','2018-01-12 12:04:38',''),(5,'f33d46bb69f6104b58d1c926bd017f3a',2,1,1,'Re: Test','OK admin...thanks','2018-01-12 12:05:12',''),(6,'3c086e0f7ebf689f790e84b6031b8ab2',2,1,1,'Re: Test','OK admin...thanks','2018-01-12 12:05:34',''),(7,'68470d890b92b328e34ff6d00186c107',2,1,1,'Re: Test','OK admin...thanks','2018-01-12 12:06:05',''),(8,'76314a7c2850538bc488854861b16493',1,2,1,'Re: Test','','2018-01-12 12:42:32',''),(9,'0d10174be52f4d448873193cde61128e',2,1,-1,'Test Multiple messages','<h1>Testing</h1>\r\nThis is a message...','2018-01-12 14:12:06',''),(10,'6eea46ea65b69bdad5ac83df39b3c7c4',2,1,1,'Test Multiple messages','<h1>Testing</h1>\r\nThis is a message...','2018-01-12 14:13:43',''),(11,'5ab804eca05589b676281bcfb956c640',2,5,0,'Test Multiple messages','<h1>Testing</h1>\r\nThis is a message...','2018-01-12 14:13:49',''),(12,'3be914d9a89936a5e03d37317ba1f68f',1,2,2,'testing email','<p>Hi <strong>Jane,</strong></p>\r\n\r\n<p>please click this link&nbsp;<a href=\"https://web.onelab.ph\">OneLab</a></p>\r\n','2018-01-15 16:57:54',''),(13,'2f13dd38c25ca28b5f588af3fb2610c0',2,1,1,'Re: testing email','<p>OK I will</p>\r\n','2018-01-15 16:59:01','');

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

insert  into `tbl_migration`(`version`,`apply_time`) values ('m000000_000000_base',1515723504),('m161028_084412_init',1515723507),('m161214_134749_create_table_tbl_message_ignorelist',1515723508),('m170116_094811_add_context_field_to_tbl_message_table',1515723510),('m170203_090001_create_table_tbl_message_allowed_contacts',1515723511);

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_package` */

insert  into `tbl_package`(`PackageID`,`PackageName`,`icon`,`created_at`,`updated_at`) values (24,'csf','fa fa-tag',1519976243,1519976243);

/*Table structure for table `tbl_position` */

DROP TABLE IF EXISTS `tbl_position`;

CREATE TABLE `tbl_position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_position` */

insert  into `tbl_position`(`position_id`,`code`,`name`) values (1,'Clerk I','Clerk I'),(2,'Clerk II','Clerk II'),(3,'Clerk III','Clerk III'),(4,'Clerk IV','Clerk IV'),(5,'PA I','Project Assistant I'),(6,'PA II','Project Assistant II'),(7,'PA III','Project Assistant III'),(8,'PDO I','Project Development Officer I'),(9,'PDO II','Project Development Officer II'),(10,'PDO III','Project Development Officer III'),(11,'Lab Aide I','Laboratory Aide I'),(12,'Lab Aide II','Laboratory Aide II'),(13,'SRA','Science Research Analyst'),(14,'SRA','Science Research Assistant'),(15,'SRS I','Science Research Specialist I'),(16,'SRS II','Science Research Specialist II'),(17,'SrSRS','Senior Science Research Specialist'),(18,'SuSRS','Supervising Science Research Specialist'),(19,'AA I','Administrative Assistant I'),(20,'AA II','Administrative Assistant II'),(21,'AA III','Administrative Assistant III'),(22,'AA IV','Administrative Assistant IV'),(23,'AA I','Administrative Aide I'),(24,'AA II','Administrative Aide II'),(25,'AA III','Administrative Aide III'),(26,'AA IV','Administrative Aide IV'),(27,'AO I','Administrative Officer I'),(28,'AO II','Administrative Officer II'),(29,'AO III','Administrative Officer III'),(30,'AO IV','Administrative Officer IV'),(31,'AO V','Administrative Officer V'),(32,'ARD','Assistant Regional Director');

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
  KEY `division_id` (`division_id`) USING BTREE,
  CONSTRAINT `tbl_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_profile_ibfk_2` FOREIGN KEY (`division_id`) REFERENCES `tbl_division` (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_profile` */

insert  into `tbl_profile`(`profile_id`,`user_id`,`lastname`,`firstname`,`designation`,`middleinitial`,`division_id`,`unit_id`,`contact_numbers`,`image_url`,`avatar`) values (1,1,'DOST9','ICT','System Administrator','D',11,0,'+639274790425','adm.jpg','c1f44f4d32ce6b10fcb6ec71f292cfa43323ee6c.jpg'),(2,2,'Wee','Martin','Regional Director','Ausejo',1,1,NULL,NULL,NULL),(3,3,'Kingking','Mahmud','ARD-FOS','Lasola',1,1,NULL,NULL,NULL),(4,4,'Salazar','Rosemarie','ARD-FASTS','Sinsuan',1,1,NULL,NULL,NULL),(5,5,'Damiles','Maria Noemi','','Fernandez',1,1,NULL,NULL,NULL),(6,6,'Angeles','Ghio Edmar','','Rusel',1,1,NULL,NULL,NULL),(7,7,'Quitiol','Jannary','','Ignacio',1,1,NULL,NULL,NULL),(8,8,'Abella','Roberto','Accountant III','Butista',2,2,NULL,NULL,NULL),(9,9,'Badiola','Jali','Administrative Officer V','Jamandre',2,2,NULL,NULL,NULL),(10,10,'Abella-Colcol','Ingrid','Administrative Officer V','Tagaro',2,2,NULL,NULL,NULL),(11,11,'Gundoy','Ronnel','Administrative Officer V','Baluan',2,2,NULL,NULL,NULL),(12,12,'Legaspi','Allan Geion','','Pagayunan',2,2,NULL,NULL,NULL),(13,13,'Bueno','Marilyn Ann','','Caldito',2,2,NULL,NULL,NULL),(14,14,'Catalya','Teffanie Mae','','Madrazo',2,2,NULL,NULL,NULL),(15,15,'Prieto','Cris-Angelo','','Busania',2,2,NULL,NULL,NULL),(16,16,'Villapando','Nerie Jane','','Evidientes',2,2,NULL,NULL,NULL),(17,17,'Alama','Jeanevie','','Labacanacruz',2,2,NULL,NULL,NULL),(18,18,'Antonio','Mary Grace','','Salmorin',2,3,NULL,NULL,NULL),(19,19,'Bernardo','Sheila','','Salenga',2,3,NULL,NULL,NULL),(20,20,'Diego','Thelma','Supervising SRS','Emata',2,4,NULL,NULL,NULL),(21,21,'Sarita','Kristine Mae','','Rodriguez',2,4,NULL,NULL,NULL),(22,22,'Mariano','Enrique','','Magnaye',2,5,NULL,NULL,NULL),(23,23,'Tamano','Halid','','Manansala',2,5,NULL,NULL,NULL),(24,24,'Jumlail','Al-Nassef','','Hassan',2,5,NULL,NULL,NULL),(25,25,'de Leon','Michael Daryll Ericson','','Tallo',2,5,NULL,NULL,NULL),(26,26,'Hipolito','Angeline','','Mariano',2,5,NULL,NULL,NULL),(27,27,'Araneta','Gretchelle ','','Atilano',2,5,NULL,NULL,NULL),(28,28,'Atilano','Marielle','','Ramirez',2,5,NULL,NULL,NULL),(29,29,'Nohay','Josephine','Science Research Analyst','Bejoc',2,6,NULL,NULL,NULL),(30,30,'Antonio','Zoren','','Fabile',2,6,NULL,NULL,NULL),(31,31,'Fajardo','Zeusczar Beaumonde','PA-II','Rodriguez',2,6,NULL,NULL,NULL),(32,32,'Moratalla','Aris','SRS II','Despalo',2,7,NULL,NULL,NULL),(33,33,'Gecosala','Sunny boy','','Tubil',2,7,NULL,NULL,NULL),(34,34,'Cutara','Bergel','','Tachado',2,7,NULL,NULL,NULL),(35,35,'Grapa','Janeedi','','Alfuente',2,7,NULL,NULL,NULL),(36,36,'Galleno','Eden','','Gregorio',2,7,NULL,NULL,NULL),(37,37,'Devesfruto III','Mariano','','De Mesa',2,7,NULL,NULL,NULL),(38,38,'Somocor','Larry Mark','','Barcelona',2,7,NULL,NULL,NULL),(39,39,'Amparo','Jovita','Senior SRS','Apduhan',2,8,NULL,NULL,NULL),(40,40,'Buñag','Sonora','SRS II','Leonora',2,8,NULL,NULL,NULL),(41,41,'Ong','Janice','','Tangcalagan',2,8,NULL,NULL,NULL),(42,42,'Molina','Jose Maria ','SRS II','Mendoza',2,8,NULL,NULL,NULL),(43,43,'Fojas','Julius','SRS II','Taghap',2,8,NULL,NULL,NULL),(44,44,'Arquiza','Noel','','Toh',2,8,NULL,NULL,NULL),(45,45,'Herbieto','Arlene','','Sabalde',2,8,NULL,NULL,NULL),(46,46,'Galabin','Fortunato III','','Landicho',2,8,NULL,NULL,NULL),(47,47,'Belamide','Bernadette','','Bucoy',2,8,NULL,NULL,NULL),(48,48,'Lim','Ruben Jr','','Matchon',2,8,NULL,NULL,NULL),(49,49,'Suganob','Shadam','','Eroy',2,8,NULL,NULL,NULL),(50,50,'Paquit','Juniver','','Javate',2,8,NULL,NULL,NULL),(51,51,'Alvarez','Wilfredo','','P',2,8,NULL,NULL,NULL),(52,52,'Lacastesantos','Catherine','','Adrias',2,8,NULL,NULL,NULL),(53,53,'Castillo','Jeneber','','S',2,8,NULL,NULL,NULL),(54,54,'Pidor','Jennifer ','','Alcazar',3,12,NULL,NULL,NULL),(55,55,'Apolinario','Ricardo III','Science Research Specialist I','Jaldon',3,12,NULL,NULL,NULL),(56,56,'Leona','Loise Ray','','Garces',3,12,NULL,NULL,NULL),(57,57,'Manuel','Eisenhower','','Hairan',3,12,NULL,NULL,NULL),(58,58,'Gurrea','Aileen','','Boriol',3,12,NULL,NULL,NULL),(59,59,'Morales','Sharmaine','','Villagracia',3,12,NULL,NULL,NULL),(60,60,'Alivio','Merly','','Dalinsog',3,12,NULL,NULL,NULL),(61,61,'Tulog','Ebenezer','','Tadlas',3,13,NULL,NULL,NULL),(62,62,'Parot','Gerardo','','Fajardo',3,13,NULL,NULL,NULL),(63,63,'Cabral','John Kenneth','SRS II','De Asis',3,13,NULL,NULL,NULL),(64,64,'Jovenal','Sheryl','','Flores',3,13,NULL,NULL,NULL),(65,65,'Resente','Christian Carl','','Rivera',3,13,NULL,NULL,NULL),(66,66,'Rodemio','Emma','','Dela Cerna',3,13,NULL,NULL,NULL),(67,67,'Zuyco','Jesse Hannah Mae','','Cagaanan',3,13,NULL,NULL,NULL),(68,68,'Cadag','Merilyn','PSTC-ZDNPD','Miranda',3,14,NULL,NULL,NULL),(69,69,'Cachin','Marc','','Guimbarda',3,14,NULL,NULL,NULL),(70,70,'Aljani','Nuhman','','Mahang',3,14,NULL,NULL,NULL),(71,71,'Donio','Melody Anne','','Herbito',3,14,NULL,NULL,NULL),(72,72,'Tabuena','Mary Rose','','Kipkip',3,14,NULL,NULL,NULL),(73,73,'Bayonas','Jelyn','','O',3,14,NULL,NULL,NULL),(74,74,'Temonio','Francis Melanie','','Taneza',3,14,NULL,'no-image.png','c1f44f4d32ce6b10fcb6ec71f292cfa43323ee6c.jpg'),(75,75,'Quinte','Carlo Syl','','Labuca',3,15,NULL,NULL,NULL),(76,76,'Aparri','Jeyzel','','Perez',3,15,NULL,NULL,NULL),(77,77,'Baygas','Jane','','Lacno',3,15,NULL,NULL,NULL),(78,78,'Alam','Sariba','','Abison',3,15,NULL,NULL,NULL),(79,79,'Aposaga','Norie Vincent','','Castro',3,15,NULL,NULL,NULL),(80,80,'Baliña','Mark Vincent','','Jayson',3,15,NULL,NULL,NULL),(81,81,'Moratalla','Aris','Clerk II','D',3,7,NULL,NULL,NULL),(83,85,'Hiolen','Alessandra','Clerk II','Basa',2,4,NULL,NULL,NULL),(84,87,'Dumdum','Patrick','SRS I','F',3,7,NULL,NULL,NULL);

/*Table structure for table `tbl_project` */

DROP TABLE IF EXISTS `tbl_project`;

CREATE TABLE `tbl_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_project` */

/*Table structure for table `tbl_quarter` */

DROP TABLE IF EXISTS `tbl_quarter`;

CREATE TABLE `tbl_quarter` (
  `quarter_id` int(11) NOT NULL AUTO_INCREMENT,
  `quarter` varchar(11) NOT NULL,
  `period_month` varchar(22) NOT NULL,
  PRIMARY KEY (`quarter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_quarter` */

insert  into `tbl_quarter`(`quarter_id`,`quarter`,`period_month`) values (1,'1st Quarter','January - March'),(2,'2nd Quarter','April - June'),(3,'3rd Quarter','July - September'),(4,'4th Quarter','October - December');

/*Table structure for table `tbl_role` */

DROP TABLE IF EXISTS `tbl_role`;

CREATE TABLE `tbl_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(25) NOT NULL,
  `item_name` varchar(25) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_role` */

insert  into `tbl_role`(`role_id`,`role_name`,`item_name`) values (1,'Basic Role','basic-role'),(2,'BAC Member','bac-member'),(3,'BAC Secretary','bac-secretary');

/*Table structure for table `tbl_rstl` */

DROP TABLE IF EXISTS `tbl_rstl`;

CREATE TABLE `tbl_rstl` (
  `rstl_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `code` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`rstl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_rstl` */

insert  into `tbl_rstl`(`rstl_id`,`region_id`,`name`,`code`) values (1,3,'DOST-I','R1'),(2,4,'DOST-II','R2'),(3,5,'DOST-III','R3'),(4,6,'DOST-IVA-L1','R4AL1'),(5,6,'DOST-IVA-L2','R4AL2'),(6,7,'DOST-IVB','R4B'),(7,8,'DOST-V','R5'),(8,9,'DOST-VI','R6'),(9,10,'DOST-VII','R7'),(10,11,'DOST-VIII','R8'),(11,12,'DOST-IX','R9'),(12,13,'DOST-X','R10'),(13,14,'DOST-XI','R11'),(14,15,'DOST-XII-L1','R12L1'),(15,15,'DOST-XII-L2','R12L2'),(16,2,'DOST-CAR','CAR'),(17,17,'DOST-CARAGA','R13'),(18,18,'DOST-ARMM','ARMM'),(19,19,'DOST-FNRI','FNRI'),(20,20,'DOST-FPRDI','FPRDI'),(21,21,'DOST-ITDI','ITDI'),(22,22,'DOST-MIRDC','MIRDC'),(23,23,'DOST-PTRI','PTRI'),(24,24,'DOST-PNRI','PNRI'),(25,6,'DOST-IVA-L3','R4AL3'),(26,6,'DOST-IVA-L4','R4AL4'),(27,21,'DOST-ADMATEL','ADMATEL');

/*Table structure for table `tbl_section` */

DROP TABLE IF EXISTS `tbl_section`;

CREATE TABLE `tbl_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_section` */

insert  into `tbl_section`(`section_id`,`division_id`,`code`,`name`) values (1,1,'','Office of the Regional Director'),(2,2,'','Finance and Admin'),(3,2,'','Human Resources'),(4,2,'','Technical Services'),(5,3,'','Science and Technology Information Center'),(6,3,'','Science and Technology Scholarships and Promotions'),(7,3,'','Information and Communication Technnology Unit'),(8,3,'','Regional Standards and Testing Laboratory'),(9,3,'','Metrology and Calibration Laboratory'),(10,3,'','Chemical Testing Laboratory'),(11,3,'','Microbiological Testing Laboratory'),(12,4,'','Field Operations Services Office'),(13,4,'','PSTC-Zamboanga del Sur'),(14,4,'','PSTC-Zamboanga del Norte'),(15,4,'','PSTC-Zamboanga Sibugay'),(16,4,'','PSTC-Isabela Basilan');

/*Table structure for table `tbl_status` */

DROP TABLE IF EXISTS `tbl_status`;

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_status` */

insert  into `tbl_status`(`status_id`,`status`) values (1,'On-going'),(2,'Graduated/ Completed'),(3,'Terminated'),(4,'Withdrawn'),(5,'Non-Compliance'),(6,'Duplicate');

/*Table structure for table `tbl_status_sub` */

DROP TABLE IF EXISTS `tbl_status_sub`;

CREATE TABLE `tbl_status_sub` (
  `status_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL,
  `subname` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`status_sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_status_sub` */

insert  into `tbl_status_sub`(`status_sub_id`,`status_id`,`subname`) values (1,1,'Good Standing'),(2,1,'Suspended'),(3,1,'Leave Of Absence'),(4,1,'No Report'),(5,2,'Graduated'),(6,3,'Terminated'),(7,4,'Withdrawn'),(8,5,'Non-Compliance');

/*Table structure for table `tbl_unit` */

DROP TABLE IF EXISTS `tbl_unit`;

CREATE TABLE `tbl_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_unit` */

insert  into `tbl_unit`(`unit_id`,`division_id`,`code`,`name`) values (1,1,'','Office of the Regional Director'),(2,2,'','Supply Unit'),(3,2,'','Accounting Unit'),(4,2,'','Cashiering Unit'),(5,3,'','S&T Scholarships Unit'),(6,3,'','S&T Information Center'),(7,3,'','Information and Communication Technnology Unit'),(8,3,'','RSTL Office'),(9,3,'','Metrology and Calibration Laboratory'),(10,3,'','Chemical Testing Laboratory'),(11,3,'','Microbiological Testing Laboratory'),(12,4,'','Field Operations Services Office'),(13,4,'','PSTC-Zamboanga del Sur'),(14,4,'','PSTC-Zamboanga del Norte'),(15,4,'','PSTC-Zamboanga Sibugay'),(16,4,'','PSTC-Isabela Basilan'),(17,2,'','Human Resource and Development');

/*Table structure for table `tbl_upload_package` */

DROP TABLE IF EXISTS `tbl_upload_package`;

CREATE TABLE `tbl_upload_package` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(100) DEFAULT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_upload_package` */

insert  into `tbl_upload_package`(`upload_id`,`package_name`,`module_name`,`created_at`,`updated_at`) values (1,'lab.zip','Lab.zip',1515397495,1515397495);

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`user_id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (1,'Admin','H06d598TowxCUB1bRLqPHNsPMtkp3MCK','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02','4CnX1D1IKs70gFic28bClG-vbQfzldAB_1517198782','dost9ict@gmail.com',10,1512923120,1529287101),(2,'maw0302','H06d598TowxCUB1bRLqPHNsPMtkp3MC1','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'mawee65@yahoo.com',10,NULL,1546592922),(3,'mlk0526','H06d598TowxCUB1bRLqPHNsPMtkp3MC2','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'mlk0526@yahoo.com',10,NULL,1546593715),(4,'rss1204','H06d598TowxCUB1bRLqPHNsPMtkp3MC3','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'rosemarie.salazar@gmail.com',10,NULL,1546593720),(5,'nfd0406','H06d598TowxCUB1bRLqPHNsPMtkp3MC4','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'dost9ordsecretariat@gmail.com',10,NULL,1546593725),(6,'gra0506','H06d598TowxCUB1bRLqPHNsPMtkp3MC5','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'ghioangeles24@gmail.com',10,NULL,1546593730),(7,'jiq0123','H06d598TowxCUB1bRLqPHNsPMtkp3MC6','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jnnryqtl@gmail.com',10,NULL,1546593759),(8,'rba1223','H06d598TowxCUB1bRLqPHNsPMtkp3MC7','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'rdba2004@yahoo.com',10,NULL,1546593765),(9,'jjb1203','H06d598TowxCUB1bRLqPHNsPMtkp3MC8','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jali_badiola2005@yahoo.com',10,NULL,1546593770),(10,'itac0107','H06d598TowxCUB1bRLqPHNsPMtkp3MC9','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'ingridtac.dostro09@yahoo.com',10,NULL,1549942518),(11,'rbg0110','H06d598TowxCUB1bRLqPHNsPMtkp3M10','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'ronnelg10@gmail.com',10,NULL,1549957760),(12,'apl0318','H06d598TowxCUB1bRLqPHNsPMtkp3M11','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'allangeionlegaspi@gmail.com',0,NULL,NULL),(13,'mcb0107','H06d598TowxCUB1bRLqPHNsPMtkp3M12','$2y$13$4Zr9fHFxJhe5W8DLPSpxo.n7KvgYMHQzG5LdhHzMMDApmEk322eTC',NULL,'marilynannbueno@yahoo.com',10,NULL,1552032073),(14,'tmc0515','H06d598TowxCUB1bRLqPHNsPMtkp3M13','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'teffaniecatalya@yahoo.com.ph',10,NULL,1554347800),(15,'cbp1205','H06d598TowxCUB1bRLqPHNsPMtkp3M14','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'crisprieto05@gmail.com',10,NULL,1554347808),(16,'nev0213','H06d598TowxCUB1bRLqPHNsPMtkp3M15','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'neriejaneevidientes@gmail.com',10,NULL,1554348000),(17,'jla0823','H06d598TowxCUB1bRLqPHNsPMtkp3M16','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'iamjehnn23@gmail.com',10,NULL,1554348019),(18,'msa1217','H06d598TowxCUB1bRLqPHNsPMtkp3M17','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'graceantonio17@gmail.com',10,NULL,1552215446),(19,'ssb1121','H06d598TowxCUB1bRLqPHNsPMtkp3M18','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'bernardosheila21@gmail.com',10,NULL,1549957749),(20,'ted0417','H06d598TowxCUB1bRLqPHNsPMtkp3M19','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'tediego@yahoo.com',10,NULL,1554348042),(21,'krs0127','H06d598TowxCUB1bRLqPHNsPMtkp3M20','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'kristinemaesarita27@gmail.com',10,NULL,1554348053),(22,'emm0715','H06d598TowxCUB1bRLqPHNsPMtkp3M21','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'enriquemmariano@gmail.com',10,NULL,1554348059),(23,'hmt0724','H06d598TowxCUB1bRLqPHNsPMtkp3M22','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'halidtamano.dost9@gmail.com',10,NULL,1554348073),(24,'ahj1022','H06d598TowxCUB1bRLqPHNsPMtkp3M23','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'nassefjumlail@gmail.com',10,NULL,1554348113),(25,'mtd1031','H06d598TowxCUB1bRLqPHNsPMtkp3M24','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'michaeldaryllericson@gmail.com',10,NULL,1554348131),(26,'amh0121','H06d598TowxCUB1bRLqPHNsPMtkp3M25','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'gieansteven@gmail.com',10,NULL,1554348142),(27,'gaa1122','H06d598TowxCUB1bRLqPHNsPMtkp3M26','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'ellehcterg@gmail.com',10,NULL,1554348396),(28,'mra1218','H06d598TowxCUB1bRLqPHNsPMtkp3M27','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'minimarielleatilano@gmail.com',10,NULL,1554348413),(29,'jbn0806','H06d598TowxCUB1bRLqPHNsPMtkp3M28','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jpine652001@yahoo.com',10,NULL,1554348931),(30,'zfa0312','H06d598TowxCUB1bRLqPHNsPMtkp3M29','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'zorenantonio@gmail.com',10,NULL,1554348937),(31,'zrf1204','H06d598TowxCUB1bRLqPHNsPMtkp3M30','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'zeusczarbeaumonde@gmail.com',10,NULL,1554348945),(32,'adm0808','H06d598TowxCUB1bRLqPHNsPMtkp3M31','$2y$13$6d0wDTwVoCfoDwwjHXR5CuBw32k6DJTpIOytqUFmXHso3KGdOfB2y',NULL,'arismoratalla@gmail.com',10,NULL,1552020306),(33,'stg0515','H06d598TowxCUB1bRLqPHNsPMtkp3M32','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'sbgecosala@gmail.com',10,NULL,1554349148),(34,'btc0913','H06d598TowxCUB1bRLqPHNsPMtkp3M33','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'b.cutara@gmail.com',10,NULL,1554349836),(35,'jag0126','H06d598TowxCUB1bRLqPHNsPMtkp3M34','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'grapajaneedi@gmail.com',10,NULL,1554349845),(36,'egg1023','H06d598TowxCUB1bRLqPHNsPMtkp3M35','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'gallenoeden09@gmail.com',10,NULL,1554349861),(37,'mdd0611','H06d598TowxCUB1bRLqPHNsPMtkp3M36','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'blakadm@gmail.com',10,NULL,1554348914),(38,'lbs0820','H06d598TowxCUB1bRLqPHNsPMtkp3M37','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'larrymark2003@gmail.com',10,NULL,1546593153),(39,'jaa0615','H06d598TowxCUB1bRLqPHNsPMtkp3M38','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jovitaapduhan@gmail.com',10,NULL,1554348422),(40,'slb0615','H06d598TowxCUB1bRLqPHNsPMtkp3M39','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'slbdost9zc@gmail.com',10,NULL,1554348430),(41,'jto0418','H06d598TowxCUB1bRLqPHNsPMtkp3M40','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'janice.ong1214@gmail.com',10,NULL,1554350094),(42,'jmm0216','H06d598TowxCUB1bRLqPHNsPMtkp3M41','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'engr_jot@yahoo.com',10,NULL,1554350098),(43,'jtf0723','H06d598TowxCUB1bRLqPHNsPMtkp3M42','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'schezzo_july@yahoo.com',10,NULL,1554350102),(44,'nta1119','H06d598TowxCUB1bRLqPHNsPMtkp3M43','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'protein63nt@gmail.com',10,NULL,1554350112),(45,'ash0501','H06d598TowxCUB1bRLqPHNsPMtkp3M44','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'arleneherbieto@gmail.com',10,NULL,1554350118),(46,'flg0827','H06d598TowxCUB1bRLqPHNsPMtkp3M45','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'flgalabin3@yahoo.com',10,NULL,1554350128),(47,'bbb0703','H06d598TowxCUB1bRLqPHNsPMtkp3M46','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'bernadettebucoybelamide@gmail.com',10,NULL,1554350135),(48,'rml1005','H06d598TowxCUB1bRLqPHNsPMtkp3M47','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'rubenjr1005@gmail.com',10,NULL,1554350140),(49,'ses0118','H06d598TowxCUB1bRLqPHNsPMtkp3M48','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'suganobshadam@gmail.com',10,NULL,1554350146),(50,'jjp0110','H06d598TowxCUB1bRLqPHNsPMtkp3M49','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'revinuj.tiuqap@gmail.com',10,NULL,1554357261),(51,'wpa0718','H06d598TowxCUB1bRLqPHNsPMtkp3M50','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,NULL,0,NULL,NULL),(52,'cal0211','H06d598TowxCUB1bRLqPHNsPMtkp3M51','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'freathea2619@gmail.com',10,NULL,1554357236),(53,'jsc0611','H06d598TowxCUB1bRLqPHNsPMtkp3M52','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'junecast12@gmail.com',10,NULL,1554357300),(54,'jap0108','H06d598TowxCUB1bRLqPHNsPMtkp3M53','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'japidor@gmail.com',10,NULL,1548137308),(55,'rja0624','H06d598TowxCUB1bRLqPHNsPMtkp3M54','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'dost9rja@gmail.com',10,NULL,1554357398),(56,'lrgl1112','H06d598TowxCUB1bRLqPHNsPMtkp3M55','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'loiserayleona@gmail.com',10,NULL,1554357393),(57,'ehm0620','H06d598TowxCUB1bRLqPHNsPMtkp3M56','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'eisenhowermanuel4@gmail.com',10,NULL,1554357352),(58,'abg0411','H06d598TowxCUB1bRLqPHNsPMtkp3M57','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'gurrea_aileen@yahoo.com',10,NULL,1554357346),(59,'svm0828','H06d598TowxCUB1bRLqPHNsPMtkp3M58','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'shamudost9@gmail.com',10,NULL,1554357321),(60,'mda0206','H06d598TowxCUB1bRLqPHNsPMtkp3M59','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'mdalivio2@gmail.com',10,NULL,1554357308),(61,'ett0522','H06d598TowxCUB1bRLqPHNsPMtkp3M60','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'ebenezer22@rocketmail.com',10,NULL,1554357595),(62,'gfp0608','H06d598TowxCUB1bRLqPHNsPMtkp3M61','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'pager578@gmail.com',10,NULL,1554357724),(63,'jdc0605','H06d598TowxCUB1bRLqPHNsPMtkp3M62','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jhaykhaycee@gmail.com',10,NULL,1554357729),(64,'sfj0919','H06d598TowxCUB1bRLqPHNsPMtkp3M63','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jovenal.sheryl@yahoo.com',10,NULL,1554357733),(65,'crr0918','H06d598TowxCUB1bRLqPHNsPMtkp3M64','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'cc.rawr.07@gmail.com',10,NULL,1554357763),(66,'edr0910','H06d598TowxCUB1bRLqPHNsPMtkp3M65','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'carlsr.rodemio@yahoo.com',10,NULL,1554357768),(67,'jcz0423','H06d598TowxCUB1bRLqPHNsPMtkp3M66','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jessezuyco48@gmail.com',10,NULL,1554357777),(68,'mmc0206','H06d598TowxCUB1bRLqPHNsPMtkp3M67','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'merilynmcadag@yahoo.com.ph',10,NULL,1554357781),(69,'mgc0312','H06d598TowxCUB1bRLqPHNsPMtkp3M68','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'cachinmarc@yahoo.com',10,NULL,1554357821),(70,'nma0601','H06d598TowxCUB1bRLqPHNsPMtkp3M69','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'nuhman.aljani@gmail.com',10,NULL,1554357881),(71,'mhd0510','H06d598TowxCUB1bRLqPHNsPMtkp3M70','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'melodyanne_donio@yahoo.com',10,NULL,1555406020),(72,'mkt0823','H06d598TowxCUB1bRLqPHNsPMtkp3M71','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'maryrosekipkip@yahoo.com',10,NULL,1555406039),(73,'job0518','H06d598TowxCUB1bRLqPHNsPMtkp3M72','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jelynobayonas@gmail.com',10,NULL,1555406046),(74,'ftt0620','H06d598TowxCUB1bRLqPHNsPMtkp3M73','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'melanietemonio@gmail.com',10,NULL,1555406052),(75,'clq1214','H06d598TowxCUB1bRLqPHNsPMtkp3M74','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'carlosyl_quinte@yahoo.com',10,NULL,1555406063),(76,'jpa1101','H06d598TowxCUB1bRLqPHNsPMtkp3M75','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jeyzel_aparri@yahoo.com',10,NULL,1555406074),(77,'jlb0705','H06d598TowxCUB1bRLqPHNsPMtkp3M76','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'jane.baygas@yahoo.com',10,NULL,1555406080),(78,'saa1230','H06d598TowxCUB1bRLqPHNsPMtkp3M77','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'iamsarge83@yahoo.com',10,NULL,1555406086),(79,'nca0705','H06d598TowxCUB1bRLqPHNsPMtkp3M78','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'vincentlecrappy@gmail.com',10,NULL,1555406090),(80,'mjb0401','H06d598TowxCUB1bRLqPHNsPMtkp3M79','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'markjayson181@yahoo.com',10,NULL,1555406095),(81,'testuser','BvzjnZ7XmvOxzD-GKsE4gmbqFVcOX4Ev','$2y$13$VrnEMYuqbft.bGHZPXSCUetCOk2uq1LpH5z7HJ2msERMNT50K.3Le',NULL,'testuser@gmail.com',10,1554709216,1554709243),(82,'sar0110','H06d598TowxCUB1bRLqPHNsPMtkp3M79','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'sherylerico07@gmail.com',10,1555379975,1555379975),(83,'markherras2003','U8FV8PYVOByiEGH1v6eEFljj8RUodO_W','$2y$13$aWukM63dzQN2x5JURERlOOASe2dqruS/HObFY.rY7NhPG.stleXuu',NULL,'markherras2003@gmail.com',0,1555393860,1555393860),(84,'slb0611','H06d598TowxCUB1bRLqPHNsPMtkp3M79','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'sonorab611@gmail.com',10,NULL,NULL),(85,'abh0301','H06d598TowxCUB1bRLqPHNsPMtkp3M37','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'alessandraalanabasa@gmail.com',10,NULL,NULL),(86,'ecc0515','H06d598TowxCUB1bRLqPHNsPMtkp3M79','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'raincelorico@gmail.com',10,NULL,NULL),(87,'pmd1201','H06d598TowxCUB1bRLqPHNsPMtkp3M79','$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02',NULL,'engr.patrickdumdum03123@gmail.com',10,NULL,NULL);

/* Function  structure for function  `fnGetUnits` */

/*!50003 DROP FUNCTION IF EXISTS `fnGetUnits` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`fais`@`%` FUNCTION `fnGetUnits`(`unitID` INT(11)) RETURNS varchar(255) CHARSET utf8
    READS SQL DATA
BEGIN
	return(select `name_short` from `tbl_unit_type` WHERE `tbl_unit_type`.`unit_type_id` = unitID);
    END */$$
DELIMITER ;

/*Table structure for table `vw_getuser` */

DROP TABLE IF EXISTS `vw_getuser`;

/*!50001 DROP VIEW IF EXISTS `vw_getuser` */;
/*!50001 DROP TABLE IF EXISTS `vw_getuser` */;

/*!50001 CREATE TABLE  `vw_getuser`(
 `user_id` int(11) ,
 `username` varchar(32) ,
 `auth_key` varchar(32) ,
 `password_hash` varchar(255) ,
 `password_reset_token` varchar(255) ,
 `email` varchar(255) ,
 `status` smallint(6) ,
 `created_at` int(11) ,
 `updated_at` int(11) ,
 `lastname` varchar(50) ,
 `firstname` varchar(50) 
)*/;

/*View structure for view vw_getuser */

/*!50001 DROP TABLE IF EXISTS `vw_getuser` */;
/*!50001 DROP VIEW IF EXISTS `vw_getuser` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_getuser` AS (select `tbl_user`.`user_id` AS `user_id`,`tbl_user`.`username` AS `username`,`tbl_user`.`auth_key` AS `auth_key`,`tbl_user`.`password_hash` AS `password_hash`,`tbl_user`.`password_reset_token` AS `password_reset_token`,`tbl_user`.`email` AS `email`,`tbl_user`.`status` AS `status`,`tbl_user`.`created_at` AS `created_at`,`tbl_user`.`updated_at` AS `updated_at`,`tbl_profile`.`lastname` AS `lastname`,`tbl_profile`.`firstname` AS `firstname` from (`tbl_user` join `tbl_profile` on((`tbl_profile`.`user_id` = `tbl_user`.`user_id`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
