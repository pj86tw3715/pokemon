-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2024-05-10 19:45:39
-- 伺服器版本: 10.1.32-MariaDB
-- PHP 版本： 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `expstore`
--

-- --------------------------------------------------------

--
-- 資料表結構 `addbook`
--

CREATE TABLE `addbook` (
  `addressid` int(10) NOT NULL COMMENT '地址ID',
  `setdefault` tinyint(1) NOT NULL DEFAULT '0' COMMENT '預設收件人',
  `emailid` int(10) NOT NULL COMMENT '會員編號',
  `cname` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '收件者姓名',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '收件者電話',
  `myzip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '郵遞區號',
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '收件地址',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建立日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `carousel`
--

CREATE TABLE `carousel` (
  `caro_id` int(3) NOT NULL COMMENT '輪播編號',
  `caro_title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '輪播標題',
  `caro_content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '輪播內容介紹',
  `caro_online` tinyint(1) NOT NULL DEFAULT '1' COMMENT '上下架',
  `caro_sort` int(3) NOT NULL COMMENT '輪播排序',
  `caro_pic` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '輪播圖檔名稱',
  `p_id` int(10) NOT NULL COMMENT '產品編號',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建立日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `carousel`
--

INSERT INTO `carousel` (`caro_id`, `caro_title`, `caro_content`, `caro_online`, `caro_sort`, `caro_pic`, `p_id`, `create_date`) VALUES
(1, 'succulent', '客製化多肉盆栽<br>\r\n原始．清新．自然．純真<br>\r\n森林系的四大元素，在充滿手感的溫度裡，看見多肉植物的生命力', 1, 1, 'carousel1.jpg', 1, '2024-05-08 03:24:01'),
(2, 'cactus', '仙人掌入門懶人包<br>\r\n一次搞懂市場上常見的人氣仙肉（仙人掌多肉）的照顧方式<br>\r\n告訴你號稱最好照顧的仙人掌為什麼會黑掉、枯萎、徒長。', 1, 2, 'carousel2.jpg', 2, '2024-05-08 03:24:51'),
(3, 'Potted plant', '迷你綠洲盆栽系列<br>\r\n這個系列包含多種迷你植物，如多肉植物、小型盆景等，適合擺放在家中、辦公室或任何小型空間。<br>\r\n植物精心挑選，確保品質優良且易於管理，適合初學者或喜愛植物的人士。<br', 1, 3, 'carousel3.jpg', 3, '2024-05-08 03:27:35'),
(4, 'Bonsai', '日式風格盆栽系列<br>\r\n這個系列的盆栽受到日本文化的啟發，展現了日式庭園和盆景的美學特色。<br>\r\n植物的選擇和擺放都經過精心設計，以簡潔、平衡和自然的風格為特色。<br>\r\n使用傳統的日本陶瓷', 1, 4, 'carousel4.jpg', 4, '2024-05-08 03:27:35'),
(5, 'flash sale', '【特價優惠】多肉植物一日限定！<br>\r\n愛好多肉植物的朋友們，這是您的大好機會！<br>\r\n我們的多肉植物精心栽培，品種豐富，色彩繽紛，現在正在特價優惠中！<br>\r\n不要錯過這個絕佳的機會，讓您的', 1, 5, 'carousel5.jpg', 5, '2024-05-08 03:27:35'),
(6, 'Echeveria', '【石蓮】— 漂亮且易於照顧的多肉植物！<br>\r\n現在特價優惠中！快來選購您喜歡的石蓮，讓您的家居環境更加舒適美好！<br>\r\n數量有限，售完即止！', 1, 6, 'carousel6.jpg', 6, '2024-05-08 03:27:35');

-- --------------------------------------------------------

--
-- 資料表結構 `cart`
--

CREATE TABLE `cart` (
  `cartid` int(10) NOT NULL COMMENT '購物車編號',
  `emailid` int(10) DEFAULT NULL COMMENT '會員編號',
  `p_id` int(10) NOT NULL COMMENT '產品編號',
  `qty` int(3) NOT NULL COMMENT '產品數量',
  `orderid` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '訂單編號',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '訂單處理狀態',
  `ip` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '訂購者的IP',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '加入購物車時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `city`
--

CREATE TABLE `city` (
  `AutoNo` int(10) NOT NULL COMMENT '城市編號',
  `Name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '城市名稱',
  `cityOrder` tinyint(2) NOT NULL COMMENT '標記',
  `State` smallint(6) NOT NULL COMMENT '狀態'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `city`
--

INSERT INTO `city` (`AutoNo`, `Name`, `cityOrder`, `State`) VALUES
(1, '臺北市', 0, 0),
(2, '基隆市', 0, 0),
(3, '新北市', 0, 0),
(4, '宜蘭縣', 0, 0),
(5, '新竹市', 0, 0),
(6, '新竹縣', 0, 0),
(7, '桃園市', 0, 0),
(8, '苗栗縣', 0, 0),
(9, '台中市', 0, 0),
(10, '彰化縣', 0, 0),
(11, '南投縣', 0, 0),
(12, '雲林縣', 0, 0),
(13, '嘉義市', 0, 0),
(14, '嘉義縣', 0, 0),
(15, '台南市', 0, 0),
(16, '高雄市', 0, 0),
(17, '南海諸島', 0, 0),
(18, '澎湖縣', 0, 0),
(19, '屏東縣', 0, 0),
(20, '台東縣', 0, 0),
(21, '花蓮縣', 0, 0),
(22, '金門縣', 0, 0),
(23, '連江縣', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `hot`
--

CREATE TABLE `hot` (
  `h_id` int(3) NOT NULL COMMENT '熱銷商品流水號',
  `p_id` int(10) NOT NULL COMMENT '產品編號',
  `h_sort` int(3) DEFAULT NULL COMMENT '熱銷商品排名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `icon`
--

CREATE TABLE `icon` (
  `i_id` int(10) NOT NULL,
  `i_data` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `i_class` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `i_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `icon`
--

INSERT INTO `icon` (`i_id`, `i_data`, `i_class`, `i_date`) VALUES
(1, 'Bonsai', 'fa-solid fa-leaf', '2024-05-08 05:51:43'),
(2, 'cactus', 'fa-solid fa-tree', '2024-05-08 05:51:43'),
(3, 'Tillandsia', 'fa-brands fa-pagelines', '2024-05-08 05:52:39'),
(4, 'pottedPlant', 'fa-solid fa-hammer', '2024-05-08 05:52:39'),
(5, 'fertilizer', 'fa-solid fa-toolbox', '2024-05-08 05:52:39');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `emailid` int(11) NOT NULL COMMENT 'email流水號',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'email帳號',
  `pw1` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '密碼',
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否啟動',
  `cname` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '中文姓名',
  `tssn` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '身份證字號',
  `birthday` date NOT NULL COMMENT '生日',
  `imgname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '相片檔名',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建立日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `multiselect`
--

CREATE TABLE `multiselect` (
  `msid` int(5) NOT NULL COMMENT '多功能選擇ID',
  `mslevel` int(2) NOT NULL COMMENT '多功能選擇層級',
  `msuplink` int(4) NOT NULL COMMENT '上層連結',
  `opcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外掛參數',
  `msname` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '多功能選擇名稱',
  `msort` int(11) DEFAULT NULL COMMENT '各功能列表排序',
  `url1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外掛網址1',
  `url2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外掛網址2',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建立日期',
  `update_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `multiselect`
--

INSERT INTO `multiselect` (`msid`, `mslevel`, `msuplink`, `opcode`, `msname`, `msort`, `url1`, `url2`, `create_date`, `update_date`) VALUES
(1, 1, 0, NULL, '付款方式', 0, NULL, NULL, '2023-08-11 09:46:53', '2023-08-17 03:42:28'),
(2, 1, 0, NULL, '訂單處理狀態', 0, NULL, NULL, '2023-08-11 09:52:29', '2023-08-17 03:42:41'),
(3, 2, 1, NULL, '貨到付款', 1, NULL, NULL, '2023-08-11 09:55:45', '2023-08-17 03:43:37'),
(4, 2, 1, NULL, '信用卡付款', 2, NULL, NULL, '2023-08-11 09:55:45', '2023-08-17 03:43:54'),
(5, 2, 1, NULL, '銀行轉帳', 3, NULL, NULL, '2023-08-11 09:55:45', '2023-08-17 03:44:37'),
(6, 2, 1, NULL, '電子支付', 4, NULL, NULL, '2023-08-11 09:55:45', '2023-08-17 03:44:51'),
(7, 2, 2, NULL, '處理中', 1, NULL, NULL, '2023-08-11 10:06:42', '2023-08-17 03:45:03'),
(8, 2, 2, NULL, '待出貨', 2, NULL, NULL, '2023-08-11 10:06:42', '2023-08-17 03:45:32'),
(9, 2, 2, NULL, '運送中', 3, NULL, NULL, '2023-08-11 10:06:42', '2023-08-17 03:45:45'),
(10, 2, 2, NULL, '收貨完成', 4, NULL, NULL, '2023-08-11 10:06:42', '2023-08-17 03:46:10'),
(11, 2, 2, NULL, '退貨中', 5, NULL, NULL, '2023-08-11 10:06:42', '2023-08-17 03:46:24'),
(12, 2, 2, NULL, '已關閉訂單', 6, NULL, NULL, '2023-08-11 10:06:42', '2023-08-17 03:46:35'),
(13, 2, 2, NULL, '無效訂單', 7, NULL, NULL, '2023-08-11 10:06:42', '2023-08-17 05:39:26'),
(14, 2, 2, NULL, '訂單確認', 8, NULL, NULL, '2023-08-18 06:13:47', '2023-10-23 12:37:36'),
(15, 2, 2, NULL, '平台出貨', 9, NULL, NULL, '2023-08-18 06:13:47', '2023-10-25 08:29:31'),
(34, 1, 0, NULL, '付款處理狀態', 0, NULL, NULL, '2023-08-11 09:52:29', '2023-08-17 03:42:41'),
(35, 2, 34, NULL, '侍貨到付款', 1, NULL, NULL, '2023-08-11 09:55:45', '2023-10-25 08:39:12'),
(36, 2, 34, NULL, '完成付款', 2, NULL, NULL, '2023-08-11 09:55:45', '2023-10-25 08:39:12'),
(37, 2, 34, NULL, '未完成付款', 3, NULL, NULL, '2023-08-11 09:55:45', '2023-10-25 08:39:12'),
(38, 2, 34, NULL, '貨到付款已完成', 4, NULL, NULL, '2023-08-11 09:55:45', '2023-10-25 08:39:12');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `p_id` int(10) NOT NULL COMMENT '產品編號',
  `classid` int(3) NOT NULL COMMENT '產品類別',
  `p_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品名稱',
  `p_intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '產品簡介',
  `p_price` int(11) DEFAULT NULL COMMENT '產品單價',
  `p_open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '上架',
  `p_content` text COLLATE utf8_unicode_ci COMMENT '產品詳細規格',
  `p_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '產品輸入日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `product`
--

INSERT INTO `product` (`p_id`, `classid`, `p_name`, `p_intro`, `p_price`, `p_open`, `p_content`, `p_date`) VALUES
(1, 6, '多肉植物 星之王子', '星王子-景天科青鎖龍屬的多肉植物', 52, 1, NULL, '2024-05-10 13:17:42'),
(2, 6, '多肉植物 新玉綴', '新玉綴-景天科景天屬的多肉植物', 52, 1, NULL, '2024-05-10 13:17:42'),
(3, 6, '多肉植物 火祭', '火祭-景天科青鎖龍屬的多肉植物', 52, 1, NULL, '2024-05-10 13:17:42'),
(4, 6, '多肉植物 姬秋麗', '姬秋麗-景天科風車草屬的多肉植物', 52, 1, NULL, '2024-05-10 13:17:42'),
(5, 7, '多肉植物 紅蘋果椒草', '紅蘋果椒草-胡椒科椒草屬的多肉植物', 52, 1, NULL, '2024-05-10 13:18:36'),
(6, 8, '多肉植物 青雲之舞', '青雲之舞-百合科鷹爪草數多年生草本', 52, 1, NULL, '2024-05-10 13:18:55'),
(7, 9, '仙人掌 兜(實生)', '仙人掌科星球屬，外形可愛像極了南瓜', 52, 1, NULL, '2024-05-10 13:23:22'),
(8, 9, '仙人掌 銀玉松', '銀玉松-仙人掌科乳突球屬', 52, 1, NULL, '2024-05-10 13:23:22'),
(9, 9, '仙人掌 聖王丸', '聖王丸-人掌科裸萼球屬', 52, 1, NULL, '2024-05-10 13:23:22'),
(10, 9, '仙人掌 白星', '白星-仙人掌科乳突球屬', 52, 1, NULL, '2024-05-10 13:23:22'),
(11, 11, '仙人掌 翡翠閣錦', '翡翠閣錦-大戟科翡翠塔屬', 52, 1, NULL, '2024-05-10 13:24:01'),
(12, 11, '仙人掌 春峰綴化', '春峰綴化-大戟科多年生多肉草本植物', 52, 1, NULL, '2024-05-10 13:24:01'),
(13, 13, '空氣鳳梨 火焰小精靈', 'Tillandsia ionantha \'Fuego\'', 52, 1, NULL, '2024-05-10 13:25:51'),
(14, 13, '空氣鳳梨 捲葉小精靈', 'Tillandsia ionantha \'Curly leaf\'', 52, 1, NULL, '2024-05-10 13:25:51'),
(15, 13, '空氣鳳梨 龍小精靈', 'Tillandsia ionantha \'Ron\'', 52, 1, NULL, '2024-05-10 13:25:51'),
(16, 13, '空氣鳳梨 德魯伊小精靈', 'Tillandsia ionantha \'Druid\'', 52, 1, NULL, '2024-05-10 13:25:51'),
(17, 14, '空氣鳳梨 小狐尾', 'Tillandsia funckiana', 52, 1, NULL, '2024-05-10 13:26:08'),
(18, 15, '日系方型水泥盆組', '方型水泥花器組', 52, 1, NULL, '2024-05-10 13:27:01'),
(19, 16, '日系圓柱水泥盆組', '圓柱水泥花器組', 52, 1, NULL, '2024-05-10 13:27:32'),
(20, 18, '迷你冰裂盆', '各式顏色 /多肉盆器/陶瓷盆/植物盆栽', 52, 1, NULL, '2024-05-10 13:28:53'),
(21, 18, '簡約風陶瓷手繪盆器', '多肉植物盆/陶瓷花盆/彩繪盆器', 52, 1, NULL, '2024-05-10 13:28:53'),
(22, 18, '北歐簡約風手繪盆器', '多肉植物盆/陶瓷花盆/彩繪盆器', 52, 1, NULL, '2024-05-10 13:28:53'),
(23, 18, '北歐簡約白瓷盆(含托盤)', '手繪陶藝，盆器圖案會有些微不同', 52, 1, NULL, '2024-05-10 13:28:53'),
(24, 20, '赤玉土', '運用最廣泛的一種土壤介質（園藝用、水缸造景亦會使用）', 52, 1, NULL, '2024-05-10 13:31:14'),
(25, 20, '發泡煉石', '發泡煉石又稱矽石，質水耕及多肉栽培最佳介質', 52, 1, NULL, '2024-05-10 13:31:14'),
(26, 20, '白火山石', '位於日本 宮崎縣霧島山系火山噴發基礎土壤開採的黃色的硬質介質，質地輕且堅硬不易破碎', 52, 1, NULL, '2024-05-10 13:31:14'),
(27, 20, '紅火山石', '富含微量元素，質地堅硬，長時間栽培不崩解;可用於多肉植物栽培', 52, 1, NULL, '2024-05-10 13:31:14'),
(28, 20, '紅礫石', '混入介質中則能保有良好的保水性與透氣性，對多肉而言是非常好用的園藝介質', 52, 1, NULL, '2024-05-10 13:31:14'),
(29, 20, 'PA 藍肥', 'NPK比例，持續提供足夠植物需求的基本三元素特殊', 52, 1, NULL, '2024-05-10 13:31:14'),
(30, 20, '優質松樹皮', '與泥炭土、椰纖土混合，增加排水性且具抗菌特性', 52, 1, NULL, '2024-05-10 13:32:06'),
(31, 21, '園藝花牌', '各式各樣的植物名牌、說明牌和標示插牌', 52, 1, NULL, '2024-05-10 13:32:23');

-- --------------------------------------------------------

--
-- 資料表結構 `product_img`
--

CREATE TABLE `product_img` (
  `img_id` int(11) NOT NULL COMMENT '圖檔編號',
  `p_id` int(10) NOT NULL COMMENT '產品編號',
  `img_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '圖檔名稱',
  `sort` int(2) NOT NULL COMMENT '圖片順序',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建立日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `product_img`
--

INSERT INTO `product_img` (`img_id`, `p_id`, `img_file`, `sort`, `create_date`) VALUES
(1, 1, 'Bonsai/Bonsai1.jpg', 1, '2024-05-10 13:34:00'),
(2, 1, 'Bonsai/Bonsai2.jpg', 2, '2024-05-10 13:34:00'),
(3, 2, 'Bonsai/Bonsai5.jpg', 1, '2024-05-10 13:35:12'),
(4, 2, 'Bonsai/Bonsai6.jpg', 2, '2024-05-10 13:35:12'),
(5, 3, 'Bonsai/Bonsai7.jpg', 1, '2024-05-10 13:35:32'),
(6, 3, 'Bonsai/Bonsai8.jpg', 2, '2024-05-10 13:35:32'),
(7, 5, 'Bonsai/Bonsai9.jpg', 1, '2024-05-10 13:35:48'),
(8, 5, 'Bonsai/Bonsai10.jpg', 2, '2024-05-10 13:35:48'),
(9, 4, 'Bonsai/Bonsai11.jpg', 1, '2024-05-10 13:36:03'),
(10, 4, 'Bonsai/Bonsai12.jpg', 2, '2024-05-10 13:36:03'),
(11, 6, 'Bonsai/Bonsai3.jpg', 1, '2024-05-10 13:39:05'),
(12, 6, 'Bonsai/Bonsai4.jpg', 2, '2024-05-10 13:39:05'),
(13, 7, 'cactus/cactus1.jpg', 1, '2024-05-10 13:54:04'),
(14, 7, 'cactus/cactus2.jpg', 2, '2024-05-10 13:54:04'),
(15, 8, 'cactus/cactus3.jpg', 1, '2024-05-10 13:54:52'),
(16, 9, 'cactus/cactus4.jpg', 1, '2024-05-10 13:55:53'),
(17, 9, 'cactus/cactus5.jpg', 2, '2024-05-10 13:55:53'),
(18, 10, 'cactus/cactus6.jpg', 1, '2024-05-10 13:57:47'),
(19, 10, 'cactus/cactus7.jpg', 2, '2024-05-10 13:57:47'),
(20, 11, 'cactus/cactus8.jpg', 1, '2024-05-10 13:59:15'),
(21, 11, 'cactus/cactus9.jpg', 2, '2024-05-10 13:59:15'),
(22, 12, 'cactus/cactus10.jpg', 1, '2024-05-10 13:59:46'),
(23, 12, 'cactus/cactus11.jpg', 2, '2024-05-10 13:59:46'),
(24, 13, 'Tillandsia/Tillandsia1.jpg', 1, '2024-05-10 14:00:44'),
(25, 13, 'Tillandsia/Tillandsia2.jpg', 2, '2024-05-10 14:00:44'),
(26, 14, 'Tillandsia/Tillandsia3.jpg', 1, '2024-05-10 14:01:07'),
(27, 14, 'Tillandsia/Tillandsia4.jpg', 2, '2024-05-10 14:01:07'),
(28, 15, 'Tillandsia/Tillandsia5.jpg', 1, '2024-05-10 14:01:37'),
(29, 15, 'Tillandsia/Tillandsia6.jpg', 2, '2024-05-10 14:01:37'),
(30, 17, 'Tillandsia/Tillandsia7.jpg', 1, '2024-05-10 14:02:03'),
(31, 17, 'Tillandsia/Tillandsia8.jpg', 2, '2024-05-10 14:02:03'),
(32, 16, 'Tillandsia/Tillandsia9.jpg', 1, '2024-05-10 14:02:29'),
(33, 16, 'Tillandsia/Tillandsia10.jpg', 2, '2024-05-10 14:02:29'),
(34, 18, 'pottedplant/pottedplant1.jpg', 1, '2024-05-10 14:03:50'),
(35, 19, 'pottedplant/pottedplant2.jpg', 1, '2024-05-10 14:03:50'),
(36, 20, 'pottedplant/pottedplant3.jpg', 1, '2024-05-10 14:05:07'),
(37, 20, 'pottedplant/pottedplant4.jpg', 2, '2024-05-10 14:05:07'),
(38, 20, 'pottedplant/pottedplant5.jpg', 3, '2024-05-10 14:05:07'),
(39, 20, 'pottedplant/pottedplant6.jpg', 4, '2024-05-10 14:05:07'),
(40, 21, 'pottedplant/pottedplant10.jpg', 1, '2024-05-10 14:06:26'),
(41, 22, 'pottedplant/pottedplant11.jpg', 1, '2024-05-10 14:06:26'),
(42, 22, 'pottedplant/pottedplant12.jpg', 2, '2024-05-10 14:06:26'),
(43, 23, 'pottedplant/pottedplant13.jpg', 1, '2024-05-10 14:06:54'),
(44, 24, 'fertilizer/fertilizer1.jpg', 1, '2024-05-10 14:07:53'),
(45, 24, 'fertilizer/fertilizer2.jpg', 2, '2024-05-10 14:07:53'),
(46, 25, 'fertilizer/fertilizer3.jpg', 1, '2024-05-10 14:08:17'),
(47, 26, 'fertilizer/fertilizer4.jpg', 1, '2024-05-10 14:08:17'),
(48, 27, 'fertilizer/fertilizer5.jpg', 1, '2024-05-10 14:08:47'),
(49, 28, 'fertilizer/fertilizer6.jpg', 1, '2024-05-10 14:08:47'),
(50, 29, 'fertilizer/fertilizer7.jpg', 1, '2024-05-10 14:09:11'),
(51, 29, 'fertilizer/fertilizer8.jpg', 2, '2024-05-10 14:09:11'),
(52, 31, 'fertilizer/fertilizer12.jpg', 1, '2024-05-10 14:09:33'),
(53, 31, 'fertilizer/fertilizer13.jpg', 2, '2024-05-10 14:09:33'),
(54, 31, 'fertilizer/fertilizer9.jpg', 1, '2024-05-10 14:10:03'),
(55, 31, 'fertilizer/fertilizer10.jpg', 2, '2024-05-10 14:10:03'),
(56, 31, 'fertilizer/fertilizer11.jpg', 3, '2024-05-10 14:10:03');

-- --------------------------------------------------------

--
-- 資料表結構 `pyclass`
--

CREATE TABLE `pyclass` (
  `classid` int(3) NOT NULL COMMENT '產品類別',
  `level` int(2) NOT NULL COMMENT '所在層級',
  `fonticon` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '字型圖示',
  `cname` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '類別名稱',
  `sort` int(3) NOT NULL COMMENT '列表排序',
  `uplink` int(3) NOT NULL COMMENT '上層連結',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間與更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 資料表的匯出資料 `pyclass`
--

INSERT INTO `pyclass` (`classid`, `level`, `fonticon`, `cname`, `sort`, `uplink`, `create_date`) VALUES
(1, 1, 'fa-solid fa-leaf', 'Bonsai', 1, 0, '2024-05-10 03:30:10'),
(2, 1, 'fa-solid fa-tree', 'cactus', 2, 0, '2024-05-10 03:30:10'),
(3, 1, 'fa-brands fa-pagelines', 'Tillandsia', 3, 0, '2024-05-10 03:30:10'),
(4, 1, 'fa-solid fa-hammer', 'pottedPlant', 4, 0, '2024-05-10 03:30:10'),
(5, 1, 'fa-solid fa-toolbox', 'fertilizer', 5, 0, '2024-05-10 03:30:10'),
(6, 2, 'fa-solid fa-diamond', '景天科', 1, 1, '2024-05-10 03:32:09'),
(7, 2, 'fa-solid fa-diamond', '胡椒科', 2, 1, '2024-05-10 03:32:09'),
(8, 2, 'fa-solid fa-diamond', '百合科', 3, 1, '2024-05-10 13:09:14'),
(9, 2, 'fa-solid fa-diamond', '仙人球屬', 1, 2, '2024-05-10 03:33:35'),
(10, 2, 'fa-solid fa-diamond', '曇花屬', 2, 2, '2024-05-10 03:33:35'),
(11, 2, 'fa-solid fa-diamond', '大戟科', 3, 2, '2024-05-10 13:21:30'),
(12, 2, 'fa-solid fa-diamond', '花座球屬', 4, 2, '2024-05-10 03:33:35'),
(13, 2, 'fa-solid fa-diamond', '小精靈系列', 1, 3, '2024-05-10 03:34:20'),
(14, 2, 'fa-solid fa-diamond', '其他', 2, 3, '2024-05-10 03:34:20'),
(15, 2, 'fa-solid fa-diamond', '日式', 1, 4, '2024-05-10 03:35:42'),
(16, 2, 'fa-solid fa-diamond', '圓系列', 2, 4, '2024-05-10 03:35:42'),
(17, 2, 'fa-solid fa-diamond', '方系列', 3, 4, '2024-05-10 03:35:42'),
(18, 2, 'fa-solid fa-diamond', '陶瓷', 4, 4, '2024-05-10 03:35:42'),
(19, 2, 'fa-solid fa-diamond', '一般', 5, 4, '2024-05-10 03:35:42'),
(20, 2, 'fa-solid fa-diamond', '肥料/石頭', 1, 5, '2024-05-10 13:32:58'),
(21, 2, 'fa-solid fa-diamond', '用具', 2, 5, '2024-05-10 03:36:14');

-- --------------------------------------------------------

--
-- 資料表結構 `town`
--

CREATE TABLE `town` (
  `townNo` bigint(20) NOT NULL COMMENT '鄕鎮市編號',
  `Name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '鄕鎮市名稱',
  `Post` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '郵遞區號',
  `State` smallint(6) NOT NULL COMMENT '狀態',
  `AutoNo` int(10) NOT NULL COMMENT '上層城市編號連結'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `town`
--

INSERT INTO `town` (`townNo`, `Name`, `Post`, `State`, `AutoNo`) VALUES
(1, '中正區', '100', 0, 1),
(2, '大同區', '103', 0, 1),
(3, '中山區', '104', 0, 1),
(4, '松山區', '105', 0, 1),
(5, '大安區', '106', 0, 1),
(6, '萬華區', '108', 0, 1),
(7, '信義區', '110', 0, 1),
(8, '士林區', '111', 0, 1),
(9, '北投區', '112', 0, 1),
(10, '內湖區', '114', 0, 1),
(11, '南港區', '115', 0, 1),
(12, '文山區', '116', 0, 1),
(13, '仁愛區', '200', 0, 2),
(14, '信義區', '201', 0, 2),
(15, '中正區', '202', 0, 2),
(16, '中山區', '203', 0, 2),
(17, '安樂區', '204', 0, 2),
(18, '暖暖區', '205', 0, 2),
(19, '七堵區', '206', 0, 2),
(20, '萬里區', '207', 0, 3),
(21, '金山區', '208', 0, 3),
(22, '板橋區', '220', 0, 3),
(23, '汐止區', '221', 0, 3),
(24, '深坑區', '222', 0, 3),
(25, '石碇區', '223', 0, 3),
(26, '瑞芳區', '224', 0, 3),
(27, '平溪區', '226', 0, 3),
(28, '雙溪區', '227', 0, 3),
(29, '貢寮區', '228', 0, 3),
(30, '新店區', '231', 0, 3),
(31, '坪林區', '232', 0, 3),
(32, '烏來區', '233', 0, 3),
(33, '永和區', '234', 0, 3),
(34, '中和區', '235', 0, 3),
(35, '土城區', '236', 0, 3),
(36, '三峽區', '237', 0, 3),
(37, '樹林區', '238', 0, 3),
(38, '鶯歌區', '239', 0, 3),
(39, '三重區', '241', 0, 3),
(40, '新莊區', '242', 0, 3),
(41, '泰山區', '243', 0, 3),
(42, '林口區', '244', 0, 3),
(43, '蘆洲區', '247', 0, 3),
(44, '五股區', '248', 0, 3),
(45, '八里區', '249', 0, 3),
(46, '淡水區', '251', 0, 3),
(47, '三芝區', '252', 0, 3),
(48, '石門區', '253', 0, 3),
(49, '宜蘭市', '260', 0, 4),
(50, '頭城鎮', '261', 0, 4),
(51, '礁溪鄉', '262', 0, 4),
(52, '壯圍鄉', '263', 0, 4),
(53, '員山鄉', '264', 0, 4),
(54, '羅東鎮', '265', 0, 4),
(55, '三星鄉', '266', 0, 4),
(56, '大同鄉', '267', 0, 4),
(57, '五結鄉', '268', 0, 4),
(58, '冬山鄉', '269', 0, 4),
(59, '蘇澳鎮', '270', 0, 4),
(60, '南澳鄉', '272', 0, 4),
(61, '釣魚台列嶼', '290', 0, 4),
(62, '新竹市(東區)', '300', 0, 5),
(63, '竹北市', '302', 0, 6),
(64, '湖口鄉', '303', 0, 6),
(65, '新豐鄉', '304', 0, 6),
(66, '新埔鎮', '305', 0, 6),
(67, '關西鎮', '306', 0, 6),
(68, '芎林鄉', '307', 0, 6),
(69, '寶山鄉', '308', 0, 6),
(70, '竹東鎮', '310', 0, 6),
(71, '五峰鄉', '311', 0, 6),
(72, '橫山鄉', '312', 0, 6),
(73, '尖石鄉', '313', 0, 6),
(74, '北埔鄉', '314', 0, 6),
(75, '峨眉鄉', '315', 0, 6),
(76, '中壢區', '320', 0, 7),
(77, '平鎮區', '324', 0, 7),
(78, '龍潭區', '325', 0, 7),
(79, '楊梅區', '326', 0, 7),
(80, '新屋區', '327', 0, 7),
(81, '觀音區', '328', 0, 7),
(82, '桃園區', '330', 0, 7),
(83, '龜山區', '333', 0, 7),
(84, '八德區', '334', 0, 7),
(85, '大溪區', '335', 0, 7),
(86, '復興區', '336', 0, 7),
(87, '大園區', '337', 0, 7),
(88, '蘆竹區', '338', 0, 7),
(89, '竹南鎮', '350', 0, 8),
(90, '頭份市', '351', 0, 8),
(91, '三灣鄉', '352', 0, 8),
(92, '南庄鄉', '353', 0, 8),
(93, '獅潭鄉', '354', 0, 8),
(94, '後龍鎮', '356', 0, 8),
(95, '通霄鎮', '357', 0, 8),
(96, '苑裡鎮', '358', 0, 8),
(97, '苗栗市', '360', 0, 8),
(98, '造橋鄉', '361', 0, 8),
(99, '頭屋鄉', '362', 0, 8),
(100, '公館鄉', '363', 0, 8),
(101, '大湖鄉', '364', 0, 8),
(102, '泰安鄉', '365', 0, 8),
(103, '銅鑼鄉', '366', 0, 8),
(104, '三義鄉', '367', 0, 8),
(105, '西湖鄉', '368', 0, 8),
(106, '卓蘭鎮', '369', 0, 8),
(107, '中區', '400', 0, 9),
(108, '東區', '401', 0, 9),
(109, '南區', '402', 0, 9),
(110, '西區', '403', 0, 9),
(111, '北區', '404', 0, 9),
(112, '北屯區', '406', 0, 9),
(113, '西屯區', '407', 0, 9),
(114, '南屯區', '408', 0, 9),
(115, '太平區', '411', 0, 9),
(116, '大里區', '412', 0, 9),
(117, '霧峰區', '413', 0, 9),
(118, '烏日區', '414', 0, 9),
(119, '豐原區', '420', 0, 9),
(120, '后里區', '421', 0, 9),
(121, '石岡區', '422', 0, 9),
(122, '東勢區', '423', 0, 9),
(123, '和平區', '424', 0, 9),
(124, '新社區', '426', 0, 9),
(125, '潭子區', '427', 0, 9),
(126, '大雅區', '428', 0, 9),
(127, '神岡區', '429', 0, 9),
(128, '大肚區', '432', 0, 9),
(129, '沙鹿區', '433', 0, 9),
(130, '龍井區', '434', 0, 9),
(131, '梧棲區', '435', 0, 9),
(132, '清水區', '436', 0, 9),
(133, '大甲區', '437', 0, 9),
(134, '外埔區', '438', 0, 9),
(135, '大安區', '439', 0, 9),
(136, '彰化市', '500', 0, 10),
(137, '芬園鄉', '502', 0, 10),
(138, '花壇鄉', '503', 0, 10),
(139, '秀水鄉', '504', 0, 10),
(140, '鹿港鎮', '505', 0, 10),
(141, '福興鄉', '506', 0, 10),
(142, '線西鄉', '507', 0, 10),
(143, '和美鎮', '508', 0, 10),
(144, '伸港鄉', '509', 0, 10),
(145, '員林市', '510', 0, 10),
(146, '社頭鄉', '511', 0, 10),
(147, '永靖鄉', '512', 0, 10),
(148, '埔心鄉', '513', 0, 10),
(149, '溪湖鎮', '514', 0, 10),
(150, '大村鄉', '515', 0, 10),
(151, '埔鹽鄉', '516', 0, 10),
(152, '田中鎮', '520', 0, 10),
(153, '北斗鎮', '521', 0, 10),
(154, '田尾鄉', '522', 0, 10),
(155, '埤頭鄉', '523', 0, 10),
(156, '溪州鄉', '524', 0, 10),
(157, '竹塘鄉', '525', 0, 10),
(158, '二林鎮', '526', 0, 10),
(159, '大城鄉', '527', 0, 10),
(160, '芳苑鄉', '528', 0, 10),
(161, '二水鄉', '530', 0, 10),
(162, '南投市', '540', 0, 11),
(163, '中寮鄉', '541', 0, 11),
(164, '草屯鎮', '542', 0, 11),
(165, '國姓鄉', '544', 0, 11),
(166, '埔里鎮', '545', 0, 11),
(167, '仁愛鄉', '546', 0, 11),
(168, '名間鄉', '551', 0, 11),
(169, '集集鎮', '552', 0, 11),
(170, '水里鄉', '553', 0, 11),
(171, '魚池鄉', '555', 0, 11),
(172, '信義鄉', '556', 0, 11),
(173, '竹山鎮', '557', 0, 11),
(174, '鹿谷鄉', '558', 0, 11),
(175, '斗南鎮', '630', 0, 12),
(176, '大埤鄉', '631', 0, 12),
(177, '虎尾鎮', '632', 0, 12),
(178, '土庫鎮', '633', 0, 12),
(179, '褒忠鄉', '634', 0, 12),
(180, '東勢鄉', '635', 0, 12),
(181, '臺西鄉', '636', 0, 12),
(182, '崙背鄉', '637', 0, 12),
(183, '麥寮鄉', '638', 0, 12),
(184, '斗六市', '640', 0, 12),
(185, '林內鄉', '643', 0, 12),
(186, '古坑鄉', '646', 0, 12),
(187, '莿桐鄉', '647', 0, 12),
(188, '西螺鎮', '648', 0, 12),
(189, '二崙鄉', '649', 0, 12),
(190, '北港鎮', '651', 0, 12),
(191, '水林鄉', '652', 0, 12),
(192, '口湖鄉', '653', 0, 12),
(193, '四湖鄉', '654', 0, 12),
(194, '元長鄉', '655', 0, 12),
(195, '嘉義市(東區)', '600', 0, 13),
(196, '番路鄉', '602', 0, 14),
(197, '梅山鄉', '603', 0, 14),
(198, '竹崎鄉', '604', 0, 14),
(199, '阿里山鄉', '605', 0, 14),
(200, '中埔鄉', '606', 0, 14),
(201, '大埔鄉', '607', 0, 14),
(202, '水上鄉', '608', 0, 14),
(203, '鹿草鄉', '611', 0, 14),
(204, '太保市', '612', 0, 14),
(205, '朴子市', '613', 0, 14),
(206, '東石鄉', '614', 0, 14),
(207, '六腳鄉', '615', 0, 14),
(208, '新港鄉', '616', 0, 14),
(209, '民雄鄉', '621', 0, 14),
(210, '大林鎮', '622', 0, 14),
(211, '溪口鄉', '623', 0, 14),
(212, '義竹鄉', '624', 0, 14),
(213, '布袋鎮', '625', 0, 14),
(214, '中西區', '700', 0, 15),
(215, '東區', '701', 0, 15),
(216, '南區', '702', 0, 15),
(217, '北區', '704', 0, 15),
(218, '安平區', '708', 0, 15),
(219, '安南區', '709', 0, 15),
(220, '永康區', '710', 0, 15),
(221, '歸仁區', '711', 0, 15),
(222, '新化區', '712', 0, 15),
(223, '左鎮區', '713', 0, 15),
(224, '玉井區', '714', 0, 15),
(225, '楠西區', '715', 0, 15),
(226, '南化區', '716', 0, 15),
(227, '仁德區', '717', 0, 15),
(228, '關廟區', '718', 0, 15),
(229, '龍崎區', '719', 0, 15),
(230, '官田區', '720', 0, 15),
(231, '麻豆區', '721', 0, 15),
(232, '佳里區', '722', 0, 15),
(233, '西港區', '723', 0, 15),
(234, '七股區', '724', 0, 15),
(235, '將軍區', '725', 0, 15),
(236, '學甲區', '726', 0, 15),
(237, '北門區', '727', 0, 15),
(238, '新營區', '730', 0, 15),
(239, '後壁區', '731', 0, 15),
(240, '白河區', '732', 0, 15),
(241, '東山區', '733', 0, 15),
(242, '六甲區', '734', 0, 15),
(243, '下營區', '735', 0, 15),
(244, '柳營區', '736', 0, 15),
(245, '鹽水區', '737', 0, 15),
(246, '善化區', '741', 0, 15),
(247, '大內區', '742', 0, 15),
(248, '山上區', '743', 0, 15),
(249, '新市區', '744', 0, 15),
(250, '安定區', '745', 0, 15),
(251, '新興區', '800', 0, 16),
(252, '前金區', '801', 0, 16),
(253, '苓雅區', '802', 0, 16),
(254, '鹽埕區', '803', 0, 16),
(255, '鼓山區', '804', 0, 16),
(256, '旗津區', '805', 0, 16),
(257, '前鎮區', '806', 0, 16),
(258, '三民區', '807', 0, 16),
(259, '楠梓區', '811', 0, 16),
(260, '小港區', '812', 0, 16),
(261, '左營區', '813', 0, 16),
(262, '仁武區', '814', 0, 16),
(263, '大社區', '815', 0, 16),
(264, '岡山區', '820', 0, 16),
(265, '路竹區', '821', 0, 16),
(266, '阿蓮區', '822', 0, 16),
(267, '田寮區', '823', 0, 16),
(268, '燕巢區', '824', 0, 16),
(269, '橋頭區', '825', 0, 16),
(270, '梓官區', '826', 0, 16),
(271, '彌陀區', '827', 0, 16),
(272, '永安區', '828', 0, 16),
(273, '湖內區', '829', 0, 16),
(274, '鳳山區', '830', 0, 16),
(275, '大寮區', '831', 0, 16),
(276, '林園區', '832', 0, 16),
(277, '鳥松區', '833', 0, 16),
(278, '大樹區', '840', 0, 16),
(279, '旗山區', '842', 0, 16),
(280, '美濃區', '843', 0, 16),
(281, '六龜區', '844', 0, 16),
(282, '內門區', '845', 0, 16),
(283, '杉林區', '846', 0, 16),
(284, '甲仙區', '847', 0, 16),
(285, '桃源區', '848', 0, 16),
(286, '那瑪夏區', '849', 0, 16),
(287, '茂林區', '851', 0, 16),
(288, '茄萣區', '852', 0, 16),
(289, '東沙', '817', 0, 17),
(290, '南沙', '819', 0, 17),
(291, '馬公市', '880', 0, 18),
(292, '西嶼鄉', '881', 0, 18),
(293, '望安鄉', '882', 0, 18),
(294, '七美鄉', '883', 0, 18),
(295, '白沙鄉', '884', 0, 18),
(296, '湖西鄉', '885', 0, 18),
(297, '屏東市', '900', 0, 19),
(298, '三地門鄉', '901', 0, 19),
(299, '霧臺鄉', '902', 0, 19),
(300, '瑪家鄉', '903', 0, 19),
(301, '九如鄉', '904', 0, 19),
(302, '里港鄉', '905', 0, 19),
(303, '高樹鄉', '906', 0, 19),
(304, '鹽埔鄉', '907', 0, 19),
(305, '長治鄉', '908', 0, 19),
(306, '麟洛鄉', '909', 0, 19),
(307, '竹田鄉', '911', 0, 19),
(308, '內埔鄉', '912', 0, 19),
(309, '萬丹鄉', '913', 0, 19),
(310, '潮州鎮', '920', 0, 19),
(311, '泰武鄉', '921', 0, 19),
(312, '來義鄉', '922', 0, 19),
(313, '萬巒鄉', '923', 0, 19),
(314, '崁頂鄉', '924', 0, 19),
(315, '新埤鄉', '925', 0, 19),
(316, '南州鄉', '926', 0, 19),
(317, '林邊鄉', '927', 0, 19),
(318, '東港鄉', '928', 0, 19),
(319, '琉球鄉', '929', 0, 19),
(320, '佳冬鄉', '931', 0, 19),
(321, '新園鄉', '932', 0, 19),
(322, '枋寮鄉', '940', 0, 19),
(323, '枋山鄉', '941', 0, 19),
(324, '春日鄉', '942', 0, 19),
(325, '獅子鄉', '943', 0, 19),
(326, '車城鄉', '944', 0, 19),
(327, '牡丹鄉', '945', 0, 19),
(328, '恆春鎮', '946', 0, 19),
(329, '滿州鄉', '947', 0, 19),
(330, '臺東市', '950', 0, 20),
(331, '綠島鄉', '951', 0, 20),
(332, '蘭嶼鄉', '952', 0, 20),
(333, '延平鄉', '953', 0, 20),
(334, '卑南鄉', '954', 0, 20),
(335, '鹿野鄉', '955', 0, 20),
(336, '關山鎮', '956', 0, 20),
(337, '海端鄉', '957', 0, 20),
(338, '池上鄉', '958', 0, 20),
(339, '東河鄉', '959', 0, 20),
(340, '成功鎮', '961', 0, 20),
(341, '長濱鄉', '962', 0, 20),
(342, '太麻里鄉', '963', 0, 20),
(343, '金峰鄉', '964', 0, 20),
(344, '大武鄉', '965', 0, 20),
(345, '達仁鄉', '966', 0, 20),
(346, '花蓮市', '970', 0, 21),
(347, '新城鄉', '971', 0, 21),
(348, '秀林鄉', '972', 0, 21),
(349, '吉安鄉', '973', 0, 21),
(350, '壽豐鄉', '974', 0, 21),
(351, '鳳林鎮', '975', 0, 21),
(352, '光復鄉', '976', 0, 21),
(353, '豐濱鄉', '977', 0, 21),
(354, '瑞穗鄉', '978', 0, 21),
(355, '萬榮鄉', '979', 0, 21),
(356, '玉里鎮', '981', 0, 21),
(357, '卓溪鄉', '982', 0, 21),
(358, '富里鄉', '983', 0, 21),
(359, '金沙鎮', '890', 0, 22),
(360, '金湖鎮', '891', 0, 22),
(361, '金寧鄉', '892', 0, 22),
(362, '金城鎮', '893', 0, 22),
(363, '烈嶼鄉', '894', 0, 22),
(364, '烏坵鄉', '896', 0, 22),
(365, '南竿鄉', '209', 0, 23),
(366, '北竿鄉', '210', 0, 23),
(367, '莒光鄉', '211', 0, 23),
(368, '東引鄉', '212', 0, 23),
(371, '新竹市(北區)', '300', 0, 5),
(372, '新竹市(香山區)', '300', 0, 5),
(373, '嘉義市(西區)', '600', 0, 13);

-- --------------------------------------------------------

--
-- 資料表結構 `uorder`
--

CREATE TABLE `uorder` (
  `orderid` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '訂單編號',
  `emailid` int(10) NOT NULL COMMENT '會員編號',
  `addressid` int(10) NOT NULL COMMENT '收件人編號',
  `howpay` tinyint(4) NOT NULL DEFAULT '1' COMMENT '如何付款',
  `paystatus` int(5) DEFAULT NULL COMMENT '付款狀態',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '訂單處理狀態',
  `remark` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '備註',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '訂單時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `addbook`
--
ALTER TABLE `addbook`
  ADD PRIMARY KEY (`addressid`);

--
-- 資料表索引 `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`caro_id`);

--
-- 資料表索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- 資料表索引 `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`AutoNo`);

--
-- 資料表索引 `hot`
--
ALTER TABLE `hot`
  ADD PRIMARY KEY (`h_id`);

--
-- 資料表索引 `icon`
--
ALTER TABLE `icon`
  ADD PRIMARY KEY (`i_id`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`emailid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 資料表索引 `multiselect`
--
ALTER TABLE `multiselect`
  ADD PRIMARY KEY (`msid`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- 資料表索引 `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`img_id`);

--
-- 資料表索引 `pyclass`
--
ALTER TABLE `pyclass`
  ADD PRIMARY KEY (`classid`);

--
-- 資料表索引 `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`townNo`);

--
-- 資料表索引 `uorder`
--
ALTER TABLE `uorder`
  ADD PRIMARY KEY (`orderid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `addbook`
--
ALTER TABLE `addbook`
  MODIFY `addressid` int(10) NOT NULL AUTO_INCREMENT COMMENT '地址ID';

--
-- 使用資料表 AUTO_INCREMENT `carousel`
--
ALTER TABLE `carousel`
  MODIFY `caro_id` int(3) NOT NULL AUTO_INCREMENT COMMENT '輪播編號', AUTO_INCREMENT=7;

--
-- 使用資料表 AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(10) NOT NULL AUTO_INCREMENT COMMENT '購物車編號';

--
-- 使用資料表 AUTO_INCREMENT `city`
--
ALTER TABLE `city`
  MODIFY `AutoNo` int(10) NOT NULL AUTO_INCREMENT COMMENT '城市編號', AUTO_INCREMENT=24;

--
-- 使用資料表 AUTO_INCREMENT `hot`
--
ALTER TABLE `hot`
  MODIFY `h_id` int(3) NOT NULL AUTO_INCREMENT COMMENT '熱銷商品流水號';

--
-- 使用資料表 AUTO_INCREMENT `icon`
--
ALTER TABLE `icon`
  MODIFY `i_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `emailid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'email流水號';

--
-- 使用資料表 AUTO_INCREMENT `multiselect`
--
ALTER TABLE `multiselect`
  MODIFY `msid` int(5) NOT NULL AUTO_INCREMENT COMMENT '多功能選擇ID', AUTO_INCREMENT=39;

--
-- 使用資料表 AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '產品編號', AUTO_INCREMENT=32;

--
-- 使用資料表 AUTO_INCREMENT `product_img`
--
ALTER TABLE `product_img`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '圖檔編號', AUTO_INCREMENT=57;

--
-- 使用資料表 AUTO_INCREMENT `pyclass`
--
ALTER TABLE `pyclass`
  MODIFY `classid` int(3) NOT NULL AUTO_INCREMENT COMMENT '產品類別', AUTO_INCREMENT=22;

--
-- 使用資料表 AUTO_INCREMENT `town`
--
ALTER TABLE `town`
  MODIFY `townNo` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '鄕鎮市編號', AUTO_INCREMENT=374;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
