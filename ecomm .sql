-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 02:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `name`, `imagePath`, `created_at`, `updated_at`) VALUES
(1, 'Phone', 'phone.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(2, 'Laptop', 'laptop.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(3, 'Watch', 'watch.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(4, 'Headphones', 'headphones.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(5, 'Powerbank', 'powerbank.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(6, 'Camera', 'camera.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(7, 'Tablet', 'tablet.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(8, 'Television', 'television.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(9, 'Pendrive', 'pendrive.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(10, 'Speaker', 'speaker.png', '2023-01-26 07:09:36', '2023-01-26 07:09:36'),
(11, 'Accessories', 'Accessories.png', '2023-01-26 07:31:57', '2023-01-26 07:31:57'),
(12, 'Smarthome', 'Smarthome.png', '2023-01-26 07:32:11', '2023-01-26 07:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Dev', 'dev@gmail.com', '8469352100', 'Test Message', '2023-01-24 11:03:09', '2023-01-24 11:03:09'),
(2, 'Vatsal', 'vatsal@gmail.com', '1234567890', 'Test Message 2', '2023-01-24 11:03:59', '2023-01-24 11:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Dev', 'dev@gmail.com', '8469352100', 'Test Message', '2023-01-24 11:05:28', '2023-01-24 11:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `forgotpassword`
--

CREATE TABLE `forgotpassword` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forgotpassword`
--

INSERT INTO `forgotpassword` (`id`, `userId`, `otp`, `created_at`, `updated_at`) VALUES
(1, 2, '9832', '2023-01-24 00:16:47', '2023-01-24 00:16:47'),
(2, 2, '8792', '2023-01-24 00:17:23', '2023-01-24 00:17:23'),
(3, 2, '9655', '2023-01-24 00:18:06', '2023-01-24 00:18:06'),
(4, 2, '2413', '2023-01-24 00:18:18', '2023-01-24 00:18:18'),
(5, 2, '5994', '2023-01-24 00:28:24', '2023-01-24 00:28:24'),
(6, 2, '5276', '2023-01-24 00:29:11', '2023-01-24 00:29:11'),
(7, 2, '6351', '2023-01-24 00:30:48', '2023-01-24 00:30:48'),
(8, 8, '5365', '2023-01-28 22:52:23', '2023-01-28 22:52:23'),
(9, 8, '8763', '2023-01-28 22:57:48', '2023-01-28 22:57:48'),
(10, 8, '1873', '2023-01-28 23:05:07', '2023-01-28 23:05:07'),
(11, 8, '3176', '2023-01-28 23:07:44', '2023-01-28 23:07:44'),
(12, 8, '4459', '2023-01-28 23:09:45', '2023-01-28 23:09:45'),
(13, 8, '1402', '2023-01-29 01:43:19', '2023-01-29 01:43:19'),
(14, 8, '3632', '2023-01-29 03:12:34', '2023-01-29 03:12:34'),
(15, 2, '4108', '2023-02-21 08:25:33', '2023-02-21 08:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_01_11_082958_category', 2),
(4, '2023_01_18_175101_admins', 3),
(5, '2023_01_18_182325_users', 4),
(6, '2023_01_20_043011_users', 5),
(7, '2023_01_23_122930_contact', 6),
(8, '2023_01_23_122940_feedback', 6),
(9, '2023_01_24_040153_forgot_password', 7),
(10, '2023_01_24_160914_feedback', 8),
(11, '2023_01_24_160924_contact', 8),
(12, '2023_01_26_123649_categories', 9),
(13, '2023_01_26_123905_categories', 10),
(14, '2023_01_26_132855_products', 11),
(15, '2023_01_27_162825_products', 12),
(16, '2023_01_28_043405_wishlist', 13),
(17, '2023_01_28_101037_cart', 14);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` bigint(20) UNSIGNED NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `categoryId`, `name`, `imagePath`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Apple iPhone 14 Pro', 'phone1.png', '128 GB Rom, 6.1 InchSuper Retina XDR Display, 48MP+12MP+12MP+12MP|12MP Front Camera, A16 Bionic Chip, 6 Core Processor Processor', 120000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(2, 1, 'Pixel 7', 'phone2.png', '8 GB RAM | 128 GB ROM, 6.3 Inch Full HD+ Display, 50MP+12MP|10.8MP Front Camera, 4270 mAh Battery, Google Tensor G2 Processor', 55000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(3, 1, 'Motorola Edge 30', 'phone3.png', '8 GB RAM | 128 GB ROM, 6.55 Inch Full HD+ Display, 50MP+50MP+2MP|32MP Front Camera, 4020 mAh Lithium Battery, Qualcomm Snapdragon 778G+ Processor', 22000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(4, 1, 'Nothing Phone 1', 'phone4.png', '8 GB RAM | 128 GB ROM, 6.55 Inch Full HD+ Display, 50MP+50MP|16MP Front Camera, 4500 mAh Lithium-ion Battery, Qualcomm Snapdragon 778G+ Processor', 28000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(5, 2, 'Apple Macbook Pro ', 'laptop1.png', 'M1, 16 GB/1 TB SSD, Mac OS Monterey, 16.2 Inch, Space Grey, 2.1 kg', 240000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(6, 2, 'Microsoft Surface 3', 'laptop2.png', 'i5 10th Gen, 8 GB/128 GB SSD, Windows 10 Home, 13 Inch, Platinum, 1.27 kg', 100000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(7, 2, 'Dell Inspiron 5410 ', 'laptop3.png', 'i5 11th Gen, 8 GB/512 GB SSD, Windows 11 Home, 14 Inch, Platinum Silver, 1.5 Kg', 72000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(8, 2, 'Hp Envy x360', 'laptop4.png', 'Ryzen 5 4500U, 8 GB/512 GB SSD, Windows 10 Home, 13.3 Inch, Night Fall Black, 1.32 kg', 80000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(9, 3, 'Apple Watch Series 8 ', 'watch1.png', 'Graphite Milanese Strap, Regular', 85000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(10, 3, 'Amazfit GTR 2', 'watch2.png', 'Black Strap, Free Size', 8000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(11, 3, 'Samsung Watch 4 ', 'watch3.png', 'Black Strap, Free Size', 12000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(12, 3, 'Noise ColorFit Vision 2', 'watch4.png', 'Black Strap, Regular', 4000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(13, 4, 'Apple Airpods 3rd Gen ', 'headphones1.png', 'White, True Wireless', 19000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(14, 4, 'Apple Airpods Max', 'headphones2.png', 'Space Grey, On the Ear', 60000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(15, 4, 'OnePlus Bullets Wireless Z2 ', 'headphones3.png', 'Magico Black, In the Ear', 2000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(16, 4, 'Opp Enco Buds 2', 'headphones4.png', 'Midnight, True Wireless', 2000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(17, 5, 'Ambrane 10000 mAh', 'powerbank1.png', '20W, Quick Charge 3.0, Power Delivery 2.0', 1000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(18, 5, 'Realme 10000 mAh', 'powerbank2.png', '12W, Fast Charging', 1400, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(19, 5, 'Mi 10000 mAh Wireless', 'powerbank3.png', '22.5W, Fast Charging', 2500, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(20, 5, 'ORAIMO 10000 mAh', 'powerbank4.png', '(12W, Fast Charging', 850, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(21, 6, 'Canon EOS 3000D', 'camera1.png', '18-55mm Lens', 28000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(22, 6, 'Canon EOS 200D II', 'camera2.png', 'EF-S 18-55mm IS STM', 55000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(23, 6, 'Sony Alpha', 'camera3.png', 'ILCE-6100 APS-C , Effective Pixels: 24.2 MP Mirrorless Camera, 4K Movie Recording ', 57000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(24, 6, 'Sony Alpha Full Frame ', 'camera4.png', 'ILCE-7M2K/BQ IN5, 28-70 mm Lens', 85000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(25, 7, 'Apple iPad Pro', 'tablet1.png', '128 GB ROM, 11.0 Inch, Wi-Fi, Space Grey', 78000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(26, 7, 'Samsung Galaxy Tab S7+', 'tablet2.png', '6 GB RAM/128 GB ROM, 12.4 Inch, Wi-Fi, Mystic Black', 48000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(27, 7, 'Apple iPad Air ', 'tablet3.png', '64 GB ROM, 10.9 Inch, Wi-Fi, Space Grey', 49000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(28, 7, 'Realme Pad X', 'tablet4.png', '6 GB RAM/128 GB ROM, 11 Inch, Wi-Fi+5G, Glowing Grey', 28000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(29, 8, 'Mi Q1', 'television1.png', '138.8 cm, 55 Inch QLED Ultra HD (4K) Smart Android TV Dolby Vision & 30W Dolby Audio', 60000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(30, 8, 'Samsung Crystal 4K ', 'television2.png', '108cm, 43 Inch Ultra HD 4K LED Smart TizenTV', 31000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(31, 8, 'Realme Ultra HD', 'television3.png', '108cm, 43 inch Ultra HD 4K LED Smart Android TV', 33000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(32, 8, 'LG UQ7500 ', 'television4.png', '139cm, 55 inch) Ultra HD 4K LED Smart WebOS TV', 47000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(33, 9, 'SanDisk 64 GB Pen Drive', 'pendrive1.png', 'SDCZ48-064G-135/I35, Black', 500, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(34, 9, 'HP 64 GB Pen Drive ', 'pendrive2.png', 'V22OW, Grey & Black', 420, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(35, 9, 'SanDisk 32 GB Pen Drive', 'pendrive3.png', 'SDCZ71-032G-I35, Silver & Red', 800, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(36, 9, 'SanDisk Ultra 32 GB Dual Drive  ', 'pendrive4.png', 'OTG Drive,  m3.0, Grey ', 650, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(37, 10, 'Boat Stone 500', 'speaker1.png', '10W Bluetooth Speaker, RGB Lights,  Stereo Channel, Green', 2000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(38, 10, 'Realme Pocket Speaker', 'speaker2.png', '3W Bluetooth Speaker, Bass Radiator, Stereo Channel, Classic Black', 700, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(39, 10, 'Jbl Flip Essential', 'speaker3.png', '16W Bluetooth Speaker, IPX7 Waterproof, Stereo Channel, Grey', 5000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(40, 10, 'Boat Stone 350', 'speaker4.png', '10W Bluetooth Speaker, Mono Channel, Black', 1700, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(41, 11, 'Portronics Mobile Holder', 'accessories1.png', ' POR-122 MODESK, Black', 110, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(42, 11, 'Bitline Laptop Stand', 'accessories2.png', 'Aluminum Alloy Adjustable, Portable, Foldable, Ergonomic, Laptop Stand', 450, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(43, 11, 'Icreator 3 in 1', 'accessories3.png', '15W Fast Wireless Charger for iPhone, Airpod & iWatch and Other Mobiles Charging Pad', 2500, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(44, 11, 'Morebyte 30W Charger With Cable', 'accessories4.png', 'Qualcomm 3.0 6A Mobile 30W Charger With Detachable Cable', 450, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(45, 12, 'Mi Home Security Camera ', 'smarthome1.png', '1080p FHD Picture, 360°All-round vision, Infrared NightVision, AI Powered Motion Detection', 3500, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(46, 12, 'Mi Smart Led Desk Lamp 1S', 'smarthome2.png', '7.5W, 520 Lumens, WIFI Enabled', 3000, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(47, 12, 'Realme Motion Activated Light', 'smarthome3.png', 'rmh2007, 18.5g, 2800k Color Temperature', 600, '2023-01-27 11:02:58', '2023-01-27 11:02:58'),
(48, 12, 'Realme Led Smart Bulb', 'smarthome4.png', '9W, 800 Lumens, 16 Million Colours, 13 Years Lifespan', 750, '2023-01-27 11:02:58', '2023-01-27 11:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photourl` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `type`, `password`, `photourl`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1234567890', 'admin@gmail.com', 0, '$2y$10$mfbPs48QzMjY.OhyEneYS.kf/9CsAadeBg/wLgc/qxB3JpqAgWVoW', NULL, '2023-01-19 23:02:09', '2023-01-19 23:02:09'),
(2, 'Dev Punjani', '8469352100', 'dev@gmail.com', 1, '$2y$10$JQwoZlmPNCjyS1PcNyfjGOnlrblRyqtP9zJ8pp9c0cyDC1ajapZSS', 'test3@gmail_com.jpg', '2023-01-19 23:03:04', '2023-01-29 04:21:19'),
(4, 'Vatsal', '9876543210', 'vatsal@gmail.com', 1, '$2y$10$fUvkfiBr8xuKYZO1JlbE0OG8O3WTOtJSG6E9kWtnJiU.vtI3J/4Rq', NULL, '2023-01-22 23:47:03', '2023-01-22 23:47:03'),
(5, 'Test', '1234567890', 'test@gmail.com', 1, '$2y$10$I5d3SWuCFZI1Y.f8kQ5ynu/vEeu///ChZHagiioYLgKn9rIWVGoJ2', 'C:\\xampp\\tmp\\php46FE.tmp1674903962.jpg', '2023-01-28 05:36:03', '2023-01-28 05:36:03'),
(6, 'Test 2', '785354567', 'test2@gmail.com', 1, '$2y$10$LZY.1Um.hJWcpe6I4OOUTeeGTWGvUIkuv3l25OpzxbwHAYox8vyhe', 'Test_2.jpg', '2023-01-28 05:42:55', '2023-01-28 05:42:55'),
(7, 'Test 3', '785354567', 'test3@gmail.com', 1, '$2y$10$5mdraPgPWL7SDSAL9ehesumjPCKWcXoRvqJjH15gvbg3voZutIzbu', 'test3@gmail_com.jpg', '2023-01-28 05:44:36', '2023-01-28 05:44:36'),
(8, 'Hello', '765643546', 'hello@gmail.com', 1, '$2y$10$Ce.WS0ISbZSKMcGaAf7wCOCBHCjY/wTOArWeJULhAeletGL7MPVVO', NULL, '2023-01-28 06:01:57', '2023-01-29 04:05:00'),
(9, 'Image Test', '09754411', 'imagetest@gmail.com', 1, '$2y$10$Twr0IZRAo9YjnTK36R24veK/6sjIiSf7g7mrl.CiYj3MBhjhLtGki', NULL, '2023-01-28 06:03:25', '2023-01-28 06:03:25'),
(10, 'Image Test 1', '776765', 'imagetest1@gmail.com', 1, '$2y$10$7ipFd54nX5WxWmp4APd5cOEpOLRBiYgkY2.HEOp7gz3YECLcylOWG', NULL, '2023-01-28 06:04:10', '2023-01-28 06:04:10'),
(12, 'Image Test 4', '76346354', 'imagetest4@gmail.com', 1, '$2y$10$Cvo9zmt1K6d5V9ajJTN4qOdkwKupEnPnq9SAeFq9rveeZy7yWsuDm', NULL, '2023-01-28 06:07:13', '2023-01-28 06:07:13'),
(13, 'hreyvhg', '35767', 'ehjgg@gmail.com', 1, '$2y$10$IuMn/pBJ0spyox7lnmIj.OULuMp27489EOMqm3N4uRSnBj5NfqZc6', 'ehjgg@gmail_com.jpg', '2023-01-28 06:09:32', '2023-01-28 06:09:32'),
(14, 'vhbjtr', '4654787', 'jcvwjrkwef@gmail.com', 1, '$2y$10$6RzFF2aAkGNL10hk93gjROYuLqnY3HnTEWTHZ/W9LUle.PzDaqm8y', NULL, '2023-01-28 06:12:04', '2023-01-28 06:12:04'),
(15, 'v nrjvgewhjgvg', '3657483', 'bgrverbyryf@gmail.com', 1, '$2y$10$EHiZrFEHZzSS2vRKHhsUEuStcLTByK/i/rF8uLME7UsyK1hrITh9i', NULL, '2023-01-28 06:12:48', '2023-01-28 06:12:48'),
(17, '354656', '243256', 'dghh@gmail.com', 1, '$2y$10$J9/txZ4bMG6zFqaxwbP6Q.z2SmP8YJik4a7RN0WgtwH38F5OukA6a', NULL, '2023-01-28 07:51:09', '2023-01-28 07:51:09'),
(18, 'ghsdvff besfjker', '63453243', 'vgrmjehfeewv@gmail.com', 1, '$2y$10$mUl/3tlX9uViYz8ojvWhxOT.LP2vDFeUxi1m2/k39yTKJf6MfVHbu', NULL, '2023-01-28 07:51:55', '2023-01-28 07:51:55'),
(19, 'dhkgfb', '375864375643', 'rjvtyrtru@gmail.com', 1, '$2y$10$DRF45HUonyLfsx5Mm2T/..XDNPiwSccXErxqaCJoengVzVEjHsIii', 'rjvtyrtru@gmail_com.jpg', '2023-01-29 22:12:13', '2023-01-29 22:12:13'),
(20, 'Dev', '2222111133', 'admidsddffn@gmail.com', 1, '$2y$10$M2Gw7i.dxLfS8FZioVzYyeYVilioQYH03z394i.6oEg/Ob5LWodu6', NULL, '2023-01-29 22:15:17', '2023-01-29 22:15:17'),
(22, 'Dev', '0987654321', 'dev2@gmail.com', 1, '$2y$10$7sk5qE5tH6Up5ZMCDDSuaOvJDreq6lxF/R4bqFj.VB1GPjUMmL43y', 'dev2@gmail_com.jpg', '2023-02-17 08:13:23', '2023-02-17 08:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlistId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlistId`, `userId`, `productId`, `created_at`, `updated_at`) VALUES
(7, 2, 3, '2023-01-28 22:32:36', '2023-01-28 22:32:36'),
(9, 2, 7, '2023-02-21 08:21:29', '2023-02-21 08:21:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `cart_userid_foreign` (`userId`),
  ADD KEY `cart_productid_foreign` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forgotpassword_userid_foreign` (`userId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_categoryid_foreign` (`categoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlistId`),
  ADD KEY `wishlist_userid_foreign` (`userId`),
  ADD KEY `wishlist_productid_foreign` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlistId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  ADD CONSTRAINT `forgotpassword_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
