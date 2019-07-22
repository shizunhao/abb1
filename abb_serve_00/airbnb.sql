-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-07-22 14:29:22
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airbnb`
--
CREATE DATABASE IF NOT EXISTS `airbnb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `airbnb`;

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_amenities`
--

DROP TABLE IF EXISTS `airbnb_amenities`;
CREATE TABLE IF NOT EXISTS `airbnb_amenities` (
  `Amenities_id` int(11) NOT NULL AUTO_INCREMENT,
  `Amenities_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Amenities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_bed_type`
--

DROP TABLE IF EXISTS `airbnb_bed_type`;
CREATE TABLE IF NOT EXISTS `airbnb_bed_type` (
  `Bed_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `Bed_type_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Bed_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_bed_type`
--

INSERT INTO `airbnb_bed_type` (`Bed_type_id`, `Bed_type_name`) VALUES
(1, '沙发床'),
(2, '沙发'),
(3, '地板床垫'),
(4, '单人床'),
(5, '双人床');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_building`
--

DROP TABLE IF EXISTS `airbnb_building`;
CREATE TABLE IF NOT EXISTS `airbnb_building` (
  `Building_id` int(11) NOT NULL AUTO_INCREMENT,
  `Building_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Building_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_carousel`
--

DROP TABLE IF EXISTS `airbnb_carousel`;
CREATE TABLE IF NOT EXISTS `airbnb_carousel` (
  `Carousel_id` int(11) NOT NULL AUTO_INCREMENT,
  `Carousel_imgurl` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Carousel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_carousel`
--

