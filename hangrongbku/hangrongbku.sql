-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2019 at 01:39 AM
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
(7, 'Đồ ăn', NULL, NULL);

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
(15, '2019_04_13_150439_create_usercarts_table', 3);

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
(4, '2019-05-10 23:22:23', 6, 80060000, '2019-05-10 16:22:23', '2019-05-10 16:22:23');

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
(10, 6, 10000000, 8, 4, '2019-05-10 16:22:23', '2019-05-10 16:22:23');

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
  `lastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
(1, 'Quần em bé', 6, 200000, 'áo đẹp', 1, 1, '2019-05-10 23:11:06', 20, NULL, 'quan-thun-be-gai-ngan-concung-g017008.jpg', NULL, NULL),
(2, 'Áo sân nhà milan', 6, 200000, 'áo đẹp', 1, 1, '2019-05-10 23:14:39', 20, NULL, 'Ao-ac-milan-san-nha-1-300x300.jpg', NULL, NULL),
(6, 'Đồng hồ Rolex', 2, 10000000, 'hello', 4, 1, '2019-05-10 23:22:17', 1, NULL, 'UploadsNewsoyster-perpetual-118348-day-date-36png_540_660.jpg', NULL, NULL),
(7, 'Cơm sườn 15k', 1, 15000, 'Cơm sườn chất lượng đảm bảo ngon hơn ktx, tặng kèm canh và cơm thêm nếu muốn.', 7, 1, '2019-05-10 22:14:35', 0, NULL, 'cach-uop-thit-nuong-com-tam.jpg', NULL, NULL);

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
(21, 10, 7, 1, 0, '2019-05-04 06:05:21', '2019-05-04 06:05:21'),
(22, 10, 6, 1, 0, '2019-05-04 06:05:53', '2019-05-04 06:05:53'),
(23, 10, 2, 1, 0, '2019-05-04 06:07:45', '2019-05-04 06:07:45'),
(27, 6, 7, 4, 0, '2019-05-10 14:49:54', '2019-05-10 14:49:54'),
(28, 6, 6, 8, 0, '2019-05-10 15:02:33', '2019-05-10 15:02:33');

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
(6, 'Hoang An', '1610132@hcmut.edu.vn', '$2y$10$CCV9rISZJo2ZgmW4E0gz2OYUnsW5USZEBVhaZKvgHqsLOhvcMtdve', '0383998672', 'HCMCaaaaaaaaaaaaaaaaaaa', NULL, 1, 1, '2019-05-10 20:55:27', 'qXj5F6eg3ReBbuLuIVsNhNxaH4RaDAtd81jOQR9GUEbb6skAOgT79TexxXQm', '2019-04-28 08:52:38', '2019-05-10 13:55:27'),
(9, 'Đặng Hoàng Ân', '16101322@hcmut.edu.vn', '$2y$10$laGqrtRqnX2JNT.tLEmK3e5GW7GaLnw15I9qzTnzLv/SgLqsKN/52', '0383998672', 'HCMC', NULL, 1, 1, '2019-04-16 17:00:00', 'Zu5sDlevuWpEU0qfXjEFWbtPQ6RUdpkdcTSJCb3y', '2019-04-28 09:20:38', '2019-04-28 09:20:38'),
(10, 'Huỳnh Yến Nhi', 'nhihuynh@gmail.com', '$2y$10$xnL635mT9tfE0wb./6GiL..8w8ZDOy19yhF1kKhQxAv2MFTB4dl06', '0987654321', 'Nha Trang', NULL, 0, 1, '2019-04-28 17:22:24', 't4zEuFn9LvVb5D25EadYQ2DHkeuZ9e6PLIeiNrEIPM9WQfZrTdC2ESsq7dnE', '2019-04-28 09:22:11', '2019-04-28 09:22:11');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usercarts`
--
ALTER TABLE `usercarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
