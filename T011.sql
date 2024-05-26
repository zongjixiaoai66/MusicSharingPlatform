/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t011`;
CREATE DATABASE IF NOT EXISTS `t011` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t011`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1702434552500 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天表';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(51, '2021-01-11 03:35:01', 1, 1, '提问1', '回复1', 1),
	(52, '2021-01-11 03:35:01', 2, 2, '提问2', '回复2', 2),
	(53, '2021-01-11 03:35:01', 3, 3, '提问3', '回复3', 3),
	(54, '2021-01-11 03:35:01', 4, 4, '提问4', '回复4', 4),
	(55, '2021-01-11 03:35:01', 5, 5, '提问5', '回复5', 5),
	(56, '2021-01-11 03:35:01', 6, 6, '提问6', '回复6', 6),
	(1610336663286, '2021-01-11 03:44:22', 1610336516339, NULL, '你好', NULL, 0),
	(1610336962597, '2021-01-11 03:49:21', 1610336516339, 1, NULL, '你好', NULL),
	(1702434400426, '2023-12-13 02:26:39', 11, NULL, '6666', NULL, 0),
	(1702434552499, '2023-12-13 02:29:11', 11, NULL, '1111', NULL, 1);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootc8hzm/upload/1610336445098.png'),
	(2, 'picture2', 'http://localhost:8080/springbootc8hzm/upload/1610336455892.png'),
	(7, '首页轮播图上传的地方', 'http://localhost:8080/springbootc8hzm/upload/1610336983475.png');

