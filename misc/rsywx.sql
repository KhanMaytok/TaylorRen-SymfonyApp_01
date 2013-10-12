-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 10 月 07 日 07:23
-- 服务器版本: 5.5.34
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `rsywxnet_rsywx`
--

DELIMITER $$
--
-- 存储过程
--
DROP PROCEDURE IF EXISTS `visitbyday`$$
CREATE DEFINER=`rsywxnet_root`@`localhost` PROCEDURE `visitbyday`()
begin
select count(bid) vc, date(from_unixtime(visitwhen+24*60*60)) vt from book_visit group by vt order by vt;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `book_article`
--

DROP TABLE IF EXISTS `book_article`;
CREATE TABLE IF NOT EXISTS `book_article` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `datein` date NOT NULL,
  `uri` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `book_book`
--

DROP TABLE IF EXISTS `book_book`;
CREATE TABLE IF NOT EXISTS `book_book` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place` int(11) DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `copyrighter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `translated` tinyint(1) NOT NULL,
  `purchdate` date NOT NULL,
  `price` double NOT NULL,
  `pubdate` date NOT NULL,
  `printdate` date NOT NULL,
  `ver` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `deco` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `kword` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `isbn` varchar(17) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `instock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D278E839741D53CD` (`place`),
  KEY `IDX_D278E8399CE8D546` (`publisher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `book_headline`
--

DROP TABLE IF EXISTS `book_headline`;
CREATE TABLE IF NOT EXISTS `book_headline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviewtitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` date NOT NULL,
  `show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F91777E436BB5955` (`bookid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- 表的结构 `book_place`
--

DROP TABLE IF EXISTS `book_place`;
CREATE TABLE IF NOT EXISTS `book_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- 表的结构 `book_publisher`
--

DROP TABLE IF EXISTS `book_publisher`;
CREATE TABLE IF NOT EXISTS `book_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=271 ;

-- --------------------------------------------------------

--
-- 表的结构 `book_review`
--

DROP TABLE IF EXISTS `book_review`;
CREATE TABLE IF NOT EXISTS `book_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headlineid` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `datein` date NOT NULL,
  `URI` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_review_ibfk_1` (`headlineid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=70 ;

-- --------------------------------------------------------

--
-- 表的结构 `book_taglist`
--

DROP TABLE IF EXISTS `book_taglist`;
CREATE TABLE IF NOT EXISTS `book_taglist` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `bookid` (`bookid`,`tag`),
  KEY `bookid_2` (`bookid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4285 ;

-- --------------------------------------------------------

--
-- 表的结构 `book_visit`
--

DROP TABLE IF EXISTS `book_visit`;
CREATE TABLE IF NOT EXISTS `book_visit` (
  `bid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visitwhen` bigint(20) NOT NULL,
  PRIMARY KEY (`bid`,`visitwhen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `lakers`
--

DROP TABLE IF EXISTS `lakers`;
CREATE TABLE IF NOT EXISTS `lakers` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `team` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `selfscore` int(11) NOT NULL,
  `oppscore` int(11) NOT NULL,
  `dateplayed` date NOT NULL,
  `winlose` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `qotd`
--

DROP TABLE IF EXISTS `qotd`;
CREATE TABLE IF NOT EXISTS `qotd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote` longtext COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- 限制导出的表
--

--
-- 限制表 `book_book`
--
ALTER TABLE `book_book`
  ADD CONSTRAINT `book_book_ibfk_2` FOREIGN KEY (`publisher`) REFERENCES `book_publisher` (`id`),
  ADD CONSTRAINT `book_book_ibfk_1` FOREIGN KEY (`place`) REFERENCES `book_place` (`id`);

--
-- 限制表 `book_headline`
--
ALTER TABLE `book_headline`
  ADD CONSTRAINT `book_headline_FK_1` FOREIGN KEY (`bookid`) REFERENCES `book_book` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_F91777E436BB5955` FOREIGN KEY (`bookid`) REFERENCES `book_book` (`id`);

--
-- 限制表 `book_review`
--
ALTER TABLE `book_review`
  ADD CONSTRAINT `book_review_ibfk_1` FOREIGN KEY (`headlineid`) REFERENCES `book_headline` (`id`) ON UPDATE CASCADE;

--
-- 限制表 `book_taglist`
--
ALTER TABLE `book_taglist`
  ADD CONSTRAINT `book_taglist_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book_book` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
