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

-- Dumping structure for table we7.ims_goouc_practice_member
CREATE TABLE IF NOT EXISTS `ims_goouc_practice_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `openid` varchar(255) DEFAULT NULL,
  `session_key` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币数',
  `avatarurl` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `subject` int(11) NOT NULL DEFAULT '0',
  `grade` int(11) NOT NULL DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table we7.ims_goouc_practice_member: ~17 rows (大约)
/*!40000 ALTER TABLE `ims_goouc_practice_member` DISABLE KEYS */;
INSERT IGNORE INTO `ims_goouc_practice_member` (`id`, `weid`, `openid`, `session_key`, `username`, `coin`, `avatarurl`, `mobile`, `email`, `subject`, `grade`, `createtime`, `status`) VALUES
	(1, 4, 'oKGFa5FXJyn4nXKBIq3WQkQS23GU', 'OvJqbZLvYJecfXrYT+WB6w==', '熊貓俠', 0, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLcTkJ22W7yHicSbjfC5pBhCF410AQOxn27rQpuwYoqHeVV2vFRS5dqtoVde5RIsMtlXicv5OlYV4qA/132', '13148765950', 'john123951@126.com', 5, 1, 1567522337, 1),
	(2, 4, 'oKGFa5BBr8LeerPPB6L2KU35hr-Y', 'bFuclN8GJeK1G4q8Gx6zmA==', 'rdgztest_HZDHDH', 0, '', '', '', 0, 0, 1567526179, 1),
	(3, 4, 'oKGFa5LYdGmwdbeZRa36j2ShEStg', 'hVABVG1YbuPBSpSC/iRx5g==', '张景昌', 0, 'https://wx.qlogo.cn/mmhead/1XNXLKWJ763L38lrfkFib1q4TVoaEN6qaHVudGeWmDpA/132', '', '', 0, 0, 1567526418, 1),
	(4, 4, 'oKGFa5PRBurnrWKK9ZtbgX1Sbb_g', '4Xfw9gTYcBLyiKYlP4PbdQ==', '你好，请问美国怎么走？', 0, 'https://wx.qlogo.cn/mmopen/vi_32/ib0enqYQwaf5qk5hf9crpialu1zS46WNRv8RmOWxhwDWwFCkN9FbdQrib2yyILZAHfPibYWvSdicOOXevI8QK2H3JicQ/132', '', '', 0, 0, 1567559340, 1),
	(5, 4, 'oKGFa5IBVx92365lRXfKOQ7BqhW4', '/C4fmLwYXHk17tUSbnaOHQ==', '赵耀东', 0, 'https://wx.qlogo.cn/mmhead/l9wBIj25RSIYlPTnn3LJQtvc6MtvYQic0MoR91agezsw/132', '', '', 0, 0, 1567602855, 1),
	(6, 4, 'oKGFa5IISUOgen57krPgK4Eu77fY', 'I5LIhinXkXwu9LENGo0jcQ==', '林宏达', 0, 'https://wx.qlogo.cn/mmhead/6ib7kfMGO4epa8kvWIO2GRhJjBhJXFDfHInia2DCDW780/132', '', '', 0, 0, 1567652311, 1),
	(7, 4, 'oKGFa5OHbqDIjDinYPvRDPZpA-ek', 'pGqqMhwgj82aqJNRUXJZFw==', '黄沛文', 0, 'https://wx.qlogo.cn/mmhead/t3tayQTctnicJbjL7CHOyerkIiak1wwNqhxCGwBdH0FEE/132', '', '', 0, 0, 1567652556, 1),
	(8, 4, 'oKGFa5B1pYH1N0IXTHokG_i4iC_M', 'UZXuBylnRevhEjBNCibyBQ==', '江莉婷', 0, 'https://wx.qlogo.cn/mmhead/50yhdVsMdTNYlI3BzNEmlHZzia0w1tJd0yrLNtl8pJ9c/132', '', '', 0, 0, 1567690182, 1),
	(9, 4, 'oKGFa5OqOt3AE1qRSLd7YZIElxzs', '6oac+kVbYe7daEXcpfigAQ==', '林平琴', 0, 'https://wx.qlogo.cn/mmhead/teCC2ju9Vyiar9jjnib03t74IvHicicaicHmRj53IrlY4rO4/132', '', '', 0, 0, 1567730638, 1),
	(10, 4, 'oKGFa5Lr-qRMT-FkZ19XA1g_1ed4', 'gGOsAqqipTtS4rfQLtDOgw==', '李淑政', 0, 'https://wx.qlogo.cn/mmhead/y4Hl0aJ7GOtoyAQwyuJwTZia4Eyh2DlTHjViatxhFH7yA/132', '', '', 0, 0, 1567752293, 1),
	(11, 4, 'oKGFa5IU_pTsbLl6aJbq2x8Jlgy0', '6Oe3Ef3wM/HvveP/rhYxhQ==', '吴台麟', 0, 'https://wx.qlogo.cn/mmhead/vZkzXfjJXia9cwoDSmIyryBdeXR9YQkyuF2oTAKwvcbM/132', '', '', 0, 0, 1567757968, 1),
	(12, 4, 'oKGFa5BHa3bCT3Z1LRehPnNXNZWE', 'JzYaxZBIhJmopA5/n03Zxw==', '清琼（wenford.li）', 0, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIS3YHPe9ibea7b9JkGd5xg17JhNPDxc7hDsq8uEFCdUtsff2AdK8Yv4E7WGZvRIPQQMazWoibJTH4w/132', '', '', 0, 0, 1567761167, 1),
	(13, 4, 'oKGFa5EmrYQHQSBeKvFFGtlr7jJQ', 'DDp8AvbPr2t/iusRq4qsdw==', 'hindsight is 20丨20', 0, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI2ypuOuCibDFUlFLvJeA3DXVA01JDMiaNXSrF3vF3VpPfoyuHzzkmwzZhcxqPwNQl2tgGKZsIe034A/132', '15019476011', '1194197378@qq.com', 2, 1, 1567761492, 1),
	(14, 4, 'oKGFa5JAljsnFZIFfQISOiFeZahQ', '7x52vs80DUYbhc5tbxZ3QA==', '香蕉你个不呐呐', 0, 'https://wx.qlogo.cn/mmopen/vi_32/Rnw3KOcW40icqguoAAISyA87FfehsKzoYfRHkibDs2A8oaYegAl5mp8OAX2YjaFpLUKp9HW9MOxaESWerwzXNyZQ/132', '', '', 0, 0, 1567762242, 1),
	(15, 4, 'oKGFa5O3apRlqDLuhIj0ZxBDStNA', 'hXDsABWfH9kmkbkiSJkASg==', 'null', 0, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erFMgsFUbhIhaDfeibcVE3TfGib63V9icrbEa4TEmp5VQQ62KacVsYynqoKqA42Og2EibJJAneoocSnjQ/132', '', '', 0, 0, 1567765132, 1),
	(16, 4, 'oKGFa5ELrx4Nj0Ht2aqxjWJfLfX8', 'Ke+nOtH7hK4oLuLryDUxOQ==', '丁不三', 0, 'https://wx.qlogo.cn/mmopen/vi_32/zfXNHMZo2Eq9WznhsoXQia567fx6Tso1sMaqoticnIflGXUI1Yq19ibaFY4gxjuqD8Ug91lay8mLYoiaq4OFzPgwvg/132', '', '', 0, 0, 1567783020, 1),
	(17, 4, 'oKGFa5DaWSJjp7wBhRciGeZY42yc', 'fDPUSIo4jDRcFyJd2wJi7Q==', '°借米僧', 0, 'https://wx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM7lsu9D8lKoTTa7yaNzoNJyRqb14YGC28lcfwkzSCbCLP16x8kX4PnYPLbSuKiaONibblatkYqmQppw/132', '18665376295', 'jamnsin@qq.com', 2, 1, 1567785154, 1),
	(18, 4, 'oKGFa5AlSy9yinZpTPerVqXBZfJw', 'rvrBK5wnfPMTV5RgWRRvpg==', 'small 犭者', 0, 'https://wx.qlogo.cn/mmopen/vi_32/BeTsqf6AwZwypE7GaBiaVBOaDQ92kNZ0s9EVTkNgKzGic6mN0yDSmdgyDooDichxkAEB8iadPVZNpVianvfibZol4OhA/132', '13530640243', '645464089@qq.com', 4, 1, 1567959246, 1),
	(19, 4, 'oKGFa5NsumMz5e2_EEO7mInkfZ1A', 'LBg32TagQdK+w5eLuuz9FA==', '-_-', 0, 'https://wx.qlogo.cn/mmopen/vi_32/JePXUWYSCn84eOqZXeod1ULcLarUqexUdgIFxul6JZuIoOicE1Wy0fX9I8KBLzly2ibabwVbkQRqEN5PQfub1kcg/132', '', '', 0, 0, 1567959560, 1),
	(20, 4, 'oKGFa5NhMUh7cOSLOYBoyLAdnQVg', '2CBCsBEGlEglq2epTkKRQg==', 'Eddie', 0, 'https://wx.qlogo.cn/mmopen/vi_32/qCWdl3X2BIxySEMGJpQia8o9ibO69AXRYwcOqHROunrIs2gfRmnvC5NCNDiajHichuH6INkIdNt8bNVk5r3LUDwVGQ/132', '', '', 0, 0, 1567960134, 1),
	(21, 4, 'oKGFa5EAFPIBQqlVpbykSVmvu2dI', 'jVCjRyOXyGos7Ss2qbG1HA==', '陈炫文', 0, 'https://wx.qlogo.cn/mmopen/vi_32/woZcFX4ib4vH6w82ic2GDZpyUtbez9uUCdGOSxujhS9MaFicF8CNOEOVFHialxCVvM66B17y99dDq8gSl9OudRUEjA/132', '13682990552', '1791484851@qq.com', 3, 1, 1567960357, 1),
	(22, 4, 'oKGFa5InmepL1D30W2BT0N1Sn4r0', 'UpE7g63zDsjmSsjCmWdxEQ==', 'Leekk', 0, 'https://wx.qlogo.cn/mmopen/vi_32/yBOBgKKnOiaUQ3K6bNicfc2DEo61OenVvUAB8VoKOxmMRKQJlsmYicuy1yMaLvhTcFjZ15mQ6100ugab9Up7I21gQ/132', '', '', 0, 0, 1567960399, 1);
/*!40000 ALTER TABLE `ims_goouc_practice_member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