DROP TABLE IF EXISTS `discussyinlefanchang`;
CREATE TABLE IF NOT EXISTS `discussyinlefanchang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336611742 DEFAULT CHARSET=utf8mb3 COMMENT='音乐翻唱评论表';

DELETE FROM `discussyinlefanchang`;
INSERT INTO `discussyinlefanchang` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(91, '2021-01-11 03:35:02', 1, 1, '评论内容1', '回复内容1'),
	(92, '2021-01-11 03:35:02', 2, 2, '评论内容2', '回复内容2'),
	(93, '2021-01-11 03:35:02', 3, 3, '评论内容3', '回复内容3'),
	(94, '2021-01-11 03:35:02', 4, 4, '评论内容4', '回复内容4'),
	(95, '2021-01-11 03:35:02', 5, 5, '评论内容5', '回复内容5'),
	(96, '2021-01-11 03:35:02', 6, 6, '评论内容6', '回复内容6'),
	(1610336611741, '2021-01-11 03:43:31', 31, 1610336516339, '四方达刚发的广东佛山', NULL);

DROP TABLE IF EXISTS `discussyinlezixun`;
CREATE TABLE IF NOT EXISTS `discussyinlezixun` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336595180 DEFAULT CHARSET=utf8mb3 COMMENT='音乐资讯评论表';

DELETE FROM `discussyinlezixun`;
INSERT INTO `discussyinlezixun` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(81, '2021-01-11 03:35:01', 1, 1, '评论内容1', '回复内容1'),
	(82, '2021-01-11 03:35:01', 2, 2, '评论内容2', '回复内容2'),
	(83, '2021-01-11 03:35:01', 3, 3, '评论内容3', '回复内容3'),
	(84, '2021-01-11 03:35:01', 4, 4, '评论内容4', '回复内容4'),
	(85, '2021-01-11 03:35:01', 5, 5, '评论内容5', '回复内容5'),
	(86, '2021-01-11 03:35:01', 6, 6, '评论内容6', '回复内容6'),
	(1610336595179, '2021-01-11 03:43:15', 21, 1610336516339, 'f十多个发的给对方', NULL);

DROP TABLE IF EXISTS `discusszaixiantingge`;
CREATE TABLE IF NOT EXISTS `discusszaixiantingge` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336579503 DEFAULT CHARSET=utf8mb3 COMMENT='在线听歌评论表';

DELETE FROM `discusszaixiantingge`;
INSERT INTO `discusszaixiantingge` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(101, '2021-01-11 03:35:02', 1, 1, '评论内容1', '回复内容1'),
	(102, '2021-01-11 03:35:02', 2, 2, '评论内容2', '回复内容2'),
	(103, '2021-01-11 03:35:02', 3, 3, '评论内容3', '回复内容3'),
	(104, '2021-01-11 03:35:02', 4, 4, '评论内容4', '回复内容4'),
	(105, '2021-01-11 03:35:02', 5, 5, '评论内容5', '回复内容5'),
	(106, '2021-01-11 03:35:02', 6, 6, '评论内容6', '回复内容6'),
	(1610336579502, '2021-01-11 03:42:59', 41, 1610336516339, '食发鬼发的感到十分广东佛山', NULL);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336628387 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(71, '2021-01-11 03:35:01', 1, '用户名1', '留言内容1', '回复内容1'),
	(72, '2021-01-11 03:35:01', 2, '用户名2', '留言内容2', '回复内容2'),
	(73, '2021-01-11 03:35:01', 3, '用户名3', '留言内容3', '回复内容3'),
	(74, '2021-01-11 03:35:01', 4, '用户名4', '留言内容4', '回复内容4'),
	(75, '2021-01-11 03:35:01', 5, '用户名5', '留言内容5', '回复内容5'),
	(76, '2021-01-11 03:35:01', 6, '用户名6', '留言内容6', '回复内容6'),
	(1610336628386, '2021-01-11 03:43:48', 1610336516339, '123', '手打尽快发货点事刚发的', '电风扇广东佛山广东佛山');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336613583 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1610336613582, '2021-01-11 03:43:32', 1610336516339, 31, 'yinlefanchang', '歌曲名称1', 'http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'tr03fwssz9igbyrvfbz494qaije8ylcf', '2021-01-11 03:37:58', '2023-12-13 03:27:57'),
	(2, 1610336516339, '123', 'yonghu', '用户', 'oe3uo6b1dlmco52ul5i0qer5kmxw085f', '2021-01-11 03:42:04', '2021-01-10 20:42:04'),
	(3, 1610336721398, '234', 'yonghu', '用户', 'pqn40y4pukj82i222ncp7p5ne776snjs', '2021-01-11 03:45:30', '2021-01-10 20:45:31'),
	(4, 11, '用户1', 'yonghu', '用户', 'pw1fezfyfwa4opqrx0an5h9439ouk7vd', '2023-12-13 02:26:25', '2023-12-13 03:26:26');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-01-11 03:35:02');

DROP TABLE IF EXISTS `yinlefanchang`;
CREATE TABLE IF NOT EXISTS `yinlefanchang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `gequmingcheng` varchar(200) DEFAULT NULL COMMENT '歌曲名称',
  `yuanchang` varchar(200) DEFAULT NULL COMMENT '原唱',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `yinpin` varchar(200) DEFAULT NULL COMMENT '音频',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fanchangyuanyin` longtext COMMENT '翻唱原因',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `gequjieshao` longtext COMMENT '歌曲介绍',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336812705 DEFAULT CHARSET=utf8mb3 COMMENT='音乐翻唱';

DELETE FROM `yinlefanchang`;
INSERT INTO `yinlefanchang` (`id`, `addtime`, `bianhao`, `gequmingcheng`, `yuanchang`, `biaoqian`, `yinpin`, `tupian`, `fanchangyuanyin`, `yonghuming`, `gequjieshao`, `thumbsupnum`, `crazilynum`) VALUES
	(31, '2021-01-11 03:35:01', '编号1', '歌曲名称1', '原唱1', '标签1', 'http://localhost:8080/springbootc8hzm/upload/1610336364110.mp3', 'http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian1.jpg', '翻唱原因1电风扇沪电股份很反感金龟换酒都是', '用户名1', '<p>歌曲介绍1的双方 回防高地回防高地发的各电风扇割发代首广东佛山</p>', 2, 2),
	(32, '2021-01-11 03:35:01', '编号2', '歌曲名称2', '原唱2', '标签2', '', 'http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian2.jpg', '翻唱原因2', '用户名2', '歌曲介绍2', 2, 2),
	(33, '2021-01-11 03:35:01', '编号3', '歌曲名称3', '原唱3', '标签3', '', 'http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian3.jpg', '翻唱原因3', '用户名3', '歌曲介绍3', 3, 3),
	(34, '2021-01-11 03:35:01', '编号4', '歌曲名称4', '原唱4', '标签4', '', 'http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian4.jpg', '翻唱原因4', '用户名4', '歌曲介绍4', 4, 4),
	(35, '2021-01-11 03:35:01', '编号5', '歌曲名称5', '原唱5', '标签5', '', 'http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian5.jpg', '翻唱原因5', '用户名5', '歌曲介绍5', 5, 5),
	(36, '2021-01-11 03:35:01', '编号6', '歌曲名称6', '原唱6', '标签6', '', 'http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian6.jpg', '翻唱原因6', '用户名6', '歌曲介绍6', 6, 6),
	(1610336812704, '2021-01-11 03:46:52', '1610336772465', '泡沫', '邓紫棋', '伤感', 'http://localhost:8080/springbootc8hzm/upload/1610336804906.mp3', 'http://localhost:8080/springbootc8hzm/upload/1610336788700.jpg', '发多少割发代首割发代首广东佛山g', '234', '<p>是大法官发多少广东佛山广东佛山广东佛山</p><p>发给很反感烦得很发过的回防高地hgf</p>', 0, 0);

DROP TABLE IF EXISTS `yinlezixun`;
CREATE TABLE IF NOT EXISTS `yinlezixun` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhaiyao` longtext COMMENT '摘要',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336871889 DEFAULT CHARSET=utf8mb3 COMMENT='音乐资讯';

