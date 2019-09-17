-- --------------------------------------------------------
-- 主机:                           cdb-67dcvdgk.bj.tencentcdb.com
-- 服务器版本:                        5.7.18-20170830-log - 20170531
-- 服务器OS:                        Linux
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table we7.ims_goouc_practice_sysset
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_sysset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `coin` int(11) DEFAULT '1' COMMENT '金币设置',
  `medal` text COMMENT '勋章相关',
  `about` text COMMENT '勋章说明',
  `rate` int(11) DEFAULT NULL COMMENT '金币汇率',
  `mch_id` varchar(32) DEFAULT NULL COMMENT '微信商户号',
  `apikey` varchar(255) DEFAULT NULL COMMENT '微信api密钥',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '小程序码',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_sysset: ~2 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_sysset` DISABLE KEYS */;
INSERT IGNORE INTO `ims_goouc_practice_sysset` (`id`, `weid`, `coin`, `medal`, `about`, `rate`, `mch_id`, `apikey`, `qrcode`) VALUES
	(1, 2, 0, 'a:8:{i:0;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:1;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:2;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:3;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:4;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:5;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:6;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:7;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}}', '', 0, '', '123456', NULL),
	(2, 4, 0, 'a:8:{i:0;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:1;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:2;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:3;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:4;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:5;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:6;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}i:7;a:4:{s:4:"name";s:0:"";s:4:"qnum";s:0:"";s:5:"image";s:0:"";s:6:"image1";s:0:"";}}', '', 100, '10000', '123456', NULL);
/*!40000 ALTER TABLE `ims_goouc_practice_sysset` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
