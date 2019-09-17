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

-- Dumping structure for table we7.ims_goouc_practice_paper
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_paper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0' COMMENT '所属帐号',
  `pcate` int(11) DEFAULT '0' COMMENT '所属分类',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '试卷类型id',
  `title` varchar(255) DEFAULT '' COMMENT '试卷标题',
  `level` int(11) DEFAULT '0' COMMENT '难度',
  `score` int(11) DEFAULT '0' COMMENT '分值',
  `description` text,
  `thumb` varchar(255) DEFAULT '',
  `year` int(11) DEFAULT '0' COMMENT '年份',
  `viewnum` int(11) DEFAULT '0' COMMENT '访问人数',
  `fansnum` int(11) DEFAULT '0' COMMENT '考试人数',
  `times` int(11) DEFAULT '0' COMMENT '时间限制 0不限制',
  `types` varchar(5) DEFAULT NULL COMMENT '考题类型选择',
  `avscore` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平均分',
  `avtimes` int(11) NOT NULL DEFAULT '0' COMMENT '平均用时',
  `createtime` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `isfull` tinyint(1) NOT NULL DEFAULT '0' COMMENT '试题是否完整1完整0不完整',
  `isrepeat` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可以重复考试 1重复0不重复',
  `share` smallint(6) NOT NULL DEFAULT '0' COMMENT '分享N次可免费答题 0默认无法免费',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '试卷价格 默认0免费',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_pcate` (`pcate`),
  KEY `idx_tid` (`tid`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_paper: ~14 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_paper` DISABLE KEYS */;
