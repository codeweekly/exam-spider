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

-- Dumping structure for table we7.ims_goouc_practice_paper_category
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_paper_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `parentid` int(11) DEFAULT '0',
  `cname` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `description` text COMMENT '描述',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_parentid` (`parentid`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_paper_category: ~4 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_paper_category` DISABLE KEYS */;
INSERT IGNORE INTO `ims_goouc_practice_paper_category` (`id`, `weid`, `parentid`, `cname`, `displayorder`, `description`, `status`) VALUES
	(1, 4, 0, '深大计算机', 0, '', 1),
	(2, 4, 1, 'C++程序设计', 0, '', 1),
	(3, 4, 1, '操作系统概论', 0, '', 1),
	(4, 4, 1, '数据库系统原理', 0, '', 1),
	(5, 4, 1, '信息资源管理', 0, '', 1);
/*!40000 ALTER TABLE `ims_goouc_practice_paper_category` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