DELETE FROM `yinlezixun`;
INSERT INTO `yinlezixun` (`id`, `addtime`, `biaoti`, `zixunleixing`, `tupian`, `zhaiyao`, `xiangqing`, `thumbsupnum`, `crazilynum`) VALUES
	(21, '2021-01-11 03:35:01', '年度流行金曲，你不得不听的10大金曲', '资讯类型1', 'http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian1.jpg', '摘要1阿斯蒂芬手打富士达富士达富士达fs', '<p>详情1 富士达富士达富士达富士达非的故事</p><p>发过火发给回防高地很反感很反感回复回防高地</p><p>发的回防高地回防高地回防高地发的发的供货方大哥</p><p>士大夫电风扇回防高地回防高地</p>', 2, 2),
	(22, '2021-01-11 03:35:01', '标题2', '资讯类型2', 'http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian2.jpg', '摘要2', '详情2', 2, 2),
	(23, '2021-01-11 03:35:01', '标题3', '资讯类型3', 'http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian3.jpg', '摘要3', '详情3', 3, 3),
	(24, '2021-01-11 03:35:01', '标题4', '资讯类型4', 'http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian4.jpg', '摘要4', '详情4', 4, 4),
	(25, '2021-01-11 03:35:01', '标题5', '资讯类型5', 'http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian5.jpg', '摘要5', '详情5', 5, 5),
	(26, '2021-01-11 03:35:01', '标题6', '资讯类型6', 'http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian6.jpg', '摘要6', '详情6', 6, 6),
	(1610336871888, '2021-01-11 03:47:51', '2021开年新春好歌', '好歌推荐', 'http://localhost:8080/springbootc8hzm/upload/1610336866311.jpg', '手打富士达发多少fsd', '<p> 发多少富士达富士达富士达富士达发送到</p>', 0, 0);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336721399 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `nianling`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`) VALUES
	(11, '2021-01-11 03:35:01', '用户1', '123456', '姓名1', '年龄1', '男', '13823888881', '916077357@qq.com', '440300199101010001'),
	(12, '2021-01-11 03:35:01', '用户2', '123456', '姓名2', '年龄2', '男', '13823888882', '916077357@qq.com', '440300199202020002'),
	(13, '2021-01-11 03:35:01', '用户3', '123456', '姓名3', '年龄3', '男', '13823888883', '916077357@qq.com', '440300199303030003'),
	(14, '2021-01-11 03:35:01', '用户4', '123456', '姓名4', '年龄4', '男', '13823888884', '916077357@qq.com', '440300199404040004'),
	(15, '2021-01-11 03:35:01', '用户5', '123456', '姓名5', '年龄5', '男', '13823888885', '916077357@qq.com', '440300199505050005'),
	(16, '2021-01-11 03:35:01', '用户6', '123456', '姓名6', '年龄6', '男', '13823888886', '916077357@qq.com', '440300199606060006'),
	(1610336516339, '2021-01-11 03:41:56', '123', '123456', '都是', NULL, NULL, NULL, '916077357@qq.com', NULL),
	(1610336721398, '2021-01-11 03:45:21', '234', '123456', '第三方', '24', '男', '13455667788', '916077357@qq.com', '223344556677889900');

DROP TABLE IF EXISTS `zaixiantingge`;
CREATE TABLE IF NOT EXISTS `zaixiantingge` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `gequmingcheng` varchar(200) DEFAULT NULL COMMENT '歌曲名称',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `yuanchang` varchar(200) DEFAULT NULL COMMENT '原唱',
  `zuoqu` varchar(200) DEFAULT NULL COMMENT '作曲',
  `zuoci` varchar(200) DEFAULT NULL COMMENT '作词',
  `yinle` varchar(200) DEFAULT NULL COMMENT '音乐',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gequjianjie` longtext COMMENT '歌曲简介',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336937707 DEFAULT CHARSET=utf8mb3 COMMENT='在线听歌';