INSERT INTO `airbnb_carousel` (`Carousel_id`, `Carousel_imgurl`) VALUES
(1, 'carousel1.jpg'),
(2, 'carousel2.jpg'),
(3, 'carousel3.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_city`
--

DROP TABLE IF EXISTS `airbnb_city`;
CREATE TABLE IF NOT EXISTS `airbnb_city` (
  `City_id` int(11) NOT NULL AUTO_INCREMENT,
  `City_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`City_id`),
  UNIQUE KEY `City_name` (`City_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_city`
--

INSERT INTO `airbnb_city` (`City_id`, `City_name`) VALUES
(1, '上海'),
(2, '北京');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_district`
--

DROP TABLE IF EXISTS `airbnb_district`;
CREATE TABLE IF NOT EXISTS `airbnb_district` (
  `District_id` int(11) NOT NULL AUTO_INCREMENT,
  `District_name` varchar(64) DEFAULT NULL,
  `District_longitude` varchar(64) DEFAULT NULL,
  `District_latitude` varchar(64) DEFAULT NULL,
  `City_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`District_id`),
  UNIQUE KEY `District_name` (`District_name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_district`
--

INSERT INTO `airbnb_district` (`District_id`, `District_name`, `District_longitude`, `District_latitude`, `City_id`) VALUES
(1, '静安区', '121.45', '31.23', 1),
(2, '徐汇区', '121.43', '31.18', 1),
(3, '长宁区', '121.42', '31.22', 1),
(4, '黄浦区', '121.48', '31.23', 1),
(5, '虹口区', '121.50', '31.27', 1),
(6, '宝山区', '121.48', '31.40', 1),
(7, '浦东新区', '121.53', '31.22', 1),
(8, '普陀区', '121.40', '31.25', 1),
(9, '杨浦区', '121.52', '31.27', 1),
(10, '闵行区', '121.38', '31.12', 1),
(11, '嘉定区', '121.27', '31.38', 1),
(12, '松江区', '121.22', '31.03', 1),
(13, '金山区', '121.33', '30.75', 1),
(14, '青浦区', '121.12', '31.15', 1),
(15, '奉贤区', '121.47', '30.92', 1),
(16, '崇明区', '121.40', '31.62', 1),
(17, '西城区', '116.37', '39.92', 2),
(18, '东城区', '116.42', '39.93', 2),
(19, '朝阳区', '116.43', '39.92', 2),
(20, '房山区', '116.13', '39.75', 2),
(21, '海淀区', '116.30', '39.95', 2),
(22, '石景山区', '116.22', '39.90', 2),
(23, '顺义区', '116.65', '40.13', 2),
(24, '丰台区', '116.28', '39.85', 2),
(25, '怀柔区', '116.63', '40.32', 2),
(26, '密云区', '116.83', '40.37', 2),
(27, '昌平区', '116.23', '40.22', 2),
(28, '大兴区', '116.33', '39.73', 2),
(29, '平谷区', '117.12', '40.13', 2),
(30, '通州区', '116.65', '39.92', 2),
(31, '延庆区', '115.97', '40.45', 2),
(32, '门头沟区', '116.10', '39.93', 2);

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_house`
--

DROP TABLE IF EXISTS `airbnb_house`;
CREATE TABLE IF NOT EXISTS `airbnb_house` (
  `House_id` int(11) NOT NULL AUTO_INCREMENT,
  `House_City_id` int(11) DEFAULT NULL,
  `House_District_id` int(11) DEFAULT NULL,
  `House_name` varchar(128) DEFAULT NULL,
  `House_User_id` int(11) DEFAULT NULL,
  `House_longitude` varchar(64) DEFAULT NULL,
  `House_latitude` varchar(64) DEFAULT NULL,
  `House_people_num` int(11) DEFAULT NULL,
  `House_type` varchar(64) DEFAULT NULL,
  `House_price` int(11) DEFAULT NULL,
  `House_tag` varchar(64) DEFAULT NULL,
  `House_bednum` int(11) DEFAULT NULL,
  `House_Bed` varchar(128) DEFAULT NULL,
  `House_restroom` int(11) DEFAULT NULL,
  `House_HouseAmenities` varchar(128) DEFAULT NULL,
  `House_Amenities` varchar(64) DEFAULT NULL,
  `House_Building` varchar(64) DEFAULT NULL,
  `House_detail` varchar(256) DEFAULT NULL,
  `House_address` varchar(128) DEFAULT NULL,
  `House_number` varchar(128) DEFAULT NULL,
  `House_trip` varchar(128) DEFAULT NULL,
  `House_label` varchar(64) DEFAULT NULL,
  `House_imgurl` varchar(128) DEFAULT NULL,
  `House_message` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`House_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_house`
--

INSERT INTO `airbnb_house` (`House_id`, `House_City_id`, `House_District_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_number`, `House_trip`, `House_label`, `House_imgurl`, `House_message`) VALUES
(1, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1230321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(2, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(3, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(4, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(5, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(6, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(7, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(8, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(9, 0, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', NULL),
(10, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL),
(11, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL),
(12, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL),
(13, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL),
(14, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL),
(15, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL),
(16, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL),
(17, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL),
(18, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '1231321', '12313213', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_house_amenities`
--

DROP TABLE IF EXISTS `airbnb_house_amenities`;
CREATE TABLE IF NOT EXISTS `airbnb_house_amenities` (
  `HouseAmenities_id` int(11) NOT NULL AUTO_INCREMENT,
  `HouseAmenities_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`HouseAmenities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_house_bed`
--

DROP TABLE IF EXISTS `airbnb_house_bed`;
CREATE TABLE IF NOT EXISTS `airbnb_house_bed` (
  `HouseBed_id` int(11) NOT NULL AUTO_INCREMENT,
  `HouseBed_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`HouseBed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_house_img`
--

DROP TABLE IF EXISTS `airbnb_house_img`;
CREATE TABLE IF NOT EXISTS `airbnb_house_img` (
  `HouseImg_id` int(11) NOT NULL AUTO_INCREMENT,
  `HouseImg_House_id` int(11) DEFAULT NULL,
  `HouseImg_sm` varchar(128) DEFAULT NULL,
  `HouseImg_md` varchar(128) DEFAULT NULL,
  `HouseImg_lg` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`HouseImg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_house_img`
--

INSERT INTO `airbnb_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES
(1, 1, NULL, 'https://z1.muscache.cn/im/pictures/f4043af9-eacb-47c2-b350-d6ad0e8e419b.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/f3e442f6-f07a-4a8e-a5c4-7b5d7495df0b.jpg?aki_policy=xx_large'),
(2, 1, NULL, 'https://z1.muscache.cn/im/pictures/79c0a62a-72b4-4587-a556-a600ca25b0ec.jpg?aki_policy=large', NULL),
(3, 1, NULL, 'https://z1.muscache.cn/im/pictures/a96de13b-5497-4361-82ff-c653cf181036.jpg?aki_policy=large', NULL),
(4, 1, NULL, 'https://z1.muscache.cn/im/pictures/51e269e5-e80d-4ab6-8581-635714422640.jpg?aki_policy=large', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_house_time`
--

DROP TABLE IF EXISTS `airbnb_house_time`;
CREATE TABLE IF NOT EXISTS `airbnb_house_time` (
  `Time_id` int(11) NOT NULL AUTO_INCREMENT,
  `Time_House_id` int(11) DEFAULT NULL,
  `Time_start` bigint(20) DEFAULT NULL,
  `Time_end` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_housingresources_type`
--

DROP TABLE IF EXISTS `airbnb_housingresources_type`;
CREATE TABLE IF NOT EXISTS `airbnb_housingresources_type` (
  `housingResources_id` int(11) NOT NULL AUTO_INCREMENT,
  `housingResources_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`housingResources_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_housingresources_type`
--

INSERT INTO `airbnb_housingresources_type` (`housingResources_id`, `housingResources_name`) VALUES
(1, '公寓型住宅'),
(2, '独栋房'),
(3, '别墅'),
(4, 'Loft'),
(5, '酒店'),
(6, '酒店式公寓'),
(7, '精品酒店'),
(8, '青年旅舍'),
(9, '农家乐'),
(10, '度假村'),
(11, '乡村小屋'),
(12, '蒙古包'),
(13, '平房'),
(14, '联排别墅'),
(15, '木屋'),
(16, '露营车/房车'),
(17, '帐篷'),
(18, '露营地'),
(19, '树屋'),
(20, '船屋'),
(21, '茅屋'),
(22, '冰屋'),
(23, '城堡'),
(24, '风车房'),
(25, '灯塔'),
(26, '巴士'),
(27, '火车'),
(28, '飞机');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_rent_type`
--

DROP TABLE IF EXISTS `airbnb_rent_type`;
CREATE TABLE IF NOT EXISTS `airbnb_rent_type` (
  `Rent_id` int(11) NOT NULL AUTO_INCREMENT,
  `Rent_name` varchar(64) DEFAULT NULL,
  `Rent_about` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Rent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_rent_type`
--

INSERT INTO `airbnb_rent_type` (`Rent_id`, `Rent_name`, `Rent_about`) VALUES
(1, '整个房源', '房客独享整个房源，无需与您或他人共住'),
(2, '独立房间', '房客有自己的独立房间，与他人共享客厅等空间'),
(3, '合住房间', '房客住在与他人合用的卧室或公共区域');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_story`
--

DROP TABLE IF EXISTS `airbnb_story`;
CREATE TABLE IF NOT EXISTS `airbnb_story` (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `family_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `user_img` varchar(200) DEFAULT NULL,
  `md_img` varchar(200) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `give_like` int(11) DEFAULT NULL,
  `give_comment` int(11) DEFAULT NULL,
  `detail_top_title` varchar(1000) DEFAULT NULL,
  `detail_title` varchar(1000) DEFAULT NULL,
  `detail_intr` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_story`
--

INSERT INTO `airbnb_story` (`stid`, `family_id`, `user_id`, `user_name`, `user_img`, `md_img`, `city`, `give_like`, `give_comment`, `detail_top_title`, `detail_title`, `detail_intr`) VALUES
(1, 1, 1, 'Kiki', 'img/story/user_img_1.jpg', 'img/story/bg_img1_1.jpg', '北京', 0, 0, '走进三里屯东三街的Róng Bar，一派复古的装饰。坐在舒适的露台点一杯「青梅煮酒」，论英雄何人，适合向往度假、寻求惬意的你！', '将海鲜做到极致的大叔居酒屋', '酒肴一瓢，主打日式海鲜料理，素净的木招牌在霄云路美食后街上众多日料店之中并不显眼。北京大叔的真性情酒肴一瓢的老板是位北京大叔，浑身透着北京人的健谈，今天最新鲜的海产是什么，值得一试的是什么，自进门起老板就热络招呼。对待食物老板又有着近乎严苛的匠人精神，每天只挑最新鲜的海产，严格把控上菜时间和顺序，在细节上绝不马虎。日式海鲜的一万种可能性,在酒肴一瓢，除了当日最新鲜的鱼生刺身，酒蒸、串烧、火锅，海产的可能性多到超乎想象。活章鱼七味烧，新鲜活章鱼去皮剔筋，客人自行在炭炉上烤制，边烤边吃，保证最新鲜的口感。活牡蛎炮烙，手掌大的牡蛎撒盐烤制，新鲜的牡蛎肉质厚实，入口微甜，对贝类无感的我都被征服了。滑蛋青蛤，不太常见的做法，鸡蛋将蛤蜊的鲜味提升了一个层次。老板总说自己的餐厅无非是一间大叔店罢了，登不上台面。在我看来，抱有如此热情和心思对待料理，才是食客们的宝藏之地。地址：朝阳区霄云路15号霄云美食街后街24门'),
(2, 1, 2, 'Yummy', 'img/story/user_img_2.jpg', 'img/story/bg_img1_2.jpg', '花莲', 0, 0, '走进亮马桥附近的Bar Ichikura，这里是日式的清吧。安静的氛围、安静的点一杯威士忌，适合既害怕寂寞又害怕热闹的你！', '超级赞的民宿', '台湾之旅结束快一年了 都没给暖心的房东评价 失职啊～房东姐姐跟公公婆婆打理的名宿 家很大还有一个巨大的院子 很漂亮 巨感觉 也很干净 依旧记得早上阳台望出去的美景和家里好多条狗狗 学建筑的同事也对房东姐姐的这家10多年的民宿赞叹不已 早上还有房东姐姐跟婆婆准备的暖心早餐 超级丰盛 一家人都很好说话 家里因为公公婆婆喜欢唱歌有成套的设备 超级赞～感谢姐姐当年帮我提箱子到楼上 小小的力气超大～有机会一定还要来打扰❤️ miss u 祝一切安好'),
(3, 2, 3, 'Shujing', 'img/story/user_img_3.jpg', 'img/story/bg_img1_3.jpg', '大阪', 0, 0, '走进亮马河岸Arrow Factory brewing Pub，拥挤的露台、热烈的House音乐、纯正的英式精酿，适合有着英伦情结、有点优雅也有点放肆的你！', '高级版的庶民小吃“炸串”，会有不凡的惊喜', '提起大阪小吃，我们第一个想到的是章鱼小丸子，但另一样代表性的庶民小吃却鲜有人提及，那就是“串かつ”，可译作炸串。同样是炸，跟天妇罗有什么区别呢？简单来说，天妇罗在日本属于舶来品归化后的和食；炸串则是如假包换的洋食，战后物资匮乏的年代，人们将食材边角料串在签子上，裹一层小麦粉或面包屑后油炸蘸调料吃。出于卫生考虑，炸串店都有个不成文的规矩，“酱料只能蘸一次”。大阪新世界是炸串发源地，随处可见100日元一串的小店。但高级炸串店也不是没有，甚至获得米其林一星的评价。这家餐厅叫“凡”，位于北新地一栋不起眼大厦的地下室。吧台中央是闪亮的大铜炉，一身专业料理人打扮的主厨半隐在铜炉后忙碌。不像法餐或怀石，炸串几乎没有摆盘可言，只是形状上略有变化，无非从圆形变成正方形、长方形而已。好处是就算知道大概食材，咬下去也还是会有惊喜，比如海鳗紫苏、莲藕牛肉末、芝士洋葱圈，外表都是清一色黄茸茸的样子。主厨通常会推荐最优吃法，群马葱适合直接吃，伊勢虾可以挤上柠檬蘸盐、丹波毛豆蘸黄芥末风味更佳。吃到一半才发现有个小心机，其实主厨上菜时把串签对准哪里，意思就是蘸哪种调料。高热量的油炸食品永远是释放压力的绝佳伴侣，冰啤酒一杯接一杯来，炸串用天妇罗无法实现的神秘感告诉食客，不要小看普普通通却可以天马行空的“油炸食品”噢！串かつ　凡地址：大阪府大阪市北区堂島1-3-16 堂島メリーセンタービル B1F营业时间：18:00~24:00人均：15000日元'),
(4, 1, 4, 'Ling', 'img/story/user_img_4.jpg', 'img/story/bg_img1_4.jpg', '胡志明市', 0, 0, '走进三里屯的MOKIHI NO.3，粗旷的古董家具打造了一个美式的空间。乡村音乐和多元的酒单，让人放松又随意，适合朋友相聚，也适合周末一个人的你！', '居民楼里的“少女心”', '这是隐藏在一栋居民楼里，整个结构跟香港有点相似。会觉得旧旧的, 但打开门的一瞬间，你会发现真的很少女。有种野兽的内心藏着颗少女心。绿色的窗、绿色沙发、绿色床垫、绿色的纱。（绿偏马卡龙的绿 ）有两张床位，靠一个楼梯斜街，上下铺。非常适合闺蜜入住。整个房间格局虽小，但利用的恰到好处。合理利用了整体空间。床位较大要属下铺，房东的心思也很细腻，用床帐营造一种烂漫感，加上小灯泡的闪闪灯光，完全抓住少女心的我。厨房跟床位隔着一块板，厨房的装扮则是各种不同花色的瓷砖拼接。 陈列台上该有的厨具一一不少。细看很多设备都是纯手工的，柜子、沙发、台面都是用几块木板拼接打钉，再统一刷漆。看着挺简单，倒是也想自己学学折腾下。房源地理位置也很不错，楼下就是范五老街，酒吧一条街。重点，隔音效果非常的好。一点都听不到楼下的动次打次。每天都能美美睡上一觉！');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_story_collection`
--

DROP TABLE IF EXISTS `airbnb_story_collection`;
CREATE TABLE IF NOT EXISTS `airbnb_story_collection` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `sc_title` varchar(300) DEFAULT NULL,
  `sc_subtitle` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_story_collection`
--

INSERT INTO `airbnb_story_collection` (`scid`, `sc_title`, `sc_subtitle`) VALUES
(1, '北京竟然有这些不可思议的酒吧', '帝都包罗万有的文化自然少不了酒吧文化，三里屯到亮马桥，不但分布着各国使馆，更有不同地域风格的酒吧。周末到了，要过一个怎样的夜晚呢？粗旷还是精致、热闹还是安静？从南洋到英伦，从精酿到鸡尾酒，总能找到一间酒吧称你的心情。'),
(2, '住进「山水间」在民宿中亲近自然', '本期「爱彼迎民宿指南」精选好风景的爱彼迎民宿，开窗即是山水，呼吸都有绿意。带着全家、约上朋友，寻其中一处宅子，也许在大理的洱海边，也许在莫干山的深处，或是在重庆的田园里，日出日落，做饭聊天，旅行从舒心净肺开始。'),
(3, '住进「旧时光」在民宿中重拾历史', '本期「爱彼迎民宿指南」带你跳跃时间和空间，找到国内有历史的老宅：从清时的乾隆行宫，到现代的珠江旧船厂；从南京的科举考试旧址，到大理的白族传统民居，都在爱彼迎民宿。邀你住进去，深入其中，一秒穿越不同年代，聆听每一座城市的故事。');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_story_family`
--

DROP TABLE IF EXISTS `airbnb_story_family`;
CREATE TABLE IF NOT EXISTS `airbnb_story_family` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `family_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_story_family`
--

INSERT INTO `airbnb_story_family` (`fid`, `family_name`) VALUES
(1, '房源'),
(2, '景点'),
(3, '美食'),
(4, '文化'),
(5, '活动'),
(6, '店铺');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_story_pic`
--

DROP TABLE IF EXISTS `airbnb_story_pic`;
CREATE TABLE IF NOT EXISTS `airbnb_story_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `story_id` int(11) DEFAULT NULL,
  `bg_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_story_pic`
--

INSERT INTO `airbnb_story_pic` (`pid`, `story_id`, `bg_img`) VALUES
(1, 1, 'img/story/bg_img1_1.jpg'),
(2, 1, 'img/story/bg_img1_2.jpg'),
(3, 1, 'img/story/bg_img1_3.jpg'),
(4, 1, 'img/story/bg_img1_4.jpg'),
(5, 1, 'img/story/bg_img1_5.jpg'),
(6, 1, 'img/story/bg_img1_6.jpg'),
(7, 1, 'img/story/bg_img1_7.jpg'),
(8, 1, 'img/story/bg_img1_8.jpg'),
(9, 1, 'img/story/bg_img1_9.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `airbnb_user`
--

DROP TABLE IF EXISTS `airbnb_user`;
CREATE TABLE IF NOT EXISTS `airbnb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) DEFAULT NULL,
  `user_pwd` varchar(64) DEFAULT NULL,
  `user_email` varchar(64) DEFAULT NULL,
  `user_phone` varchar(32) NOT NULL,
  `user_gender` int(11) DEFAULT NULL,
  `user_reg_time` datetime DEFAULT NULL,
  `user_login_time` datetime DEFAULT NULL,
  `user_imgurl` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `airbnb_user`
--

INSERT INTO `airbnb_user` (`user_id`, `user_name`, `user_pwd`, `user_email`, `user_phone`, `user_gender`, `user_reg_time`, `user_login_time`, `user_imgurl`) VALUES
(1, '迪丽热巴', 'reba', 'reba@163.com', '15660902590', 0, '2018-01-01 00:00:00', '2018-01-02 00:00:00', 'img/user/reba.jpeg'),
(2, '高圆圆', 'gaoyuanyuan', 'gaoyuanyuan@163.com', '15660902591', 0, '2018-01-03 00:00:00', '2018-01-04 00:00:00', 'img/user/gaoyuanyuan.jpg'),
(3, '杨幂', 'yangmi', 'yangmi@163.com', '15660902592', 0, '2018-01-05 00:00:00', '2018-01-06 00:00:00', 'img/user/yangmi.jpeg'),
(4, '赵丽颖', 'zhaoliying', 'zhaoliying@163.com', '15660902593', 0, '2018-01-07 00:00:00', '2018-01-08 00:00:00', 'img/user/zhaoliying.jpeg'),
(5, '郑凯', 'zhengkai', 'zhengkai@163.com', '15660902594', 1, '2018-01-09 00:00:00', '2018-01-10 00:00:00', 'img/user/zhengkai.jpeg'),
(6, '无头像', 'wutouxiang', 'wutouxiang@163.com', '15660902595', 1, '2019-01-09 00:00:00', '2019-01-10 00:00:00', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
