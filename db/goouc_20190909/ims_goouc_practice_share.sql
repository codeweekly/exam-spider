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

-- Dumping structure for table we7.ims_goouc_practice_share
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_share` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `uid` int(11) NOT NULL COMMENT '分享人id',
  `paperid` int(11) NOT NULL COMMENT '分享试题id',
  `shareid` int(11) NOT NULL COMMENT '加入人id',
  `createtime` int(11) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `idx_paperid` (`paperid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_weid` (`weid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_share: ~0 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_share` DISABLE KEYS */;
INSERT IGNORE INTO `ims_goouc_practice_share` (`id`, `weid`, `uid`, `paperid`, `shareid`, `createtime`) VALUES
	(1, 4, 1, 0, 18, 1567959246),
	(2, 4, 1, 0, 19, 1567959561),
	(3, 4, 1, 0, 20, 1567960135),
	(4, 4, 1, 0, 21, 1567960357),
	(5, 4, 1, 0, 22, 1567960400);
/*!40000 ALTER TABLE `ims_goouc_practice_share` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
