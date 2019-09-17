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

-- Dumping structure for table we7.ims_goouc_practice_paper_order
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_paper_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `paperid` int(11) NOT NULL COMMENT '试题id',
  `coin` int(11) DEFAULT '0' COMMENT '支付金币数',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '付款金额',
  `ordersn` varchar(32) NOT NULL COMMENT '订单号',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `paytime` int(11) DEFAULT NULL COMMENT '支付时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '订单状态 0未支付 1已付款',
  `transaction_sn` varchar(255) DEFAULT NULL COMMENT '第三方流水号',
  PRIMARY KEY (`id`),
  KEY `idx_paperid` (`paperid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_weid` (`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_paper_order: ~0 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_paper_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_goouc_practice_paper_order` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
