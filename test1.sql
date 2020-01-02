-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2019 at 06:31 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SupperAdmin', 'scodeweb2016@gmail.com', '$2y$10$q3UFgqoa.mt5Yx1dVEBT.ee6CZkLk7p7U4Y.kbYQh6PLJ/mxgenJm', '100', 'LqqsfGhinUkm3Rh5DLiP7EqVKU61F6l0JMU0DhOodMsHeWNfGQ3i4KoGw2zi', '2016-12-05 00:38:38', '2016-12-05 02:46:22'),
(2, 'Adminor', 'bestleetran@gmail.com', '$2y$10$q3UFgqoa.mt5Yx1dVEBT.ee6CZkLk7p7U4Y.kbYQh6PLJ/mxgenJm', '100', 'LqqsfGhinUkm3Rh5DLiP7EqVKU61F6l0JMU0DhOodMsHeWNfGQ3i4KoGw2zi', '2016-12-05 00:38:38', '2016-12-05 02:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `url_banner` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Váy công sở', 'vay-cong-so', '0', '2016-11-23 20:01:57', '2019-12-14 22:53:32'),
(2, 'Đồ đôi', 'do-doi', '0', '2016-11-23 20:10:10', '2019-12-14 22:53:07'),
(3, 'Đầm xòe', 'dam-xoe', '1', '2016-11-23 20:17:01', '2019-12-14 22:19:31'),
(4, 'Đầm ôm', 'dam-om', '1', '2016-11-23 20:17:39', '2019-12-14 22:20:15'),
(9, 'Đồ ấm bộ', 'do-am-bo', '2', '2016-11-24 01:36:10', '2019-12-14 22:48:28'),
(10, 'Quần dài bộ', 'quan-dai-bo', '2', '2016-11-24 01:36:21', '2019-12-14 22:48:52'),
(13, 'TIN TỨC - KHUYỄN MẠI', 'tin-tuc-khuyen-mai', '0', '2016-11-24 01:38:46', '2016-11-24 01:38:46'),
(15, 'Đầm xòe 1', 'dam-xoe-1', '15', '2016-11-24 01:56:05', '2019-12-14 22:52:28'),
(17, 'Đầm dáng xuông', 'dam-dang-xuong', '1', '2016-11-25 02:00:41', '2019-12-14 22:49:24'),
(18, 'áo đôi tay ngắn', 'ao-doi-tay-ngan', '18', '2016-11-25 02:00:52', '2019-12-14 22:52:56'),
(19, 'áo sơ mi', 'ao-so-mi', '0', '2016-11-26 00:36:11', '2019-12-14 22:49:57'),
(20, 'Áo sơ mi tay ngắn', 'ao-so-mi-tay-ngan', '20', '2016-11-26 00:36:27', '2019-12-14 22:50:19'),
(22, 'Tin Công Nghệ', 'tin-cong-nghe', '13', '2016-11-28 18:40:09', '2016-11-28 18:40:09'),
(23, 'Tin khuyễn mại', 'tin-khuyen-mai', '13', '2016-11-28 18:40:31', '2016-11-28 18:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `detail_img`
--

CREATE TABLE `detail_img` (
  `id` int(10) UNSIGNED NOT NULL,
  `images_url` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detail_img`
--

INSERT INTO `detail_img` (`id`, `images_url`, `pro_id`, `created_at`, `updated_at`) VALUES
(25, '1480142655_samsunggalaxys7edge.jpg', 28, '2016-11-25 23:44:15', '2016-11-25 23:44:15'),
(51, '1480151894_rog.png', 54, '2016-11-26 02:18:14', '2016-11-26 02:18:14'),
(66, '1576387062_sp2.jpg', 22, '2019-12-14 22:17:42', '2019-12-14 22:17:42'),
(67, '1576387062_sp6.jpg', 22, '2019-12-14 22:17:42', '2019-12-14 22:17:42'),
(68, '1576388174_ak-7.jpeg', 23, '2019-12-14 22:36:14', '2019-12-14 22:36:14'),
(69, '1576388174_dd-6.png', 23, '2019-12-14 22:36:14', '2019-12-14 22:36:14'),
(70, '1576388175_ap-1.jpeg', 23, '2019-12-14 22:36:15', '2019-12-14 22:36:15'),
(71, '1576390452_sp8.jpg', 24, '2019-12-14 23:14:12', '2019-12-14 23:14:12'),
(72, '1576390452_ap-4.jpg', 24, '2019-12-14 23:14:12', '2019-12-14 23:14:12'),
(73, '1576391244_ak-7.jpeg', 53, '2019-12-14 23:27:24', '2019-12-14 23:27:24'),
(74, '1576391328_ap-4.jpg', 26, '2019-12-14 23:28:48', '2019-12-14 23:28:48'),
(75, '1576391614_ak-7.jpeg', 27, '2019-12-14 23:33:34', '2019-12-14 23:33:34'),
(76, '1576391739_ak-5.png', 41, '2019-12-14 23:35:39', '2019-12-14 23:35:39'),
(78, '1576392054_ak-4.png', 35, '2019-12-14 23:40:54', '2019-12-14 23:40:54');

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
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_13_131139_create_admin_users_table', 1),
('2016_11_24_011241_create_categor_table', 1),
('2016_11_24_011515_create_products_table', 1),
('2016_11_24_012823_create_pro_details_table', 1),
('2016_11_24_013636_create_detal_img_table', 1),
('2016_11_24_014238_create_news_table', 1),
('2016_11_24_014742_create_banners_table', 1),
('2016_12_01_161126_create_oders_table', 2),
('2016_12_02_015703_create_oders_detail_table', 3),
('2016_12_02_023327_create_oders_table', 4),
('2016_12_02_023343_create_oders_detail_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full` text COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `author`, `intro`, `full`, `images`, `tag`, `status`, `source`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone-6s-con-duoi-7-trieu-dong', 'admin', '<p>Kh&ocirc;ng chỉ iPhone SE h&agrave;ng mới m&agrave; h&agrave;ng đổi trả cũng được giảm gi&aacute; mạnh mẽ. Trước đ&acirc;y mức gi&aacute; l&agrave; hơn 7 triệu b&acirc;y giờ chỉ c&ograve;n dưới 7 triệu đồng, thậm ch&iacute; về gần mức 6 triệu đồng</p>\r', '<p>iPhone SE kế thừa từ nhiều mẫu iPhone hiện nay, n&oacute; l&agrave; tổng h&ograve;a của vẻ đẹp thanh lịch, gọn g&agrave;ng của&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-5s-16gb\" target=\"_blank\" title=\" iPhone 5s\" type=\" iPhone 5s\">iPhone 5s</a>&nbsp;với sức mạnh cấu h&igrave;nh của iPhone 6s. Ch&iacute;nh v&igrave; vậy, iPhone SE vẫn l&agrave; mong ước của nhiều t&iacute;n đồ nh&agrave; T&aacute;o.</p>\r\n\r\n<p><img alt=\"iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng\" src=\"https://cdn1.tgdd.vn/Files/2016/11/28/919237/iphone-se-2_1204x535.jpg\" title=\"iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng\" /></p>\r\n\r\n<p>Về gi&aacute; b&aacute;n, hiện tại iPhone SE h&agrave;ng đổi trả chỉ c&ograve;n dưới 7 triệu, ở mức trung b&igrave;nh l&agrave; 6.8 triệu đồng, thậm ch&iacute; c&oacute; chiếc chỉ 6.3 triệu đồng, t&ugrave;y thời gian bảo h&agrave;nh. Đ&acirc;y ch&iacute;nh l&agrave; lựa chọn tốt cho nhiều bạn trẻ mong muốn c&oacute; một iPhone &ldquo;nhỏ nhưng c&oacute; v&otilde;&rdquo;, gọn g&agrave;ng nhưng cực kỳ mạnh mẽ.</p>\r\n\r\n<p>iPhone SE hiện l&agrave; mẫu smartphone nhỏ gọn c&oacute; hiệu suất cao nhất hiện nay bởi n&oacute; trang bị cấu h&igrave;nh như iPhone 6s, đ&oacute; l&agrave; vi xử l&yacute; Apple A9, RAM 2 GB, c&ugrave;ng camera 12 MP sắc n&eacute;t. So với iPhone 5s th&igrave; iPhone SE c&ograve;n sở hữu thỏi pin dung lượng lớn hơn (1.642 mAh so với 1.560 mAh).</p>\r\n', '1576398985_ak-1.png', 'iphone 7, iphone 7 plus', 1, 'the gioi di dong', 22, 2, '2019-12-15 01:36:25', '2019-12-15 01:36:25'),
(2, 'Mặc \"len chồng len\" vô cùng sành điệu, có thể bạn chưa biết?', 'mac-len-chong-len-vo-cung-sanh-dieu-co-the-ban-chua-biet', 'admin', '<p>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2017 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất.</p>\r\n', '<ul>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/nhung-kieu-toc-danh-cho-chi-em-trung-nien-dep-nhat-thang-12-nay-d236272.html\">Những kiểu t&oacute;c d&agrave;nh cho chị em trung ni&ecirc;n đẹp nhất th&aacute;ng 12 n&agrave;y</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/nam-2020-den-roi-manh-dan-thay-doi-kieu-toc-cho-xinh-nhe-cac-nang-d236254.html\">Năm 2020 đến rồi, mạnh dạn thay đổi kiểu t&oacute;c cho xinh nh&eacute; c&aacute;c n&agrave;ng</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/goi-y-nang-cong-so-chon-ao-phao-vua-dep-vua-am-cho-ngay-dong-gia-lanh-d236129.html\">Gợi &yacute; n&agrave;ng c&ocirc;ng sở chọn &aacute;o phao vừa đẹp vừa ấm cho ng&agrave;y đ&ocirc;ng gi&aacute; lạnh</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>M&ugrave;a thu đ&ocirc;ng năm nay, c&oacute; một xu hướng vừa quen vừa lạ hứa hẹn khiến nhiều t&iacute;n đồ phải l&ograve;ng, đ&oacute; l&agrave; mặc cả bộ len xuống phố.</p>\r\n\r\n<p>Quen l&agrave; bởi sự hiện diện của chất liệu len kinh điển, lạ l&agrave; bởi hiếm c&oacute; khi n&agrave;o, mặc cả &ldquo;c&acirc;y&rdquo; gồm 2 item đồng điệu l&agrave; &aacute;o len v&agrave; ch&acirc;n v&aacute;y hoặc quần len lại được ưa chuộng đến thế.</p>\r\n\r\n<p>Tuy kh&ocirc;ng qu&aacute; th&aacute;ch thức, song muốn mặc đẹp cả set len một c&aacute;ch thật sang, thật đẹp, c&aacute;c qu&yacute; c&ocirc; cũng n&ecirc;n lưu &yacute; một v&agrave;i nguy&ecirc;n tắc:</p>\r\n\r\n<p><strong>1. Chọn gam m&agrave;u nền n&atilde;, ưu ti&ecirc;n đơn sắc</strong></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/10/1575963983-903-nguyen-tac-giup-mac-do-len-sang-tuyet-doi-1-1569833065-width500height750-1855.jpg\" style=\"height:750px; width:500px\" /><img alt=\"\" src=\"https://bs.serving-sys.com/serving/adServer.bs?cn=display&amp;c=19&amp;mc=imp&amp;pli=29321744&amp;PluID=0&amp;ord=1576399061652&amp;rtu=-1\" style=\"height:0px; width:0px\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Kh&aacute;c với những kiểu mặc matchy-matchy th&ocirc;ng thường, set đồ len gồm &aacute;o v&agrave; ch&acirc;n v&aacute;y muốn bảo to&agrave;n n&eacute;t thanh lịch, sang trọng cần ưu ti&ecirc;n c&aacute;c gam m&agrave;u nền n&atilde;, đơn sắc thay v&igrave; c&aacute;c họa tiết bắt mắt nhưng cũng dễ rối mắt. Theo đ&oacute;, chuy&ecirc;n gia thời trang khuy&ecirc;n bạn n&ecirc;n lựa chọn c&aacute;c gam như trắng, x&aacute;m nhạt, n&acirc;u nhạt, t&iacute;m lavender, xanh baby blue&hellip; Đ&oacute; đều l&agrave; những gam m&agrave;u dịu nhẹ, gi&uacute;p l&agrave;m bừng s&aacute;ng tiết trời thu đ&ocirc;ng, đồng thời tạo ra vẻ ngo&agrave;i tinh tế, đẳng cấp, ngắm m&atilde;i kh&ocirc;ng ch&aacute;n.</p>\r\n\r\n<p><strong>2. Chọn d&aacute;ng hơi rộng thay v&igrave; &ocirc;m vừa kh&iacute;t</strong></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/10/1575963983-262-nguyen-tac-giup-mac-do-len-sang-tuyet-doi-3-1569833065-width500height750-1855.jpg\" style=\"height:750px; width:500px\" /></p>\r\n\r\n<p>Với nhiều trang phục, yếu tố vừa vặn, &ocirc;m kh&iacute;t lấy cơ thể l&agrave; y&ecirc;u cầu sống c&ograve;n. Nhưng với ri&ecirc;ng đồ len n&oacute;i chung v&agrave; mốt &ldquo;len chồng len&rdquo; đang hot, ph&aacute;i đẹp n&ecirc;n chọn những thiết kế phom d&aacute;ng hơi rộng r&atilde;i, bay bổng ch&uacute;t x&iacute;u. Bởi lẽ, đồ len một khi mặc qu&aacute; b&oacute;, qu&aacute; chật sẽ dễ khiến người mặc lộ khuyết điểm h&igrave;nh thể, đặc biệt ở khu vực v&ograve;ng 2, v&ograve;ng 3, sẽ khiến sự thanh lịch giảm s&uacute;t đ&ocirc;i phần.</p>\r\n\r\n<p><strong>3. Th&ecirc;m thắt lưng nếu cần</strong></p>\r\n', '1576399077_ap-4.jpg', '', 1, 'thegoididong.com', 22, 2, '2019-12-15 01:37:57', '2019-12-15 01:37:57'),
(3, 'Đi dự đám cưới bạn thân mà hai chị em Angela Phương Trinh chiếm sóng toàn tập vì gợi cảm', 'di-du-dam-cuoi-ban-than-ma-hai-chi-em-angela-phuong-trinh-chiem-song-toan-tap-vi-goi-cam', 'admin', '', '<ul>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/gai-mot-con-phuong-mai-dung-la-khien-dan-tinh-trong-mon-con-mat-vi-qua-dep-d236871.html\">G&aacute;i một con Phương Mai đ&uacute;ng l&agrave; khiến d&acirc;n t&igrave;nh tr&ocirc;ng m&ograve;n con mắt v&igrave; qu&aacute; đẹp</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/nhan-sac-nua-kia-cua-cac-cau-thu-bong-da-viet-nam-chang-thua-kem-gi-cac-hot-girl-d236874.html\">Nhan sắc &quot;nửa kia&quot; của c&aacute;c cầu thủ b&oacute;ng đ&aacute; Việt Nam chẳng thua k&eacute;m g&igrave; c&aacute;c hot girl</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/chi-chi-em-em-thanh-hang-va-chi-pu-so-huu-than-hinh-0-mo-thua-bao-sao-nude-tao-bao-den-vay-d236764.html\">Chị chị em em Thanh Hằng v&agrave; Chi Pu sở hữu th&acirc;n h&igrave;nh 0% mỡ thừa, bảo sao nude t&aacute;o bạo đến vậy</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Khoảng 1 năm trở lại đ&acirc;y,&nbsp;Angela Phương Trinh&nbsp;hạn chế tham gia c&aacute;c hoạt động trong showbiz v&agrave; c&oacute; cuộc sống nhẹ nh&agrave;ng hơn. Thay v&igrave; những m&agrave;n khoe th&acirc;n, hở hang g&acirc;y nhức nhối dư luận th&igrave; giờ đ&acirc;y, nữ diễn vi&ecirc;n lựa chọn phong c&aacute;ch thời trang giản dị, k&iacute;n đ&aacute;o v&agrave; thường xuy&ecirc;n ch&ugrave;a cũng như l&agrave;m việc thiện.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, c&ocirc; em g&aacute;i sinh năm 1996 L&ecirc; Ngọc Phương Trang tuy kh&ocirc;ng tham gia showbiz nhưng cũng từng trở th&agrave;nh đề t&agrave;i khiến dư luận chỉ tr&iacute;ch v&igrave; ăn mặc qu&aacute; hở hang, t&aacute;o bạo so với lứa tuổi của m&igrave;nh. Song cũng như chị của m&igrave;nh, Phương Trang đ&atilde; biết c&aacute;ch tiết chế trang phục hơn, đồng thời cũng theo chị thực hiện hoạt động thiện nguyện.</p>\r\n\r\n<p>Mới đ&acirc;y tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh, chị em Angela Phương Trinh &ndash; Phương Trang g&acirc;y ch&uacute; &yacute; khi xuất hiện trong bộ đầm đ&ocirc;i 2 d&acirc;y m&agrave;u trắng đi dự tiệc cưới của một người bạn th&acirc;n. Chiếc v&aacute;y c&oacute; phần gợi cảm, &ocirc;m s&aacute;t cơ thể nhưng kh&ocirc;ng qu&aacute; hở. Hai chị em nhận được lời khen về v&oacute;c d&aacute;ng v&agrave; nhan sắc hiện tại.</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-3-1575382798-606-width600height514-1856.jpg\" style=\"height:514px; width:600px\" /><img alt=\"\" src=\"https://bs.serving-sys.com/serving/adServer.bs?cn=display&amp;c=19&amp;mc=imp&amp;pli=29321744&amp;PluID=0&amp;ord=1576399121067&amp;rtu=-1\" style=\"height:0px; width:0px\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><em>Hai chị em Phương Trinh lựa chọn chiếc v&aacute;y &ocirc;m m&agrave;u trắng kho&eacute;t ngực gợi cảm.</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-18-1575382799-249-width600height810-1856.jpg\" style=\"height:810px; width:600px\" /></p>\r\n\r\n<p><em>Khoe lưng trần với l&agrave;n da trắng mịn m&agrave;ng. Tuy sexy nhưng kh&ocirc;ng c&ograve;n qu&aacute; đ&agrave; như trước.</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-2-1575382798-436-width600height749-1856.jpg\" style=\"height:749px; width:600px\" /></p>\r\n\r\n<p><em>Tuy đ&atilde; kh&ocirc;ng c&ograve;n hoạt động nghệ thuật nhiều song Angela Phương Trinh vẫn giữ được v&oacute;c d&aacute;ng thon gọn.</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-1-1575382798-450-width600height749-1856.jpg\" style=\"height:749px; width:600px\" /></p>\r\n\r\n<p><em>Hai chị em người đẹp chọn layout makeup đậm, b&uacute;i t&oacute;c khoe vẻ đẹp rạng rỡ.</em></p>\r\n\r\n<p>Phương Trinh &ndash; Phương Trang c&oacute; mối quan hệ kh&aacute; th&acirc;n thiết. Điều n&agrave;y thể hiện bằng việc cả hai thường xuy&ecirc;n xuất hiện b&ecirc;n cạnh nhau v&agrave; những lần như thế đều thu h&uacute;t sự quan t&acirc;m của rất nhiều người. Kh&ocirc;ng những vậy, Angela Phương Trinh thường xuy&ecirc;n lựa chọn những bộ trang phục đồng điệu với em g&aacute;i của m&igrave;nh để c&oacute; được vẻ ngo&agrave;i ăn &yacute; nhất.</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-4-1575382798-85-width600height749-1856.jpg\" style=\"height:749px; width:600px\" /></p>\r\n\r\n<p><em>Kh&ocirc;ng c&ograve;n những thiết kế hở bạo khoe th&acirc;n nhức mắt, Phương Trinh v&agrave; Phương Trang giờ đ&acirc;y nhẹ nh&agrave;ng v&agrave; k&iacute;n đ&aacute;o hơn hẳn.</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-13-1575382798-810-width600height399-1856.jpg\" style=\"height:399px; width:600px\" /></p>\r\n\r\n<p><em>Phong c&aacute;ch thời trang thời gian gần đ&acirc;y của cả hai được d&agrave;nh nhiều lời khen ngợi, c&ocirc;ng ch&uacute;ng cho rằng khi mặc k&iacute;n, tr&ocirc;ng họ trở n&ecirc;n xinh đẹp hơn.</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-em-gai-angela-phuong-trinh-1-1576042883-601-width1024height1365-1856.jpg\" style=\"height:1199px; width:900px\" /></p>\r\n\r\n<p><em>Hai chị em cũng lựa chọn mẫu v&aacute;y m&agrave;u trắng thiết kế phần cổ &aacute;o cổ điển mang vẻ đẹp nền nh&atilde; v&agrave; dịu d&agrave;ng.</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-17-1575382799-228-width600height834-1856.jpg\" style=\"height:834px; width:600px\" /></p>\r\n\r\n<p><em>C&ugrave;ng chất liệu jean v&agrave; &aacute;o xanh sọc dọc, chị em Phương Trinh &ndash; Phương Trang hết sức trẻ trung v&agrave; trong trẻo.</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-14-1575382798-234-width600height749-1856.jpg\" style=\"height:749px; width:600px\" /></p>\r\n\r\n<p><em>Tuy c&oacute; phần k&eacute;m sắc hơn chị g&aacute;i song gu ăn mặc của Phương Trang lại chẳng hề k&eacute;m cạnh. Hiện c&ocirc; n&agrave;ng đang sở hữu một thương hiệu thời trang của ri&ecirc;ng m&igrave;nh.</em></p>\r\n\r\n<p>Chia sẻ về việc cả hai chị em c&oacute; sở th&iacute;ch diện đồ đ&ocirc;i, em g&aacute;i của Angela Phương Trinh chia sẻ:</p>\r\n\r\n<p><em>&quot;Em với chị Trinh thỉnh thoảng mới diện đồ đ&ocirc;i nhưng m&agrave; mỗi khi hai chị em mặc giống nhau th&igrave; trang phục phải c&oacute; sự đồng điệu nhất định hoặc một chi tiết n&agrave;o đ&oacute; tr&ecirc;n trang phục giống nhau để tạo điểm nhấn. Tổng thể nh&igrave;n v&agrave;o bắt mắt v&iacute; dụ như em v&agrave; chị Trinh c&ugrave;ng nhau diện một set đồ tương đồng về m&agrave;u sắc hoặc l&agrave; chọn phụ kiện như t&uacute;i x&aacute;ch, n&oacute;n, gi&agrave;y...giống nhau để mang đến tổng thể đồng nhất nh&igrave;n rất vui mắt.&nbsp;</em></p>\r\n\r\n<p><em>C&ograve;n c&oacute; một tips thời trang về đồ đ&ocirc;i m&agrave; em v&agrave; chị Trinh hay trưng dụng nhất đ&oacute; ch&iacute;nh l&agrave; c&acirc;n chỉnh về m&agrave;u sắc của trang phục.&nbsp; Hai chị em c&oacute; thể c&ugrave;ng chọn một t&ocirc;ng m&agrave;u nhưng chị Trinh mặc quần với &aacute;o th&igrave; em sẽ mặc phối với v&aacute;y hoặc l&agrave; ch&acirc;n v&aacute;y, jumpsuit...Để tạo sự kh&aacute;c biệt về t&iacute;nh c&aacute;ch nhưng vẫn c&oacute; chung phong c&aacute;ch đ&ocirc;i.&rdquo;</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-12-1575382798-358-width600height749-1856.jpg\" style=\"height:749px; width:600px\" /></p>\r\n\r\n<p><em>Cả hai cũng thường xuy&ecirc;n đi l&agrave;m từ thiện c&ugrave;ng nhau v&agrave; c&ugrave;ng mặc những chiếc &aacute;o thun đơn giản.</em></p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/content/2019/12/13/di-lam-phu-dau-nhung-chi-em-angela-phuong-trinh-xinh-dep-het-phan-nhan-vat-chinh-untitled-7-1575382798-985-width600height450-1856.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p><em>Cả hai chị em giờ đ&acirc;y ăn vận v&agrave; đăng h&igrave;nh kh&ocirc;ng c&ograve;n ch&uacute; trọng khoe th&acirc;n nữa m&agrave; giản dị đến như thế n&agrave;y đ&acirc;y.</em></p>\r\n\r\n<p><ins><ins><ins><iframe frameborder=\"0\" height=\"280\" id=\"aswift_0\" name=\"aswift_0\" scrolling=\"no\" width=\"336\"></iframe></ins></ins></ins></p>\r\n\r\n<p><a href=\"https://phunutoday.vn/viet-anh-dap-tra-vo-cu-sau-khi-bi-to-loi-dung-con-cai-de-danh-bong-ten-tuoi-d237065.html\" title=\"Việt Anh đáp trả vợ cũ sau khi bị tố lợi dụng con cái để đánh bóng tên tuổi\"><img alt=\"Việt Anh đáp trả vợ cũ sau khi bị tố lợi dụng con cái để đánh bóng tên tuổi\" src=\"https://thumb.ex-cdn.com/EXP/media.phunutoday.vn/resize/174x104/files/news/2019/12/13/viet-anh-dap-tra-vo-cu-anh-khong-muon-tranh-luan-voi-em-143917.jpg\" style=\"height:65px; width:80px\" /></a><a href=\"https://phunutoday.vn/viet-anh-dap-tra-vo-cu-sau-khi-bi-to-loi-dung-con-cai-de-danh-bong-ten-tuoi-d237065.html\" title=\"Việt Anh đáp trả vợ cũ sau khi bị tố lợi dụng con cái để đánh bóng tên tuổi\">Việt Anh đ&aacute;p trả vợ cũ sau khi bị tố &quot;lợi dụng&quot; con c&aacute;i để đ&aacute;nh b&oacute;ng t&ecirc;n tuổi</a></p>\r\n\r\n<p><a href=\"https://phunutoday.vn/diem-lai-nhung-bo-canh-kem-duyen-nhat-cua-sao-viet-2019-d236990.html\" title=\"Điểm lại những bộ cánh kém duyên nhất của sao Việt 2019\"><img alt=\"Điểm lại những bộ cánh kém duyên nhất của sao Việt 2019\" src=\"https://thumb.ex-cdn.com/EXP/media.phunutoday.vn/resize/174x104/files/news/2019/12/12/diem-lai-nhung-bo-canh-kem-duyen-nhat-cua-sao-viet-2019-190519.jpg\" style=\"height:65px; width:80px\" /></a><a href=\"https://phunutoday.vn/diem-lai-nhung-bo-canh-kem-duyen-nhat-cua-sao-viet-2019-d236990.html\" title=\"Điểm lại những bộ cánh kém duyên nhất của sao Việt 2019\">Điểm lại những bộ c&aacute;nh &quot;k&eacute;m duy&ecirc;n&quot; nhất của sao Việt 2019</a></p>\r\n\r\n<p><a href=\"https://phunutoday.vn/anh-cuoi-cua-cap-doi-phan-van-duc-va-vo-nhat-linh-duoc-co-dau-dan-dan-he-lo-d237050.html\" title=\"Ảnh cưới của cặp đôi Phan Văn Đức và Võ Nhật Linh được cô dâu dần dần hé lộ\"><img alt=\"Ảnh cưới của cặp đôi Phan Văn Đức và Võ Nhật Linh được cô dâu dần dần hé lộ\" src=\"https://thumb.ex-cdn.com/EXP/media.phunutoday.vn/resize/174x104/files/news/2019/12/13/anh-cuoi-cua-cap-doi-phan-van-duc-va-vo-nhat-linh-duoc-co-dau-dan-dan-he-lo-112742.png\" style=\"height:65px; width:80px\" /></a><a href=\"https://phunutoday.vn/anh-cuoi-cua-cap-doi-phan-van-duc-va-vo-nhat-linh-duoc-co-dau-dan-dan-he-lo-d237050.html\" title=\"Ảnh cưới của cặp đôi Phan Văn Đức và Võ Nhật Linh được cô dâu dần dần hé lộ\">Ảnh cưới của cặp đ&ocirc;i Phan Văn Đức v&agrave; V&otilde; Nhật Linh được c&ocirc; d&acirc;u dần dần h&eacute; lộ</a></p>\r\n\r\n<p><a href=\"http://bit.ly/3141iNS\" onclick=\"gtag(\'event\', \'Explorer\', { \'event_category\': \'CLICK_PR_DETAIL_PC1\', \'event_label\': \'CLICK_PR_DETAIL_PC1\' });\" rel=\"nofollow\" target=\"_blank\"><img src=\"https://thumb.ex-cdn.com/EXP/media.phunutoday.vn/resize/80x65/files/qc/2019/12/07/187.png\" style=\"height:65px; width:80px\" /></a><a href=\"http://bit.ly/3141iNS\" onclick=\"gtag(\'event\', \'Explorer\', { \'event_category\': \'CLICK_PR_DETAIL_PC1\', \'event_label\': \'CLICK_PR_DETAIL_PC1\' });\" rel=\"nofollow\" target=\"_blank\">Ads&nbsp;Chỉ sau 2 th&aacute;ng, anh Quốc đ&atilde; kh&ocirc;ng c&ograve;n ngứa ng&aacute;y, kh&oacute; chịu v&igrave; VẢY NẾN DA ĐẦU nhờ c&aacute;ch n&agrave;y</a></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"500\" id=\"mgiframe\" src=\"https://mg.mgid.com/mghtml/framehtml/c/p/h/phunutoday.vn.188935.html\" width=\"100%\"></iframe></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1000px\" name=\"f3a2feb5201e2c\" scrolling=\"no\" src=\"https://www.facebook.com/v2.10/plugins/like.php?action=like&amp;app_id=1072365229499676&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df1f64c170e39834%26domain%3Dphunutoday.vn%26origin%3Dhttps%253A%252F%252Fphunutoday.vn%252Ff36d262a897e7ac%26relation%3Dparent.parent&amp;container_width=44&amp;href=https%3A%2F%2Fphunutoday.vn%2Fdi-du-dam-cuoi-ban-than-ma-hai-chi-em-angela-phuong-trinh-chiem-song-toan-tap-vi-goi-cam-d237113.html&amp;layout=box_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=false&amp;show_faces=false\" title=\"fb:like Facebook Social Plugin\" width=\"1000px\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1000px\" name=\"fac60e4ff2f2c4\" scrolling=\"no\" src=\"https://www.facebook.com/v2.10/plugins/share_button.php?app_id=1072365229499676&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df17108ae4b764d8%26domain%3Dphunutoday.vn%26origin%3Dhttps%253A%252F%252Fphunutoday.vn%252Ff36d262a897e7ac%26relation%3Dparent.parent&amp;container_width=44&amp;href=https%3A%2F%2Fphunutoday.vn%2Fdi-du-dam-cuoi-ban-than-ma-hai-chi-em-angela-phuong-trinh-chiem-song-toan-tap-vi-goi-cam-d237113.html&amp;layout=box_count&amp;locale=vi_VN&amp;mobile_iframe=true&amp;sdk=joey\" title=\"fb:share_button Facebook Social Plugin\" width=\"1000px\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>TAGS:<a href=\"https://phunutoday.vn/angela-phuong-trinh-tag381/\">angela phương trinh</a><a href=\"https://phunutoday.vn/sao-viet-tag825/\">sao việt</a><a href=\"https://phunutoday.vn/mac-dep-tag18041/\">mặc đẹp</a><a href=\"https://phunutoday.vn/em-gai-tag9661/\">em g&aacute;i</a></p>\r\n\r\n<p>Nguồn: http://www.khoevadep.com.vn/di-du-dam-cuoi-ban-than-ma-hai-chi-em-angela-phuong-trinh-chiem-song-toan-tap-vi-goi-cam-search/</p>\r\n\r\n<p>/Khoevadep</p>\r\n\r\n<p><a href=\"https://phunutoday.vn/ha-anh-signature186/\">Hạ Anh</a></p>\r\n\r\n<p>TIN MỚI CẬP NHẬT</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/5-nu-van-dong-vien-xinh-dep-va-so-huu-gu-thoi-trang-chang-thua-kem-hot-girl-d237233.html\" title=\"5 nữ vận động viên xinh đẹp và sở hữu gu thời trang chẳng thua kém hot girl\">5 nữ vận động vi&ecirc;n xinh đẹp v&agrave; sở hữu gu thời trang chẳng thua k&eacute;m hot girl</a></h3>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/du-la-cach-day-10-nam-hay-bay-gio-toc-tien-van-dan-dau-cac-xu-huong-thoi-trang-trong-showbiz-viet-d237213.html\" title=\"Dù là cách đây 10 năm hay bây giờ, Tóc Tiên vẫn đẫn đầu các xu hướng thời trang trong showbiz Việt\">D&ugrave; l&agrave; c&aacute;ch đ&acirc;y 10 năm hay b&acirc;y giờ, T&oacute;c Ti&ecirc;n vẫn đẫn đầu c&aacute;c xu hướng thời trang trong showbiz Việt</a></h3>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/tinh-cach-tram-lang-va-nu-tinh-den-vay-nhung-jisoo-lai-rat-thich-dien-do-nam-tinh-d237221.html\" title=\"Tính cách trầm lặng và nữ tính đến vậy nhưng Jisoo lại rất thích diện đồ nam tính\">T&iacute;nh c&aacute;ch trầm lặng v&agrave; nữ t&iacute;nh đến vậy nhưng Jisoo lại rất th&iacute;ch diện đồ nam t&iacute;nh</a></h3>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/bom-nhung--phu-kien-duoc-sao-han-va-viet-tich-cuc-lang-xe-dot-lanh-nay-d237218.html\" title=\"Bờm nhung - phụ kiện được sao Hàn và Việt tích cực lăng xê đợt lạnh này\">Bờm nhung - phụ kiện được sao H&agrave;n v&agrave; Việt t&iacute;ch cực lăng x&ecirc; đợt lạnh n&agrave;y</a></h3>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/noel-can-ke-roi-dung-co-sam-nhung-items-da-cu-rich-nay-nua-nhe-d237211.html\" title=\"Noel cận kề rồi, đừng cố sắm những items đã cũ rích này nữa nhé\">Noel cận kề rồi, đừng cố sắm những items đ&atilde; cũ r&iacute;ch n&agrave;y nữa nh&eacute;</a></h3>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li>\r\n	<h3><a href=\"https://phunutoday.vn/ngoc-trinh-bat-ngo-doi-style-banh-beo-kin-dao-ma-van-xinh-het-nac-d237121.html\" title=\"Ngọc Trinh bất ngờ đổi style bánh bèo kín đáo mà vẫn xinh hết nấc\">Ngọc Trinh bất ngờ đổi style b&aacute;nh b&egrave;o k&iacute;n đ&aacute;o m&agrave; vẫn xinh hết nấc</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"javascript:void(0)\">ĐỪNG BỎ LỠ</a></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://phunutoday.vn/thang-cuoi-cung-nam-2019-van-xui-tan-mang-nhung-con-giap-nay-can-phai-de-phong-moi-chuyen-d236365.html\" title=\"Tháng cuối cùng năm 2019 vẫn \'xui tận mạng\', những con giáp này cần phải đề phòng mọi chuyện\"><img alt=\"Tháng cuối cùng năm 2019 vẫn \'xui tận mạng\', những con giáp này cần phải đề phòng mọi chuyện\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n\r\n	<h4><a href=\"https://phunutoday.vn/thang-cuoi-cung-nam-2019-van-xui-tan-mang-nhung-con-giap-nay-can-phai-de-phong-moi-chuyen-d236365.html\" title=\"Tháng cuối cùng năm 2019 vẫn \'xui tận mạng\', những con giáp này cần phải đề phòng mọi chuyện\">Th&aacute;ng cuối c&ugrave;ng năm 2019 vẫn &quot;xui tận mạng&quot;, những con gi&aacute;p n&agrave;y cần phải đề ph&ograve;ng mọi chuyện</a></h4>\r\n	</li>\r\n	<li><a href=\"https://phunutoday.vn/dan-sao-nhi-viet-ngay-nao-da-lot-xac-xinh-dep-va-phong-cach-het-suc-d235836.html\" title=\"Dàn sao nhí Việt ngày nào đã \'lột xác\' xinh đẹp và phong cách hết sức\"><img alt=\"Dàn sao nhí Việt ngày nào đã \'lột xác\' xinh đẹp và phong cách hết sức\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/dan-sao-nhi-viet-ngay-nao-da-lot-xac-xinh-dep-va-phong-cach-het-suc-d235836.html\" title=\"Dàn sao nhí Việt ngày nào đã \'lột xác\' xinh đẹp và phong cách hết sức\">D&agrave;n sao nh&iacute; Việt ng&agrave;y n&agrave;o đ&atilde; &quot;lột x&aacute;c&quot; xinh đẹp v&agrave; phong c&aacute;ch hết sức</a></h4>\r\n	</li>\r\n	<li><a href=\"https://phunutoday.vn/tu-vi-tuan-moi-25-11-1-12-2019-cua-12-cung-hoang-dao-su-tu-doi-mat-nguy-co-tan-vo-bao-binh-duoc-che-cho-d235225.html\" title=\"Tử vi tuần mới 25/11- 1/12/2019 của 12 cung hoàng đạo: Sư Tử đối mặt nguy cơ tan vỡ, Bảo Bình được che chở\"><img alt=\"Tử vi tuần mới 25/11- 1/12/2019 của 12 cung hoàng đạo: Sư Tử đối mặt nguy cơ tan vỡ, Bảo Bình được che chở\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/tu-vi-tuan-moi-25-11-1-12-2019-cua-12-cung-hoang-dao-su-tu-doi-mat-nguy-co-tan-vo-bao-binh-duoc-che-cho-d235225.html\" title=\"Tử vi tuần mới 25/11- 1/12/2019 của 12 cung hoàng đạo: Sư Tử đối mặt nguy cơ tan vỡ, Bảo Bình được che chở\">Tử vi tuần mới 25/11- 1/12/2019 của 12 cung ho&agrave;ng đạo: Sư Tử đối mặt nguy cơ tan vỡ, Bảo B&igrave;nh được che chở</a></h4>\r\n	</li>\r\n	<li><a href=\"https://phunutoday.vn/mc-phan-anh-gay-soc-khi-thua-nhan-lam-dai-su-chuong-trinh-de-lam-mau-d234947.html\" title=\"MC Phan Anh gây sốc khi thừa nhận làm đại sứ chương trình để \'làm màu\'\"><img alt=\"MC Phan Anh gây sốc khi thừa nhận làm đại sứ chương trình để \'làm màu\'\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/mc-phan-anh-gay-soc-khi-thua-nhan-lam-dai-su-chuong-trinh-de-lam-mau-d234947.html\" title=\"MC Phan Anh gây sốc khi thừa nhận làm đại sứ chương trình để \'làm màu\'\">MC Phan Anh g&acirc;y sốc khi thừa nhận l&agrave;m đại sứ chương tr&igrave;nh để &quot;l&agrave;m m&agrave;u&quot;</a></h4>\r\n	</li>\r\n	<li><a href=\"https://phunutoday.vn/bi-quyet-an-sang-vua-giu-dang-vua-dep-da-cua-tang-thanh-ha-2-con-van-dep-khong-goc-chet-d234407.html\" title=\"Bí quyết ăn sáng vừa giữ dáng- vừa đẹp da của Tăng Thanh Hà, 2 con vẫn đẹp không góc chết\"><img alt=\"Bí quyết ăn sáng vừa giữ dáng- vừa đẹp da của Tăng Thanh Hà, 2 con vẫn đẹp không góc chết\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/bi-quyet-an-sang-vua-giu-dang-vua-dep-da-cua-tang-thanh-ha-2-con-van-dep-khong-goc-chet-d234407.html\" title=\"Bí quyết ăn sáng vừa giữ dáng- vừa đẹp da của Tăng Thanh Hà, 2 con vẫn đẹp không góc chết\">B&iacute; quyết ăn s&aacute;ng vừa giữ d&aacute;ng- vừa đẹp da của Tăng Thanh H&agrave;, 2 con vẫn đẹp kh&ocirc;ng g&oacute;c chết</a></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p><ins><ins><ins><iframe frameborder=\"0\" height=\"280\" id=\"aswift_1\" name=\"aswift_1\" scrolling=\"no\" width=\"680\"></iframe></ins></ins></ins></p>\r\n\r\n<p><a href=\"https://phunutoday.vn/lam-me/\" rel=\"nofollow\">L&Agrave;M MẸ</a></p>\r\n\r\n<p><a href=\"https://phunutoday.vn/4-thuc-pham-tot-cho-mat-be-nhat-la-loai-thu-2-me-nen-bo-sung-cho-con-tuan-2-lan-d237154.html\" title=\"4 thực phẩm tốt cho mắt bé, nhất là loại thứ 2 mẹ nên bổ sung cho con tuần 2 lần\"><img alt=\"4 thực phẩm tốt cho mắt bé, nhất là loại thứ 2 mẹ nên bổ sung cho con tuần 2 lần\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:200px; width:328px\" /></a></p>\r\n\r\n<h4><a href=\"https://phunutoday.vn/4-thuc-pham-tot-cho-mat-be-nhat-la-loai-thu-2-me-nen-bo-sung-cho-con-tuan-2-lan-d237154.html\" title=\"4 thực phẩm tốt cho mắt bé, nhất là loại thứ 2 mẹ nên bổ sung cho con tuần 2 lần\">4 thực phẩm tốt cho mắt b&eacute;, nhất l&agrave; loại thứ 2 mẹ n&ecirc;n bổ sung cho con tuần 2 lần</a></h4>\r\n\r\n<p>&nbsp;7 ph&uacute;t trước</p>\r\n\r\n<p>Những thực phẩm dưới đ&acirc;y gi&uacute;p cho b&eacute; c&oacute; đ&ocirc;i mắt tinh anh, nhanh nhạy kh&ocirc;ng lo bị cận thị.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://phunutoday.vn/xao-bong-cai-voi-thit-bo-theo-cach-nay-dam-bao-ngon-gion-san-sat-lai-tang-gap-doi-chat-bo-d237194.html\" title=\"Xào bông cải với thịt bò theo cách này, đảm bảo ngon- giòn sần sật, lại tăng gấp đôi chất bổ\"><img alt=\"Xào bông cải với thịt bò theo cách này, đảm bảo ngon- giòn sần sật, lại tăng gấp đôi chất bổ\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n\r\n	<h4><a href=\"https://phunutoday.vn/xao-bong-cai-voi-thit-bo-theo-cach-nay-dam-bao-ngon-gion-san-sat-lai-tang-gap-doi-chat-bo-d237194.html\" title=\"Xào bông cải với thịt bò theo cách này, đảm bảo ngon- giòn sần sật, lại tăng gấp đôi chất bổ\">X&agrave;o b&ocirc;ng cải với thịt b&ograve; theo c&aacute;ch n&agrave;y, đảm bảo ngon- gi&ograve;n sần sật, lại tăng gấp đ&ocirc;i chất bổ</a></h4>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://phunutoday.vn/muon-salad-thom-ngon-giau-dinh-duong-lai-giam-can-hieu-qua-dung-bo-qua-3-thuc-pham-vang-sau-d236868.html\" title=\"Muốn salad thơm ngon, giàu dinh dưỡng lại giảm cân hiệu quả, đừng bỏ qua 3 \'thực phẩm vàng\' sau\"><img alt=\"Muốn salad thơm ngon, giàu dinh dưỡng lại giảm cân hiệu quả, đừng bỏ qua 3 \'thực phẩm vàng\' sau\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/muon-salad-thom-ngon-giau-dinh-duong-lai-giam-can-hieu-qua-dung-bo-qua-3-thuc-pham-vang-sau-d236868.html\" title=\"Muốn salad thơm ngon, giàu dinh dưỡng lại giảm cân hiệu quả, đừng bỏ qua 3 \'thực phẩm vàng\' sau\">Muốn salad thơm ngon, gi&agrave;u dinh dưỡng lại giảm c&acirc;n hiệu quả, đừng bỏ qua 3 &quot;thực phẩm v&agrave;ng&quot; sau</a></h4>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://phunutoday.vn/muon-mon-rau-xanh-muot-giau-gap-doi-dinh-duong-khi-luoc-nho-bo-them-mot-chut-gia-vi-nay-d237159.html\" title=\"Muốn món rau xanh mướt giàu gấp đôi dinh dưỡng, khi luộc nhớ bỏ thêm một chút gia vị này\"><img alt=\"Muốn món rau xanh mướt giàu gấp đôi dinh dưỡng, khi luộc nhớ bỏ thêm một chút gia vị này\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/muon-mon-rau-xanh-muot-giau-gap-doi-dinh-duong-khi-luoc-nho-bo-them-mot-chut-gia-vi-nay-d237159.html\" title=\"Muốn món rau xanh mướt giàu gấp đôi dinh dưỡng, khi luộc nhớ bỏ thêm một chút gia vị này\">Muốn m&oacute;n rau xanh mướt gi&agrave;u gấp đ&ocirc;i dinh dưỡng, khi luộc nhớ bỏ th&ecirc;m một ch&uacute;t gia vị n&agrave;y</a></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phunutoday.vn/kham-pha/\" rel=\"nofollow\">KH&Aacute;M PH&Aacute;</a></p>\r\n\r\n<p><a href=\"https://phunutoday.vn/tu-vi-tuan-moi-cua-12-cung-hoang-dao-tu-16-12-22-12-2019-bo-cap-duoc-theo-duoi-song-ngu-nhieu-do-du-d237190.html\" title=\"Tử vi tuần mới của 12 cung hoàng đạo (từ 16/12- 22/12/2019): Bọ Cạp được theo đuổi, Song Ngư nhiều do dự\"><img alt=\"Tử vi tuần mới của 12 cung hoàng đạo (từ 16/12- 22/12/2019): Bọ Cạp được theo đuổi, Song Ngư nhiều do dự\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:200px; width:328px\" /></a></p>\r\n\r\n<h4><a href=\"https://phunutoday.vn/tu-vi-tuan-moi-cua-12-cung-hoang-dao-tu-16-12-22-12-2019-bo-cap-duoc-theo-duoi-song-ngu-nhieu-do-du-d237190.html\" title=\"Tử vi tuần mới của 12 cung hoàng đạo (từ 16/12- 22/12/2019): Bọ Cạp được theo đuổi, Song Ngư nhiều do dự\">Tử vi tuần mới của 12 cung ho&agrave;ng đạo (từ 16/12- 22/12/2019): Bọ Cạp được theo đuổi, Song Ngư nhiều do dự</a></h4>\r\n\r\n<p>&nbsp;2 giờ trước</p>\r\n\r\n<p>C&ugrave;ng đ&oacute;n đọc tử vi tuần mới của 12 cung ho&agrave;ng đạo để biết được những thay đỏi trong l&aacute; số tử vi của m&igrave;nh v&agrave;o tuần tới:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://phunutoday.vn/cuoi-nam-2019-3-con-giap-di-mot-buoc-gap-tien-di-hai-buoc-gap-vang-cuoc-song-giau-co-bat-ngo-d237176.html\" title=\"Cuối năm 2019: 3 con giáp đi một bước gặp tiền, đi hai bước gặp vàng, cuộc sống giàu có bất ngờ\"><img alt=\"Cuối năm 2019: 3 con giáp đi một bước gặp tiền, đi hai bước gặp vàng, cuộc sống giàu có bất ngờ\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n\r\n	<h4><a href=\"https://phunutoday.vn/cuoi-nam-2019-3-con-giap-di-mot-buoc-gap-tien-di-hai-buoc-gap-vang-cuoc-song-giau-co-bat-ngo-d237176.html\" title=\"Cuối năm 2019: 3 con giáp đi một bước gặp tiền, đi hai bước gặp vàng, cuộc sống giàu có bất ngờ\">Cuối năm 2019: 3 con gi&aacute;p đi một bước gặp tiền, đi hai bước gặp v&agrave;ng, cuộc sống gi&agrave;u c&oacute; bất ngờ</a></h4>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://phunutoday.vn/tu-vi-tuan-moi-cua-12-con-giap-tu-16-12-22-12-2019-dan-co-thuc-than-nang-do-hoi-diem-bao-tieu-nhan-ham-hai-d237185.html\" title=\"Tử vi tuần mới của 12 con giáp (từ 16/12- 22/12/2019): Dần có Thực Thần nâng đỡ, Hợi điềm báo tiểu nhân hãm hại\"><img alt=\"Tử vi tuần mới của 12 con giáp (từ 16/12- 22/12/2019): Dần có Thực Thần nâng đỡ, Hợi điềm báo tiểu nhân hãm hại\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/tu-vi-tuan-moi-cua-12-con-giap-tu-16-12-22-12-2019-dan-co-thuc-than-nang-do-hoi-diem-bao-tieu-nhan-ham-hai-d237185.html\" title=\"Tử vi tuần mới của 12 con giáp (từ 16/12- 22/12/2019): Dần có Thực Thần nâng đỡ, Hợi điềm báo tiểu nhân hãm hại\">Tử vi tuần mới của 12 con gi&aacute;p (từ 16/12- 22/12/2019): Dần c&oacute; Thực Thần n&acirc;ng đỡ, Hợi điềm b&aacute;o tiểu nh&acirc;n h&atilde;m hại</a></h4>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://phunutoday.vn/tu-vi-12-con-giap-chu-nhat-ngay-15-12-2019-ty-tai-loc-khoi-sac-ruc-ro-thin-be-tac-vi-cong-viec-truc-trac-d237177.html\" title=\"Tử vi 12 con giáp chủ nhật ngày 15/12/2019: Tý tài lộc khởi sắc rực rỡ, Thìn bế tắc vì công việc trục trặc\"><img alt=\"Tử vi 12 con giáp chủ nhật ngày 15/12/2019: Tý tài lộc khởi sắc rực rỡ, Thìn bế tắc vì công việc trục trặc\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/tu-vi-12-con-giap-chu-nhat-ngay-15-12-2019-ty-tai-loc-khoi-sac-ruc-ro-thin-be-tac-vi-cong-viec-truc-trac-d237177.html\" title=\"Tử vi 12 con giáp chủ nhật ngày 15/12/2019: Tý tài lộc khởi sắc rực rỡ, Thìn bế tắc vì công việc trục trặc\">Tử vi 12 con gi&aacute;p chủ nhật ng&agrave;y 15/12/2019: T&yacute; t&agrave;i lộc khởi sắc rực rỡ, Th&igrave;n bế tắc v&igrave; c&ocirc;ng việc trục trặc</a></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phunutoday.vn/suc-khoe/\" rel=\"nofollow\">SỨC KHỎE</a></p>\r\n\r\n<p><a href=\"https://phunutoday.vn/buoi-sang-uong-gi-de-giam-can-nhanh-chong-cau-tra-loi-don-gian-ma-nhieu-nguoi-khong-he-biet-d237103.html\" title=\"Buổi sáng uống gì để giảm cân nhanh chóng? Câu trả lời đơn giản mà nhiều người không hề biết\"><img alt=\"Buổi sáng uống gì để giảm cân nhanh chóng? Câu trả lời đơn giản mà nhiều người không hề biết\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:200px; width:328px\" /></a></p>\r\n\r\n<h4><a href=\"https://phunutoday.vn/buoi-sang-uong-gi-de-giam-can-nhanh-chong-cau-tra-loi-don-gian-ma-nhieu-nguoi-khong-he-biet-d237103.html\" title=\"Buổi sáng uống gì để giảm cân nhanh chóng? Câu trả lời đơn giản mà nhiều người không hề biết\">Buổi s&aacute;ng uống g&igrave; để giảm c&acirc;n nhanh ch&oacute;ng? C&acirc;u trả lời đơn giản m&agrave; nhiều người kh&ocirc;ng hề biết</a></h4>\r\n\r\n<p>&nbsp;5 giờ trước</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; danh s&aacute;ch những loại đồ uống giảm c&acirc;n an to&agrave;n v&agrave; hiệu quả gi&uacute;p bạn lấy lại v&oacute;c d&aacute;ng thon gọn:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://phunutoday.vn/tet-nhat-den-noi-moi-ngay-uong-mot-coc-nuoc-ep-hon-hop-than-thanh-nay-giup-ban-giam-can-than-toc-d237138.html\" title=\"Tết nhất đến nơi, mỗi ngày uống một cốc nước ép hỗn hợp “thần thánh” này giúp bạn giảm cân thần tốc\"><img alt=\"Tết nhất đến nơi, mỗi ngày uống một cốc nước ép hỗn hợp “thần thánh” này giúp bạn giảm cân thần tốc\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n\r\n	<h4><a href=\"https://phunutoday.vn/tet-nhat-den-noi-moi-ngay-uong-mot-coc-nuoc-ep-hon-hop-than-thanh-nay-giup-ban-giam-can-than-toc-d237138.html\" title=\"Tết nhất đến nơi, mỗi ngày uống một cốc nước ép hỗn hợp “thần thánh” này giúp bạn giảm cân thần tốc\">Tết nhất đến nơi, mỗi ng&agrave;y uống một cốc nước &eacute;p hỗn hợp &ldquo;thần th&aacute;nh&rdquo; n&agrave;y gi&uacute;p bạn giảm c&acirc;n thần tốc</a></h4>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://phunutoday.vn/lam-viec-nay-buoi-sang-chang-khac-gi-tu-tay-giet-hai-gan-than-pha-huy-noi-tang-tung-ngay-d236739.html\" title=\"Làm việc này buổi sáng chẳng khác gì tự tay \'giết hại\' gan thận, phá huỷ nội tạng từng ngày\"><img alt=\"Làm việc này buổi sáng chẳng khác gì tự tay \'giết hại\' gan thận, phá huỷ nội tạng từng ngày\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/lam-viec-nay-buoi-sang-chang-khac-gi-tu-tay-giet-hai-gan-than-pha-huy-noi-tang-tung-ngay-d236739.html\" title=\"Làm việc này buổi sáng chẳng khác gì tự tay \'giết hại\' gan thận, phá huỷ nội tạng từng ngày\">L&agrave;m việc n&agrave;y buổi s&aacute;ng chẳng kh&aacute;c g&igrave; tự tay &quot;giết hại&quot; gan thận, ph&aacute; huỷ nội tạng từng ng&agrave;y</a></h4>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://phunutoday.vn/pha-nuoc-chanh-leo-theo-cach-nay-mo-thua-chang-may-choc-ma-bi-thoi-bay-da-de-them-min-mang-d236974.html\" title=\"Pha nước chanh leo theo cách này, mỡ thừa chẳng mấy chốc mà bị \'thổi bay\', da dẻ thêm mịn màng\"><img alt=\"Pha nước chanh leo theo cách này, mỡ thừa chẳng mấy chốc mà bị \'thổi bay\', da dẻ thêm mịn màng\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/pha-nuoc-chanh-leo-theo-cach-nay-mo-thua-chang-may-choc-ma-bi-thoi-bay-da-de-them-min-mang-d236974.html\" title=\"Pha nước chanh leo theo cách này, mỡ thừa chẳng mấy chốc mà bị \'thổi bay\', da dẻ thêm mịn màng\">Pha nước chanh leo theo c&aacute;ch n&agrave;y, mỡ thừa chẳng mấy chốc m&agrave; bị &quot;thổi bay&quot;, da dẻ th&ecirc;m mịn m&agrave;ng</a></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phunutoday.vn/xa-hoi/\" rel=\"nofollow\">X&Atilde; HỘI</a></p>\r\n\r\n<h4><a href=\"https://phunutoday.vn/dem-ban-trai-ra-lam-mau-make-up-co-gai-phat-hon-vi-nhan-sac-moi-cua-gau-d237227.html\" title=\"Đem bạn trai ra làm mẫu make up, cô gái \'phát hờn\' vì nhan sắc mới của \'gấu\'\">Đem bạn trai ra l&agrave;m mẫu make up, c&ocirc; g&aacute;i &quot;ph&aacute;t hờn&quot; v&igrave; nhan sắc mới của &quot;gấu&quot;</a></h4>\r\n\r\n<p>&nbsp;1 giờ trước</p>\r\n\r\n<p>Chẳng thể ngờ được rằng, ch&agrave;ng trai sau khi được trang điểm cẩn thận, đội t&oacute;c giả lại c&oacute; nhan nhắc khiến hội chị em ghen tị đến vậy.</p>\r\n\r\n<h4><a href=\"https://phunutoday.vn/co-gai-20-tuoi-bi-ban-trai-loi-ra-hanh-lang-danh-dap-khong-thuong-tiec-nhung-muc-phat-moi-gay-chu-y-d237106.html\" title=\"Cô gái 20 tuổi bị bạn trai lôi ra hành lang đánh đập không thương tiếc nhưng mức phạt mới gây chú ý\">C&ocirc; g&aacute;i 20 tuổi bị bạn trai l&ocirc;i ra h&agrave;nh lang đ&aacute;nh đập kh&ocirc;ng thương tiếc nhưng mức phạt mới g&acirc;y ch&uacute; &yacute;</a></h4>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://phunutoday.vn/van-toan-chang-co-gi-ngoai-dieu-kien-nhin-bo-suu-tap-mo-hinh-tram-trieu-va-loat-giay-sieu-pham-nay-la-biet-d237224.html\" title=\"Văn Toàn \'chẳng có gì ngoài điều kiện\', nhìn bộ sưu tập mô hình trăm triệu và loạt giày siêu phẩm này là biết\"><img alt=\"Văn Toàn \'chẳng có gì ngoài điều kiện\', nhìn bộ sưu tập mô hình trăm triệu và loạt giày siêu phẩm này là biết\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/van-toan-chang-co-gi-ngoai-dieu-kien-nhin-bo-suu-tap-mo-hinh-tram-trieu-va-loat-giay-sieu-pham-nay-la-biet-d237224.html\" title=\"Văn Toàn \'chẳng có gì ngoài điều kiện\', nhìn bộ sưu tập mô hình trăm triệu và loạt giày siêu phẩm này là biết\">Văn To&agrave;n &quot;chẳng c&oacute; g&igrave; ngo&agrave;i điều kiện&quot;, nh&igrave;n bộ sưu tập m&ocirc; h&igrave;nh trăm triệu v&agrave; loạt gi&agrave;y si&ecirc;u phẩm n&agrave;y l&agrave; biết</a></h4>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://phunutoday.vn/anh-chang-dung-suot-10-phut-o-mep-cua-so-de-giai-cuu-be-gai-mac-ket-khien-ai-cung-dung-tim-d237110.html\" title=\"Anh chàng đứng suốt 10 phút ở mép cửa sổ để giải cứu bé gái mắc kẹt khiến ai cũng \'đứng tim\'\"><img alt=\"Anh chàng đứng suốt 10 phút ở mép cửa sổ để giải cứu bé gái mắc kẹt khiến ai cũng \'đứng tim\'\" src=\"https://static.ex-cdn.com/phunutoday.vn/v1.3.188/templates/themes/images/blank.png\" style=\"height:86px; width:128px\" /></a>\r\n	<h4><a href=\"https://phunutoday.vn/anh-chang-dung-suot-10-phut-o-mep-cua-so-de-giai-cuu-be-gai-mac-ket-khien-ai-cung-dung-tim-d237110.html\" title=\"Anh chàng đứng suốt 10 phút ở mép cửa sổ để giải cứu bé gái mắc kẹt khiến ai cũng \'đứng tim\'\">Anh ch&agrave;ng đứng suốt 10 ph&uacute;t ở m&eacute;p cửa sổ để giải cứu b&eacute; g&aacute;i mắc kẹt khiến ai cũng &quot;đứng tim</a></h4>\r\n	</li>\r\n</ul>\r\n', '1576399236_dd4.jpeg', '', 1, 'thegoididong.com', 22, 2, '2019-12-15 01:40:36', '2019-12-15 01:40:36'),
(4, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu ', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone-6s-con-duoi-7-trieu', 'admin', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>\r\n', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n', '1480390877_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:41:17', '2016-11-28 20:41:17'),
(5, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 ', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone-6s-con-duoi-7', 'admin', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>\r\n', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n', '1480390903_bannernew4-_1920x1080.jpg', 'bla ble', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:41:43', '2016-11-28 20:41:43'),
(6, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone', 'admin', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>\r\n', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n', '1480390918_bannernew4-_1920x1080.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:41:58', '2016-11-28 20:41:58'),
(7, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh ', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh', 'admin', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>\r\n', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n', '1480390929_bannernew4-_1920x1080.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:42:09', '2016-11-28 20:42:09');
INSERT INTO `news` (`id`, `title`, `slug`, `author`, `intro`, `full`, `images`, `tag`, `status`, `source`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'iPhone SE đổi trả thiết kế thanh lịch', 'iphone-se-doi-tra-thiet-ke-thanh-lich', 'admin', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column.&nbsp;</p>\r\n', '<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n\r\n<p>The&nbsp;<code>orderBy</code>&nbsp;method allows you to sort the result of the query by a given column. The first argument to the&nbsp;<code>orderBy</code>&nbsp;method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either&nbsp;<code>asc</code>&nbsp;or&nbsp;<code>desc</code>:</p>\r\n', '1480390936_bannernew4-_1920x1080.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 22, 1, '2016-11-28 20:42:16', '2016-11-28 20:42:16'),
(9, 'iOS 10.1.1 đang gặp vấn đề nghiêm trọng về pin?', 'ios-1011-dang-gap-van-de-nghiem-trong-ve-pin', 'Hoang Viet', '<p>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật iOS 10.1.1, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</p>\r\n', '<h2>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=iOS+10.1.1\" target=\"_blank\" title=\"iOS 10.1.1\" type=\"iOS 10.1.1\">iOS 10.1.1</a>, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</h2>\r\n\r\n<p>Cụ thể ng&agrave;y c&agrave;ng c&oacute; nhiều c&aacute;c b&aacute;o c&aacute;o về vấn đề iOS 10.1.1 ngốn pin nhanh hơn so với c&aacute;c phi&ecirc;n bản trước. Một số thiết bị khi c&ograve;n khoảng 30% pin sẽ đột ngột tắt nguồn, sau khi cắm bộ sạc v&agrave;o v&agrave;i gi&acirc;y th&igrave; m&agrave;n h&igrave;nh sẽ hiển thị lại dung lượng pin 30% trước đ&oacute;, th&ocirc;ng tin được&nbsp;<a href=\"http://www.phonearena.com/news/iOS-10.1.1-reported-to-drain-users-batteries_id88354\" rel=\"nofollow\" target=\"_blank\" title=\"phonearena\" type=\"phonearena\">phonearena</a>&nbsp;đăng tải.</p>\r\n\r\n<p>Người d&ugrave;ng kh&aacute;c c&ograve;n gặp vấn đề nghi&ecirc;m trọng hơn, khi iPhone của họ bị giảm hơn 80% pin trong một đ&ecirc;m, v&agrave; ho&agrave;n to&agrave;n tắt nguồn v&agrave;o s&aacute;ng h&ocirc;m sau, khi cắm sạc v&agrave;o th&igrave; lại hiển thị ở mức 30% pin.</p>\r\n\r\n<p>Hiện lỗi n&agrave;y chỉ xuất hiện ở một số người d&ugrave;ng nhất định, v&igrave; vậy Apple vẫn chưa thừa nhận đ&acirc;y l&agrave; vấn đề g&acirc;y ra bởi iOS 10.1.1. Hy vọng nh&agrave; t&aacute;o sẽ t&igrave;m ra nguy&ecirc;n nh&acirc;n vấn đề v&agrave; sớm khắc phục.</p>\r\n\r\n<p>Cũng nhắc lại đ&ocirc;i ch&uacute;t về iOS 10.1.1, trong bản n&acirc;ng cấp n&agrave;y Apple tập trung cải thiện t&iacute;nh năng chăm s&oacute;c sức khỏe v&agrave; sửa lỗi c&aacute;c ứng dụng kh&ocirc;ng thể tiếp cận dữ liệu từ điện thoại để thống k&ecirc; cho người d&ugrave;ng. Ngo&agrave;i ra, kh&ocirc;ng c&oacute; bất kỳ t&iacute;nh năng mới n&agrave;o được th&ecirc;m v&agrave;o.</p>\r\n', '1480399611_sac-pin-iphone77-636137797940677630_800x450.jpg', 'iOS 10.1.1 , Pin', 1, 'thegoididong.com', 22, 1, '2016-11-28 23:09:06', '2016-11-28 23:09:06'),
(10, 'iOS 10.1.1 mới ra mắt', 'ios-1011-moi-ra-mat', 'Hoang Viet', '<p>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật iOS 10.1.1, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</p>\r\n', '<h2>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=iOS+10.1.1\" target=\"_blank\" title=\"iOS 10.1.1\" type=\"iOS 10.1.1\">iOS 10.1.1</a>, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</h2>\r\n\r\n<p>Cụ thể ng&agrave;y c&agrave;ng c&oacute; nhiều c&aacute;c b&aacute;o c&aacute;o về vấn đề iOS 10.1.1 ngốn pin nhanh hơn so với c&aacute;c phi&ecirc;n bản trước. Một số thiết bị khi c&ograve;n khoảng 30% pin sẽ đột ngột tắt nguồn, sau khi cắm bộ sạc v&agrave;o v&agrave;i gi&acirc;y th&igrave; m&agrave;n h&igrave;nh sẽ hiển thị lại dung lượng pin 30% trước đ&oacute;, th&ocirc;ng tin được&nbsp;<a href=\"http://www.phonearena.com/news/iOS-10.1.1-reported-to-drain-users-batteries_id88354\" rel=\"nofollow\" target=\"_blank\" title=\"phonearena\" type=\"phonearena\">phonearena</a>&nbsp;đăng tải.</p>\r\n\r\n<p>Người d&ugrave;ng kh&aacute;c c&ograve;n gặp vấn đề nghi&ecirc;m trọng hơn, khi iPhone của họ bị giảm hơn 80% pin trong một đ&ecirc;m, v&agrave; ho&agrave;n to&agrave;n tắt nguồn v&agrave;o s&aacute;ng h&ocirc;m sau, khi cắm sạc v&agrave;o th&igrave; lại hiển thị ở mức 30% pin.</p>\r\n\r\n<p>Hiện lỗi n&agrave;y chỉ xuất hiện ở một số người d&ugrave;ng nhất định, v&igrave; vậy Apple vẫn chưa thừa nhận đ&acirc;y l&agrave; vấn đề g&acirc;y ra bởi iOS 10.1.1. Hy vọng nh&agrave; t&aacute;o sẽ t&igrave;m ra nguy&ecirc;n nh&acirc;n vấn đề v&agrave; sớm khắc phục.</p>\r\n\r\n<p>Cũng nhắc lại đ&ocirc;i ch&uacute;t về iOS 10.1.1, trong bản n&acirc;ng cấp n&agrave;y Apple tập trung cải thiện t&iacute;nh năng chăm s&oacute;c sức khỏe v&agrave; sửa lỗi c&aacute;c ứng dụng kh&ocirc;ng thể tiếp cận dữ liệu từ điện thoại để thống k&ecirc; cho người d&ugrave;ng. Ngo&agrave;i ra, kh&ocirc;ng c&oacute; bất kỳ t&iacute;nh năng mới n&agrave;o được th&ecirc;m v&agrave;o.</p>\r\n', '1480399632_sac-pin-iphone77-636137797940677630_800x450.jpg', 'iOS 10.1.1 , Pin', 1, 'thegoididong.com', 22, 1, '2016-11-28 23:09:34', '2016-11-28 23:09:34'),
(11, 'Google phải khâm phục Samsung về khả năng tối ưu hóa Android 7.0', 'google-phai-kham-phuc-samsung-ve-kha-nang-toi-uu-hoa-android-70', 'Hoang Viet', '<p>Google đ&atilde; tham gia v&agrave;o cuộc dua smartphone với Google Pixel được ra mắt v&agrave;o v&agrave;i th&aacute;ng trước. Mới đ&acirc;y, một Youtuber đ&atilde; c&oacute; cuộc thử nghiệm tốc độ giữa Google Pixel XL v&agrave; Galaxy S7. Để xem kết<', '<p>Một Youtuber c&oacute; t&ecirc;n XEETECHCARE đ&atilde; c&oacute; 1 cuộc thử nghiệm nhỏ nhằm so s&aacute;nh tốc độ của 2 chiếc smartphone Android cao cấp nhất hiện tại đ&oacute; l&agrave; Google Pixel XL v&agrave; Galaxy S7 tr&ecirc;n nền tảng Android 7.0 Nougat. Cuộc thử nghiệm n&agrave;y bao gồm c&aacute;c phần test về tốc độ mở của c&aacute;c ứng dụng cũng như tr&ograve; chơi. T&ograve; m&ograve; kết quả ra sao qu&aacute; nhỉ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.thegioididong.com/tin-tuc/google-phai-kham-phuc-samsung-ve-kha-nang-toi-uu-hoa-919330\" /></p>\r\n\r\n<p>Như đ&atilde; thấy, 2 chiếc điện thoại n&agrave;y kh&aacute; c&acirc;n t&agrave;i c&acirc;n sức. Google Pixel XL hơn Galaxy S7 ở 1 số dụng v&agrave; ngược lại. Tuy nhi&ecirc;n, nh&igrave;n chung th&igrave; Galaxy S7 vẫn vượt trội hơn so với ch&iacute;nh đứa con của Google. D&ugrave; c&oacute; lợi thế được sử dụng hệ sinh th&aacute;i Android gốc v&agrave; chip Snapdragon 821 nhưng về độ mượt tr&ecirc;n Android 7.0 th&igrave; c&oacute; lẽ Google phải thua Samsung về 1 bậc.</p>\r\n', '1480399703_ggpixels7_800x450.jpg', 'iOS 10.1.1 , Pin', 1, 'thegoididong.com', 22, 1, '2016-11-28 23:09:49', '2016-11-28 23:09:49'),
(12, 'khuyễn mại mùa mua sắm cuối năm 2017', 'khuyen-mai-mua-mua-sam-cuoi-nam-2017', 'admin', '<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u', '<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u thị Megaplaza | Vui vẻ Mua sắm - Tiết kiệm chi ti&ecirc;u.</p>\r\n', '1480404640_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 23, 1, '2016-11-29 00:30:40', '2016-11-29 00:30:40'),
(13, 'khuyễn mại mùa mua sắm cuối năm 2017 1', 'khuyen-mai-mua-mua-sam-cuoi-nam-2017-1', 'admin', '<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u', '<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u thị Megaplaza | Vui vẻ Mua sắm - Tiết kiệm chi ti&ecirc;u.</p>\r\n', '1480404648_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 23, 1, '2016-11-29 00:30:48', '2016-11-29 00:30:48'),
(14, 'khuyễn mại mùa mua sắm cuối năm 12/2017 ', 'khuyen-mai-mua-mua-sam-cuoi-nam-122017', 'admin', '<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u', '<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2016. Si&ecirc;u thị Megaplaza | Vui vẻ Mua sắm - Tiết kiệm chi ti&ecirc;u.</p>\r\n', '1480404656_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 23, 1, '2016-11-29 00:30:56', '2016-11-29 00:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `oders`
--

CREATE TABLE `oders` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` float NOT NULL,
  `total` float NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oders`
--

INSERT INTO `oders` (`id`, `c_id`, `qty`, `sub_total`, `total`, `status`, `type`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 24980000, 24980000, 1, 'cod', 'ok giao hang nhanh nhat co the', '2016-12-01 19:52:14', '2016-12-05 01:53:57'),
(2, 1, 2, 24980000, 24980000, 1, 'cod', 'sad', '2016-12-01 19:55:27', '2016-12-25 21:51:13'),
(6, 1, 2, 24980000, 24980000, 1, 'cod', 'ok be le', '2016-12-01 20:32:39', '2016-12-05 01:54:07'),
(7, 1, 1, 15890000, 15890000, 1, 'cod', 'asd', '2016-12-06 02:39:35', '2016-12-25 21:51:24'),
(8, 1, 2, 31780000, 31780000, 1, 'cod', 'nhan hang nhanh', '2016-12-17 03:52:18', '2016-12-25 21:51:28'),
(9, 1, 1, 15890000, 15890000, 1, 'paypal', 'PAY-39X56047VY8578917LBKSMVA', '2016-12-17 04:50:08', '2016-12-17 04:50:08'),
(10, 1, 2, 34380000, 34380000, 1, 'cod', 'ghi chu', '2016-12-17 04:53:28', '2016-12-25 21:51:35'),
(11, 1, 1, 15890000, 15890000, 1, 'cod', '                    \r\n                  ', '2016-12-17 04:54:11', '2016-12-25 21:51:42'),
(12, 1, 2, 24480000, 24480000, 1, 'paypal', 'PAY-5DH63736F1042400PLBKUBIY', '2016-12-17 06:42:29', '2016-12-17 06:42:29'),
(13, 2, 1, 15890000, 15890000, 1, 'cod', '                    \r\n                  viet@test.com', '2016-12-25 21:47:13', '2016-12-25 21:51:18'),
(14, 2, 1, 15890000, 15890000, 1, 'cod', '                    \r\n                  ', '2016-12-25 21:50:44', '2016-12-25 21:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `oders_detail`
--

CREATE TABLE `oders_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `o_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oders_detail`
--

INSERT INTO `oders_detail` (`id`, `pro_id`, `qty`, `o_id`, `created_at`, `updated_at`) VALUES
(1, 26, 1, 1, '2016-12-01 19:52:14', '2016-12-01 19:52:14'),
(2, 24, 1, 1, '2016-12-01 19:52:14', '2016-12-01 19:52:14'),
(3, 26, 1, 2, '2016-12-01 19:55:27', '2016-12-01 19:55:27'),
(4, 24, 1, 2, '2016-12-01 19:55:27', '2016-12-01 19:55:27'),
(10, 35, 1, 6, '2016-12-01 20:32:39', '2016-12-01 20:32:39'),
(12, 23, 1, 7, '2016-12-06 02:39:35', '2016-12-06 02:39:35'),
(13, 22, 2, 8, '2016-12-17 03:52:19', '2016-12-17 03:52:19'),
(14, 23, 1, 9, '2016-12-17 04:50:09', '2016-12-17 04:50:09'),
(15, 23, 1, 10, '2016-12-17 04:53:28', '2016-12-17 04:53:28'),
(16, 35, 1, 10, '2016-12-17 04:53:28', '2016-12-17 04:53:28'),
(17, 23, 1, 11, '2016-12-17 04:54:11', '2016-12-17 04:54:11'),
(18, 35, 1, 12, '2016-12-17 06:42:29', '2016-12-17 06:42:29'),
(19, 24, 1, 12, '2016-12-17 06:42:29', '2016-12-17 06:42:29'),
(20, 23, 1, 13, '2016-12-25 21:47:13', '2016-12-25 21:47:13'),
(21, 23, 1, 14, '2016-12-25 21:50:44', '2016-12-25 21:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sp@gmail.com', '4ef83492c9675a69bf1f1660f0965653a0864f47a3b6d161fecba7cb12c131b4', '2016-12-06 03:47:29'),
('viet@test.com', 'f9493aeb176194ad33b97ea1416c1af145d061d1cdc4ec125b2a67398bb7136f', '2019-12-14 23:03:59'),
('vanpttps07658@fpt.edu.vn', '0303333606a361f7d403c982eb4ab33653dc6a87365f223df3eef66f8d8fa3a8', '2019-12-14 23:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `packet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `r_intro` text COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `intro`, `promo1`, `promo2`, `promo3`, `packet`, `images`, `r_intro`, `review`, `tag`, `price`, `status`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(22, 'Đầm ren phối họa tiết', 'dam-ren-phoi-hoa-tiet', 'màu nâu đẹp', 'Trả góp 0%', '', '', 'nón, thắt lưng', '1576396938_ak-1.png', '<ul>\r\n	<li><strong>Chất vải:</strong>&nbsp;Tuyết mưa.</li>\r\n	<li><strong>Chiều d&agrave;i v&aacute;y:</strong>&nbsp;Tr&ecirc;n gối.</li>\r\n	<li><strong>Chiều d&agrave;i tay &aacute;o:</strong>&nbsp;Kh&ocirc;ng tay.</li>\r\n	<li><strong>Kiểu cổ &aacute;o:</strong>&nbsp;Cổ tr&ograve;n.</li>\r\n</ul>\r\n', '<p><strong>Điểm nổi bật :</strong></p>\r\n\r\n<p><strong>- Kiểu d&aacute;ng:&nbsp;<em>đầm su&ocirc;ng&nbsp;</em>, cổ tr&ograve;n, tay s&aacute;t c&aacute;nh</strong></p>\r\n\r\n<p><strong>- M&agrave;u sắc: hồng, xanh nhạt, xanh b&iacute;ch</strong></p>\r\n\r\n<p><strong>- Size: S, M, L, XL</strong></p>\r\n\r\n<p><strong>- Chất liệu: tuyết mưa.</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<p><strong>- T&ecirc;n sản phẩm:&nbsp;Đầm su&ocirc;ng phối sọc thời trang Eden</strong></p>\r\n\r\n<p><strong>- Xuất xứ: Việt Nam</strong></p>\r\n\r\n<p><strong>- Kiểu d&aacute;ng: Đầm su&ocirc;ng, cổ tr&ograve;n, tay s&aacute;t c&aacute;nh</strong></p>\r\n\r\n<p><strong>- Trọng lượng: 440gr</strong></p>\r\n\r\n<p><strong>- Đơn vị t&iacute;nh: cm</strong></p>\r\n', 'váy , đầm', 150000, 1, 3, 2, '2016-11-24 09:39:13', '2019-12-15 01:02:18'),
(23, 'Đầm hồng', 'dam-hong', 'bộ đôi xinh đẹp', 'Trả góp 0%', '', '', 'giày', '1576396960_ap-3.png', '<p>san pham dep</p>\r\n', '<p><strong>Điểm nổi bật :</strong></p>\r\n\r\n<p><strong>- Kiểu d&aacute;ng:&nbsp;<em>Đầm C&ocirc;ng Sở&nbsp;</em>, cổ tr&ograve;n, tay s&aacute;t c&aacute;nh.</strong></p>\r\n\r\n<p><strong>- M&agrave;u sắc: hồng sen, xanh đen, xanh nhạt</strong></p>\r\n\r\n<p><strong>- Size: S, M, L, XL- Chất liệu: tuyết mưa.</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<p><strong>- T&ecirc;n sản phẩm: đầm c&ocirc;ng sở phối n&uacute;t eo nh&uacute;ng dễ thương thời trang eden - d146</strong></p>\r\n\r\n<p><strong>- Xuất xứ: Việt Nam</strong></p>\r\n\r\n<p><strong>- Kiểu d&aacute;ng: Đầm su&ocirc;ng, cổ tr&ograve;n, tay s&aacute;t c&aacute;nh</strong></p>\r\n\r\n<p><strong>- Trọng lượng: 249gr</strong></p>\r\n', '', 434344, 1, 4, 2, '2016-11-24 09:39:28', '2019-12-15 01:02:40'),
(24, 'đầm 2', 'dam-2', 'đâm đẹp dang ôm', '', '', '', '', '1576396980_sm-6.png', '<p>T&ecirc;n sản phẩm:&nbsp;<em><strong>Đầm Su&ocirc;ng Kẻ Sọc Nữ T&iacute;nh</strong></em></p>\r\n\r\n<p>- M&atilde; sản phẩm: DS-1906039</p>\r\n\r\n<p>- Chất liệu: vải thun c&aacute;t missa, co gi&atilde;n, thoải m&aacute;i khi di chuyển, vận động</p>\r\n\r\n<p>- Kiểu d&aacute;ng trẻ trung ph&ugrave; hợp cho ph&aacute;i đẹp dạo phố c&ugrave;ng bạn b&egrave;, dự tiệc, đến c&ocirc;ng sở,...</p>\r\n', '<p><strong>MUA H&Agrave;NG TẠI SUSU_BEAUTY, KH&Aacute;CH ĐƯỢC G&Igrave; N&Egrave;?</strong></p>\r\n\r\n<p>- Tất tần tật mọi sản phẩm cam kết y h&igrave;nh&nbsp;<strong>101%</strong>&nbsp;nh&eacute;.</p>\r\n\r\n<p>- Khỏi phải lăn tăn về&nbsp;<strong>chất lượng</strong>&nbsp;sản phẩm.</p>\r\n\r\n<p>- Kh&ocirc;ng phải bực dọc khi sản phẩm bị những lỗi như da bong tr&oacute;c, đường may sứt chỉ, xước vải,...bla&hellip;bla&hellip;</p>\r\n\r\n<p>- Đặc biệt, sản phẩm được&nbsp;<strong>đổi trả trong v&ograve;ng 7 ng&agrave;y</strong>&nbsp;kể từ ng&agrave;y nhận h&agrave;ng lu&ocirc;n nha (kh&aacute;ch gi&uacute;p Shop để nguy&ecirc;n tem mạc v&agrave; kh&ocirc;ng hỏng h&oacute;c g&igrave; hết nh&eacute;)</p>\r\n\r\n<p>- Kh&aacute;ch được quyền xem h&agrave;ng trước khi trả tiền, nếu shipper kh&ocirc;ng cho, h&atilde;y nhấc m&aacute;y v&agrave; gọi :<em>0917.92.14.39</em><em>&nbsp;&ndash;&nbsp;</em><em>hỗ trợ liền ngay v&agrave; lập tức nh&eacute;.</em></p>\r\n', '', 5990000, 1, 4, 2, '2016-11-24 18:48:39', '2019-12-15 01:03:00'),
(26, 'đầm đẹp 02', 'dam-dep-02', 'sắp ra mắt', 'ao thun', '', '', '', '1576397000_sm-1.png', '<p>sắp ra mắt</p>\r\n', '<p>sản phẩm sắp được ra mắt</p>\r\n', '', 18490000, 1, 3, 2, '2016-11-25 23:44:07', '2019-12-15 01:03:20'),
(27, 'san pham 01', 'san-pham-01', 'sắp ra mắt', '', '', '', '', '1576397058_ap-6.png', '<p>sắp ra mắt</p>\r\n', '<p>sản phẩm sắp được ra mắt</p>\r\n', '', 18490000, 1, 17, 2, '2016-11-25 23:44:11', '2019-12-15 01:04:18'),
(28, 'Đầm 05', 'dam-05', 'sắp ra mắt', '', '', '', '', '1576397083_sm-7.png', '<p>sắp ra mắt</p>\r\n', '<p>sản phẩm sắp được ra mắt</p>\r\n', '', 18490000, 1, 4, 2, '2016-11-25 23:44:15', '2019-12-15 01:04:43'),
(35, 'đam dang xuông 09', 'dam-dang-xuong-09', 'sắp ra mắt', '', '', '', '', '1576397102_sp1.png', '<p>sắp ra mắt</p>\r\n', '<p>sản phẩm sắp được ra mắt</p>\r\n', '', 184900, 1, 3, 2, '2016-11-25 23:45:08', '2019-12-15 01:05:02'),
(41, 'sp 02', 'sp-02', 'màu nâu đẹp', '', '', '', '', '1576397123_ak-1.png', '', '<p><strong>MUA H&Agrave;NG TẠI SUSU_BEAUTY, KH&Aacute;CH ĐƯỢC G&Igrave; N&Egrave;?</strong></p>\r\n\r\n<p>- Tất tần tật mọi sản phẩm cam kết y h&igrave;nh&nbsp;<strong>101%</strong>&nbsp;nh&eacute;.</p>\r\n\r\n<p>- Khỏi phải lăn tăn về&nbsp;<strong>chất lượng</strong>&nbsp;sản phẩm.</p>\r\n\r\n<p>- Kh&ocirc;ng phải bực dọc khi sản phẩm bị những lỗi như da bong tr&oacute;c, đường may sứt chỉ, xước vải,...bla&hellip;bla&hellip;</p>\r\n\r\n<p>- Đặc biệt, sản phẩm được&nbsp;<strong>đổi trả trong v&ograve;ng 7 ng&agrave;y</strong>&nbsp;kể từ ng&agrave;y nhận h&agrave;ng lu&ocirc;n nha (kh&aacute;ch gi&uacute;p Shop để nguy&ecirc;n tem mạc v&agrave; kh&ocirc;ng hỏng h&oacute;c g&igrave; hết nh&eacute;)</p>\r\n\r\n<p>- Kh&aacute;ch được quyền xem h&agrave;ng trước khi trả tiền, nếu shipper kh&ocirc;ng cho, h&atilde;y nhấc m&aacute;y v&agrave; gọi :<em>0917.92.14.39</em><em>&nbsp;&ndash;&nbsp;</em><em>hỗ trợ liền ngay v&agrave; lập tức nh&eacute;.</em></p>\r\n', '', 6490000, 1, 10, 2, '2016-11-26 00:44:02', '2019-12-15 01:05:23'),
(53, 'đô tay ngan', 'do-tay-ngan', 'màu đẹp', '', '', '', '', '1576397207_pd-9.png', '', '<p><strong>MUA H&Agrave;NG TẠI SUSU_BEAUTY, KH&Aacute;CH ĐƯỢC G&Igrave; N&Egrave;?</strong></p>\r\n\r\n<p>- Tất tần tật mọi sản phẩm cam kết y h&igrave;nh&nbsp;<strong>101%</strong>&nbsp;nh&eacute;.</p>\r\n\r\n<p>- Khỏi phải lăn tăn về&nbsp;<strong>chất lượng</strong>&nbsp;sản phẩm.</p>\r\n\r\n<p>- Kh&ocirc;ng phải bực dọc khi sản phẩm bị những lỗi như da bong tr&oacute;c, đường may sứt chỉ, xước vải,...bla&hellip;bla&hellip;</p>\r\n\r\n<p>- Đặc biệt, sản phẩm được&nbsp;<strong>đổi trả trong v&ograve;ng 7 ng&agrave;y</strong>&nbsp;kể từ ng&agrave;y nhận h&agrave;ng lu&ocirc;n nha (kh&aacute;ch gi&uacute;p Shop để nguy&ecirc;n tem mạc v&agrave; kh&ocirc;ng hỏng h&oacute;c g&igrave; hết nh&eacute;)</p>\r\n\r\n<p>- Kh&aacute;ch được quyền xem h&agrave;ng trước khi trả tiền, nếu shipper kh&ocirc;ng cho, h&atilde;y nhấc m&aacute;y v&agrave; gọi :<em>0917.92.14.39</em><em>&nbsp;&ndash;&nbsp;</em><em>hỗ trợ liền ngay v&agrave; lập tức nh&eacute;.</em></p>\r\n', 'rog, gamming', 19850000, 1, 9, 2, '2016-11-26 02:18:11', '2019-12-15 01:06:47'),
(54, 'đồ thể thao', 'do-the-thao', 'mau dep', '', '', '', '', '1576397315_dd-16.png', '', '', '', 19850000, 1, 10, 2, '2016-11-26 02:18:14', '2019-12-15 01:08:35'),
(72, 'Đầm hồng xoe', 'dam-hong-xoe', 'màu sắc lạnh mang vẻ sang trọng', '', '', '', '', '1576397408_ap-5.png', '<p>đf</p>\r\n', '<p>sap ra mat</p>\r\n', '', 150000, 1, 3, 2, '2019-12-14 23:51:07', '2019-12-15 01:10:08'),
(74, 'Đầm hồng xoe', 'dam-hong-xoe', 'màu sắc lạnh mang vẻ sang trọng', '', '', '', '', '1576397444_ap-4.png', '', '<p>sap ra mat</p>\r\n', '', 150000, 1, 4, 2, '2019-12-14 23:52:57', '2019-12-15 01:10:44'),
(75, 'Dam bd', 'dam-bd', 'mau hong', '', '', '', '', '1576397532_sp1.png', '', '<p>gia dep moi&nbsp;ngay</p>\r\n', '', 140000, 1, 3, 2, '2019-12-14 23:54:07', '2019-12-15 01:12:12'),
(76, 'Dam bd', 'dam-bd', 'mau hong', '', '', '', '', '1576397728_sm-1.png', '', '<p>gia dep moi&nbsp;ngay</p>\r\n', '', 140000, 1, 4, 2, '2019-12-14 23:55:55', '2019-12-15 01:15:28'),
(77, 'Dam bd', 'dam-bd', 'mau hong', '', '', '', '', '1576397783_dd-16.png', '<p>gia ca phai chang</p>\r\n', '<p>gia dep moi&nbsp;ngay</p>\r\n', '', 140000, 1, 3, 2, '2019-12-14 23:57:50', '2019-12-15 01:16:23'),
(79, 'dam x', 'dam-x', 'mau sanh', '', '', '', '', '1576397490_ap-4.png', '<p>san pham giam gia</p>\r\n', '<p>mau dep</p>\r\n', '', 780000, 1, 17, 2, '2019-12-15 00:31:31', '2019-12-15 01:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `pro_details`
--

CREATE TABLE `pro_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `cpu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `screen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exten_memmory` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cam1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cam2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connect` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pro_details`
--

INSERT INTO `pro_details` (`id`, `cpu`, `ram`, `screen`, `vga`, `storage`, `exten_memmory`, `cam1`, `cam2`, `sim`, `connect`, `pin`, `os`, `note`, `pro_id`, `created_at`, `updated_at`) VALUES
(9, '', '', '', '', '', '', '', '', 'Không có', '', 'Không có', '', '', 22, '2016-11-24 09:39:13', '2019-12-15 01:02:19'),
(10, '', '', '', '', '', '', '12MP', '', 'Không có', '', 'Không có', '', '', 23, '2016-11-24 09:39:28', '2019-12-15 01:02:40'),
(11, '', '', '', '', '', '', '', '', 'Không có', '', 'Không có', '', '', 24, '2016-11-24 18:48:39', '2019-12-15 01:03:00'),
(13, '', '\\', '', '', '', '', '', '', 'Không có', '', 'Không có', '', '', 26, '2016-11-25 23:44:07', '2019-12-15 01:03:20'),
(14, '', '', '', '', '', '', '', '', 'Không có', '', 'Không có', '', '', 27, '2016-11-25 23:44:11', '2019-12-15 01:04:18'),
(15, '', '', '', '', '', '', '', '', 'Không có', '', 'Không có', '', '', 28, '2016-11-25 23:44:15', '2019-12-15 01:04:43'),
(22, '', '', '', '', '', '', '', '', 'Không có', '', 'Không có', '', '', 35, '2016-11-25 23:45:08', '2019-12-15 01:05:02'),
(28, '', '', '', '', '', '', '', '', 'Không có', '', 'Không có', '', '', 41, '2016-11-26 00:44:02', '2019-12-15 01:05:23'),
(40, '', '', '', '', '', '', '', '', 'Không có', '', 'Không có', '', 'Dây nguồn, Ốc ..', 53, '2016-11-26 02:18:11', '2019-12-15 01:06:47'),
(41, '', '', '', '', '', '', '', '', 'Không có', '', 'Không có', '', 'Dây nguồn, Ốc ..', 54, '2016-11-26 02:18:14', '2019-12-15 01:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lhson', 'scodeweb2016@gmail.com', '$2y$10$TEY9mtHYRJ4G9oW.6n9D9.5.eHfae7I1po7iNVE8cNMsEORxtzv0m', '0868896944', 'Ho chi minh', 1, 'jFFpU4F9xl8TLtjS6DPBiI8qWugcLLXQWMtRSWx9UtBoB3TrjGpx66X8xMMh', '2016-11-23 20:44:11', '2016-12-17 02:55:05'),
(2, 'viet', 'viet@test.com', '$2y$10$l1kbe4s6eABtFVZqe5UpIese0vCemAMafuRjEPBanY8VIhZJgMUU2', '0868896944', 'dl', 1, NULL, '2016-12-25 21:45:02', '2016-12-25 21:45:02'),
(3, 'van pham', 'vanpttps07658@fpt.edu.vn', '$2y$10$pVM3jS1.pG/UdWWhqd38suvF2lRv7LrNkxlqurrcUj1vZpr5fKDu.', '0977607727', '740c , nguyen kiem', 1, 'BxyFkRq8fyp45IKugncY6OK27eDwIyoQR99Wbr9bOhsyKMTduu1ebyqh1gcZ', '2019-12-14 23:04:35', '2019-12-29 04:27:50'),
(4, 'van pham', 'helo@gmail.com', '$2y$10$gm1jiFqXf6GZaDUak7nUSe3KrEPF9.GGy8z6EwTrwd5O5t5yIIuKi', '0977607727', '740c , nguyen kiem', 1, NULL, '2019-12-15 03:00:47', '2019-12-15 03:00:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_user_id_foreign` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_img`
--
ALTER TABLE `detail_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_img_pro_id_foreign` (`pro_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_cat_id_foreign` (`cat_id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_c_id_foreign` (`c_id`);

--
-- Indexes for table `oders_detail`
--
ALTER TABLE `oders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_detail_pro_id_foreign` (`pro_id`),
  ADD KEY `oders_detail_o_id_foreign` (`o_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `pro_details`
--
ALTER TABLE `pro_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_details_pro_id_foreign` (`pro_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `detail_img`
--
ALTER TABLE `detail_img`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oders`
--
ALTER TABLE `oders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oders_detail`
--
ALTER TABLE `oders_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `pro_details`
--
ALTER TABLE `pro_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_img`
--
ALTER TABLE `detail_img`
  ADD CONSTRAINT `detail_img_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `oders`
--
ALTER TABLE `oders`
  ADD CONSTRAINT `oders_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `oders_detail`
--
ALTER TABLE `oders_detail`
  ADD CONSTRAINT `oders_detail_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `oders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oders_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pro_details`
--
ALTER TABLE `pro_details`
  ADD CONSTRAINT `pro_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
