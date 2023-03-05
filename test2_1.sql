-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 01:08 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test2_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `status`, `level`, `created_at`, `updated_at`) VALUES
(27, 'admin', 'admin', '520d216df49a852e6f1c1b5517a41a10', 1, 0, '2015-10-06 19:28:10', '2022-09-29 03:28:57'),
(40, 'admin', 'admin', 'deb46309adb0fea100841b89ad1f5313', 1, 0, '2022-04-05 01:34:07', '2022-08-15 14:06:31'),
(41, 'thai', 'thai', '1aafcfcd9efdd2e7ac43e80ce77bba79', 1, 0, '2022-08-08 01:58:47', '2022-10-12 01:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt_cat` text COLLATE utf8_unicode_ci NOT NULL,
  `content_cat` text COLLATE utf8_unicode_ci NOT NULL,
  `cat_alias` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `status_cat` int(11) NOT NULL,
  `sort_order` bigint(20) NOT NULL,
  `category_avatar` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_category` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `excerpt_cat`, `content_cat`, `cat_alias`, `admin_id`, `parent_id`, `status_cat`, `sort_order`, `category_avatar`, `banner_category`, `created_at`, `updated_at`) VALUES
(582, 'Sản phẩm2', '', 'Đà Nẵng một điểm đến du lịch, tham quan, nghỉ dưỡng lý tưởng của nhiều [...]', 'san-pham2', 27, 0, 0, 0, '[{"url":"/public/uploads/files/a2.jpg"}]', '[{"url":"/public/uploads/files/a1.jpg"}]', '2022-10-06 01:58:56', '2022-11-14 09:20:10'),
(583, 'CHO THUÊ XE GẮN MÁY Ở ĐÀ NẴNG', '', '', 'cho-thue-xe-gan-may-o-da-nang', 41, 0, 0, 0, '[{"url":"/public/uploads/files/a1.jpg"}]', '[{"url":"/public/uploads/files/a2.jpg"}]', '2022-10-24 10:15:29', '2022-10-24 10:15:29'),
(584, 'Sản phẩm', '', '', 'san-pham', 41, 0, 0, 0, '[{"url":"/public/uploads/files/a1.jpg"}]', '[{"url":"/public/uploads/files/a2.jpg"}]', '2022-10-24 10:16:09', '2022-11-30 04:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `cat_new`
--

CREATE TABLE `cat_new` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cat_new_alias` longtext COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `the_tu_khoa` longtext COLLATE utf8_unicode_ci NOT NULL,
  `the_gioi_thieu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status_cat_new` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cat_new`
--

INSERT INTO `cat_new` (`id`, `name`, `cat_new_alias`, `admin_id`, `parent_id`, `content`, `the_tu_khoa`, `the_gioi_thieu`, `status_cat_new`, `view`, `created_at`, `updated_at`) VALUES
(53, 'Giới thiệu', 'con', 27, 53, '', '', '', 1, 0, '2022-10-06 03:28:26', '2022-10-06 03:30:43'),
(54, 'giới thiệu', 'gioi_thieu', 27, 54, '', '', '', 1, 0, '2022-10-06 03:31:34', '2022-10-06 04:50:54'),
(55, 'Giới thiệu', 'gioi-thieu-1', 27, 55, '', '', '', 1, 0, '2022-10-06 04:51:12', '2022-10-06 08:01:23'),
(56, 'bvlq trang chủ', 'bvlq-trang-chu', 27, 0, '', '', '', 1, 0, '2022-10-06 08:10:59', '2022-10-06 08:10:59'),
(57, 'Giới thiệu 1', 'gioi-thieu-1', 27, 0, '', '', '', 1, 0, '2022-10-06 08:11:41', '2022-10-06 08:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `name_color` varchar(255) NOT NULL,
  `ma_mau` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`name_color`, `ma_mau`, `id`, `created_at`, `updated_at`) VALUES
('#0000a0', '', 1, '2019-06-22', '2019-06-22'),
('#239c69', '', 2, '2019-06-22', '2019-06-22'),
('#ff0000', '', 3, '2019-06-22', '2019-06-22'),
('#ffffff', '', 6, '2019-06-22', '2019-06-22'),
('#008000', '', 7, '2019-06-22', '2019-06-22'),
('#f8f5ed', '', 9, '2019-06-28', '2019-06-28'),
('#ecdcd7', '', 10, '2019-06-28', '2019-06-28'),
('#000000', '', 11, '2019-06-28', '2019-06-28'),
('#f0875a', '', 12, '2019-06-28', '2019-06-28'),
('#f8cdd8', '', 13, '2019-06-28', '2019-06-28'),
('#e4c6af', '', 14, '2019-06-28', '2019-06-28'),
('#ecccd2', '', 15, '2019-06-28', '2019-06-28'),
('#99b2d5', '', 16, '2019-06-28', '2019-06-28'),
('#9f1027', '', 17, '2019-06-28', '2019-06-28'),
('#394150', '', 18, '2019-06-28', '2019-06-28'),
('#e8d0d9', '', 19, '2019-06-28', '2019-06-28'),
('#e9cb6e', '', 20, '2019-06-28', '2019-06-28'),
('#f1a359', '', 21, '2019-06-28', '2019-06-28'),
('#ac7670', '', 22, '2019-06-28', '2019-06-28'),
('#ca4f52', '', 23, '2019-06-28', '2019-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_cm` bigint(20) UNSIGNED NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_body` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id_cm`, `id`, `user_id`, `comment_body`, `created_at`, `updated_at`) VALUES
(100, 880, 0, 'Thôi em đừng lặng lòng anh ta', '2022-10-25 04:19:39', '2022-10-25 04:19:39'),
(102, 1, 0, 'Xin lỗi em vì những gì đã qua', '2022-10-25 04:42:13', '2022-10-25 04:42:13'),
(103, 870, 0, 'sdasd', '2022-11-01 07:31:35', '2022-11-01 07:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `counter_ips`
--

CREATE TABLE `counter_ips` (
  `ip` varchar(15) NOT NULL,
  `visit` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `counter_values`
--

CREATE TABLE `counter_values` (
  `id` bigint(11) NOT NULL,
  `day_id` bigint(11) NOT NULL,
  `day_value` bigint(11) NOT NULL,
  `yesterday_id` bigint(11) NOT NULL,
  `yesterday_value` bigint(11) NOT NULL,
  `week_id` bigint(11) NOT NULL,
  `week_value` bigint(11) NOT NULL,
  `month_id` bigint(11) NOT NULL,
  `month_value` bigint(11) NOT NULL,
  `year_id` bigint(11) NOT NULL,
  `year_value` bigint(11) NOT NULL,
  `all_value` bigint(11) NOT NULL,
  `record_date` datetime NOT NULL,
  `record_value` bigint(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter_values`
--

INSERT INTO `counter_values` (`id`, `day_id`, `day_value`, `yesterday_id`, `yesterday_value`, `week_id`, `week_value`, `month_id`, `month_value`, `year_id`, `year_value`, `all_value`, `record_date`, `record_value`, `created_at`, `updated_at`) VALUES
(0, 246, 1, 245, 0, 36, 1, 9, 1, 0, 2019, 1, '0000-00-00 00:00:00', 1, '2019-09-04', '2019-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` bigint(20) NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_dung` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dinh_dang_field`
--

CREATE TABLE `dinh_dang_field` (
  `id` int(11) NOT NULL,
  `ten_dinh_dang` varchar(255) NOT NULL,
  `mo_ta` text NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dinh_dang_field`
--

INSERT INTO `dinh_dang_field` (`id`, `ten_dinh_dang`, `mo_ta`, `admin_id`, `created_at`, `updated_at`) VALUES
(6, 'Banner', 'đây là kiểu định dạng banner', 28, '2019-08-17', '2019-08-19'),
(7, 'text', 'đây là kiêu dịnh dạng text', 28, '2019-08-17', '2019-08-17'),
(8, 'Images', 'Đây là kiểu định dạng images', 28, '2019-08-19', '2019-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_dinhdang` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `id_vitri` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `name`, `content`, `image_field`, `home_alias`, `id_dinhdang`, `created_at`, `updated_at`, `mo_ta`, `status`, `admin_id`, `id_vitri`) VALUES
(221, '', '<img alt="" src="/public/uploads/images/anh13.jpg" style="height:100%; width:100%" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh_slider', 1, 41, 1),
(222, '', '<img alt="" src="/public/uploads/images/anh12.jpg" style="height:100%; width:100%" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh_slider', 1, 41, 2),
(223, '', 'Bộ sưu tập mới&nbsp;giảm 15% giá sản phẩm', '', '', 7, '2022-11-15', '2022-11-15', 'Bộ sưu tập mới                   giảm 15% giá sản                   phẩm', 1, 41, 3),
(224, '', 'Sản phẩm mới của chúng tôi<br>\r\nDây chuyền cao cấp', '', '', 7, '2022-11-15', '2022-11-15', 'Sản phẩm mới của chúng tôi Dây chuyền cao cấp', 1, 41, 4),
(225, '', 'SẢN PHẨM BÁN CHẠY', '', '', 7, '2022-11-15', '2022-11-15', 'SẢN PHẨM BÁN CHẠY', 1, 41, 5),
(226, '', '<img alt="" src="/public/uploads/images/Picture1.png" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 6),
(227, '', '<img alt="" src="/public/uploads/images/Picture1.png" style="height:17px; width:100px" />', '', '', 8, '2022-11-15', '2022-11-15', 'phan trang tri', 1, 41, 7),
(228, '', 'SẢN PHẨM NỔI BẬT', '', '', 7, '2022-11-15', '2022-11-15', 'SẢN PHẨM NỔI BẬT', 1, 41, 8),
(229, '', '<img alt="" src="/public/uploads/images/anh11.jpg" style="height:150px; width:100%" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 9),
(230, '', '<img alt="" src="/public/uploads/images/anh8.jpg" style="height:100px; width:100%" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 10),
(231, '', '<img alt="" src="/public/uploads/images/anh1.jpg" style="height:66px; width:100%" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 11),
(232, '', '<img alt="" src="/public/uploads/images/hinhhoc2.png" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 12),
(233, '', 'Trang Sức Hình Học', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 13),
(234, '', 'Chúng tôi đã nhận thấy một xu hướng rất lớn trong đồ trang sức hình học cho mùa thu này.', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 14),
(235, '', '<img alt="" src="/public/uploads/images/hinhhoc3.png" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 15),
(236, '', 'Thiết Kế Mẫu Trang Sức', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 16),
(237, '', 'Thiết kế nên những sản phẩm trang sức rất tinh tế và sáng tạo', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 17),
(238, '', '<img alt="" src="/public/uploads/images/hinhhoc2.png" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 18),
(239, '', 'Phong Cách Trang Sức Mới', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 19),
(240, '', 'Một nghề mà chủ yếu sử dụng các vòng tròn nhảy đến với nhau có thể', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 20),
(241, '', '<img alt="" src="/public/uploads/images/anh10.jpg" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 21),
(242, '', '<img alt="" src="/public/uploads/images/anh11.jpg" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 22),
(243, '', '<img alt="" src="/public/uploads/images/anh12.jpg" />', '', '', 8, '2022-11-15', '2022-11-15', 'anh', 1, 41, 23),
(244, '', 'VỀ CHÚNG TÔI', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 24),
(245, '', 'Chúng tôi luôn cung cấp cho bạn những sản phẩm trang sức đẹp và chất lượng nhất, mẫu mã được thiết kế tinh xảo hoàn mỹ nhất!', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 25),
(246, '', 'info@ceramix.com', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 26),
(247, '', 'www.ceramix-shop.com', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 27),
(248, '', 'Vị trí', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 28),
(249, '', '<i class="fa-brands fa-facebook-f"></i>', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 29),
(250, '', '<i class="fa-brands fa-twitter"></i>', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 30),
(251, '', '<i class="fa-brands fa-google-plus-g"></i>', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 31),
(252, '', '<i class="fa-brands fa-pinterest-p"></i>', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 32),
(253, '', '<i class="fa-solid fa-wifi"></i>', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 33),
(254, '', 'THÔNG TIN', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 34),
(255, '', 'Giới thiệu', '', '', 7, '2022-11-15', '2022-11-15', 'Giới thiệu', 1, 41, 35),
(256, '', 'Tài khoản', '', '', 7, '2022-11-15', '2022-11-15', 'Tài khoản', 1, 41, 36),
(257, '', 'Thông tin', '', '', 7, '2022-11-15', '2022-11-15', 'Thông tin', 1, 41, 37),
(258, '', 'Liên hệ', '', '', 7, '2022-11-15', '2022-11-15', 'Liên hệ', 1, 41, 38),
(259, '', 'Sự kiện', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 39),
(260, '', 'CHÍNH SÁCH', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 40),
(261, '', 'Vận chuyển', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 41),
(262, '', 'Tuyển dụng', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 42),
(263, '', 'Hỗ trợ', '', '', 7, '2022-11-15', '2022-11-15', 'Hỗ trợ', 1, 41, 43),
(264, '', 'Đổi & trả hàng', '', '', 7, '2022-11-15', '2022-11-15', 'Đổi & trả hàng', 1, 41, 44),
(265, '', 'Thanh toán', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 45),
(266, '', 'NHẬN TIN MỚI NHẤT', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 46),
(267, '', 'Đăng ký theo dõi để cập nhật những tin tức mới nhanh nhất và nhiều chương trình khuyến mãi từ cữa hàng của chúng tôi.', '', '', 7, '2022-11-15', '2022-11-15', 'Đăng ký theo dõi để cập nhật những tin tức mới nhanh nhất và nhiều chương trình khuyến mãi từ cữa hàng của chúng tôi.', 1, 41, 47),
(268, '', '<i class="fa-solid fa-envelope"></i>', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 48),
(269, '', '© Ceramix 2016. Powered by', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 49),
(270, '', 'HARAVAN', '', '', 7, '2022-11-15', '2022-11-15', 'text', 1, 41, 50);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'menu_1', '[{"text":"TRANG CHỦ","href":"/","icon":"","target":"_self","title":""},{"text":"SẢN PHẨM","href":"/san-pham","icon":"","target":"_self","title":"","children":[{"text":"TRANG SỨC VÀNG","href":"/san-pham","icon":"","target":"_self","title":""},{"text":"TRANG SỨC BẠC","href":"/san-pham","icon":"","target":"_self","title":""},{"text":"TRANG SỨC KIM CƯƠNG","href":"/san-pham","icon":"","target":"_self","title":""}]},{"text":"TIN TỨC","href":"/tin-tuc","icon":"","target":"_self","title":""},{"text":"GIỚI THIỆU","href":"/gioi-thieu","icon":"","target":"_self","title":""},{"text":"LIÊN HỆ","href":"/lien-he","icon":"","target":"_self","title":""}]', '0000-00-00 00:00:00', '2022-11-14 10:14:46'),
(2, 'menu_2', '[{"text":"Sản phẩm mới","href":"/san-pham","icon":"","target":"_self","title":""},{"text":"Trang sức kim cương","href":"/san-pham","icon":"","target":"_self","title":""},{"text":"Trang sức bạc","href":"/san-pham","icon":"","target":"_self","title":""},{"text":"Trang sức vàng","href":"/san-pham","icon":"","target":"_self","title":""},{"text":"Sản phẩm nổi bật","href":"/san-pham","icon":"","target":"_self","title":""},{"text":"Sản phẩm khuyến mãi","href":"/san-pham","icon":"","target":"_self","title":""}]', '0000-00-00 00:00:00', '2022-11-15 01:36:15'),
(3, 've_chung_toi_footer', '[{"text":"Mua ngay","href":"/san-pham","icon":"","target":"_self","title":""}]', '0000-00-00 00:00:00', '2022-11-15 02:10:37'),
(4, 'danh_muc_san_pham_footer', '[{"text":"Trần Thạch Cao","href":"/tran-thach-cao","icon":"","target":"_self","title":"tran-thach-cao"},{"text":"Sơn Nhà","href":"/son-nha","icon":"","target":"_self","title":"son-nha"},{"text":"Giáy Dán Tường","href":"/giay-dan-tuong","icon":"","target":"_self","title":"giay-dan-tuong"},{"text":"Trần Nhôm","href":"/tran-nhom","icon":"","target":"_self","title":"tran-nhom"},{"text":"Trần Nhựa","href":"/tran-nhua","icon":"","target":"_self","title":"tran-nhua"},{"text":"Trần Suyên Sáng","href":"/tran-suyen-sang","icon":"","target":"_self","title":"tran-suyen-sang"}]', '0000-00-00 00:00:00', '2022-03-29 07:18:46'),
(5, 'menu_mobile', '[{"text":"TRANG CHỦ","href":"/","icon":"","target":"_self","title":""},{"text":"GIỚI THIỆU","href":"/gioithieu","icon":"","target":"_self","title":""},{"text":"TIN TỨC DU LỊCH","href":"/tintucdulich","icon":"","target":"_self","title":""},{"text":"BLOG THUÊ XE","href":"/blogthuexe","icon":"","target":"_self","title":"","children":[{"text":"TỔNG HỢP ĐỊA CHỈ THUÊ XE MÁY","href":"/tonghopdiachithuexemay","icon":"","target":"_self","title":""},{"text":"THUÊ XE MÁY ĐÀ NẴNG","href":"/thuexemaydanang","icon":"","target":"_self","title":""}]},{"text":"LIÊN HỆ","href":"/gioi-thieu-ve-tong-kho-son-dulux-sai-gon","icon":"","target":"_self","title":""}]', '0000-00-00 00:00:00', '2022-10-04 07:20:23'),
(6, 'menu_gold', '[{"text":"TRANG CHỦ","href":"/","icon":"","target":"_self","title":""},{"text":"GIỚI THIỆU","href":"/gioi-thieu","icon":"","target":"_self","title":""},{"text":"TIN TỨC DU LỊCH","href":"/tin-tuc-du-lich","icon":"","target":"_self","title":""},{"text":"BLOG THUÊ XE","href":"/blog-thue-xe","icon":"","target":"_self","title":"","children":[{"text":"TỔNG HỢP ĐỊA CHỈ THUÊ XE MÁY","href":"/tonghopdiachithuexemay","icon":"","target":"_self","title":""},{"text":"THUÊ XE MÁY ĐÀ NẴNG","href":"/thuexemaydanang","icon":"","target":"_self","title":""}]},{"text":"LIÊN HỆ","href":"/lien-he","icon":"","target":"_self","title":""}]', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menus_item`
--

CREATE TABLE `menus_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menus_id` bigint(20) NOT NULL,
  `cat_id_show` int(11) NOT NULL,
  `menus_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menus_item_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menus_item_id_parent` int(11) NOT NULL,
  `status_menusitem` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus_item`
--

INSERT INTO `menus_item` (`id`, `name`, `menus_id`, `cat_id_show`, `menus_alias`, `menus_item_url`, `menus_item_id_parent`, `status_menusitem`, `created_at`, `updated_at`) VALUES
(7, 'Địa chỉ', 2, 0, 'dia-chi-cong-ty', 'dia-chi-cong-ty', 0, 1, '2016-03-04 03:34:37', '2016-03-07 17:56:21'),
(8, 'Giới thiệu', 2, 0, 'gioi-thieu-cong-ty', '', 0, 1, '2016-03-04 03:34:42', '2016-03-07 17:56:21'),
(11, 'Giầy bảo hộ hàn quốc', 1, 0, 'giay-bao-ho-han-quoc', '', 1, 1, '2016-03-04 11:30:41', '2016-03-07 17:55:55'),
(12, 'Vải thủy tinh Hàn Quốc', 1, 0, 'vai-thuy-tinh-han-quoc', 'vai-thuy-tinh-han-quoc', 1, 1, '2016-03-04 12:38:38', '2016-03-07 17:55:55'),
(13, 'Dây đai an toàn Hàn Quốc', 1, 0, 'day-dai-an-toan-han-quoc', 'khamphukhoa168.com', 1, 1, '2016-03-04 13:37:58', '2016-03-07 17:55:55'),
(20, 'Trang chủ', 2, 0, '/', '', 0, 1, '2016-03-06 19:58:56', '2016-03-07 17:56:21'),
(21, 'Liên hệ', 2, 0, 'lien-he', 'lien-he', 0, 1, '2016-03-06 20:02:44', '2016-03-07 17:56:21'),
(33, 'Thiết bị an toàn lao động', 1, 0, 'thiet-bi-an-toan-lao-dong', 'thiet-bi-an-toan-lao-dong', 15, 1, '2016-03-07 19:07:01', '2016-03-07 19:07:01'),
(34, 'Sản phẩm khác', 1, 0, 'san-pham-khac', '', 1, 1, '2016-03-16 00:03:10', '2016-03-16 00:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_09_26_091251_create_contents_table', 1),
('2015_09_28_100830_create_admin_table', 2),
('2015_09_28_101255_create_user_table', 3),
('2015_09_28_102234_create_admin_table', 4),
('2015_09_29_045146_create_cat_table', 5),
('2015_09_29_045234_create_product_table', 5),
('2015_09_29_045312_create_transaction_table', 5),
('2015_09_29_045340_create_order_table', 5),
('2015_10_23_080452_create_menus_table', 6),
('2015_10_23_080620_create_menu_item_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_excerpt` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `new_alias` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cat_new_id` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `the_tu_khoa` longtext COLLATE utf8_unicode_ci NOT NULL,
  `the_gioi_thieu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status_new` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `news_excerpt`, `new_alias`, `cat_new_id`, `admin_id`, `content`, `the_tu_khoa`, `the_gioi_thieu`, `status_new`, `view`, `image_list`, `created_at`, `updated_at`) VALUES
(114, 'giới thiệu', '', 'gioi-thieu', '56', 27, '<div class="gioi_thieu">\r\n<div class="container">\r\n<div class="name_tt_gt">\r\n<h3 style="text-align: center;">Giới Thiệu</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Để có một chuyến du lịch hoàn hảo như mong muốn ngoài việc lên kế hoạch đặt phòng khách sạn, lịch trình tham quan, vui chơi, địa điểm ăn uống,… thì một trong những điều bạn không thể không chuẩn bị trước đó là phương tiện đi lại. Việc lựa chọn phương tiện đi lại là một yếu tố vô cùng quan trọng trong chuyến đi của bạn.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="name_tt_gt">\r\n<h3 style="text-align: center;">Dịch vụ Bình Minh</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Hiểu được tâm lý đó, chúng tôi Dịch vụ cho thuê xe máy Bình Minh chuyên <strong>cho thuê xe máy tại Đà Nẵng</strong>, cho thuê xe ô tô chất lượng và giá rẻ với tiêu chí “Luôn mang lại sự hài lòng cho khách hàng” chúng tôi luôn phục vụ khách hàng theo phương châm “Gọi đâu có đó” với thủ tục ” Đơn giản, nhanh chóng”.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="table_tt_bgdvtxmdntnb">\r\n<div class="bgthuexe"><strong>Bảng giá thuê xe máy của dịch vụ cho thuê xe máy Bình Minh</strong></div>\r\n\r\n<table class="table table-bordered">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2">Loại xe</td>\r\n			<td>1 ngày</td>\r\n			<td>2 ngày</td>\r\n			<td>3 ngày</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="4">\r\n			<div class="td_rieng">\r\n			<p>Xe tay ga</p>\r\n			</div>\r\n			</td>\r\n			<td>Air Blade, Lead, Vision đời mới</td>\r\n			<td>160.000đ</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Air Blade 2012</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nouvo LX, Attila Elizabeth</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Attila Victoria</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="3">\r\n			<div class="td_rieng">\r\n			<p>Xe gắn máy</p>\r\n			</div>\r\n			</td>\r\n			<td>Wave RSX, Wave S</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupiter</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sirius</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Ngoài ra, Dịch vụ cho thuê xe Bình Minh còn cho thuê ô tô với các dòng xe 4 chỗ, 7 chỗ, như Mazda 3, Elantra, Innova, Fortuner,… với mức giá phải chăng nhằm đáp ứng nhu cầu của khách hàng.</div>\r\n\r\n<div class="tt_tt_gt">Với đội xe được đầu tư đời mới, chất lượng, được bảo trì thường xuyên và đội ngũ nhân viên nhiệt tình, sẵn sàng tư vấn cho bạn về đường đi, khách sạn giá rẻ, địa điểm tham quan, ăn uống, giao xe nhanh chóng, chúng tôi cam kết luôn cung cấp dịch vụ thuê xe chất lượng, uy tín đến với khách hàng. Chúng tôi tự hào là địa chỉ thuê xe máy và ô tô uy tín được giới thiệu nhiều nhất bởi các bạn trẻ có kinh nghiệm du lịch Đà Nẵng.<br />\r\nHãy cùng công ty thuê xe Bình Minh khám phá mọi nẻo đường Đà Nẵng!</div>\r\n\r\n<div class="anh_pgt"><img alt="" src="./public/img/anh_phan_gioi_thieu.jpg" /></div>\r\n\r\n<div class="tt_tt_gt">Cho thuê xe máy Bình Minh chuyên cho thuê xe máy tại khách sạn Đà Nẵng uy tín, xe đời mới, giá rẻ, giao xe nhanh, miễn phí, thủ tục đơn giản.</div>\r\n</div>\r\n</div>\r\n', '', '', 1, 0, '[]', '2022-10-05 09:50:00', '2022-11-15 01:27:35'),
(117, 'Những loại xe máy mà bình minh đang cho thuê', '', 'nhung-loai-xe-may-ma-binh-minh-dang-cho-thue', '56', 27, '', '', '', 0, 0, '[]', '2022-10-06 08:13:37', '2022-10-06 08:14:03'),
(118, 'bảng giá chi tiết', '', 'bang-gia-chi-tiet', '56', 27, '', '', '', 0, 0, '[]', '2022-10-06 08:14:20', '2022-11-15 01:37:55'),
(119, 'thủ tục quan trọng nhất định phải nắm', '', 'thu-tuc-quan-trong-nhat-dinh-phai-nam', '56', 27, '', '', '', 0, 0, '[]', '2022-10-06 08:14:55', '2022-11-15 01:37:55'),
(120, 'Những lưu ý', '', 'nhung-luu-y', '56', 27, '', '', '', 0, 0, '[]', '2022-10-06 08:15:19', '2022-11-15 01:37:55'),
(115, 'Điểm đến', '', 'diem-den', '57', 27, 'Test tý', '', '', 0, 0, '[]', '2022-10-06 03:41:04', '2022-11-15 01:37:55'),
(116, 'Những loại xe máy mà bình minh đang cho thuê', '', 'nhung-loai-xe-may-ma-binh-minh-dang-cho-thue', '56', 27, '', '', '', 0, 0, '[]', '2022-10-06 08:13:31', '2022-11-15 01:37:55'),
(121, 'Blog thuê xe', 'Blog thuê xe', 'blog-thue-xe', '57', 41, '<div class="gioi_thieu">\r\n<div class="container">\r\n<div class="name_tt_gt">\r\n<h3>Blog thuê xe</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Để có một chuyến du lịch hoàn hảo như mong muốn ngoài việc lên kế hoạch đặt phòng khách sạn, lịch trình tham quan, vui chơi, địa điểm ăn uống,… thì một trong những điều bạn không thể không chuẩn bị trước đó là phương tiện đi lại. Việc lựa chọn phương tiện đi lại là một yếu tố vô cùng quan trọng trong chuyến đi của bạn.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="name_tt_gt">\r\n<h3>Dịch vụ Bình Minh</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Hiểu được tâm lý đó, chúng tôi Dịch vụ cho thuê xe máy Bình Minh chuyên <strong>cho thuê xe máy tại Đà Nẵng</strong>, cho thuê xe ô tô chất lượng và giá rẻ với tiêu chí “Luôn mang lại sự hài lòng cho khách hàng” chúng tôi luôn phục vụ khách hàng theo phương châm “Gọi đâu có đó” với thủ tục ” Đơn giản, nhanh chóng”.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="table_tt_bgdvtxmdntnb">\r\n<div class="bgthuexe"><strong>Bảng giá thuê xe máy của dịch vụ cho thuê xe máy Bình Minh</strong></div>\r\n\r\n<table class="table table-bordered">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2">Loại xe</td>\r\n			<td>1 ngày</td>\r\n			<td>2 ngày</td>\r\n			<td>3 ngày</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="4">\r\n			<div class="td_rieng">\r\n			<p>Xe tay ga</p>\r\n			</div>\r\n			</td>\r\n			<td>Air Blade, Lead, Vision đời mới</td>\r\n			<td>160.000đ</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Air Blade 2012</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nouvo LX, Attila Elizabeth</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Attila Victoria</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="3">\r\n			<div class="td_rieng">\r\n			<p>Xe gắn máy</p>\r\n			</div>\r\n			</td>\r\n			<td>Wave RSX, Wave S</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupiter</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sirius</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Ngoài ra, Dịch vụ cho thuê xe Bình Minh còn cho thuê ô tô với các dòng xe 4 chỗ, 7 chỗ, như Mazda 3, Elantra, Innova, Fortuner,… với mức giá phải chăng nhằm đáp ứng nhu cầu của khách hàng.</div>\r\n\r\n<div class="tt_tt_gt">Với đội xe được đầu tư đời mới, chất lượng, được bảo trì thường xuyên và đội ngũ nhân viên nhiệt tình, sẵn sàng tư vấn cho bạn về đường đi, khách sạn giá rẻ, địa điểm tham quan, ăn uống, giao xe nhanh chóng, chúng tôi cam kết luôn cung cấp dịch vụ thuê xe chất lượng, uy tín đến với khách hàng. Chúng tôi tự hào là địa chỉ thuê xe máy và ô tô uy tín được giới thiệu nhiều nhất bởi các bạn trẻ có kinh nghiệm du lịch Đà Nẵng.<br />\r\nHãy cùng công ty thuê xe Bình Minh khám phá mọi nẻo đường Đà Nẵng!</div>\r\n\r\n<div class="anh_pgt"><img alt="" src="./public/img/anh_phan_gioi_thieu.jpg" /></div>\r\n\r\n<div class="tt_tt_gt">Cho thuê xe máy Bình Minh chuyên cho thuê xe máy tại khách sạn Đà Nẵng uy tín, xe đời mới, giá rẻ, giao xe nhanh, miễn phí, thủ tục đơn giản.</div>\r\n</div>\r\n</div>\r\n', 'Blog thuê xe', 'Blog thuê xe', 0, 0, '[{"url":"/public/uploads/files/a5.jpg"}]', '2022-10-24 14:23:36', '2022-11-15 01:37:55'),
(122, 'TỔNG HỢP ĐỊA CHỈ THUÊ XE MÁY', '', 'tong-hop-dia-chi-thue-xe-may', '57', 41, 'TỔNG HỢP ĐỊA CHỈ THUÊ XE MÁY', 'TỔNG HỢP ĐỊA CHỈ THUÊ XE MÁY', 'TỔNG HỢP ĐỊA CHỈ THUÊ XE MÁY', 0, 0, '[{"url":"/public/uploads/files/a2.jpg"}]', '2022-10-24 14:25:13', '2022-11-15 01:37:55'),
(123, 'lien-he', '', 'lien-he', '56', 41, '<div class="gioi_thieu">\r\n<div class="container">\r\n<div class="name_tt_gt">\r\n<h3 style="text-align: center;">Liên hệ</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Để có một chuyến du lịch hoàn hảo như mong muốn ngoài việc lên kế hoạch đặt phòng khách sạn, lịch trình tham quan, vui chơi, địa điểm ăn uống,… thì một trong những điều bạn không thể không chuẩn bị trước đó là phương tiện đi lại. Việc lựa chọn phương tiện đi lại là một yếu tố vô cùng quan trọng trong chuyến đi của bạn.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="name_tt_gt">\r\n<h3 style="text-align: center;">Dịch vụ Bình Minh</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Hiểu được tâm lý đó, chúng tôi Dịch vụ cho thuê xe máy Bình Minh chuyên <strong>cho thuê xe máy tại Đà Nẵng</strong>, cho thuê xe ô tô chất lượng và giá rẻ với tiêu chí “Luôn mang lại sự hài lòng cho khách hàng” chúng tôi luôn phục vụ khách hàng theo phương châm “Gọi đâu có đó” với thủ tục ” Đơn giản, nhanh chóng”.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="table_tt_bgdvtxmdntnb">\r\n<div class="bgthuexe"><strong>Bảng giá thuê xe máy của dịch vụ cho thuê xe máy Bình Minh</strong></div>\r\n\r\n<table class="table table-bordered">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2">Loại xe</td>\r\n			<td>1 ngày</td>\r\n			<td>2 ngày</td>\r\n			<td>3 ngày</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="4">\r\n			<div class="td_rieng">\r\n			<p>Xe tay ga</p>\r\n			</div>\r\n			</td>\r\n			<td>Air Blade, Lead, Vision đời mới</td>\r\n			<td>160.000đ</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Air Blade 2012</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nouvo LX, Attila Elizabeth</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Attila Victoria</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="3">\r\n			<div class="td_rieng">\r\n			<p>Xe gắn máy</p>\r\n			</div>\r\n			</td>\r\n			<td>Wave RSX, Wave S</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupiter</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sirius</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Ngoài ra, Dịch vụ cho thuê xe Bình Minh còn cho thuê ô tô với các dòng xe 4 chỗ, 7 chỗ, như Mazda 3, Elantra, Innova, Fortuner,… với mức giá phải chăng nhằm đáp ứng nhu cầu của khách hàng.</div>\r\n\r\n<div class="tt_tt_gt">Với đội xe được đầu tư đời mới, chất lượng, được bảo trì thường xuyên và đội ngũ nhân viên nhiệt tình, sẵn sàng tư vấn cho bạn về đường đi, khách sạn giá rẻ, địa điểm tham quan, ăn uống, giao xe nhanh chóng, chúng tôi cam kết luôn cung cấp dịch vụ thuê xe chất lượng, uy tín đến với khách hàng. Chúng tôi tự hào là địa chỉ thuê xe máy và ô tô uy tín được giới thiệu nhiều nhất bởi các bạn trẻ có kinh nghiệm du lịch Đà Nẵng.<br />\r\nHãy cùng công ty thuê xe Bình Minh khám phá mọi nẻo đường Đà Nẵng!</div>\r\n\r\n<div class="anh_pgt"><img alt="" src="./public/img/anh_phan_gioi_thieu.jpg" /></div>\r\n\r\n<div class="tt_tt_gt">Cho thuê xe máy Bình Minh chuyên cho thuê xe máy tại khách sạn Đà Nẵng uy tín, xe đời mới, giá rẻ, giao xe nhanh, miễn phí, thủ tục đơn giản.</div>\r\n</div>\r\n</div>\r\n', 'liên hệ', 'liên hệ', 1, 0, '[{"url":"/public/uploads/files/a2.jpg"}]', '2022-10-24 14:33:01', '2022-11-15 01:38:16'),
(124, 'Tổng hợp địa chỉ thuê xe máy', '', 'tonghopdiachithuexemay', '57', 41, '<div class="gioi_thieu">\r\n<div class="container">\r\n<div class="name_tt_gt">\r\n<h3>Tổng hợp địa chỉ thuê xe máy</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Để có một chuyến du lịch hoàn hảo như mong muốn ngoài việc lên kế hoạch đặt phòng khách sạn, lịch trình tham quan, vui chơi, địa điểm ăn uống,… thì một trong những điều bạn không thể không chuẩn bị trước đó là phương tiện đi lại. Việc lựa chọn phương tiện đi lại là một yếu tố vô cùng quan trọng trong chuyến đi của bạn.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="name_tt_gt">\r\n<h3>Dịch vụ Bình Minh</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Hiểu được tâm lý đó, chúng tôi Dịch vụ cho thuê xe máy Bình Minh chuyên <strong>cho thuê xe máy tại Đà Nẵng</strong>, cho thuê xe ô tô chất lượng và giá rẻ với tiêu chí “Luôn mang lại sự hài lòng cho khách hàng” chúng tôi luôn phục vụ khách hàng theo phương châm “Gọi đâu có đó” với thủ tục ” Đơn giản, nhanh chóng”.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="table_tt_bgdvtxmdntnb">\r\n<div class="bgthuexe"><strong>Bảng giá thuê xe máy của dịch vụ cho thuê xe máy Bình Minh</strong></div>\r\n\r\n<table class="table table-bordered">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2">Loại xe</td>\r\n			<td>1 ngày</td>\r\n			<td>2 ngày</td>\r\n			<td>3 ngày</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="4">\r\n			<div class="td_rieng">\r\n			<p>Xe tay ga</p>\r\n			</div>\r\n			</td>\r\n			<td>Air Blade, Lead, Vision đời mới</td>\r\n			<td>160.000đ</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Air Blade 2012</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nouvo LX, Attila Elizabeth</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Attila Victoria</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="3">\r\n			<div class="td_rieng">\r\n			<p>Xe gắn máy</p>\r\n			</div>\r\n			</td>\r\n			<td>Wave RSX, Wave S</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupiter</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sirius</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Ngoài ra, Dịch vụ cho thuê xe Bình Minh còn cho thuê ô tô với các dòng xe 4 chỗ, 7 chỗ, như Mazda 3, Elantra, Innova, Fortuner,… với mức giá phải chăng nhằm đáp ứng nhu cầu của khách hàng.</div>\r\n\r\n<div class="tt_tt_gt">Với đội xe được đầu tư đời mới, chất lượng, được bảo trì thường xuyên và đội ngũ nhân viên nhiệt tình, sẵn sàng tư vấn cho bạn về đường đi, khách sạn giá rẻ, địa điểm tham quan, ăn uống, giao xe nhanh chóng, chúng tôi cam kết luôn cung cấp dịch vụ thuê xe chất lượng, uy tín đến với khách hàng. Chúng tôi tự hào là địa chỉ thuê xe máy và ô tô uy tín được giới thiệu nhiều nhất bởi các bạn trẻ có kinh nghiệm du lịch Đà Nẵng.<br />\r\nHãy cùng công ty thuê xe Bình Minh khám phá mọi nẻo đường Đà Nẵng!</div>\r\n\r\n<div class="anh_pgt"><img alt="" src="./public/img/anh_phan_gioi_thieu.jpg" /></div>\r\n\r\n<div class="tt_tt_gt">Cho thuê xe máy Bình Minh chuyên cho thuê xe máy tại khách sạn Đà Nẵng uy tín, xe đời mới, giá rẻ, giao xe nhanh, miễn phí, thủ tục đơn giản.</div>\r\n</div>\r\n</div>\r\n', 'Tổng hợp địa chỉ thuê xe máy', 'Tổng hợp địa chỉ thuê xe máy', 0, 0, '[{"url":"/public/uploads/files/a4.jpg"}]', '2022-10-24 14:35:50', '2022-11-15 01:37:55'),
(125, 'THUÊ XE MÁY ĐÀ NẴNG', '', 'thuexemaydanang', '56', 41, '<div class="gioi_thieu">\r\n<div class="container">\r\n<div class="name_tt_gt">\r\n<h3>THUÊ XE MÁY ĐÀ NẴNG</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Để có một chuyến du lịch hoàn hảo như mong muốn ngoài việc lên kế hoạch đặt phòng khách sạn, lịch trình tham quan, vui chơi, địa điểm ăn uống,… thì một trong những điều bạn không thể không chuẩn bị trước đó là phương tiện đi lại. Việc lựa chọn phương tiện đi lại là một yếu tố vô cùng quan trọng trong chuyến đi của bạn.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="name_tt_gt">\r\n<h3>Dịch vụ Bình Minh</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Hiểu được tâm lý đó, chúng tôi Dịch vụ cho thuê xe máy Bình Minh chuyên <strong>cho thuê xe máy tại Đà Nẵng</strong>, cho thuê xe ô tô chất lượng và giá rẻ với tiêu chí “Luôn mang lại sự hài lòng cho khách hàng” chúng tôi luôn phục vụ khách hàng theo phương châm “Gọi đâu có đó” với thủ tục ” Đơn giản, nhanh chóng”.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="table_tt_bgdvtxmdntnb">\r\n<div class="bgthuexe"><strong>Bảng giá thuê xe máy của dịch vụ cho thuê xe máy Bình Minh</strong></div>\r\n\r\n<table class="table table-bordered">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2">Loại xe</td>\r\n			<td>1 ngày</td>\r\n			<td>2 ngày</td>\r\n			<td>3 ngày</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="4">\r\n			<div class="td_rieng">\r\n			<p>Xe tay ga</p>\r\n			</div>\r\n			</td>\r\n			<td>Air Blade, Lead, Vision đời mới</td>\r\n			<td>160.000đ</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Air Blade 2012</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nouvo LX, Attila Elizabeth</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Attila Victoria</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="3">\r\n			<div class="td_rieng">\r\n			<p>Xe gắn máy</p>\r\n			</div>\r\n			</td>\r\n			<td>Wave RSX, Wave S</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupiter</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sirius</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Ngoài ra, Dịch vụ cho thuê xe Bình Minh còn cho thuê ô tô với các dòng xe 4 chỗ, 7 chỗ, như Mazda 3, Elantra, Innova, Fortuner,… với mức giá phải chăng nhằm đáp ứng nhu cầu của khách hàng.</div>\r\n\r\n<div class="tt_tt_gt">Với đội xe được đầu tư đời mới, chất lượng, được bảo trì thường xuyên và đội ngũ nhân viên nhiệt tình, sẵn sàng tư vấn cho bạn về đường đi, khách sạn giá rẻ, địa điểm tham quan, ăn uống, giao xe nhanh chóng, chúng tôi cam kết luôn cung cấp dịch vụ thuê xe chất lượng, uy tín đến với khách hàng. Chúng tôi tự hào là địa chỉ thuê xe máy và ô tô uy tín được giới thiệu nhiều nhất bởi các bạn trẻ có kinh nghiệm du lịch Đà Nẵng.<br />\r\nHãy cùng công ty thuê xe Bình Minh khám phá mọi nẻo đường Đà Nẵng!</div>\r\n\r\n<div class="anh_pgt"><img alt="" src="./public/img/anh_phan_gioi_thieu.jpg" /></div>\r\n\r\n<div class="tt_tt_gt">Cho thuê xe máy Bình Minh chuyên cho thuê xe máy tại khách sạn Đà Nẵng uy tín, xe đời mới, giá rẻ, giao xe nhanh, miễn phí, thủ tục đơn giản.</div>\r\n</div>\r\n</div>\r\n', 'THUÊ XE MÁY ĐÀ NẴNG', 'THUÊ XE MÁY ĐÀ NẴNG', 0, 0, '[{"url":"/public/uploads/files/a2.jpg"}]', '2022-10-24 14:38:03', '2022-11-15 01:37:55'),
(126, 'Tin tức', 'tin tức', 'tin-tuc', '56', 41, '<div class="gioi_thieu">\r\n<div class="container">\r\n<div class="name_tt_gt">\r\n<h3 style="text-align:center">TIN TỨC</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Để có một chuyến du lịch hoàn hảo như mong muốn ngoài việc lên kế hoạch đặt phòng khách sạn, lịch trình tham quan, vui chơi, địa điểm ăn uống,… thì một trong những điều bạn không thể không chuẩn bị trước đó là phương tiện đi lại. Việc lựa chọn phương tiện đi lại là một yếu tố vô cùng quan trọng trong chuyến đi của bạn.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="name_tt_gt">\r\n<h3 style="text-align:center">Dịch vụ Bình Minh</h3>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Hiểu được tâm lý đó, chúng tôi Dịch vụ cho thuê xe máy Bình Minh chuyên <strong>cho thuê xe máy tại Đà Nẵng</strong>, cho thuê xe ô tô chất lượng và giá rẻ với tiêu chí “Luôn mang lại sự hài lòng cho khách hàng” chúng tôi luôn phục vụ khách hàng theo phương châm “Gọi đâu có đó” với thủ tục ” Đơn giản, nhanh chóng”.</div>\r\n\r\n<div class="tt_tt_gt">Đến với thành phố biển Đà Nẵng xinh đẹp, có rất nhiều phương tiện cho bạn lựa chọn : taxi, xe buýt, xe ô tô, xe máy, xe điện,… Tuy nhiên, điều bạn quan tâm là phương tiện nào giúp bạn di chuyển tiện lợi và tiết kiệm chi phí nhất!</div>\r\n\r\n<div class="table_tt_bgdvtxmdntnb">\r\n<div class="bgthuexe"><strong>Bảng giá thuê xe máy của dịch vụ cho thuê xe máy Bình Minh</strong></div>\r\n\r\n<table class="table table-bordered">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2">Loại xe</td>\r\n			<td>1 ngày</td>\r\n			<td>2 ngày</td>\r\n			<td>3 ngày</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="4">\r\n			<div class="td_rieng">\r\n			<p>Xe tay ga</p>\r\n			</div>\r\n			</td>\r\n			<td>Air Blade, Lead, Vision đời mới</td>\r\n			<td>160.000đ</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Air Blade 2012</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nouvo LX, Attila Elizabeth</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Attila Victoria</td>\r\n			<td>150.000đ</td>\r\n			<td>140.000đ</td>\r\n			<td>130.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="3">\r\n			<div class="td_rieng">\r\n			<p>Xe gắn máy</p>\r\n			</div>\r\n			</td>\r\n			<td>Wave RSX, Wave S</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupiter</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sirius</td>\r\n			<td>120.000đ</td>\r\n			<td>110.000đ</td>\r\n			<td>100.000đ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="tt_tt_gt">Ngoài ra, Dịch vụ cho thuê xe Bình Minh còn cho thuê ô tô với các dòng xe 4 chỗ, 7 chỗ, như Mazda 3, Elantra, Innova, Fortuner,… với mức giá phải chăng nhằm đáp ứng nhu cầu của khách hàng.</div>\r\n\r\n<div class="tt_tt_gt">Với đội xe được đầu tư đời mới, chất lượng, được bảo trì thường xuyên và đội ngũ nhân viên nhiệt tình, sẵn sàng tư vấn cho bạn về đường đi, khách sạn giá rẻ, địa điểm tham quan, ăn uống, giao xe nhanh chóng, chúng tôi cam kết luôn cung cấp dịch vụ thuê xe chất lượng, uy tín đến với khách hàng. Chúng tôi tự hào là địa chỉ thuê xe máy và ô tô uy tín được giới thiệu nhiều nhất bởi các bạn trẻ có kinh nghiệm du lịch Đà Nẵng.<br />\r\nHãy cùng công ty thuê xe Bình Minh khám phá mọi nẻo đường Đà Nẵng!</div>\r\n\r\n<div class="anh_pgt"><img alt="" src="./public/img/anh_phan_gioi_thieu.jpg" /></div>\r\n\r\n<div class="tt_tt_gt">Cho thuê xe máy Bình Minh chuyên cho thuê xe máy tại khách sạn Đà Nẵng uy tín, xe đời mới, giá rẻ, giao xe nhanh, miễn phí, thủ tục đơn giản.</div>\r\n</div>\r\n</div>\r\n', '', '', 1, 0, '[]', '2022-11-15 01:38:47', '2022-11-15 04:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 0, 894, 1, '', 0, '2023-03-05 06:19:45', '2023-03-05 06:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ma_tien` varchar(11) NOT NULL,
  `ky_hieu` varchar(255) NOT NULL,
  `gia_tien_chuyen_doi` bigint(20) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`, `ma_tien`, `ky_hieu`, `gia_tien_chuyen_doi`, `created_at`, `updated_at`) VALUES
(1, 'Việt nam đồng ', 'Vnd', 'đ', 1, '2019-06-20', '2019-06-22'),
(2, 'Đô la mỹ ', 'usd', '$', 23000, '2019-06-20', '2019-06-22'),
(6, 'Euro', 'euro', '€', 30000, '2019-06-22', '2019-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_alias` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cat_khoa_chinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cat_id_1` int(11) NOT NULL,
  `cat_id_2` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` bigint(255) NOT NULL,
  `price_old` int(11) NOT NULL,
  `don_hang` int(11) NOT NULL,
  `loai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_san_pham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_chuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `xuat_xu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyen_mai` date NOT NULL,
  `nhap_khau_va_phan_phoi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_two` text COLLATE utf8_unicode_ci NOT NULL,
  `the_tu_khoa` longtext COLLATE utf8_unicode_ci NOT NULL,
  `the_gioi_thieu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status_product` tinyint(1) DEFAULT NULL,
  `image_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image_lien_quan` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image_list_1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image_list_2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `view` bigint(20) NOT NULL,
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `port_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_alias`, `excerpt`, `cat_id`, `cat_khoa_chinh`, `cat_id_1`, `cat_id_2`, `admin_id`, `name`, `link`, `tag`, `price`, `price_old`, `don_hang`, `loai`, `ma_san_pham`, `tieu_chuan`, `xuat_xu`, `khuyen_mai`, `nhap_khau_va_phan_phoi`, `content`, `color`, `size`, `content_two`, `the_tu_khoa`, `the_gioi_thieu`, `status_product`, `image_link`, `image_list`, `image_lien_quan`, `image_list_1`, `image_list_2`, `view`, `admin`, `created_at`, `updated_at`, `port_id`) VALUES
(891, 'day-chuyen-thoi-trang', '', '-584-', '584', 0, 0, 41, 'Dây chuyền thời trang', '', '', 2200000, 0, 0, '', '', '', '', '0000-00-00', '', 'Ngày nay, nhiều hãng giày khi bán hàng cho khách thường đựng giày trong một chiếc hộp rất đẹp, có kèm cả túi chống ẩm. Khi mua hàng về, bạn đừng vứt hộp đi. Chẳng hạn, đôi giày đó bạn chỉ đi vào mùa lạnh,...', '', '', '', '', '2,200,000₫', 1, '', '[{"url":"/public/uploads/files/anh7.jpg"}]', '', '', '', 0, 'thai', '2022-11-15 02:45:09', '2022-11-15 09:55:19', 0),
(893, 'doi-khuyen-tai-vang', '', '-584-', '584', 0, 0, 41, 'ĐÔI KHUYÊN TAI VÀNG', '', '', 2500000, 0, 0, '', '', '', '', '0000-00-00', '', 'Ngày nay, nhiều hãng giày khi bán hàng cho khách thường đựng giày trong một chiếc hộp rất đẹp, có kèm cả túi chống ẩm. Khi mua hàng về, bạn đừng vứt hộp đi. Chẳng hạn, đôi giày đó bạn chỉ đi vào mùa lạnh,...', '', '', '', '', '2,500,000₫', 1, '', '[{"url":"/public/uploads/files/anh1.jpg"}]', '', '', '', 0, 'thai', '2022-11-15 03:17:29', '2022-11-15 09:55:07', 0),
(894, 'day-chuyen-bac', '', '-584-', '584', 0, 0, 41, 'DÂY CHUYỀN BẠC', '', '', 620000, 0, 0, '', '', '', '', '0000-00-00', '', 'Ngày nay, nhiều hãng giày khi bán hàng cho khách thường đựng giày trong một chiếc hộp rất đẹp, có kèm cả túi chống ẩm. Khi mua hàng về, bạn đừng vứt hộp đi. Chẳng hạn, đôi giày đó bạn chỉ đi vào mùa lạnh,...', '', '', '', '', '620,000₫ ', 1, '', '[{"url":"/public/uploads/files/anh8.jpg"}]', '', '', '', 0, 'thai', '2022-11-15 03:18:48', '2022-11-15 09:54:55', 0),
(896, 'day-chuyen', '..', '-582-', '582', 0, 0, 41, 'DÂY CHUYỀN ', '', '', 0, 0, 0, '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 0, '', '[{"url":"/public/uploads/images/anh5.jpg"}]', '', '', '', 0, 'thai', '2022-11-15 04:30:56', '2022-11-15 04:30:56', 0),
(897, 'day-chuyen-kham-ngoc', '', '-584-', '584', 0, 0, 41, 'DÂY CHUYỀN KHẢM NGỌC', '', '', 2500000, 0, 0, '', '', '', '', '0000-00-00', '', 'Ngày nay, nhiều hãng giày khi bán hàng cho khách thường đựng giày trong một chiếc hộp rất đẹp, có kèm cả túi chống ẩm. Khi mua hàng về, bạn đừng vứt hộp đi. Chẳng hạn, đôi giày đó bạn chỉ đi vào mùa lạnh,...', '', '', '', '', '2,500,000₫', 1, '', '[{"url":"/public/uploads/files/anh5.jpg"}]', '', '', '', 0, 'thai', '2022-11-15 04:32:06', '2022-11-15 09:54:42', 0),
(898, 'day-chuyen-luc-bao', '', '-584-', '584', 0, 0, 41, 'DÂY CHUYỀN LỤC BẢO', '', '', 5700000, 0, 0, '', '', '', '', '0000-00-00', '', 'Ngày nay, nhiều hãng giày khi bán hàng cho khách thường đựng giày trong một chiếc hộp rất đẹp, có kèm cả túi chống ẩm. Khi mua hàng về, bạn đừng vứt hộp đi. Chẳng hạn, đôi giày đó bạn chỉ đi vào mùa lạnh,...', '', '', '', '', '5,700,000₫', 1, '', '[{"url":"/public/uploads/files/anh4.jpg"}]', '', '', '', 0, 'thai', '2022-11-15 04:33:27', '2022-11-15 09:54:24', 0),
(899, 'vong-deo-tay-cao-cap', '', '-584-', '584', 0, 0, 41, 'VÒNG ĐEO TAY CAO CẤP', '', '', 620000, 0, 0, '', '', '', '', '0000-00-00', '', 'Ngày nay, nhiều hãng giày khi bán hàng cho khách thường đựng giày trong một chiếc hộp rất đẹp, có kèm cả túi chống ẩm. Khi mua hàng về, bạn đừng vứt hộp đi. Chẳng hạn, đôi giày đó bạn chỉ đi vào mùa lạnh,...', '', '', '', '', '620,000₫', 1, '', '[{"url":"/public/uploads/files/anh6.jpg"}]', '', '', '', 0, 'thai', '2022-11-15 04:36:22', '2022-11-15 09:54:08', 0),
(900, 'day-chuyen-thoi-trang', '', '-584-', '584', 0, 0, 41, 'DÂY CHUYỀN THỜI TRANG', '', '', 2200000, 0, 0, '', '', '', '', '0000-00-00', '', 'Ngày nay, nhiều hãng giày khi bán hàng cho khách thường đựng giày trong một chiếc hộp rất đẹp, có kèm cả túi chống ẩm. Khi mua hàng về, bạn đừng vứt hộp đi. Chẳng hạn, đôi giày đó bạn chỉ đi vào mùa lạnh,...', '', '', '', '', '2,200,000₫', 1, '', '[{"url":"/public/uploads/files/anh2.jpg"}]', '', '', '', 0, 'thai', '2022-11-15 04:37:37', '2023-03-05 06:39:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reply_comment`
--

CREATE TABLE `reply_comment` (
  `id_reply` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `id_cm` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_reply` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reply_comment`
--

INSERT INTO `reply_comment` (`id_reply`, `id`, `id_cm`, `user_id`, `comment_reply`, `created_at`, `updated_at`) VALUES
(32, 880, 100, 0, 'haizzz', '2022-10-25 04:37:30', '2022-10-25 04:37:30'),
(34, 1, 102, 0, 'Xin lỗi cơn mưa vừa qua', '2022-10-25 07:37:52', '2022-10-25 07:37:52'),
(35, 870, 103, 0, 'èdsfds', '2022-11-01 07:31:39', '2022-11-01 07:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name_size` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `name_size`, `created_at`, `updated_at`) VALUES
(1, 'images', '2019-07-01', '2019-08-17'),
(2, 'text', '2019-07-01', '2019-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `son`
--

CREATE TABLE `son` (
  `id` bigint(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `son`
--

INSERT INTO `son` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'son_admin 55555', '2019-03-30 10:01:54', '2019-03-30 10:01:54'),
(3, 'aaaaaa', '2019-03-30 09:26:26', '0000-00-00 00:00:00'),
(4, 'bbbbbbbbbb', '2019-03-30 09:26:26', '0000-00-00 00:00:00'),
(5, 'aaaaaa', '2019-03-30 09:26:28', '0000-00-00 00:00:00'),
(6, 'bbbbbbbbbb', '2019-03-30 09:26:28', '0000-00-00 00:00:00'),
(7, '222222222', '2019-03-30 09:49:45', '2019-03-30 09:49:45'),
(8, '999999999911', '2019-03-30 10:02:30', '2019-03-30 10:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `tin_nhan`
--

CREATE TABLE `tin_nhan` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` bigint(20) NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `security` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '0982992985', '', '520d216df49a852e6f1c1b5517a41a10', '2022-03-17 02:52:02', '2022-03-17 02:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `vi_tri_field`
--

CREATE TABLE `vi_tri_field` (
  `id` int(11) NOT NULL,
  `ten_vi_tri` varchar(255) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `mo_ta` text NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vi_tri_field`
--

INSERT INTO `vi_tri_field` (`id`, `ten_vi_tri`, `admin_id`, `stt`, `mo_ta`, `created_at`, `updated_at`) VALUES
(143, 'phone', 27, 1, '', '2019-09-24', '2019-10-08'),
(144, 'email', 27, 2, '', '2019-09-24', '2019-10-08'),
(145, 'logo', 27, 6, '', '2019-09-24', '2019-10-08'),
(146, 'gioi thieu', 27, 7, '', '2019-09-24', '2019-10-08'),
(147, 'img-phone', 27, 8, '', '2019-09-24', '2019-10-08'),
(148, 'banner', 27, 9, '', '2019-09-24', '2019-10-08'),
(149, 'banner', 27, 10, '', '2019-09-24', '2019-10-08'),
(150, 'banner', 27, 11, '', '2019-09-24', '2019-10-08'),
(151, 'tên công ty', 27, 12, '', '2019-09-24', '2019-10-08'),
(152, 'địa chỉ', 27, 13, '', '2019-09-24', '2019-10-08'),
(153, 'so dt', 27, 14, '', '2019-09-24', '2019-10-08'),
(154, 'mail', 27, 15, '', '2019-09-24', '2019-10-08'),
(155, 'tên web', 27, 16, '', '2019-09-24', '2019-10-08'),
(156, 'bản đồ', 27, 17, '', '2019-10-08', '2019-10-08'),
(157, 'mxh', 27, 18, '', '2019-10-09', '2019-10-09'),
(158, 'mxh', 27, 19, '', '2019-10-09', '2019-10-09'),
(159, 'mxh', 27, 20, '', '2019-10-09', '2019-10-09'),
(160, 'mxh', 27, 21, '', '2019-10-09', '2019-10-09'),
(161, 'images', 27, 3, '', '2019-10-09', '2019-10-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_new`
--
ALTER TABLE `cat_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_cm`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_prd` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `counter_ips`
--
ALTER TABLE `counter_ips`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `counter_values`
--
ALTER TABLE `counter_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinh_dang_field`
--
ALTER TABLE `dinh_dang_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_item`
--
ALTER TABLE `menus_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_comment`
--
ALTER TABLE `reply_comment`
  ADD PRIMARY KEY (`id_reply`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `son`
--
ALTER TABLE `son`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tin_nhan`
--
ALTER TABLE `tin_nhan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vi_tri_field`
--
ALTER TABLE `vi_tri_field`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;
--
-- AUTO_INCREMENT for table `cat_new`
--
ALTER TABLE `cat_new`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_cm` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dinh_dang_field`
--
ALTER TABLE `dinh_dang_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `menus_item`
--
ALTER TABLE `menus_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;
--
-- AUTO_INCREMENT for table `reply_comment`
--
ALTER TABLE `reply_comment`
  MODIFY `id_reply` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `son`
--
ALTER TABLE `son`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vi_tri_field`
--
ALTER TABLE `vi_tri_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