INSERT IGNORE INTO `ims_goouc_practice_paper` (`id`, `weid`, `pcate`, `tid`, `title`, `level`, `score`, `description`, `thumb`, `year`, `viewnum`, `fansnum`, `times`, `types`, `avscore`, `avtimes`, `createtime`, `displayorder`, `status`, `isfull`, `isrepeat`, `share`, `price`) VALUES
	(2, 4, 2, 1, '0001 第一章 认识C++的对象', 1, 90, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567947534, 1, 1, 1, 1, 0, 0.00),
	(3, 4, 2, 2, '0002 C++程序设计 第一章 认识C++的对象 ', 1, 87, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567947880, 2, 1, 1, 1, 0, 0.00),
	(4, 4, 2, 3, '0003 C++程序设计 第二章 从结构到类的演变 ', 1, 90, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567947982, 3, 1, 1, 1, 0, 0.00),
	(5, 4, 2, 4, '0004 C++程序设计 第三章 函数和函数模板 ', 1, 94, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567948950, 4, 1, 1, 1, 0, 0.00),
	(6, 4, 2, 5, '0005 C++程序设计 第四章 类和对象	', 1, 92, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567949183, 5, 1, 1, 1, 0, 0.00),
	(7, 4, 2, 6, '0006 C++程序设计 第四章 类和对象	', 1, 94, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567949934, 6, 1, 1, 1, 0, 0.00),
	(8, 4, 2, 7, '0007 C++程序设计 第五章 特殊函数和成员	', 1, 96, NULL, '', 0, 1, 1, 0, NULL, 12.00, 39686, 1567949934, 7, 1, 1, 1, 0, 0.00),
	(9, 4, 2, 8, '0008 C++程序设计 第六章 继承和派生', 1, 98, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950575, 8, 1, 1, 1, 0, 0.00),
	(10, 4, 2, 9, '0009 C++程序设计 第七章 类模板与向量', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950639, 9, 1, 1, 1, 0, 0.00),
	(11, 4, 2, 10, '0010 C++程序设计 第八章 多态性和虚函数', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950689, 10, 1, 1, 1, 0, 0.00),
	(12, 4, 2, 11, '0011 C++程序设计 第九章 运算符重载及流类库', 1, 99, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950749, 11, 1, 1, 1, 0, 0.00),
	(13, 4, 2, 12, '0012 C++程序设计 2016年04月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950797, 12, 1, 1, 1, 0, 0.00),
	(14, 4, 2, 13, '0013 C++程序设计 2016年10月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950846, 13, 1, 1, 1, 0, 0.00),
	(15, 4, 2, 14, '0014 C++程序设计 2017年04月真题', 1, 100, NULL, '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950846, 14, 1, 1, 1, 0, 0.00),
	(16, 4, 2, 15, '0015 C++程序设计 2017年10月真题', 1, 100, NULL, '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950846, 15, 1, 1, 1, 0, 0.00),
	(17, 4, 2, 16, '0016 C++程序设计 2018年04月真题	', 1, 100, NULL, '', 0, 0, 0, 0, NULL, 0.00, 0, 1567950846, 16, 1, 1, 1, 0, 0.00),
	(18, 4, 2, 17, '0017 C++程序设计 2018年10月真题', 1, 98, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567951248, 17, 1, 1, 1, 0, 0.00),
	(19, 4, 2, 18, '0018 C++程序设计 2019年04月真题', 1, 98, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567951283, 18, 1, 1, 1, 0, 0.00),
	(20, 4, 3, 19, '0001.操作系统概论.章节一', 1, 92, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567951782, 1, 1, 1, 1, 0, 0.00),
	(21, 4, 3, 20, '0002.操作系统概论.章节二', 1, 85, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567951861, 2, 1, 1, 1, 0, 0.00),
	(22, 4, 3, 21, '0003.操作系统概论.章节三', 1, 99, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957114, 3, 1, 1, 1, 0, 0.00),
	(23, 4, 3, 22, '0004.操作系统概论.章节四', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957170, 4, 1, 1, 1, 0, 0.00),
	(24, 4, 3, 23, '0005.操作系统概论.章节五', 1, 99, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957225, 5, 1, 1, 1, 0, 0.00),
	(25, 4, 3, 24, '0006.操作系统概论.章节六', 1, 99, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957264, 6, 1, 1, 1, 0, 0.00),
	(26, 4, 3, 25, '0007.操作系统概论.2018年4月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957316, 7, 1, 1, 1, 0, 0.00),
	(27, 4, 3, 26, '0008.操作系统概论.2018年10月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957354, 8, 1, 1, 1, 0, 0.00),
	(28, 4, 3, 27, '0009.操作系统概论.2019年4月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957389, 9, 1, 1, 1, 0, 0.00),
	(29, 4, 3, 28, '0010.操作系统概论.全真模拟试题1', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957422, 10, 1, 1, 1, 0, 0.00),
	(30, 4, 3, 29, '0011.操作系统概论.全真模拟试题2', 1, 99, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957463, 11, 1, 1, 1, 0, 0.00),
	(31, 4, 4, 30, '0001.数据库系统原理.章节一', 1, 96, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567957959, 1, 1, 1, 1, 0, 0.00),
	(32, 4, 4, 31, '0002.数据库系统原理.章节二', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958004, 2, 1, 1, 1, 0, 0.00),
	(33, 4, 4, 32, '0003.数据库系统原理.章节三', 1, 85, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958030, 3, 1, 1, 1, 0, 0.00),
	(34, 4, 4, 33, '0004.数据库系统原理.章节四	', 1, 96, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958082, 4, 1, 1, 1, 0, 0.00),
	(35, 4, 4, 34, '0005.数据库系统原理.章节五', 1, 90, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958123, 5, 1, 1, 1, 0, 0.00),
	(36, 4, 4, 35, '0006.数据库系统原理.章节六', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958168, 6, 1, 1, 1, 0, 0.00),
	(37, 4, 4, 36, '0007.数据库系统原理.章节八', 1, 96, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958198, 7, 1, 1, 1, 0, 0.00),
	(38, 4, 4, 37, '0008.数据库系统原理.2016年4月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958233, 8, 1, 1, 1, 0, 0.00),
	(39, 4, 4, 38, '0009.数据库系统原理.2016年10月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958259, 9, 1, 1, 1, 0, 0.00),
	(40, 4, 4, 39, '0010.数据库系统原理.2017年4月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958291, 10, 1, 1, 1, 0, 0.00),
	(41, 4, 4, 40, '0011.数据库系统原理.2017年10月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958319, 11, 1, 1, 1, 0, 0.00),
	(42, 4, 4, 41, '0012.数据库系统原理.2018年4月真题	', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958348, 12, 1, 1, 1, 0, 0.00),
	(43, 4, 4, 42, '0013.数据库系统原理.2018年10月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958392, 13, 1, 1, 1, 0, 0.00),
	(44, 4, 4, 43, '0014.数据库系统原理.全真模拟演练一	', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958418, 14, 1, 1, 1, 0, 0.00),
	(45, 4, 4, 44, '0015.数据库系统原理.全真模拟演练二', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567958442, 15, 1, 1, 1, 0, 0.00),
	(46, 4, 5, 45, '0001 信息资源管理 第一章 信息资源管理基础', 1, 95, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959525, 1, 1, 1, 1, 0, 0.00),
	(47, 4, 5, 46, '0002 信息资源管理 第二章 信息化规划与组织', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959567, 2, 1, 1, 1, 0, 0.00),
	(48, 4, 5, 47, '0003 信息资源管理 第三章 信息系统资源管理', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959605, 3, 1, 1, 1, 0, 0.00),
	(49, 4, 5, 48, '0004 信息资源管理 第四章 信息资源内容管理', 1, 99, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959670, 4, 1, 1, 1, 0, 0.00),
	(50, 4, 5, 49, '0005 信息资源管理 第五章 信息资源管理的标准与法规', 1, 99, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959713, 5, 1, 1, 1, 0, 0.00),
	(51, 4, 5, 50, '0006 信息资源管理 第六章 信息资源管理安全管理', 1, 90, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959776, 6, 1, 1, 1, 0, 0.00),
	(52, 4, 5, 51, '0007 信息资源管理 第七章 企业与政府信息资源管理', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959810, 7, 1, 1, 1, 0, 0.00),
	(53, 4, 5, 52, '0008 信息资源管理 2016年04月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959838, 8, 1, 1, 1, 0, 0.00),
	(54, 4, 5, 53, '0009 信息资源管理 2016年10月真题', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959868, 9, 1, 1, 1, 0, 0.00),
	(55, 4, 5, 54, '(未完善)0010 信息资源管理 2017年04月真题 ', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959868, 10, 1, 0, 1, 0, 0.00),
	(56, 4, 5, 55, '(未完善)0011 信息资源管理 2017年10月真题 ', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959868, 11, 1, 0, 1, 0, 0.00),
	(57, 4, 5, 56, '(未完善)0012 信息资源管理 2018年04月真题 ', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959868, 12, 1, 0, 1, 0, 0.00),
	(58, 4, 5, 57, '(未完善)0013 信息资源管理 2018年10月真题 ', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959868, 13, 1, 0, 1, 0, 0.00),
	(59, 4, 5, 58, '(未完善)0014 信息资源管理 2019年04月真题 ', 1, 100, '', '', 0, 0, 0, 0, NULL, 0.00, 0, 1567959868, 14, 1, 0, 1, 0, 0.00);
/*!40000 ALTER TABLE `ims_goouc_practice_paper` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;