DELETE FROM `zaixiantingge`;
INSERT INTO `zaixiantingge` (`id`, `addtime`, `bianhao`, `gequmingcheng`, `biaoqian`, `yuanchang`, `zuoqu`, `zuoci`, `yinle`, `shipin`, `tupian`, `gequjianjie`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(41, '2021-01-11 03:35:01', '编号1', '过火', '标签1', '张信哲', '作曲1', '作词1', 'http://localhost:8080/springbootc8hzm/upload/1610336392855.mp3', '', 'http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian1.jpg', '<p>歌曲简介1电饭锅广东佛山很反感</p><p>电风扇花港饭店很反感jhg士大夫很反感</p>', 2, 2, '2023-12-13 10:28:26', 6),
	(42, '2021-01-11 03:35:01', '编号2', '歌曲名称2', '标签2', '原唱2', '作曲2', '作词2', '', '', 'http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian2.jpg', '歌曲简介2', 2, 2, '2021-01-11 11:35:01', 2),
	(43, '2021-01-11 03:35:01', '编号3', '歌曲名称3', '标签3', '原唱3', '作曲3', '作词3', '', '', 'http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian3.jpg', '歌曲简介3', 3, 3, '2021-01-11 11:35:01', 3),
	(44, '2021-01-11 03:35:01', '编号4', '歌曲名称4', '标签4', '原唱4', '作曲4', '作词4', '', '', 'http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian4.jpg', '歌曲简介4', 4, 4, '2021-01-11 03:44:37', 5),
	(45, '2021-01-11 03:35:01', '编号5', '歌曲名称5', '标签5', '原唱5', '作曲5', '作词5', '', '', 'http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian5.jpg', '歌曲简介5', 5, 5, '2021-01-11 11:35:01', 5),
	(46, '2021-01-11 03:35:01', '编号6', '歌曲名称6', '标签6', '原唱6', '作曲6', '作词6', '', '', 'http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian6.jpg', '歌曲简介6', 6, 6, '2021-01-11 11:35:01', 6),
	(1610336937706, '2021-01-11 03:48:57', '1610336897888', '撒是', '标签是', '林俊杰', '林俊杰', '的的', 'http://localhost:8080/springbootc8hzm/upload/1610336915260.mp3', 'http://localhost:8080/springbootc8hzm/upload/1610336921082.mp4', 'http://localhost:8080/springbootc8hzm/upload/1610336933581.jpg', '<p>第三方割发代首割发代首第三方广东佛山广东佛山</p>', 0, 0, '2021-01-11 03:50:11', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
