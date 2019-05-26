-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2019 at 08:12 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hangrongbku`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Quần áo', NULL, NULL),
(2, 'Laptop', NULL, NULL),
(3, 'Điện Thoại', NULL, NULL),
(4, 'Đồng hồ', NULL, NULL),
(6, 'Giày', NULL, NULL),
(7, 'Đồ ăn', NULL, NULL),
(8, 'Mỹ phẩm', NULL, NULL),
(9, 'Sữa tắm', NULL, NULL),
(10, 'Bột giặt', NULL, NULL),
(11, 'Xà bông', NULL, NULL),
(12, 'Dầu gội', NULL, NULL),
(13, 'Chuột vi tính', NULL, NULL),
(14, 'Trà sữa', NULL, NULL),
(15, 'Rượu', NULL, NULL),
(16, 'Ti vi', NULL, NULL),
(17, 'Máy lạnh', NULL, NULL),
(18, 'Tủ lạnh', NULL, NULL),
(19, 'Lò vi sóng', NULL, NULL),
(20, 'Sách truyện', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `userID`, `productID`, `content`, `created_at`, `updated_at`) VALUES
(1, 10, 2, '<p>&aacute;o qu&aacute; đẹp</p>', '2019-05-04 07:20:58', '2019-05-04 07:20:58'),
(2, 10, 2, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">ấc</th>\r\n			<td>dscsd</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">sdscds</th>\r\n			<td>sdc</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">sdc</th>\r\n			<td>sdcs</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2019-05-04 07:22:07', '2019-05-04 07:22:07'),
(3, 10, 2, '<blockquote>\r\n<h1><em>&Aacute;o rất đẹp Forza Milan</em></h1>\r\n</blockquote>', '2019-05-04 08:47:12', '2019-05-04 08:47:12'),
(4, 6, 1, '<p><span class=\"marker\">Quần t&agrave;o lao qu&aacute;</span></p>', '2019-05-04 21:12:36', '2019-05-04 21:12:36'),
(5, 6, 2, '<p>&Aacute;o đẹp m&agrave; rẻ</p>', '2019-05-04 21:15:53', '2019-05-04 21:15:53'),
(6, 6, 2, '<p><strong>Ao dep qua</strong></p>', '2019-05-08 20:10:55', '2019-05-08 20:10:55'),
(7, 10, 9, '<p>C&aacute;i n&agrave;y g&aacute;i x&agrave;i được ko</p>', '2019-05-16 02:57:27', '2019-05-16 02:57:27'),
(8, 10, 1, '<p>C&oacute; m&agrave;u trắng kh&ocirc;ng ad ?</p>', '2019-05-16 08:31:31', '2019-05-16 08:31:31'),
(9, 6, 6, '<p>Đồng hồ rất tốt</p>', '2019-05-25 08:42:42', '2019-05-25 08:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_04_13_144429_create_categories_table', 1),
(10, '2019_04_13_145629_create_orders_table', 1),
(11, '2019_04_13_150400_create_products_table', 1),
(13, '2019_04_13_153235_create_order_detail_table', 2),
(14, '2019_04_13_154043_create_comments_table', 2),
(15, '2019_04_13_150439_create_usercarts_table', 3),
(19, '2019_05_10_233523_create_notifications_table', 4),
(20, '2019_05_19_102820_create_ratings_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `customerID` int(10) UNSIGNED NOT NULL,
  `orderID` int(10) UNSIGNED NOT NULL,
  `isNew` tinyint(1) NOT NULL,
  `isDone` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `userID`, `customerID`, `orderID`, `isNew`, `isDone`, `created_at`, `updated_at`) VALUES
(3, 1, 11, 42, 1, 0, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(4, 10, 6, 50, 0, 0, '2019-05-18 06:32:18', '2019-05-18 06:32:18'),
(5, 10, 11, 51, 0, 0, '2019-05-18 06:43:22', '2019-05-18 06:43:22'),
(7, 6, 11, 54, 0, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(8, 1, 11, 54, 1, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(9, 1, 11, 54, 1, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(10, 6, 11, 54, 0, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(11, 6, 11, 54, 0, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(12, 6, 11, 54, 0, 0, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(13, 6, 11, 54, 0, 1, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(14, 2, 6, 55, 1, 0, '2019-05-25 08:45:23', '2019-05-25 08:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userID` int(10) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `userID`, `total`, `created_at`, `updated_at`) VALUES
(11, '2019-05-13 11:48:27', 6, 20000000, '2019-05-13 04:48:27', '2019-05-13 04:48:27'),
(13, '2019-05-13 11:50:53', 6, 10000000, '2019-05-13 04:50:53', '2019-05-13 04:50:53'),
(14, '2019-05-13 11:52:44', 6, 10000000, '2019-05-13 04:52:44', '2019-05-13 04:52:44'),
(42, '2019-05-13 17:20:40', 11, 40045000, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(48, '2019-05-15 17:56:47', 11, 700000, '2019-05-15 10:56:47', '2019-05-15 10:56:47'),
(49, '2019-05-16 07:32:12', 6, 360000, '2019-05-16 00:32:12', '2019-05-16 00:32:12'),
(50, '2019-05-18 13:32:18', 6, 10240000, '2019-05-18 06:32:18', '2019-05-18 06:32:18'),
(51, '2019-05-18 13:43:22', 11, 480000, '2019-05-18 06:43:22', '2019-05-18 06:43:22'),
(53, '2019-05-18 14:09:15', 10, 480000, '2019-05-18 07:09:15', '2019-05-18 07:09:15'),
(54, '2019-05-18 14:35:12', 11, 1965000, '2019-05-18 07:35:12', '2019-05-18 07:35:12'),
(55, '2019-05-25 15:45:22', 6, 30015000, '2019-05-25 08:45:22', '2019-05-25 08:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oderID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `productID`, `price`, `quantity`, `oderID`, `created_at`, `updated_at`) VALUES
(17, 6, 10000000, 2, 11, '2019-05-13 04:48:27', '2019-05-13 04:48:27'),
(20, 6, 10000000, 1, 13, '2019-05-13 04:50:53', '2019-05-13 04:50:53'),
(21, 6, 10000000, 1, 14, '2019-05-13 04:52:44', '2019-05-13 04:52:44'),
(30, 7, 15000, 3, 42, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(31, 6, 10000000, 4, 42, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(39, 8, 20000, 5, 48, '2019-05-15 10:56:47', '2019-05-15 10:56:47'),
(40, 2, 200000, 3, 48, '2019-05-15 10:56:48', '2019-05-15 10:56:48'),
(41, 10, 120000, 3, 49, '2019-05-16 00:32:13', '2019-05-16 00:32:13'),
(42, 10, 120000, 2, 50, '2019-05-18 06:32:18', '2019-05-18 06:32:18'),
(43, 6, 10000000, 1, 50, '2019-05-18 06:32:18', '2019-05-18 06:32:18'),
(44, 10, 120000, 3, 51, '2019-05-18 06:43:22', '2019-05-18 06:43:22'),
(45, 9, 40000, 3, 51, '2019-05-18 06:43:22', '2019-05-18 06:43:22'),
(48, 9, 40000, 2, 53, '2019-05-18 07:09:15', '2019-05-18 07:09:15'),
(49, 2, 200000, 2, 53, '2019-05-18 07:09:15', '2019-05-18 07:09:15'),
(50, 10, 120000, 4, 54, '2019-05-18 07:35:12', '2019-05-18 07:35:12'),
(51, 1, 200000, 4, 54, '2019-05-18 07:35:12', '2019-05-18 07:35:12'),
(52, 7, 15000, 3, 54, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(53, 2, 200000, 3, 54, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(54, 8, 20000, 2, 54, '2019-05-18 07:35:13', '2019-05-18 07:35:13'),
(55, 7, 15000, 1, 55, '2019-05-25 08:45:23', '2019-05-25 08:45:23'),
(56, 6, 10000000, 3, 55, '2019-05-25 08:45:23', '2019-05-25 08:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellerID` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cateID` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `lastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quantity` int(11) NOT NULL,
  `numRate` int(11) DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `numStar` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sellerID`, `price`, `description`, `cateID`, `status`, `lastTime`, `quantity`, `numRate`, `image`, `created_at`, `updated_at`, `numStar`) VALUES
(1, 'Quần em bé', 6, 200000, '<p><strong>aaaaaaaaaaaaaaaaaaaaaa</strong></p>', 1, 1, '2019-05-25 09:27:26', 11, 4, 'quan-thun-be-gai-ngan-concung-g017008.jpg', NULL, NULL, 16),
(2, 'Áo sân nhà milan', 6, 200000, 'áo đẹp', 1, 1, '2019-05-25 09:27:26', 152, 0, 'Ao-ac-milan-san-nha-1-300x300.jpg', NULL, NULL, 0),
(6, 'Đồng hồ Rolex', 2, 10000000, 'hello', 4, 1, '2019-05-25 15:44:08', 1090, 0, 'UploadsNewsoyster-perpetual-118348-day-date-36png_540_660.jpg', NULL, NULL, 0),
(7, 'Cơm sườn 15k', 1, 15000, 'Cơm sườn chất lượng đảm bảo ngon hơn ktx, tặng kèm canh và cơm thêm nếu muốn.', 7, 1, '2019-05-25 09:18:31', 93, 2, 'cach-uop-thit-nuong-com-tam.jpg', NULL, NULL, 9),
(8, 'LOGO', 6, 20000, '<p>asac</p>', 1, 1, '2019-05-25 09:27:26', 33, 0, '1557539007.jpg', '2019-05-10 18:43:27', '2019-05-10 18:43:27', 0),
(9, 'Dầu gội X-men', 6, 40000, '<h2>Dầu gội hương nước hoa X-Men Active 180g lấy cảm hứng từ oải hương v&agrave; gỗ tuyết t&ugrave;ng cho bạn cảm gi&aacute;c m&aacute;t lạnh, sảng kho&aacute;i v&agrave; đầy c&aacute; t&iacute;nh , c&ocirc;ng thức độc đ&aacute;o từ dầu gội sẽ mang đến cho bạn m&aacute;i t&oacute;c khỏe mạnh v&agrave; sạch da đầu.</h2>', 12, 1, '2019-05-25 12:59:30', 8, 0, '1557745507.jpg', '2019-05-13 04:05:07', '2019-05-13 04:05:07', 0),
(10, 'Attack on Titan tập 1', 10, 120000, '<p>Truyện c&ograve;n mới, h&igrave;nh vẽ đẹp, ai mua m&igrave;nh pass lại</p>', 20, 1, '2019-05-18 14:34:30', 34, 0, '1557991818.jpg', '2019-05-16 00:30:18', '2019-05-16 00:30:18', 0),
(11, 'Fiction', 6, 400000, '<p>Rượu face</p>', 15, 1, '2019-05-25 09:27:26', 20, 3, '1558154408.jpg', '2019-05-17 21:40:08', '2019-05-17 21:40:08', 11),
(12, 'FreeWings Coat', 11, 400000, '<p>Đ&ocirc;i c&aacute;nh tự do Attack on Titan</p>\r\n\r\n<p>&nbsp;</p>', 1, 1, '2019-05-25 13:46:49', 200, 1, '1558190053.jpg', '2019-05-18 07:34:13', '2019-05-18 07:34:13', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rating_item` int(11) NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usercarts`
--

CREATE TABLE `usercarts` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usercarts`
--

INSERT INTO `usercarts` (`id`, `userID`, `productID`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(2, 11, 9, 1, 0, '2019-05-25 05:59:30', '2019-05-25 05:59:30'),
(3, 11, 6, 1, 0, '2019-05-25 06:08:26', '2019-05-25 06:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateOfBirth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role` int(11) NOT NULL DEFAULT '0',
  `confirm` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `avatar`, `sex`, `status`, `dateOfBirth`, `role`, `confirm`, `confirmation_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đặng Hoàng Ân', 'an@gmail.com', '123456', '0123456789', 'Hà Nội', '256-512.png', 1, 1, '2019-05-25 15:08:19', 0, 1, NULL, NULL, NULL, NULL),
(2, 'Chu Chỉ Nhược', 'ccn@gmail.com', '123456', '0123456789', 'Trung Quốc', '256-512.png', 0, 1, '2019-05-25 15:08:23', 0, 1, NULL, NULL, NULL, NULL),
(6, 'Hoang An', '1610132@hcmut.edu.vn', '$2y$10$CCV9rISZJo2ZgmW4E0gz2OYUnsW5USZEBVhaZKvgHqsLOhvcMtdve', '0383998672', 'KTX khu A ĐHQG Thành phố Hồ Chí Minh', '1558153025.jpg', 1, 1, '2019-05-26 03:49:47', 0, 1, NULL, 'NIzwtQSEdQqNrJDq7uO7JwAfOk3AXQ5htmfXLTC926fVzuRqGhRrQFsK7UqN', '2019-04-28 08:52:38', '2019-05-17 22:06:42'),
(9, 'Đặng Hoàng Ân', '16101322@hcmut.edu.vn', '$2y$10$laGqrtRqnX2JNT.tLEmK3e5GW7GaLnw15I9qzTnzLv/SgLqsKN/52', '0383998672', 'HCMC', '256-512.png', 1, 1, '2019-05-25 15:08:29', 0, 1, NULL, 'Zu5sDlevuWpEU0qfXjEFWbtPQ6RUdpkdcTSJCb3y', '2019-04-28 09:20:38', '2019-04-28 09:20:38'),
(10, 'Huỳnh Yến Nhi', 'nhihuynh@gmail.com', '$2y$10$xnL635mT9tfE0wb./6GiL..8w8ZDOy19yhF1kKhQxAv2MFTB4dl06', '0987654321', 'Nha Trang', '256-512.png', 0, 1, '2019-05-25 15:08:32', 0, 1, NULL, 'dLJMHorrjEhMX60WCMWAVb5DRAY82iZxKLDrxJzhFlWrnWgzlBPeuEzuoqSl', '2019-04-28 09:22:11', '2019-05-16 02:50:54'),
(11, 'Ricardo KaKa', 'rikaka@gmail.com', '$2y$10$NGT6wIUp/PeMB2SJDKX6MOz/0ZOGLOf3H0EPMSmq91NAwXlaLoapu', '0123456789', 'Brazil', '256-512.png', 1, 1, '2019-05-25 15:08:34', 0, 1, NULL, 'Ph7bA2qdDui5CACCiiZzJzBz6PnimUfwWsEQlWD8EePV9btn9XIBx3bAiGhB', '2019-05-13 08:13:02', '2019-05-25 06:13:43'),
(12, 'Alexandre Pato', 'patomilan@gmail.com', '$2y$10$YD46bymUhJvPs8qFRj7kCODOpJM4PqYagOXxeVy7a2hueP/MunLDe', '0987654321', 'Brazil', '256-512.png', 1, 1, '2019-05-25 15:08:37', 0, 1, NULL, 'WvefpgAz0uRI48s8kPUJLrcnTpSK7QPqjW2cQIZGi86BT4Hqa9D6PimyOWR8', '2019-05-17 20:37:12', '2019-05-17 20:37:12'),
(13, 'Kuroba Kaitou', 'kaitoukido1412@gmail.com', '$2y$10$947kwE7b3y1Y1g89PbKp6u8Kpz68Q4VoV.BsOonevU1oUii.C.BjO', '0123456789', 'Tokio, Japan', '256-512.png', 1, 1, '2019-05-25 15:08:40', 0, 1, NULL, 'db4rsehqM1qg714QaQXbcpk4Z6WBMhrNWJQJEdItYEkEIi403xTMrTXXkC27', '2019-05-17 20:39:18', '2019-05-17 20:39:18'),
(14, 'Supreme Admin', 'andang12111998@gmail.com', '$2y$10$c/W1WP0uYm9EgEKE/LFuzOcgZz4BXXbuU55N.OKM3BL/QQVOOm0FC', '0383998672', 'Nha Trang', '256-512.png', 1, 1, '2019-05-26 02:53:19', 1, 1, NULL, 'VhppLZ4xZcDhlPxg67S34VsYeePqa7kpyUGXrTZtvNQB3gBiQ0iwdtpPf1fl', '2019-05-23 21:22:06', '2019-05-23 21:22:06'),
(23, 'Kudo Shinichi', 'phantomkaitoukido1412@gmail.com', '$2y$10$uwTVZyluTLdYIVjZuYMpM.ShmDvLJLVJikpby1YbQ6SHHSP8K.r6G', '0383998672', 'Bieka, Tokio, Japan', '256-512.png', 1, 1, '2019-05-26 04:18:14', 0, 1, NULL, 'fvt1U4le1XFWpjb7bnXJXWR3sRrHAUunErbx21m0AdCz48Cl89WUdJduRdT0', '2019-05-25 20:50:12', '2019-05-25 20:52:39'),
(24, 'dien', '1610179@hcmut.edu.vn', '$2y$10$6W92TxH/5p2rrpLZooTPquB85H9oYyV8HYJHpu91D8jXyGmzr/a32', '0123456789', 'HCMC', '256-512.png', 1, 1, '2019-05-26 04:20:26', 0, 1, NULL, 'i63q2lgtdUBj8VpIwoYOHKTvrnlwpLjKl6MsKO54', '2019-05-25 21:19:05', '2019-05-25 21:20:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_userid_foreign` (`userID`),
  ADD KEY `comments_productid_foreign` (`productID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_userid_foreign` (`userID`),
  ADD KEY `notifications_customerid_foreign` (`customerID`),
  ADD KEY `notifications_orderid_foreign` (`orderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_userid_foreign` (`userID`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_productid_foreign` (`productID`),
  ADD KEY `order_detail_oderid_foreign` (`oderID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sellerid_foreign` (`sellerID`),
  ADD KEY `products_cateid_foreign` (`cateID`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_index` (`user_id`);

--
-- Indexes for table `usercarts`
--
ALTER TABLE `usercarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usercarts_userid_foreign` (`userID`),
  ADD KEY `usercarts_productid_foreign` (`productID`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usercarts`
--
ALTER TABLE `usercarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_customerid_foreign` FOREIGN KEY (`customerID`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_orderid_foreign` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_oderid_foreign` FOREIGN KEY (`oderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_detail_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cateid_foreign` FOREIGN KEY (`cateID`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sellerid_foreign` FOREIGN KEY (`sellerID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `usercarts`
--
ALTER TABLE `usercarts`
  ADD CONSTRAINT `usercarts_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usercarts_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
