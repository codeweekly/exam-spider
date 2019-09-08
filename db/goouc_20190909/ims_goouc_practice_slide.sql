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

-- Dumping structure for table we7.ims_goouc_practice_slide
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片地址',
  `type` tinyint(2) DEFAULT '0' COMMENT '类型 0不跳转 1网站 2小程序内 3关联小程序',
  `url` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态 1正常 0隐藏',
  `createtime` int(11) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_slide: ~0 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_goouc_practice_slide` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
