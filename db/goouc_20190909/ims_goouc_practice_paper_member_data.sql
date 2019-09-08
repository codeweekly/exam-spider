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

-- Dumping structure for table we7.ims_goouc_practice_paper_member_data
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_paper_member_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `paperid` int(11) DEFAULT '0',
  `memberid` int(11) DEFAULT '0',
  `recordid` int(11) DEFAULT '0' COMMENT '学员考试记录id',
  `questionid` int(11) NOT NULL DEFAULT '0',
  `answer` text,
  `times` int(11) DEFAULT '0' COMMENT '单题用时',
  `createtime` int(11) DEFAULT '0',
  `isright` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否回答正确',
  `type` int(11) DEFAULT '0' COMMENT '1 判断 2单选 3多选 4 填空  5 解答',
  `pageid` int(11) NOT NULL DEFAULT '0' COMMENT '顺序id',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_memberid` (`memberid`),
  KEY `idx_paperid` (`paperid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_paper_member_data: ~24 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_paper_member_data` DISABLE KEYS */;
INSERT IGNORE INTO `ims_goouc_practice_paper_member_data` (`id`, `weid`, `paperid`, `memberid`, `recordid`, `questionid`, `answer`, `times`, `createtime`, `isright`, `type`, `pageid`) VALUES
	(1, 4, 8, 1, 1, 172, 'B', 0, 0, 1, 2, 1),
	(2, 4, 8, 1, 1, 173, 'D', 0, 0, 0, 2, 2),
	(3, 4, 8, 1, 1, 174, 'C', 0, 0, 1, 2, 3),
	(4, 4, 8, 1, 1, 175, 'C', 0, 0, 0, 2, 4),
	(5, 4, 8, 1, 1, 176, 'D', 0, 0, 0, 2, 5),
	(6, 4, 8, 1, 1, 177, 'C', 0, 0, 0, 2, 6),
	(7, 4, 8, 1, 1, 178, 'D', 0, 0, 0, 2, 7),
	(8, 4, 8, 1, 1, 179, 'B', 0, 0, 1, 2, 8),
	(9, 4, 8, 1, 1, 180, 'D', 0, 0, 0, 2, 9),
	(10, 4, 8, 1, 1, 181, 'B', 0, 0, 0, 2, 10),
	(11, 4, 8, 1, 1, 182, 'C', 0, 0, 0, 2, 11),
	(12, 4, 8, 1, 1, 183, 'D', 0, 0, 0, 2, 12),
	(13, 4, 8, 1, 1, 184, 'B', 0, 0, 0, 2, 13),
	(14, 4, 8, 1, 1, 185, 'C', 0, 0, 0, 2, 14),
	(15, 4, 8, 1, 1, 186, 'C', 0, 0, 0, 2, 15),
	(16, 4, 8, 1, 1, 187, '【1】', 0, 0, 0, 4, 16),
	(17, 4, 8, 1, 1, 188, '【2】', 0, 0, 0, 4, 17),
	(18, 4, 8, 1, 1, 189, '【3】', 0, 0, 0, 4, 18),
	(19, 4, 8, 1, 1, 190, '【4】', 0, 0, 0, 4, 19),
	(20, 4, 8, 1, 1, 191, '【5】', 0, 0, 0, 4, 20),
	(21, 4, 8, 1, 1, 192, '【6】', 0, 0, 0, 4, 21),
	(22, 4, 8, 1, 1, 193, '【7】', 0, 0, 0, 4, 22),
	(23, 4, 8, 1, 1, 194, '【8】', 0, 0, 0, 4, 23),
	(24, 4, 8, 1, 1, 195, '【9】', 0, 0, 0, 4, 24);
/*!40000 ALTER TABLE `ims_goouc_practice_paper_member_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
