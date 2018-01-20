-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2018 at 07:39 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `easypay`
--

-- --------------------------------------------------------

--
-- Table structure for table `airtime_topup`
--

CREATE TABLE IF NOT EXISTS `airtime_topup` (
  `id` int(255) NOT NULL,
  `mobile_sp` int(255) NOT NULL,
  `client` int(255) NOT NULL,
  `mobile_number` int(255) NOT NULL,
  `type` int(2) NOT NULL,
  `sum` varchar(200) NOT NULL,
  `fee` varchar(200) NOT NULL,
  `amount` int(255) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `receiver` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `user_comment` varchar(200) NOT NULL,
  `admin_comment` varchar(200) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billed_items`
--

CREATE TABLE IF NOT EXISTS `billed_items` (
  `item_id` int(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billed_items`
--

INSERT INTO `billed_items` (`item_id`, `item_name`, `date`) VALUES
(1, 'UMEME', '0'),
(2, 'Water', '0'),
(3, 'Zuku TV', '0'),
(4, 'GoTV', '0'),
(5, 'DSTV', ''),
(6, 'Star Times', '');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE IF NOT EXISTS `bills` (
  `bill_id` int(255) NOT NULL,
  `client` int(255) NOT NULL,
  `billed_item` int(255) NOT NULL,
  `mobile_number` int(255) NOT NULL,
  `bill_code` int(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `client`, `billed_item`, `mobile_number`, `bill_code`, `amount`, `date`) VALUES
(1, 112, 1, 788558138, 65859797, 20000, '05-08-2017'),
(2, 112, 3, 704094088, 784969885, 5000, '05-08-2017'),
(3, 112, 5, 784452993, 658869798, 50000, '05-08-2017'),
(4, 112, 4, 784452993, 69559784, 20000, '06-08-2017');

-- --------------------------------------------------------

--
-- Table structure for table `btc_order`
--

CREATE TABLE IF NOT EXISTS `btc_order` (
`id` int(10) unsigned NOT NULL,
  `adress` varchar(500) CHARACTER SET utf8 NOT NULL,
  `payeer` varchar(300) CHARACTER SET utf8 NOT NULL,
  `merchant` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bulk_payments`
--

CREATE TABLE IF NOT EXISTS `bulk_payments` (
  `bulk_p_id` int(255) NOT NULL,
  `mobile_sp` int(255) NOT NULL,
  `client` int(255) NOT NULL,
  `mobile_number` int(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `mobile_number1` int(255) NOT NULL,
  `amount1` int(255) NOT NULL,
  `mobile_number2` int(255) NOT NULL,
  `amount2` int(255) NOT NULL,
  `mobile_number3` int(255) NOT NULL,
  `amount3` int(255) NOT NULL,
  `mobile_number4` int(255) NOT NULL,
  `amount4` int(255) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
`captcha_id` bigint(13) unsigned NOT NULL,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(196, 1510293540, '::1', 'xCNGR'),
(197, 1511860898, '::1', '8JehF'),
(198, 1511860915, '::1', '2WdQK'),
(199, 1515727913, '::1', 'qTEEi');

-- --------------------------------------------------------

--
-- Table structure for table `client_account`
--

CREATE TABLE IF NOT EXISTS `client_account` (
  `acc_id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `prev_amount` int(255) NOT NULL,
  `dep_amount` int(255) NOT NULL,
  `cur_amount` int(255) NOT NULL,
  `mode` varchar(255) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currencys`
--

CREATE TABLE IF NOT EXISTS `currencys` (
`id` int(11) NOT NULL,
  `base_name` varchar(256) NOT NULL,
  `base_code` varchar(128) NOT NULL,
  `extra1_check` int(11) NOT NULL,
  `extra1_name` varchar(256) NOT NULL,
  `extra1_code` varchar(128) NOT NULL,
  `extra1_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra2_check` int(11) NOT NULL,
  `extra2_name` varchar(256) NOT NULL,
  `extra2_code` varchar(256) NOT NULL,
  `extra2_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra3_check` int(11) NOT NULL,
  `extra3_name` varchar(256) NOT NULL,
  `extra3_code` varchar(128) NOT NULL,
  `extra3_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra4_check` int(11) NOT NULL,
  `extra4_name` varchar(256) NOT NULL,
  `extra4_code` varchar(128) NOT NULL,
  `extra4_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra5_check` int(11) NOT NULL,
  `extra5_name` varchar(256) NOT NULL,
  `extra5_code` varchar(128) NOT NULL,
  `extra5_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra6_check` int(11) NOT NULL,
  `extra6_code` varchar(256) NOT NULL,
  `extra6_name` varchar(128) NOT NULL,
  `extra6_rate` decimal(10,5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencys`
--

INSERT INTO `currencys` (`id`, `base_name`, `base_code`, `extra1_check`, `extra1_name`, `extra1_code`, `extra1_rate`, `extra2_check`, `extra2_name`, `extra2_code`, `extra2_rate`, `extra3_check`, `extra3_name`, `extra3_code`, `extra3_rate`, `extra4_check`, `extra4_name`, `extra4_code`, `extra4_rate`, `extra5_check`, `extra5_name`, `extra5_code`, `extra5_rate`, `extra6_check`, `extra6_code`, `extra6_name`, `extra6_rate`) VALUES
(1, 'Base Wallet', 'USD', 1, 'Russian Ruble', 'RUB', '51.99', 1, 'Euro', 'EUR', '0.65', 0, 'Grivna Ukraine', 'UAH', '1.50', 1, 'Chine Wallet', 'CNY', '18.00', 1, 'Gold 958', 'GLD', '980.00', 1, 'UGX', 'Shillings', '0.00027');

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE IF NOT EXISTS `disputes` (
`id` int(10) unsigned NOT NULL,
  `transaction` int(10) NOT NULL,
  `time_transaction` datetime NOT NULL,
  `time_dispute` datetime NOT NULL,
  `claimant` varchar(128) NOT NULL,
  `defendant` varchar(128) NOT NULL,
  `status` enum('1','2','3','4') NOT NULL,
  `comments` int(11) NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(128) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `disputes_comment`
--

CREATE TABLE IF NOT EXISTS `disputes_comment` (
`id` int(10) unsigned NOT NULL,
  `id_dispute` int(10) NOT NULL,
  `time` datetime NOT NULL,
  `user` varchar(128) NOT NULL,
  `role` enum('1','2','3','4','5') NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `title` varchar(128) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  `read` datetime DEFAULT NULL,
  `read_by` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE IF NOT EXISTS `email_templates` (
`id` int(10) unsigned NOT NULL,
  `title` text CHARACTER SET ucs2 NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `message`) VALUES
(2, 'Notice to receive', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The transaction status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Notice to receive! </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						The funds amount equal to [SUM] [CYR] were received on your account. You can see details of the transaction after sign in your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_HISTORY]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Operations history</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]<br />\r\n						&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(3, 'Withdrawal pending!', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The transaction status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Withdrawal pending! </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						The withdrawal, amount equal to [SUM] [CYR], were deducted from your account. Time of execution depends on the type of withdrawal you chosen.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_HISTORY]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Operations history</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(4, 'Completed currency exchange!', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The transaction status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Completed currency exchange! </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						You successfully exchanged [SUM_1] [CYR_1] on&nbsp;[SUM_2] [CYR_2]. You can checked the current balance and transaction history after log in your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_HISTORY]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Operations history</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(5, 'Open dispute!', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The status of dispute is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #F44336;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Open dispute!</strong></p>\r\n						</td>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						User [CLAIMANT] opened&nbsp;a dispute about the&nbsp;transaction ID [ID_TRANSACTION]. Check out the subject of the dispute and give your answer.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_SITE]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Go to account</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(6, 'New comment for dispute', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The status of dispute is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>New comment for dispute </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						A new comment was added for the dispute ID [ID_DISPUTE]. You can read it after log in the account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_DISPUTE][ID_DISPUTE]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Details</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(7, 'Claim opened!', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The status of dispute is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n						<td align="center" bgcolor="#F44336" height="50" style="background: #F44336;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Claim opened </strong></p>\r\n						</td>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Your dispute ID [ID_DISPUTE] was transferred to the claim. We will study all the correspondence and will can demand additional information. Expect solutions of the dispute.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_DISPUTE][ID_DISPUTE]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Details</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(8, 'Claim rejected', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The status of dispute is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Claim rejected </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						After a thorough analysis of the evidence provided by ID [ID_DISPUTE], we have completed the investigation and decided in favor of the seller.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_DISPUTE][ID_DISPUTE]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Details</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(10, 'New message in ticket', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The ticket status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>New message </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Ticket ID [ID_TICKET] has been added a new message. To answer, you need to log in to your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_TICKET][ID_TICKET]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Go to message</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(11, 'Ticket closed', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The ticket status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Ticket closed!</strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Ticket ID [ID_TICKET] was closed. We are glad that this issue has been resolved for you.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_TICKET][ID_TICKET]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">View ticket</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(12, 'Documents received for review', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The verification status is changed</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Documents received for review!</strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						We received your documents. We need 2-3 business days to verify.&nbsp;We will notify you of the result.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_CHECK]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Check status</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(13, 'Document verified', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The verification status is changed</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Uploaded document verified!</strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						One of yours documents was successfully checked. To change the status of verification, we need to check the remaining documents.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_VERIFI]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Check status</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(14, 'Your account is verified', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The verification status is changed</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Status of your account - Verified!</strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Documents are successfully verified. Your account were assigned the Verified status. You can now withdraw funds from the account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_VERIFI]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Check status</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]<br />\r\n						&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(15, 'Business status', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The verification status is changed</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Status of your account - Business!</strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Documents are successfully verified. Your account &nbsp;were assigned the Business status. Now you can accept external payments.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_VERIFI]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Check status</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]<br />\r\n						&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(16, 'Documents rejected', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The verification status is changed</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #F44336;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Document failed verification</strong></p>\r\n						</td>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						We are sorry, the document that were uploaded is rejected. Read carefully the verification rules and try again. If you have any questions write to customer support.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_VERIFI]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Check status</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]<br />\r\n						&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->');
INSERT INTO `email_templates` (`id`, `title`, `message`) VALUES
(18, 'Request payment', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<!-- 100% body table -->\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td><!-- header -->\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">Request payment</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			<!--// header --><!-- main wrapper -->\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480"><!-- logo -->\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<!--// logo --><!-- Красный блок -->\r\n					<tr>\r\n						<td style="background: #7867a7;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #7867a7;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Create invoice [INV]</strong></p>\r\n						</td>\r\n						<td style="background: #7867a7;">&nbsp;</td>\r\n					</tr>\r\n					<!--// Красный блок --><!-- welcome message -->\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						You have a new invoice for payment. Carefully read the details and make payment.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<!--// welcome message --><!-- таблица с договором и суммой -->\r\n					<tr>\r\n						<td height="10" style="border-top: 1px solid #e7e1bd; background: #fff9d4;">&nbsp;</td>\r\n						<td height="10" style="border-top: 1px solid #e7e1bd; background: #fff9d4;">&nbsp;</td>\r\n						<td height="10" style="border-top: 1px solid #e7e1bd; background: #fff9d4;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td bgcolor="#fff9d4">&nbsp;</td>\r\n						<td bgcolor="#fff9d4">\r\n						<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n							<tbody>\r\n								<tr>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #888a84; margin: 1em 0;">Date created</p>\r\n									</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd; content: '''';" width="20">&nbsp;</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #303030; margin: 1em 0;">[DATE]</p>\r\n									</td>\r\n								</tr>\r\n								<tr>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #888a84; margin: 1em 0;">Username sender</p>\r\n									</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd; content: '''';" width="20">&nbsp;</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #303030; margin: 1em 0;">[SENDER]</p>\r\n									</td>\r\n								</tr>\r\n								<tr>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #888a84; margin: 1em 0;">Purpose of payment</p>\r\n									</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd; content: '''';" width="20">&nbsp;</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #303030; margin: 1em 0;">[PURPOSE]</p>\r\n									</td>\r\n								</tr>\r\n								<tr>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #888a84; margin: 1em 0;">Amount</p>\r\n									</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd; content: '''';" width="20">&nbsp;</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #303030; margin: 1em 0;"><strong>[AMOUNT]</strong></p>\r\n									</td>\r\n								</tr>\r\n								<tr>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #888a84; margin: 1em 0;">Currency</p>\r\n									</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd; content: '''';" width="20">&nbsp;</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #303030; margin: 1em 0;">[CYR]</p>\r\n									</td>\r\n								</tr>\r\n								<tr>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #888a84; margin: 1em 0;">Note for recipient</p>\r\n									</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd; content: '''';" width="20">&nbsp;</td>\r\n									<td style="border-bottom: 1px solid #e7e1bd;" width="200">\r\n									<p style="font: 15px/20px Helvetica, Arial, sans-serif; color: #303030; margin: 1em 0;">[NOTE]</p>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n						<td bgcolor="#fff9d4">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td height="10" style="border-top: 1px solid #e7e1bd;">&nbsp;</td>\r\n						<td height="10" style="border-top: 1px solid #e7e1bd;">&nbsp;</td>\r\n						<td height="10" style="border-top: 1px solid #e7e1bd;">&nbsp;</td>\r\n					</tr>\r\n					<!--// таблица с договором и суммой --><!-- блок страшилка -->\r\n					<tr>\r\n						<td style="border-top: 0px solid #wwwwww; border-bottom: 1px solid #wwwwww;">&nbsp;</td>\r\n						<td style="border-top: 0px solid #wwwwww; border-bottom: 1px solid #wwwwww;">\r\n						<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n							<tbody>\r\n								<tr>\r\n									<td align="left" valign="top" width="95">\r\n									<p style="margin: 25px 0;"><a href="#" style="text-decoration: none;" target="_blank"><img alt="" height="40" src="http://static.tcsbank.ru/email/2014small/warning_11_11.png" style="display: block; margin: 20px 0 20px 0;" /> </a></p>\r\n									</td>\r\n									<td width="500">\r\n									<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 10px 0;">Do not transfer money to strangers - they can be scammers! Notify in support if you think it is spam.</p>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n						<td style="border-top: 0px solid #wwwwww; border-bottom: 1px solid #wwwwww;">&nbsp;</td>\r\n					</tr>\r\n					<!--// блок страшилка --><!-- button промо с2с -->\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[LINK]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7ab55c; border-radius: 4px;" target="_blank">Go to account</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n					<!--// button промо с2с -->\r\n				</tbody>\r\n			</table>\r\n			<!--// main wrapper --><!-- footer -->\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]<br />\r\n						&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			<!--// footer --></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->\r\n\r\n<div style="display:none; white-space:nowrap; font:14px courier; line-height:0;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n'),
(17, 'Claim satisfied', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The dispute status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Claim satisfied! </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hellow!<br />\r\n						<br />\r\n						After a thorough analysis of the evidence provided in the dispute [ID_DISPUTE], we completed the investigation and decided in favor of the sender of payment. Money was returned by transaction ID [ID_TRANSACTION].</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_DISPUTE][ID_DISPUTE]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Go to the site</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]<br />\r\n						&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(22, 'Success money transfer', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The transaction status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Success money transfer! </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						You have successfully transferred [SUM] [CYR]&nbsp;to the user [RECEIVER].&nbsp;You can see the details in your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_HISTORY]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Operations history</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(19, 'Merchant activated!', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The merchant&nbsp;status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Merchant activated! </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Your application for creating merchant ID [ID_MERCHANT] is satisfied!&nbsp;Now you can accept payments via SCI.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_MERCHANT]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">All merchants</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]<br />\r\n						&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(20, 'Merchant rejected', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The status of merchant&nbsp;is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #F44336;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Merchant rejected!</strong></p>\r\n						</td>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Your application for creating merchant ID &nbsp;[ID_MERCHANT] is rejected!&nbsp;For details, please contact support.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_MERCHANT]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">All merchants</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(21, 'New ticket!', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The ticket status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>New ticket! </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						You have received a new request from the support team.&nbsp;We await your response!</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_TICKET]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">All tickets</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]<br />\r\n						&nbsp;</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(23, 'Confirm account', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">Account registration</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Confirm account!</strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Thank you for creating an account at [SITE_NAME]. Click the link below to validate your email address and activate your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[CHECK_LINK]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Confirm email</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(24, 'Reset password', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">Account registration</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Reset password!</strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Your password at [SITE_NAME] has been reset. Click the link below to log in with your new password.</p>\r\n\r\n						<p style="color: #303030; font: 18px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;"><strong>[PASSWORD]</strong></p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[LOGIN_LINK]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">My account</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(25, 'Withdrawal is confirmed', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The transaction status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Withdrawal is confirmed! </strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						The withdrawal of funds in the amount of [SUM] [CYR] was confirmed by the administrator.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_HISTORY]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Operations history</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(26, 'Withdrawal of funds denied', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">The transaction status is changed!</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #F44336;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Withdrawal of funds denied! </strong></p>\r\n						</td>\r\n						<td style="background: #F44336;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						The withdrawal of funds in the amount of [SUM] [CYR] was rejected by the administrator. Funds refund to your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">\r\n						<p align="center" style="margin: 10px 0 25px;"><a alias="button" href="[URL_HISTORY]" style="text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #7867a7; border-radius: 4px;" target="_blank">Operations history</a></p>\r\n						</td>\r\n						<td style="border-top: 0px solid #dee0e1; ">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->'),
(27, 'Make payment', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title></title>\r\n<style type="text/css">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor="#ebedef" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;">New invoice</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="wrapper" style="background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;" width="480">\r\n				<tbody>\r\n					<tr>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n						<td align="center" height="70" style="border-bottom: 1px solid #wwwwww;" valign="middle"><a alias="site_logo" href="#" target="_blank"><img alt="" height="58" src="http://en.unipay.ideah.ru/themes/default/img/logo-mail.png" style="display: block;" width="58" /> </a></td>\r\n						<td class="wrapper__indent" style="border-bottom: 1px solid #wwwwww;" width="30">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n						<td align="center" bgcolor="#7ab55c" height="50" style="background: #4caf50;">\r\n						<p style="font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;"><strong>Make payment</strong></p>\r\n						</td>\r\n						<td style="background: #4caf50;">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style="color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 0 0; text-align: center;">Hello!<br />\r\n						<br />\r\n						Created an invoice for [SUM_USD] [CYR]. To pay the bill transfer [SUM_BTC] BTC to the purse:<br />\r\n						<br />\r\n						<strong>[ADRESS]</strong>.</p>\r\n\r\n						<center><img src="https://chart.googleapis.com/chart?chs=300x300&amp;cht=qr&amp;chl=bitcoin:[ADRESS]" /></center>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;" width="100%">\r\n				<tbody>\r\n					<tr>\r\n						<td align="center" height="45" valign="middle">\r\n						<p style="font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table --><!--suc_mail6 -->');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(10) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_location` varchar(100) NOT NULL,
  `event_thumbnail` varchar(500) NOT NULL,
  `event_description` longtext NOT NULL,
  `event_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_location`, `event_thumbnail`, `event_description`, `event_date`) VALUES
(57, 'Handing Over of tools', 'Paya Biranga Village, Tororo, Uganda', 'skin/images/events/ev1.jpg', 'Local farmers were given farming tools to help ease their farming practices. Members were so excited and went thanking divine masters for the great assistance.', '2017-07-20 18:18:43'),
(60, 'Warehouse loading', 'Divine Masters', 'skin/images/events/tumblr_msuei3sMTo1st5lhmo1_1280.jpg', 'Divine Masters was able to with ease load the main warehouse with alot of farm produce from three Sub-Counties in Tororo district.', '2017-06-28 00:37:20'),
(61, 'Acro Event', 'djdj', 'skin/images/events/SASA AWARDS ONE.jpg', 'rtu7tjyuio', '2017-10-21 13:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
`id` int(11) unsigned NOT NULL,
  `card_check` int(11) NOT NULL,
  `card_fee` varchar(128) NOT NULL,
  `pp_check` int(11) NOT NULL,
  `pp_fee` varchar(128) NOT NULL,
  `btc_check` int(11) NOT NULL,
  `btc_fee` varchar(128) NOT NULL,
  `adv_check` int(11) NOT NULL,
  `adv_fee` varchar(128) NOT NULL,
  `wm_check` int(11) NOT NULL,
  `wm_fee` varchar(128) NOT NULL,
  `payeer_check` int(11) NOT NULL,
  `payeer_fee` varchar(128) NOT NULL,
  `qiwi_check` int(11) NOT NULL,
  `qiwi_fee` varchar(128) NOT NULL,
  `perfect_check` int(11) NOT NULL,
  `perfect_fee` varchar(128) NOT NULL,
  `swift_fee` varchar(128) NOT NULL,
  `swift_check` int(11) NOT NULL,
  `mtn_check` int(11) NOT NULL,
  `mtn_fee` varchar(128) NOT NULL,
  `airtel_check` int(11) NOT NULL,
  `airtel_fee` varchar(128) NOT NULL,
  `africell_check` int(11) NOT NULL,
  `africell_fee` varchar(128) NOT NULL,
  `smart_check` int(11) NOT NULL,
  `smart_fee` varchar(128) NOT NULL,
  `vodafone_check` int(11) NOT NULL,
  `vodafone_fee` varchar(128) NOT NULL,
  `smile_check` int(11) NOT NULL,
  `smile_fee` varchar(128) NOT NULL,
  `check_pp_dep` int(11) NOT NULL,
  `fee_pp_dep` varchar(128) NOT NULL,
  `account_pp` varchar(256) NOT NULL,
  `check_payeer_dep` int(11) NOT NULL,
  `fee_payeer_dep` varchar(128) NOT NULL,
  `merch_payeer` varchar(128) NOT NULL,
  `key_payeer` varchar(128) NOT NULL,
  `crypt_payeer` varchar(128) NOT NULL,
  `check_adv_dep` int(11) NOT NULL,
  `fee_adv_dep` varchar(128) NOT NULL,
  `account_adv` varchar(128) NOT NULL,
  `name_adv` varchar(128) NOT NULL,
  `secret_adv` varchar(128) NOT NULL,
  `check_perfect` int(11) NOT NULL,
  `fee_perfect` varchar(128) NOT NULL,
  `account_perfect` varchar(128) NOT NULL,
  `check_btc_dep` int(11) NOT NULL,
  `shop_btc` varchar(128) NOT NULL,
  `pass_btc` varchar(128) NOT NULL,
  `fee_btc_dep` varchar(128) NOT NULL,
  `key_perfect` varchar(128) NOT NULL,
  `swift_dep_check` int(11) NOT NULL,
  `fee_swift_dep` varchar(128) NOT NULL,
  `swift_desc` text NOT NULL,
  `mtn_dep_check` int(11) NOT NULL,
  `fee_mtn_dep` varchar(128) NOT NULL,
  `mtn_desc` text NOT NULL,
  `airtel_dep_check` int(11) NOT NULL,
  `fee_airtel_dep` varchar(128) NOT NULL,
  `airtel_desc` text NOT NULL,
  `africell_dep_check` int(11) NOT NULL,
  `fee_africell_dep` varchar(128) NOT NULL,
  `africell_desc` text NOT NULL,
  `smart_dep_check` int(11) NOT NULL,
  `fee_smart_dep` varchar(128) NOT NULL,
  `smart_desc` text NOT NULL,
  `vodafone_dep_check` int(11) NOT NULL,
  `fee_vodafone_dep` varchar(128) NOT NULL,
  `vodafone_desc` text NOT NULL,
  `smile_dep_check` int(11) NOT NULL,
  `fee_smile_dep` varchar(128) NOT NULL,
  `smile_desc` text NOT NULL,
  `check_pp_sci` int(11) NOT NULL,
  `fee_pp_sci` varchar(128) NOT NULL,
  `account_pp_sci` varchar(128) NOT NULL,
  `check_payeer_sci` int(11) NOT NULL,
  `fee_payeer_sci` varchar(128) NOT NULL,
  `merch_payeer_sci` varchar(128) NOT NULL,
  `key_payeer_sci` varchar(128) NOT NULL,
  `crypt_payeer_sci` varchar(128) NOT NULL,
  `check_adv_sci` int(11) NOT NULL,
  `fee_adv_sci` varchar(128) NOT NULL,
  `account_adv_sci` varchar(128) NOT NULL,
  `name_adv_sci` varchar(128) NOT NULL,
  `secret_adv_sci` varchar(128) NOT NULL,
  `check_perfect_sci` int(11) NOT NULL,
  `fee_perfect_sci` varchar(128) NOT NULL,
  `account_perfect_sci` varchar(128) NOT NULL,
  `key_perfect_sci` varchar(128) NOT NULL,
  `check_btc_sci` int(11) NOT NULL,
  `fee_btc_sci` varchar(128) NOT NULL,
  `shop_btc_sci` varchar(128) NOT NULL,
  `pass_btc_sci` varchar(128) NOT NULL,
  `swift_sci_check` int(11) NOT NULL,
  `fee_swift_sci` varchar(128) NOT NULL,
  `swift_desc_sci` text NOT NULL,
  `mtn_sci_check` int(11) NOT NULL,
  `fee_mtn_sci` varchar(128) NOT NULL,
  `mtn_desc_sci` text NOT NULL,
  `airtel_sci_check` int(11) NOT NULL,
  `fee_airtel_sci` varchar(128) NOT NULL,
  `airtel_desc_sci` text NOT NULL,
  `africell_sci_check` int(11) NOT NULL,
  `fee_africell_sci` varchar(128) NOT NULL,
  `africell_desc_sci` text NOT NULL,
  `smart_sci_check` int(11) NOT NULL,
  `fee_smart_sci` varchar(28) NOT NULL,
  `smart_desc_sci` text NOT NULL,
  `vodafone_sci_check` int(11) NOT NULL,
  `fee_vodafone_sci` varchar(128) NOT NULL,
  `vodafone_desc_sci` text NOT NULL,
  `smile_sci_check` int(11) NOT NULL,
  `fee_smile_sci` varchar(128) NOT NULL,
  `smile_desc_sci` text NOT NULL,
  `ux_check` int(11) NOT NULL,
  `fee_ux` varchar(128) NOT NULL,
  `xpub` varchar(250) NOT NULL,
  `sci_xpub` varchar(500) NOT NULL,
  `fee_pay_fix` decimal(10,2) NOT NULL,
  `fee_adv_fix` decimal(10,2) NOT NULL,
  `fee_perf_fix` decimal(10,2) NOT NULL,
  `fee_btc_fix` decimal(10,2) NOT NULL,
  `fee_swift_fix` decimal(10,2) NOT NULL,
  `fee_mtn_fix` decimal(10,2) NOT NULL,
  `fee_airtel_fix` decimal(10,2) NOT NULL,
  `fee_africell_fix` decimal(10,2) NOT NULL,
  `fee_smart_fix` decimal(10,2) NOT NULL,
  `fee_vodafone_fix` decimal(10,2) NOT NULL,
  `fee_smile_fix` decimal(10,2) NOT NULL,
  `sci_pp_fee_fix` decimal(10,2) NOT NULL,
  `sci_pay_fee_fix` decimal(10,2) NOT NULL,
  `sci_adv_fix` decimal(10,2) NOT NULL,
  `sci_per_fee_fix` decimal(10,2) NOT NULL,
  `sci_btc_fee_fix` decimal(10,2) NOT NULL,
  `sci_swift_fee_fix` decimal(10,2) NOT NULL,
  `sci_mtn_fee_fix` decimal(10,2) NOT NULL,
  `sci_airtel_fee_fix` decimal(10,2) NOT NULL,
  `sci_africell_fee_fix` decimal(10,2) NOT NULL,
  `sci_smart_fee_fix` decimal(10,2) NOT NULL,
  `sci_vodafone_fee_fix` decimal(10,2) NOT NULL,
  `sci_smile_fee_fix` decimal(10,2) NOT NULL,
  `ux_fee_fix` decimal(10,2) NOT NULL,
  `fee_pp_fix_dep` decimal(10,2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `card_check`, `card_fee`, `pp_check`, `pp_fee`, `btc_check`, `btc_fee`, `adv_check`, `adv_fee`, `wm_check`, `wm_fee`, `payeer_check`, `payeer_fee`, `qiwi_check`, `qiwi_fee`, `perfect_check`, `perfect_fee`, `swift_fee`, `swift_check`, `mtn_check`, `mtn_fee`, `airtel_check`, `airtel_fee`, `africell_check`, `africell_fee`, `smart_check`, `smart_fee`, `vodafone_check`, `vodafone_fee`, `smile_check`, `smile_fee`, `check_pp_dep`, `fee_pp_dep`, `account_pp`, `check_payeer_dep`, `fee_payeer_dep`, `merch_payeer`, `key_payeer`, `crypt_payeer`, `check_adv_dep`, `fee_adv_dep`, `account_adv`, `name_adv`, `secret_adv`, `check_perfect`, `fee_perfect`, `account_perfect`, `check_btc_dep`, `shop_btc`, `pass_btc`, `fee_btc_dep`, `key_perfect`, `swift_dep_check`, `fee_swift_dep`, `swift_desc`, `mtn_dep_check`, `fee_mtn_dep`, `mtn_desc`, `airtel_dep_check`, `fee_airtel_dep`, `airtel_desc`, `africell_dep_check`, `fee_africell_dep`, `africell_desc`, `smart_dep_check`, `fee_smart_dep`, `smart_desc`, `vodafone_dep_check`, `fee_vodafone_dep`, `vodafone_desc`, `smile_dep_check`, `fee_smile_dep`, `smile_desc`, `check_pp_sci`, `fee_pp_sci`, `account_pp_sci`, `check_payeer_sci`, `fee_payeer_sci`, `merch_payeer_sci`, `key_payeer_sci`, `crypt_payeer_sci`, `check_adv_sci`, `fee_adv_sci`, `account_adv_sci`, `name_adv_sci`, `secret_adv_sci`, `check_perfect_sci`, `fee_perfect_sci`, `account_perfect_sci`, `key_perfect_sci`, `check_btc_sci`, `fee_btc_sci`, `shop_btc_sci`, `pass_btc_sci`, `swift_sci_check`, `fee_swift_sci`, `swift_desc_sci`, `mtn_sci_check`, `fee_mtn_sci`, `mtn_desc_sci`, `airtel_sci_check`, `fee_airtel_sci`, `airtel_desc_sci`, `africell_sci_check`, `fee_africell_sci`, `africell_desc_sci`, `smart_sci_check`, `fee_smart_sci`, `smart_desc_sci`, `vodafone_sci_check`, `fee_vodafone_sci`, `vodafone_desc_sci`, `smile_sci_check`, `fee_smile_sci`, `smile_desc_sci`, `ux_check`, `fee_ux`, `xpub`, `sci_xpub`, `fee_pay_fix`, `fee_adv_fix`, `fee_perf_fix`, `fee_btc_fix`, `fee_swift_fix`, `fee_mtn_fix`, `fee_airtel_fix`, `fee_africell_fix`, `fee_smart_fix`, `fee_vodafone_fix`, `fee_smile_fix`, `sci_pp_fee_fix`, `sci_pay_fee_fix`, `sci_adv_fix`, `sci_per_fee_fix`, `sci_btc_fee_fix`, `sci_swift_fee_fix`, `sci_mtn_fee_fix`, `sci_airtel_fee_fix`, `sci_africell_fee_fix`, `sci_smart_fee_fix`, `sci_vodafone_fee_fix`, `sci_smile_fee_fix`, `ux_fee_fix`, `fee_pp_fix_dep`) VALUES
(1, 1, '5', 1, '50', 1, '3', 1, '3', 1, '3', 1, '3', 1, '3', 1, '3', '8', 1, 1, '3', 1, '3', 0, '', 0, '', 0, '', 0, '', 1, '1', 'justwalletpw@yandex.ru', 1, '1', '', '', '', 1, '1', '', '', '', 1, '1', '', 1, '', '', '10', '', 1, '1', '', 1, '2', '', 1, '2', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 1, '10', 'justwalletpw@yandex.u', 1, '1', '', '', '', 1, '1', '', '', '', 1, '1', '', '', 1, '10', '', '', 1, '1', '', 1, '2', '', 1, '2', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 1, '1', '', '', '12.00', '8.00', '0.00', '0.50', '500.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '1.00', '2.00', '3.00', '4.00', '5.00', '6.00', '0.15', '0.15', '0.00', '0.00', '0.00', '0.00', '7.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE IF NOT EXISTS `informations` (
  `contact_id` int(10) NOT NULL,
  `contact_phone_number` varchar(20) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_latitude` varchar(50) NOT NULL,
  `contact_longitude` varchar(50) NOT NULL,
  `contact_address` varchar(150) DEFAULT NULL,
  `contact_monday_hours` varchar(50) NOT NULL,
  `contact_tuesday_hours` varchar(20) DEFAULT NULL,
  `contact_wednesday_hours` varchar(20) DEFAULT NULL,
  `contact_thursday_hours` varchar(20) DEFAULT NULL,
  `contact_friday_hours` varchar(20) DEFAULT NULL,
  `contact_saturday_hours` varchar(20) DEFAULT NULL,
  `contact_sunday_hours` varchar(20) DEFAULT NULL,
  `site_body_background` varchar(255) DEFAULT NULL,
  `site_button_bg_normal` varchar(15) DEFAULT NULL,
  `site_button_txt_normal` varchar(15) DEFAULT NULL,
  `site_button_txt_hover` varchar(15) DEFAULT NULL,
  `site_button_bg_hover` varchar(15) DEFAULT NULL,
  `header_top_bar_bg` varchar(15) DEFAULT NULL,
  `header_middle_section_bg` varchar(15) DEFAULT NULL,
  `header_color` varchar(15) DEFAULT NULL,
  `header_nav_bg` varchar(15) DEFAULT NULL,
  `header_nav_item_bg_hover` varchar(15) DEFAULT NULL,
  `header_nav_txt` varchar(15) DEFAULT NULL,
  `header_nav_item_txt_hover` varchar(15) DEFAULT NULL,
  `footer_top_section_bg` varchar(15) DEFAULT NULL,
  `footer_bottom_bar_txt` varchar(15) DEFAULT NULL,
  `footer_bottom_bar_bg` varchar(15) DEFAULT NULL,
  `footer_top_section_txt` varchar(15) DEFAULT NULL,
  `site_main_font` varchar(255) DEFAULT NULL,
  `language_is_active` varchar(100) DEFAULT NULL,
  `social_fb` varchar(255) DEFAULT NULL,
  `social_tw` varchar(255) DEFAULT NULL,
  `social_gplus` varchar(255) DEFAULT NULL,
  `social_dribbble` varchar(255) DEFAULT NULL,
  `social_stumbleupon` varchar(255) DEFAULT NULL,
  `social_linkedin` varchar(255) DEFAULT NULL,
  `social_pin` varchar(255) DEFAULT NULL,
  `social_tumblr` varchar(255) DEFAULT NULL,
  `social_instagram` varchar(255) DEFAULT NULL,
  `social_youtube` varchar(255) DEFAULT NULL,
  `social_flickr` varchar(255) DEFAULT NULL,
  `social_digg` varchar(255) DEFAULT NULL,
  `social_vimeo` varchar(255) DEFAULT NULL,
  `facebook_appid` varchar(255) DEFAULT NULL,
  `facebook_secret` varchar(255) DEFAULT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `paypal_sandbox` varchar(255) DEFAULT NULL,
  `wysiwyg_about` longtext,
  `wysiwyg_contact` longtext,
  `wysiwyg_products` varchar(255) NOT NULL,
  `wysiwyg_faqs` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`contact_id`, `contact_phone_number`, `contact_email`, `contact_latitude`, `contact_longitude`, `contact_address`, `contact_monday_hours`, `contact_tuesday_hours`, `contact_wednesday_hours`, `contact_thursday_hours`, `contact_friday_hours`, `contact_saturday_hours`, `contact_sunday_hours`, `site_body_background`, `site_button_bg_normal`, `site_button_txt_normal`, `site_button_txt_hover`, `site_button_bg_hover`, `header_top_bar_bg`, `header_middle_section_bg`, `header_color`, `header_nav_bg`, `header_nav_item_bg_hover`, `header_nav_txt`, `header_nav_item_txt_hover`, `footer_top_section_bg`, `footer_bottom_bar_txt`, `footer_bottom_bar_bg`, `footer_top_section_txt`, `site_main_font`, `language_is_active`, `social_fb`, `social_tw`, `social_gplus`, `social_dribbble`, `social_stumbleupon`, `social_linkedin`, `social_pin`, `social_tumblr`, `social_instagram`, `social_youtube`, `social_flickr`, `social_digg`, `social_vimeo`, `facebook_appid`, `facebook_secret`, `paypal_email`, `paypal_sandbox`, `wysiwyg_about`, `wysiwyg_contact`, `wysiwyg_products`, `wysiwyg_faqs`) VALUES
(1, '+256-704-094-088', 'kipya-connect@gmail.com', '40.678146', '-74.5575099', 'Kansanga, Gabba', '09:00 - 21:00', '09:00  - 21:00', '09:00  - 21:00', '09:00  - 21:00', '09:00  - 14:00', '09:00  - 14:00', 'Closed', '#eeece1', '#1f497d', '#ffffff', '#ffffff', '#4f81bd', '#c00000', '#92cddc', '#ffffff', '#548dd4', '#4f81bd', '#ffffff', '#ffffff', '#95b3d7', '#ffffff', '#444444', '#ffffff', 'Oswald', 'Yes', 'http://facebook.com', 'http://twitter.com', 'http://plus.google.com', 'http://dribbble.com', 'http://stumbleupon.com', 'http://linkedin.com', 'http://pinterest.com', 'http://tumblr.com', 'http://instagram.com', 'http://youtube.com', 'http://flickr.com', 'http://digg.com', 'http://vimeo.com', NULL, NULL, 'owwilly4by4@gmail.com', 'Sandbox', '&lt;h2&gt;About Divine Masters&lt;/h2&gt;\r\n\r\n&lt;p&gt;Divine masters ..........Owor Wilbroad idididu&lt;/p&gt;\r\n\r\n&lt;h2&gt;Text and content in columns - 2 columns&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;row two-col&quot;&gt;\r\n&lt;div class=&quot;col-md-6 col-1&quot;&gt;\r\n&lt;p&gt;&lt;span&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum, nisl sit amet condimentum sollicitudin, dui felis scelerisque nulla, at efficitur ligula erat eget quam. Phasellus posuere auctor euismod. Nam vel imperdiet ex.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-6 col-2&quot;&gt;\r\n&lt;p&gt;&lt;span&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum, nisl sit amet condimentum sollicitudin, dui felis scelerisque nulla, at efficitur ligula erat eget quam. Phasellus posuere auctor euismod. Nam vel imperdiet ex.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h2&gt;Text and content in columns - 2 columns&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;row three-col&quot;&gt;\r\n&lt;div class=&quot;col-md-4 col-1&quot;&gt;\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/phprestaurant.v1.4/system/timthumb.php?src=http://localhost/phprestaurant.v1.4/skin/images/menus/event1.jpg&amp;amp;h=410&amp;amp;w=560&amp;amp;zc=1&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;Block with image, title and content&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;span&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-4 col-2&quot;&gt;\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/phprestaurant.v1.4/system/timthumb.php?src=http://localhost/phprestaurant.v1.4/skin/images/menus/event1.jpg&amp;amp;h=410&amp;amp;w=560&amp;amp;zc=1&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;Block with image, title and content&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;span&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-4 col-3&quot;&gt;\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/phprestaurant.v1.4/system/timthumb.php?src=http://localhost/phprestaurant.v1.4/skin/images/menus/event1.jpg&amp;amp;h=410&amp;amp;w=560&amp;amp;zc=1&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;Block with image, title and content&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;span&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h2&gt;Embed YouTube videos&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;row two-col-right&quot;&gt;\r\n&lt;div class=&quot;col-md-9 col-main&quot;&gt;\r\n&lt;p&gt;&lt;iframe height=&quot;500&quot; src=&quot;//www.youtube.com/embed/AJtDXIazrMo&quot; width=&quot;830&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-3 col-sidebar&quot;&gt;\r\n&lt;h2&gt;Add your own custom text&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;span&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:16px&quot;&gt;Donec vulputate ligula finibus, maximus justo vel, porttitor dui. Suspendisse aliquam odio nibh, nec consectetur augue luctus eget. Ut condimentum, nisl sit amet condimentum sollicitudin, dui felis scelerisque nulla, at efficitur ligula erat eget quam. Phasellus posuere auctor euismod. Nam vel imperdiet ex. Sed placerat vitae sem in fringilla. Fusce a nisl sit amet sem bibendum laoreet at sed ex.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;Hello all......&lt;/p&gt;\r\n', '&lt;p&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;u&gt;&lt;strong&gt;Frequently Asked Questions&lt;/strong&gt;&lt;/u&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;1. Does the system support mobile to bank account transaction?&lt;/p&gt;\r\n\r\n&lt;p&gt;It still does not have that in place but we are to embed it there.&lt;/p&gt;\r\n\r\n&lt;p&gt;2. Does the system have security checks where whenever on logs in it asks whether its the account owner by email?&lt;/p&gt;\r\n\r\n&lt;p&gt;Yes the system is able to send an email notification message inquiring from the user whether&amp;nbsp;he/she is the correct user who has logged in.&lt;/p&gt;\r\n\r\n&lt;p&gt;3. What are the rates on transfer on different networks?&lt;/p&gt;\r\n\r\n&lt;p&gt;4. How beneficial is using this platform for transaction as compared to others?&lt;/p&gt;\r\n\r\n&lt;p&gt;We offer bonuses based on the usage rate/transaction rate.&lt;/p&gt;\r\n\r\n&lt;p&gt;We offer full security to your personal accounts.&lt;/p&gt;\r\n\r\n&lt;p&gt;We offer low charges per transactions as compared to other platforms.&lt;/p&gt;\r\n\r\n&lt;p&gt;5. Does the system offer currency transfer i.e. can one convert their money from one currency to another??&lt;/p&gt;\r\n\r\n&lt;p&gt;We are yet to incorporate that module into the system.&lt;/p&gt;\r\n\r\n&lt;p&gt;6. Is the system mobile responsive?&lt;/p&gt;\r\n\r\n&lt;p&gt;Yes the system is very mobile resonsive.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `ip` varchar(20) NOT NULL,
  `attempt` datetime NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`ip`, `attempt`, `user`) VALUES
('::1', '2018-01-16 17:57:15', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE IF NOT EXISTS `login_history` (
`id` int(10) unsigned NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` varchar(300) NOT NULL,
  `event` text NOT NULL,
  `user` varchar(258) NOT NULL,
  `device` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `ip`, `date`, `event`, `user`, `device`) VALUES
(1, '::1', '2017-11-10 06:07:33', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36'),
(2, '::1', '2017-11-11 07:34:09', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36'),
(3, '::1', '2017-11-11 07:45:44', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36'),
(4, '::1', '2017-11-11 15:45:24', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'),
(5, '::1', '2017-11-11 18:26:03', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'),
(6, '::1', '2017-11-11 18:40:19', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'),
(7, '::1', '2017-11-11 18:44:56', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'),
(8, '::1', '2017-11-11 19:01:29', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'),
(9, '::1', '2017-11-15 05:48:01', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(10, '::1', '2017-11-19 11:48:54', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(11, '::1', '2017-11-19 11:51:30', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(12, '::1', '2017-11-19 11:54:07', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(13, '::1', '2017-11-19 12:00:40', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(14, '::1', '2017-11-21 07:19:16', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(15, '::1', '2017-11-21 07:52:39', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'),
(16, '::1', '2017-11-21 11:38:21', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(17, '::1', '2017-11-21 11:43:47', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(18, '::1', '2017-11-21 15:05:38', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(19, '::1', '2017-11-21 16:16:44', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(20, '::1', '2017-11-21 16:20:34', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(21, '::1', '2017-11-21 16:20:50', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'),
(22, '::1', '2017-11-21 16:27:52', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(23, '::1', '2017-11-21 16:33:17', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(24, '::1', '2017-11-21 16:36:05', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(25, '::1', '2017-11-21 17:47:19', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(26, '::1', '2017-11-21 18:03:57', '1', 'onyangoling', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(27, '::1', '2017-11-22 15:43:52', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(28, '::1', '2017-11-28 07:51:33', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(29, '::1', '2017-11-28 07:54:14', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(30, '::1', '2017-11-28 09:43:24', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(31, '::1', '2017-11-28 09:51:22', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(32, '::1', '2017-11-28 09:59:32', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(33, '::1', '2018-01-12 01:08:28', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(34, '::1', '2018-01-12 06:59:33', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(35, '::1', '2018-01-12 16:26:33', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(36, '::1', '2018-01-12 17:15:57', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),
(37, '::1', '2018-01-12 17:49:10', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(38, '197.239.37.99', '2018-01-12 12:14:36', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(39, '197.239.37.99', '2018-01-12 12:24:15', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(40, '197.239.37.99', '2018-01-12 12:49:15', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(41, '197.239.37.99', '2018-01-12 12:54:00', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),
(42, '197.239.37.99', '2018-01-12 13:47:42', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),
(43, '197.239.37.99', '2018-01-12 13:48:51', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(44, '197.239.32.35', '2018-01-13 06:11:49', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(45, '197.239.5.62', '2018-01-13 08:53:28', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(46, '197.239.36.207', '2018-01-13 09:00:09', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(47, '::1', '2018-01-13 10:51:26', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(48, '::1', '2018-01-14 22:15:38', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(49, '::1', '2018-01-15 14:00:42', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(50, '::1', '2018-01-15 14:01:13', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(51, '::1', '2018-01-16 09:59:28', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(52, '::1', '2018-01-16 13:47:17', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(53, '::1', '2018-01-16 14:40:02', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(54, '::1', '2018-01-16 17:32:09', '1', 'owwilly4by4@gmail.com', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(55, '::1', '2018-01-16 17:57:15', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE IF NOT EXISTS `merchants` (
`id` int(10) unsigned NOT NULL,
  `link` varchar(258) NOT NULL,
  `password` varchar(258) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `name` text NOT NULL,
  `user` varchar(256) NOT NULL,
  `comment` text NOT NULL,
  `status_link` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_service_providers`
--

CREATE TABLE IF NOT EXISTS `mobile_service_providers` (
  `sp_id` int(255) NOT NULL,
  `sp_name` varchar(255) NOT NULL,
  `sp_code` varchar(255) NOT NULL,
  `sp_country` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile_service_providers`
--

INSERT INTO `mobile_service_providers` (`sp_id`, `sp_name`, `sp_code`, `sp_country`, `date`) VALUES
(1, 'MTN', '+256', 'Uganda', ''),
(2, 'Airtel', '+256', 'Uganda', ''),
(3, 'Africel', '+256', 'Uganda', ''),
(4, 'UTL', '+256', 'Uganda', ''),
(5, 'Vodafone', '+256', 'Uganda', ''),
(6, 'Smart', '+256', 'Uganda', ''),
(7, 'Smile', '+256', 'Uganda', '');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `newsletter_id` int(255) NOT NULL,
  `newsletter_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `input_type` enum('input','textarea','radio','dropdown','timezones','file') CHARACTER SET latin1 NOT NULL,
  `options` text COMMENT 'Use for radio and dropdown: key|value on each line',
  `is_numeric` enum('0','1') NOT NULL DEFAULT '0' COMMENT 'forces numeric keypad on mobile devices',
  `show_editor` enum('0','1') NOT NULL DEFAULT '0',
  `input_size` enum('large','medium','small') DEFAULT NULL,
  `translate` enum('0','1') NOT NULL DEFAULT '0',
  `help_text` varchar(256) DEFAULT NULL,
  `validation` varchar(128) NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL,
  `label` varchar(128) NOT NULL,
  `value` text COMMENT 'If translate is 1, just start with your default language',
  `last_update` datetime DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `input_type`, `options`, `is_numeric`, `show_editor`, `input_size`, `translate`, `help_text`, `validation`, `sort_order`, `label`, `value`, `last_update`, `updated_by`) VALUES
(1, 'site_name', 'input', NULL, '0', '0', 'large', '0', NULL, 'required|trim|min_length[3]|max_length[128]', 10, 'Site Name', 'Easypay system', '2017-11-21 16:30:10', 1),
(2, 'per_page_limit', 'dropdown', '10|10\r\n25|25\r\n50|50\r\n75|75\r\n100|100', '1', '0', 'medium', '0', NULL, 'required|trim|numeric', 50, 'Items Per Page', '10', '2017-11-21 16:30:10', 1),
(3, 'meta_keywords', 'input', NULL, '0', '0', 'large', '0', 'Comma-seperated list of site keywords', 'trim', 20, 'Meta Keywords', 'your one stop place for all your Epayments in east africa', '2017-11-21 16:30:10', 1),
(4, 'meta_description', 'textarea', NULL, '0', '0', 'large', '0', 'Short description describing your site.', 'trim', 30, 'Meta Description', '', '2017-11-21 16:30:10', 1),
(5, 'site_email', 'input', NULL, '0', '0', 'medium', '0', 'Email address all emails will be sent from.', 'required|trim|valid_email', 40, 'Site Email', 'connect@easypay.com', '2017-11-21 16:30:10', 1),
(6, 'timezones', 'timezones', NULL, '0', '0', 'medium', '0', NULL, 'required|trim', 60, 'Timezone', 'UTC', '2017-11-21 16:30:10', 1),
(8, 'copyright', 'input', NULL, '0', '0', 'medium', '0', '', 'trim', 80, 'Copyright', '2017-18 easypay system', '2017-11-21 16:30:10', 1),
(10, 'full_upload', 'input', NULL, '0', '0', 'medium', '0', NULL, '', 100, 'Upload full', '', '2017-11-21 16:30:10', 1),
(11, 'upload_path', 'input', NULL, '0', '0', 'medium', '0', NULL, '', 110, 'Upload path', 'docbank', '2017-11-21 16:30:10', 1),
(12, 'twilio_sid', 'input', NULL, '0', '0', 'medium', '0', NULL, '', 120, 'Twilio SID', '', '2017-11-21 16:30:10', 1),
(13, 'twilio_token', 'input', NULL, '0', '0', 'medium', '0', NULL, '', 130, 'Twilio token', '', '2017-11-21 16:30:10', 1),
(14, 'twilio_number', 'input', NULL, '0', '0', 'medium', '0', NULL, '', 140, 'Twilio number', '', '2017-11-21 16:30:11', 1),
(15, 'com_transfer', 'input', NULL, '0', '0', 'medium', '0', NULL, 'required', 150, 'Fee money transfer, %', '10', '2017-11-21 16:30:11', 1),
(16, 'site_phone', 'input', NULL, '0', '0', 'medium', '0', NULL, 'numeric', 160, 'Site phone', '+256704094088', '2017-11-21 16:30:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

CREATE TABLE IF NOT EXISTS `sms_template` (
`id` int(10) unsigned NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `enable` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`id`, `title`, `message`, `enable`) VALUES
(1, 'Documents and account been verified', 'Documents was checked and your account is verified', 0),
(2, 'Documents rejected', 'Documents was rejected! ', 0),
(3, 'Documents confirmed', 'Documents was confirmed', 0),
(4, 'The business status assigned', 'The documents have been verified. Your account has been assigned a business status', 0),
(5, 'Tickets closed', 'One of the tickets was closed!', 0),
(6, 'New comment for the ticket', 'A new comment has been added to one of the tickets', 0),
(7, 'Claim be rejected!', 'The decision on the dispute was made. Claim be rejected!', 0),
(8, 'Claim is satisfied!', 'The decision on the dispute was made. Claim is satisfied!', 0),
(9, 'Claim is opened!', 'Attention! The dispute was transferred to the claim. The possibility of withdrawal is blocked', 0),
(11, 'New comment was add to dispute', 'A new comment has been added to the dispute', 0),
(12, 'Funds is received', 'The funds was received on your account  in the amount of [SUM] [CYR]', 0),
(13, 'Withdrawal is pending', 'The withdrawal, amount equal to [SUM] [CYR], were deducted from your account', 0),
(14, 'Currency exchange successfully completed', 'You successfully exchanged [SUM_1] [CYR_1] on [SUM_2] [CYR_2].', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
`id` int(255) NOT NULL,
  `mobile_sp` int(255) NOT NULL,
  `client` int(255) NOT NULL,
  `mobile_number` int(255) NOT NULL,
  `type` int(2) NOT NULL,
  `sum` varchar(200) NOT NULL,
  `fee` varchar(200) NOT NULL,
  `amount` int(255) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `receiver` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `user_comment` varchar(200) NOT NULL,
  `admin_comment` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `mobile_sp`, `client`, `mobile_number`, `type`, `sum`, `fee`, `amount`, `currency`, `status`, `sender`, `receiver`, `time`, `user_comment`, `admin_comment`) VALUES
(1, 10, 1, 2147483647, 1, '47000', '3000', 50000, 'debit_extra6', 2, 'admin', 'system', '2018-01-16 16:29:05', 'MTN Mobile Money 256704094088', 'none'),
(2, 10, 1, 2147483647, 1, '23500', '1500', 25000, 'debit_extra6', 2, 'admin', 'system', '2018-01-16 16:31:58', '10 256704094088', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `testimonial_id` int(255) NOT NULL,
  `testimonal_client_name` varchar(100) DEFAULT NULL,
  `testimonial_content` longtext,
  `testimonial_client_job` varchar(255) DEFAULT NULL,
  `testimonial_thumb` varchar(255) NOT NULL,
  `testimonial_works_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonial_id`, `testimonal_client_name`, `testimonial_content`, `testimonial_client_job`, `testimonial_thumb`, `testimonial_works_at`) VALUES
(1, 'Wilbroad Owor', 'I believe in easypay because it simplifies payments since everyting is done online.', 'Web Developer', 'skin/images/testimonials/IMG_20170327_172151.jpg', 'Kipya Connect Bussines Solutions'),
(3, 'Micheal Kiberu Nagenda', 'I always believe in ambitions and hard work because nothing can fail man with God and dedication. Lets do it', 'CEO and Founder of Kipya Connect Bussines Solutions', 'skin/images/testimonials/IMG_20161021_160315.jpg', 'Kipya Connect Bussines Solutions'),
(4, 'Naamara Hannington', 'The application is quite interesting, its good to use it.', 'Software Developer', 'skin/images/testimonials/images_022 - Copy.jpg', 'Kipya Connect Business Solutions');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
`id` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `user` varchar(128) NOT NULL,
  `title` text CHARACTER SET ucs2 NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `comment` int(11) NOT NULL,
  `message` text NOT NULL,
  `comments` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `date`, `user`, `title`, `status`, `comment`, `message`, `comments`) VALUES
(21, '2018-01-16 10:14:53', 'oworwilly', 'Withdraw Failure', '1', 0, 'Failure', 0),
(22, '2018-01-16 17:30:21', 'admin', 'Charge', '3', 0, 'I need to know how much am to be charged per deposit based on the amount. For example if i deposit 500000/= how much am i charged?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets_comment`
--

CREATE TABLE IF NOT EXISTS `tickets_comment` (
`id` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `id_ticket` int(10) NOT NULL,
  `user` varchar(128) NOT NULL,
  `role` enum('1','2') NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
`id` int(10) unsigned NOT NULL,
  `type` enum('1','2','3','4','5') NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('1','2','3','4','5') NOT NULL,
  `sender` varchar(128) NOT NULL,
  `receiver` varchar(128) NOT NULL,
  `time` datetime NOT NULL,
  `user_comment` text NOT NULL,
  `admin_comment` text NOT NULL,
  `currency` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=791 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `sum`, `fee`, `amount`, `status`, `sender`, `receiver`, `time`, `user_comment`, `admin_comment`, `currency`) VALUES
(777, '2', '210.00', '10.00', '200.00', '1', 'admin', 'system', '2017-11-21 16:34:40', 'Bank cards Need airtime', 'none', 'debit_base'),
(778, '2', '1420.00', '420.00', '1000.00', '1', 'admin', 'system', '2018-01-15 14:24:47', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(779, '1', '94000.00', '6000.00', '100000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 10:36:03', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(780, '1', '94000.00', '6000.00', '100000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 10:38:08', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(781, '1', '94000.00', '6000.00', '100000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 10:44:10', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(782, '1', '94000.00', '6000.00', '100000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 10:47:56', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(783, '1', '18800.00', '1200.00', '20000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 13:55:53', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(784, '1', '18800.00', '1200.00', '20000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 13:59:49', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(785, '2', '1420.00', '420.00', '1000.00', '1', 'admin', 'system', '2018-01-16 14:40:28', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(786, '1', '94000.00', '6000.00', '100000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 14:41:15', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(787, '1', '18800.00', '1200.00', '20000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 14:59:11', 'MTN Mobile Money 256704094088', 'none', 'debit_extra6'),
(788, '1', '23500.00', '1500.00', '25000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 16:24:18', 'MTN Mobile Money 256788558138', 'none', 'debit_extra6'),
(789, '1', '47000.00', '3000.00', '50000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 16:29:05', 'MTN Mobile Money 256704094088', 'none', 'debit_extra6'),
(790, '1', '23500.00', '1500.00', '25000.00', '2', 'MTN Mobile Money', 'system', '2018-01-16 16:31:58', 'MTN Mobile Money 256704094088', 'none', 'debit_extra6');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_log`
--

CREATE TABLE IF NOT EXISTS `transaction_log` (
  `log_id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE IF NOT EXISTS `transfers` (
  `t_id` int(255) NOT NULL,
  `client` int(255) NOT NULL,
  `sp_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `cur_code` varchar(255) NOT NULL,
  `ben_number` int(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `language` varchar(64) DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `validation_code` varchar(50) DEFAULT NULL COMMENT 'Temporary code for opt-in registration',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `verifi_status` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `fraud_status` enum('0','1','2') NOT NULL DEFAULT '0',
  `debit_base` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra1` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra3` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra4` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra5` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra6` decimal(10,2) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `first_name`, `last_name`, `email`, `language`, `is_admin`, `status`, `deleted`, `validation_code`, `created`, `updated`, `verifi_status`, `fraud_status`, `debit_base`, `debit_extra1`, `debit_extra2`, `debit_extra3`, `debit_extra4`, `debit_extra5`, `debit_extra6`, `phone`) VALUES
(1, 'admin', '48a8bd04567bd2c0ccf08c22be1c435badd896f4eca59f97a889e28941996bd4fa528c9558fb2e3c3c8af32a528ea7412d4666fed46e6a774488a166936d915f', '6002b8427a40c73450aaa24589a84ebc199b13115ac3a42d39583ed80171099240b896298e3cb45269049e385e3d45526ae24b3815740afd7070e34259b0cae4', 'Wilbroad', 'Owor', 'johnmathewlee@gmail.com', 'english', 1, '1', '0', NULL, '2013-01-01 00:00:00', '2017-11-11 18:46:12', '2', '0', '1206.93', '5672.65', '4737.50', '4990.00', '4160.00', '5000.00', '205380.00', '+256704094088'),
(2, 'daisy', 'a898c9438e88cacbd00c6ad4f9c75fdf12b61f4ccb03c70c740671bf07f3df6067851df9d98f8b8961cacb8cc4d31f5f2bdb03f01dbace18402f62db22789444', '7af08a507ef7dcf199eed35070a67b401027bf2f22aa2e7642dea88527389a9f9e9feb625db3b1e15582134e627e97d87311e3e8cb384a3ba4c1c54efeae03d4', 'daisy', 'esther', 'daisy@matlab.com', 'english', 0, '0', '0', '724d10e1240cf641dfc861343858009dd3215435', '2017-11-11 10:00:55', '2017-11-11 10:00:55', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '07005289831'),
(3, 'onyangoling', 'eba589c794bda2f08ba289efe1238bd39fe6e2f40a5461caee56df5094ee53ccf5663e267f9a6534ea6989a054674533beeb84f3c0f0ed62b29969ab53ac9854', '4ff4fa97cd160f1e85ecbf43455735052744d0fffce24feda912967c6a40741f2b7d7b4d20c43f8c28d98ad93697f1151054bcb056e6dd649e020dd7d63fd40f', 'Aloysius', 'Onyango', 'onyangoling@gmail.com', 'english', 0, '1', '0', NULL, '2017-11-11 18:37:51', '2017-11-19 11:53:47', '1', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '256752788184'),
(5, 'oworwilly', 'd41cbede109dbb17318b7136934a14f6d893da6b2d77b3d47672fff688c044845c6de64f4966e6f97c5a47f2eedf8bdb86f7c6be8a8f2be70faa3eee6aab59c6', '9be61c338b5004bd89bfc3ae16fb8564d0a0026e515fc5dcdf80be8e4f9886c953486df60e5564d162cf9725324ec198c9ad7f0074566066291bfc19885a1fa6', 'Wilbroad', 'Owor', 'owwilly4by4@gmail.com', 'english', 0, '1', '0', NULL, '2018-01-13 08:59:21', '2018-01-13 08:59:21', '0', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '75200.00', '256704094088');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE IF NOT EXISTS `verification` (
`id` int(10) unsigned NOT NULL,
  `user` varchar(128) NOT NULL,
  `type` enum('1','2','3') NOT NULL,
  `img` varchar(1000) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE IF NOT EXISTS `vouchers` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(500) CHARACTER SET utf8 NOT NULL,
  `date_creature` datetime NOT NULL,
  `creator` text CHARACTER SET utf8 NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(128) CHARACTER SET utf8 NOT NULL,
  `date_activation` datetime NOT NULL,
  `activator` varchar(128) CHARACTER SET utf8 NOT NULL,
  `status` enum('1','2') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE IF NOT EXISTS `withdraws` (
  `id` int(255) NOT NULL,
  `mobile_sp` int(255) NOT NULL,
  `client` int(255) NOT NULL,
  `mobile_number` int(255) NOT NULL,
  `type` int(2) NOT NULL,
  `sum` varchar(200) NOT NULL,
  `fee` varchar(200) NOT NULL,
  `amount` int(255) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `receiver` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `user_comment` varchar(200) NOT NULL,
  `admin_comment` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airtime_topup`
--
ALTER TABLE `airtime_topup`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billed_items`
--
ALTER TABLE `billed_items`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
 ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `btc_order`
--
ALTER TABLE `btc_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulk_payments`
--
ALTER TABLE `bulk_payments`
 ADD PRIMARY KEY (`bulk_p_id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
 ADD PRIMARY KEY (`captcha_id`), ADD KEY `word` (`word`);

--
-- Indexes for table `client_account`
--
ALTER TABLE `client_account`
 ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `currencys`
--
ALTER TABLE `currencys`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes_comment`
--
ALTER TABLE `disputes_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
 ADD PRIMARY KEY (`id`), ADD KEY `name` (`name`), ADD KEY `title` (`title`), ADD KEY `created` (`created`), ADD KEY `read` (`read`), ADD KEY `read_by` (`read_by`), ADD KEY `email` (`email`(78));

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
 ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
 ADD KEY `ip` (`ip`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_service_providers`
--
ALTER TABLE `mobile_service_providers`
 ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
 ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`), ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `sms_template`
--
ALTER TABLE `sms_template`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_comment`
--
ALTER TABLE `tickets_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `btc_order`
--
ALTER TABLE `btc_order`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
MODIFY `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `currencys`
--
ALTER TABLE `currencys`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `disputes_comment`
--
ALTER TABLE `disputes_comment`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sms_template`
--
ALTER TABLE `sms_template`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tickets_comment`
--
ALTER TABLE `tickets_comment`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=791;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
