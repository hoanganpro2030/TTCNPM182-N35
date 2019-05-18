-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2019 at 04:23 PM
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
(19, 'Lò vi sóng', NULL, NULL);

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
(6, 6, 2, '<p><strong>Ao dep qua</strong></p>', '2019-05-08 20:10:55', '2019-05-08 20:10:55');

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
(19, '2019_05_10_233523_create_notifications_table', 4);

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
(1, 6, 10, 40, 1, 0, '2019-05-13 08:11:48', '2019-05-13 08:11:48'),
(2, 6, 11, 41, 1, 0, '2019-05-13 08:13:35', '2019-05-13 08:13:35'),
(3, 1, 11, 42, 1, 0, '2019-05-13 10:20:40', '2019-05-13 10:20:40');

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
(1, '2019-05-10 18:59:45', 6, 21300000, '2019-05-10 11:59:45', '2019-05-10 11:59:45'),
(2, '2019-05-10 19:15:50', 6, 41300000, '2019-05-10 12:15:50', '2019-05-10 12:15:50'),
(3, '2019-05-10 22:02:53', 6, 40045000, '2019-05-10 15:02:53', '2019-05-10 15:02:53'),
(4, '2019-05-10 23:22:23', 6, 80060000, '2019-05-10 16:22:23', '2019-05-10 16:22:23'),
(5, '2019-05-11 00:31:41', 6, 60000, '2019-05-10 17:31:41', '2019-05-10 17:31:41'),
(6, '2019-05-11 00:31:57', 6, 60000, '2019-05-10 17:31:57', '2019-05-10 17:31:57'),
(7, '2019-05-11 00:44:41', 6, 10000000, '2019-05-10 17:44:41', '2019-05-10 17:44:41'),
(8, '2019-05-11 01:34:32', 6, 10000000, '2019-05-10 18:34:32', '2019-05-10 18:34:32'),
(9, '2019-05-11 01:44:08', 10, 80000, '2019-05-10 18:44:08', '2019-05-10 18:44:08'),
(10, '2019-05-13 11:46:15', 10, 200000, '2019-05-13 04:46:15', '2019-05-13 04:46:15'),
(11, '2019-05-13 11:48:27', 6, 20000000, '2019-05-13 04:48:27', '2019-05-13 04:48:27'),
(12, '2019-05-13 11:49:24', 10, 140000, '2019-05-13 04:49:24', '2019-05-13 04:49:24'),
(13, '2019-05-13 11:50:53', 6, 10000000, '2019-05-13 04:50:53', '2019-05-13 04:50:53'),
(14, '2019-05-13 11:52:44', 6, 10000000, '2019-05-13 04:52:44', '2019-05-13 04:52:44'),
(15, '2019-05-13 11:59:06', 10, 30640000, '2019-05-13 04:59:06', '2019-05-13 04:59:06'),
(16, '2019-05-13 11:59:41', 10, 200000, '2019-05-13 04:59:41', '2019-05-13 04:59:41'),
(38, '2019-05-13 12:43:16', 10, 200000, '2019-05-13 05:43:16', '2019-05-13 05:43:16'),
(39, '2019-05-13 12:45:59', 10, 200000, '2019-05-13 05:45:59', '2019-05-13 05:45:59'),
(40, '2019-05-13 15:11:48', 10, 40000, '2019-05-13 08:11:48', '2019-05-13 08:11:48'),
(41, '2019-05-13 15:13:35', 11, 1000000, '2019-05-13 08:13:35', '2019-05-13 08:13:35'),
(42, '2019-05-13 17:20:40', 11, 40045000, '2019-05-13 10:20:40', '2019-05-13 10:20:40');

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
(1, 1, 200000, 4, 1, '2019-05-10 11:59:45', '2019-05-10 11:59:45'),
(3, 2, 500000, 1, 1, '2019-05-10 11:59:45', '2019-05-10 11:59:45'),
(4, 1, 200000, 4, 2, '2019-05-10 12:15:50', '2019-05-10 12:15:50'),
(6, 2, 500000, 1, 2, '2019-05-10 12:15:50', '2019-05-10 12:15:50'),
(7, 7, 15000, 3, 3, '2019-05-10 15:02:53', '2019-05-10 15:02:53'),
(8, 6, 10000000, 4, 3, '2019-05-10 15:02:53', '2019-05-10 15:02:53'),
(9, 7, 15000, 4, 4, '2019-05-10 16:22:23', '2019-05-10 16:22:23'),
(10, 6, 10000000, 8, 4, '2019-05-10 16:22:23', '2019-05-10 16:22:23'),
(11, 7, 15000, 4, 5, '2019-05-10 17:31:42', '2019-05-10 17:31:42'),
(12, 7, 15000, 4, 6, '2019-05-10 17:31:57', '2019-05-10 17:31:57'),
(13, 6, 10000000, 1, 7, '2019-05-10 17:44:41', '2019-05-10 17:44:41'),
(14, 6, 10000000, 1, 8, '2019-05-10 18:34:32', '2019-05-10 18:34:32'),
(15, 8, 20000, 4, 9, '2019-05-10 18:44:08', '2019-05-10 18:44:08'),
(16, 9, 40000, 5, 10, '2019-05-13 04:46:16', '2019-05-13 04:46:16'),
(17, 6, 10000000, 2, 11, '2019-05-13 04:48:27', '2019-05-13 04:48:27'),
(18, 9, 40000, 2, 12, '2019-05-13 04:49:24', '2019-05-13 04:49:24'),
(19, 8, 20000, 3, 12, '2019-05-13 04:49:25', '2019-05-13 04:49:25'),
(20, 6, 10000000, 1, 13, '2019-05-13 04:50:53', '2019-05-13 04:50:53'),
(21, 6, 10000000, 1, 14, '2019-05-13 04:52:44', '2019-05-13 04:52:44'),
(22, 6, 10000000, 3, 15, '2019-05-13 04:59:06', '2019-05-13 04:59:06'),
(23, 9, 40000, 1, 15, '2019-05-13 04:59:06', '2019-05-13 04:59:06'),
(24, 2, 200000, 3, 15, '2019-05-13 04:59:06', '2019-05-13 04:59:06'),
(25, 2, 200000, 1, 16, '2019-05-13 04:59:41', '2019-05-13 04:59:41'),
(26, 2, 200000, 1, 38, '2019-05-13 05:43:16', '2019-05-13 05:43:16'),
(27, 2, 200000, 1, 39, '2019-05-13 05:45:59', '2019-05-13 05:45:59'),
(28, 9, 40000, 1, 40, '2019-05-13 08:11:48', '2019-05-13 08:11:48'),
(29, 1, 200000, 5, 41, '2019-05-13 08:13:35', '2019-05-13 08:13:35'),
(30, 7, 15000, 3, 42, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(31, 6, 10000000, 4, 42, '2019-05-13 10:20:40', '2019-05-13 10:20:40');

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
  `numRate` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sellerID`, `price`, `description`, `cateID`, `status`, `lastTime`, `quantity`, `numRate`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Quần em bé', 6, 200000, '<p><strong>aaaaaaaaaaaaaaaaaaaaaa</strong></p>', 1, 1, '2019-05-13 15:13:32', 15, NULL, 'quan-thun-be-gai-ngan-concung-g017008.jpg', NULL, NULL),
(2, 'Áo sân nhà milan', 6, 200000, 'áo đẹp', 1, 1, '2019-05-13 12:45:57', 167, NULL, 'Ao-ac-milan-san-nha-1-300x300.jpg', NULL, NULL),
(6, 'Đồng hồ Rolex', 2, 10000000, 'hello', 4, 1, '2019-05-13 17:20:24', 1095, NULL, 'UploadsNewsoyster-perpetual-118348-day-date-36png_540_660.jpg', NULL, NULL),
(7, 'Cơm sườn 15k', 1, 15000, 'Cơm sườn chất lượng đảm bảo ngon hơn ktx, tặng kèm canh và cơm thêm nếu muốn.', 7, 1, '2019-05-13 17:20:02', 97, NULL, 'cach-uop-thit-nuong-com-tam.jpg', NULL, NULL),
(8, 'LOGO', 6, 20000, '<p>Logo ac</p>', 1, 1, '2019-05-13 11:53:32', 50, 0, '1557539007.jpg', '2019-05-10 18:43:27', '2019-05-10 18:43:27'),
(9, 'Dầu gội X-men', 6, 40000, '<h2>Dầu gội hương nước hoa X-Men Active 180g lấy cảm hứng từ oải hương v&agrave; gỗ tuyết t&ugrave;ng cho bạn cảm gi&aacute;c m&aacute;t lạnh, sảng kho&aacute;i v&agrave; đầy c&aacute; t&iacute;nh , c&ocirc;ng thức độc đ&aacute;o từ dầu gội sẽ mang đến cho bạn m&aacute;i t&oacute;c khỏe mạnh v&agrave; sạch da đầu.</h2>', 12, 1, '2019-05-13 15:11:45', 21, 0, '1557745507.jpg', '2019-05-13 04:05:07', '2019-05-13 04:05:07');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `avatar`, `sex`, `status`, `dateOfBirth`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đặng Hoàng Ân', 'an@gmail.com', '123456', '0123456789', 'Hà Nội', NULL, 1, 1, '1998-11-11 17:00:00', NULL, NULL, NULL),
(2, 'Chu Chỉ Nhược', 'ccn@gmail.com', '123456', '0123456789', 'Trung Quốc', NULL, 0, 1, '2019-04-16 17:00:00', NULL, NULL, NULL),
(6, 'Hoang An', '1610132@hcmut.edu.vn', '$2y$10$CCV9rISZJo2ZgmW4E0gz2OYUnsW5USZEBVhaZKvgHqsLOhvcMtdve', '0383998672', 'HCMCaaaaaaaaaaaaaaaaaaaaa', NULL, 1, 1, '2019-05-13 15:11:34', 'Z7jPvnvG7L9qly9EbFf0gRE3VZi0kksCsUgq0ZML5kk8q9pRkc4YYUTDMktZ', '2019-04-28 08:52:38', '2019-05-10 17:22:32'),
(9, 'Đặng Hoàng Ân', '16101322@hcmut.edu.vn', '$2y$10$laGqrtRqnX2JNT.tLEmK3e5GW7GaLnw15I9qzTnzLv/SgLqsKN/52', '0383998672', 'HCMC', NULL, 1, 1, '2019-04-16 17:00:00', 'Zu5sDlevuWpEU0qfXjEFWbtPQ6RUdpkdcTSJCb3y', '2019-04-28 09:20:38', '2019-04-28 09:20:38'),
(10, 'Huỳnh Yến Nhi', 'nhihuynh@gmail.com', '$2y$10$xnL635mT9tfE0wb./6GiL..8w8ZDOy19yhF1kKhQxAv2MFTB4dl06', '0987654321', 'Nha Trang', NULL, 0, 1, '2019-05-13 15:11:57', 'eq2rAPAU5YhxvXVpxSNlrCKqUe0mGWeplkov27nIfUiRAAEYTrPTe2Ws2iD4', '2019-04-28 09:22:11', '2019-04-28 09:22:11'),
(11, 'Ricardo KaKa', 'rikaka@gmail.com', '$2y$10$NGT6wIUp/PeMB2SJDKX6MOz/0ZOGLOf3H0EPMSmq91NAwXlaLoapu', '0123456789', 'Brazil', NULL, 1, 1, '2019-05-08 17:00:00', 'CcM9mINjZsY5PYlvKGCypzoZO3FBKLddpHGvOS34', '2019-05-13 08:13:02', '2019-05-13 08:13:02');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usercarts`
--
ALTER TABLE `usercarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Constraints for table `usercarts`
--
ALTER TABLE `usercarts`
  ADD CONSTRAINT `usercarts_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usercarts_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
