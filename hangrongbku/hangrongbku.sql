-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 19, 2019 lúc 02:46 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hangrongbku`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
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
-- Cấu trúc bảng cho bảng `comments`
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
-- Đang đổ dữ liệu cho bảng `comments`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `notifications`
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
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `userID`, `customerID`, `orderID`, `isNew`, `isDone`, `created_at`, `updated_at`) VALUES
(1, 6, 10, 40, 1, 0, '2019-05-13 08:11:48', '2019-05-13 08:11:48'),
(2, 6, 11, 41, 1, 0, '2019-05-13 08:13:35', '2019-05-13 08:13:35'),
(3, 1, 11, 42, 1, 0, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(4, 6, 12, 43, 1, 0, '2019-05-19 05:32:58', '2019-05-19 05:32:58'),
(5, 12, 13, 44, 0, 1, '2019-05-19 05:35:53', '2019-05-19 05:35:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
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
-- Đang đổ dữ liệu cho bảng `orders`
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
(42, '2019-05-13 17:20:40', 11, 40045000, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(43, '2019-05-19 12:32:58', 12, 600000, '2019-05-19 05:32:58', '2019-05-19 05:32:58'),
(44, '2019-05-19 12:35:53', 13, 10, '2019-05-19 05:35:53', '2019-05-19 05:35:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
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
-- Đang đổ dữ liệu cho bảng `order_detail`
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
(31, 6, 10000000, 4, 42, '2019-05-13 10:20:40', '2019-05-13 10:20:40'),
(32, 2, 200000, 3, 43, '2019-05-19 05:32:58', '2019-05-19 05:32:58'),
(33, 10, 10, 1, 44, '2019-05-19 05:35:53', '2019-05-19 05:35:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
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
  `numStar` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `sellerID`, `price`, `description`, `cateID`, `status`, `lastTime`, `quantity`, `numRate`, `image`, `created_at`, `updated_at`, `numStar`) VALUES
(1, 'Quần em bé', 6, 200000, '<p><strong>aaaaaaaaaaaaaaaaaaaaaa</strong></p>', 1, 1, '2019-05-19 12:40:56', 15, 0, 'quan-thun-be-gai-ngan-concung-g017008.jpg', NULL, NULL, 0),
(2, 'Áo sân nhà milan', 6, 200000, 'áo đẹp', 1, 1, '2019-05-19 12:42:15', 164, 3, 'Ao-ac-milan-san-nha-1-300x300.jpg', NULL, NULL, 13),
(6, 'Đồng hồ Rolex', 2, 10000000, 'hello', 4, 1, '2019-05-19 12:41:02', 1095, 0, 'UploadsNewsoyster-perpetual-118348-day-date-36png_540_660.jpg', NULL, NULL, 0),
(7, 'Cơm sườn 15k', 1, 15000, 'Cơm sườn chất lượng đảm bảo ngon hơn ktx, tặng kèm canh và cơm thêm nếu muốn.', 7, 1, '2019-05-19 12:41:04', 97, 0, 'cach-uop-thit-nuong-com-tam.jpg', NULL, NULL, 0),
(8, 'LOGO', 6, 20000, '<p>Logo ac</p>', 1, 1, '2019-05-19 12:41:08', 50, 0, '1557539007.jpg', '2019-05-10 18:43:27', '2019-05-10 18:43:27', 0),
(9, 'Dầu gội X-men', 6, 40000, '<h2>Dầu gội hương nước hoa X-Men Active 180g lấy cảm hứng từ oải hương v&agrave; gỗ tuyết t&ugrave;ng cho bạn cảm gi&aacute;c m&aacute;t lạnh, sảng kho&aacute;i v&agrave; đầy c&aacute; t&iacute;nh , c&ocirc;ng thức độc đ&aacute;o từ dầu gội sẽ mang đến cho bạn m&aacute;i t&oacute;c khỏe mạnh v&agrave; sạch da đầu.</h2>', 12, 1, '2019-05-19 12:41:10', 21, 0, '1557745507.jpg', '2019-05-13 04:05:07', '2019-05-13 04:05:07', 0),
(10, 'Code', 12, 10, '<p>Ko co gi de mo ta</p>', 1, 1, '2019-05-19 12:44:10', 0, 2, '1558269282.png', '2019-05-19 05:34:42', '2019-05-19 05:34:42', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usercarts`
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
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `avatar`, `sex`, `status`, `dateOfBirth`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đặng Hoàng Ân', 'an@gmail.com', '123456', '0123456789', 'Hà Nội', NULL, 1, 1, '1998-11-11 17:00:00', NULL, NULL, NULL),
(2, 'Chu Chỉ Nhược', 'ccn@gmail.com', '123456', '0123456789', 'Trung Quốc', NULL, 0, 1, '2019-04-16 17:00:00', NULL, NULL, NULL),
(6, 'Hoang An', '1610132@hcmut.edu.vn', '$2y$10$CCV9rISZJo2ZgmW4E0gz2OYUnsW5USZEBVhaZKvgHqsLOhvcMtdve', '0383998672', 'HCMCaaaaaaaaaaaaaaaaaaaaa', NULL, 1, 1, '2019-05-13 15:11:34', 'Z7jPvnvG7L9qly9EbFf0gRE3VZi0kksCsUgq0ZML5kk8q9pRkc4YYUTDMktZ', '2019-04-28 08:52:38', '2019-05-10 17:22:32'),
(9, 'Đặng Hoàng Ân', '16101322@hcmut.edu.vn', '$2y$10$laGqrtRqnX2JNT.tLEmK3e5GW7GaLnw15I9qzTnzLv/SgLqsKN/52', '0383998672', 'HCMC', NULL, 1, 1, '2019-04-16 17:00:00', 'Zu5sDlevuWpEU0qfXjEFWbtPQ6RUdpkdcTSJCb3y', '2019-04-28 09:20:38', '2019-04-28 09:20:38'),
(10, 'Huỳnh Yến Nhi', 'nhihuynh@gmail.com', '$2y$10$xnL635mT9tfE0wb./6GiL..8w8ZDOy19yhF1kKhQxAv2MFTB4dl06', '0987654321', 'Nha Trang', NULL, 0, 1, '2019-05-13 15:11:57', 'eq2rAPAU5YhxvXVpxSNlrCKqUe0mGWeplkov27nIfUiRAAEYTrPTe2Ws2iD4', '2019-04-28 09:22:11', '2019-04-28 09:22:11'),
(11, 'Ricardo KaKa', 'rikaka@gmail.com', '$2y$10$NGT6wIUp/PeMB2SJDKX6MOz/0ZOGLOf3H0EPMSmq91NAwXlaLoapu', '0123456789', 'Brazil', NULL, 1, 1, '2019-05-08 17:00:00', 'CcM9mINjZsY5PYlvKGCypzoZO3FBKLddpHGvOS34', '2019-05-13 08:13:02', '2019-05-13 08:13:02'),
(12, 'Thoai', 'thoai@gmail.com', '$2y$10$X44ZgWB.lkIgMZaaetwZJ.r6mpqHGRBzRDIuKbFpPS5a8vwWjShFW', '033433434343', 'Quan 2', '256-512.png', 1, 1, '2019-05-19 12:43:51', 'zbMopwDi6IDZKUAwtEy6U3axAMslx1gGyKc7Z96krjmCKJ3NtdXJjz7WhALP', '2019-05-19 05:25:44', '2019-05-19 05:25:44'),
(13, 'Trung', 'trung@gmail.com', '$2y$10$zwYhuM3StLq43e7v32Z7L.NuOT/WqJCrY41oj5SA6H7zX0O2YoVxW', '3434343434343', 'Quan 2', '256-512.png', 1, 1, '2019-05-19 12:35:56', 'eRQS0DIPogOvGEwkvIYuJ71vip91lCBXfHjpwEzH3tFU4Pzmj0JBJmjGVNgI', '2019-05-19 05:35:13', '2019-05-19 05:35:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_userid_foreign` (`userID`),
  ADD KEY `comments_productid_foreign` (`productID`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_userid_foreign` (`userID`),
  ADD KEY `notifications_customerid_foreign` (`customerID`),
  ADD KEY `notifications_orderid_foreign` (`orderID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_productid_foreign` (`productID`),
  ADD KEY `order_detail_oderid_foreign` (`oderID`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sellerid_foreign` (`sellerID`),
  ADD KEY `products_cateid_foreign` (`cateID`);

--
-- Chỉ mục cho bảng `usercarts`
--
ALTER TABLE `usercarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usercarts_userid_foreign` (`userID`),
  ADD KEY `usercarts_productid_foreign` (`productID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `usercarts`
--
ALTER TABLE `usercarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_customerid_foreign` FOREIGN KEY (`customerID`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_orderid_foreign` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_oderid_foreign` FOREIGN KEY (`oderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_detail_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cateid_foreign` FOREIGN KEY (`cateID`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sellerid_foreign` FOREIGN KEY (`sellerID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `usercarts`
--
ALTER TABLE `usercarts`
  ADD CONSTRAINT `usercarts_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usercarts_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
