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

-- Dumping structure for table we7.ims_goouc_practice_gift
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '礼品id',
  `weid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL COMMENT '礼品名称',
  `price` int(11) NOT NULL DEFAULT '100' COMMENT '礼品市场价格',
  `coins` int(11) NOT NULL DEFAULT '500' COMMENT '礼品所需金币',
  `image` varchar(255) NOT NULL COMMENT '礼品图片',
  `about` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_gift: ~0 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_gift` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_goouc_practice_gift` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
