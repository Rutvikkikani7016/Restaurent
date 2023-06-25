-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 08:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurent`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `food_id`, `quantity`, `created_at`, `updated_at`) VALUES
(5, '4', '3', '1', '2023-02-14 00:01:59', '2023-02-14 00:01:59'),
(6, '4', '1', '1', '2023-02-14 00:02:04', '2023-02-14 00:02:04'),
(7, '4', '14', '3', '2023-02-14 00:02:22', '2023-02-14 00:02:22'),
(8, '4', '7', '2', '2023-02-14 00:02:36', '2023-02-14 00:02:36'),
(16, '2', '3', '3', '2023-03-28 06:34:12', '2023-03-28 06:34:12'),
(17, '2', '7', '1', '2023-03-28 06:34:26', '2023-03-28 06:34:26'),
(18, '2', '8', '1', '2023-03-28 06:34:31', '2023-03-28 06:34:31'),
(19, '2', '1', '1', '2023-03-28 06:34:38', '2023-03-28 06:34:38'),
(20, '2', '9', '1', '2023-03-28 06:34:45', '2023-03-28 06:34:45'),
(21, '2', '6', '1', '2023-03-28 06:34:50', '2023-03-28 06:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `title`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'wage biriyani', '89', '1673931385.jpg', 'wage biriyani', '2022-12-18 10:41:30', '2023-01-16 23:26:25'),
(2, 'vegetables  sup', '99', '1673931351.jpg', 'vegetables  sup with sum flever', '2023-01-16 23:15:03', '2023-01-16 23:25:51'),
(3, 'manchow soup', '89', '1673931327.jpg', 'manchow soup', '2023-01-16 23:15:42', '2023-01-16 23:25:27'),
(4, 'burger', '129', '1673931292.jpg', 'burger', '2023-01-16 23:19:52', '2023-01-16 23:24:52'),
(5, 'con sup', '69', '1673931245.jpg', 'con sup', '2023-01-16 23:20:38', '2023-01-16 23:24:05'),
(6, 'orenge juse', '49', '1673931137.jpg', 'orenge juse', '2023-01-16 23:22:17', '2023-01-16 23:22:17'),
(7, 'ice cream', '59', '1673955560.jpg', 'ice cream with Chocolate', '2023-01-17 06:09:20', '2023-01-17 06:09:20'),
(8, 'green juse', '39', '1673955602.jpg', 'green juse', '2023-01-17 06:10:02', '2023-01-17 06:10:02'),
(9, 'pasta', '99', '1673955836.jpg', 'pasta', '2023-01-17 06:13:56', '2023-01-17 06:13:56'),
(10, 'chilli paneer', '129', '1674024804.jpg', 'chilli paneer', '2023-01-18 01:23:24', '2023-01-18 01:23:24'),
(11, 'chinese bhale', '149', '1674024834.webp', 'chinese bhale', '2023-01-18 01:23:54', '2023-01-18 01:23:54'),
(12, 'punir tikka', '99', '1674025276.jpeg', 'punir tikka', '2023-01-18 01:31:16', '2023-01-18 01:31:16'),
(13, 'pow bhaji', '79', '1674025336.jpg', 'pow bhaji', '2023-01-18 01:32:16', '2023-01-18 01:32:16'),
(14, 'paneer butter masala', '100', '1674025384.jpg', 'paneer butter masala', '2023-01-18 01:33:04', '2023-01-18 01:33:04'),
(15, 'hakaa nudels', '50', '1674025421.jpg', 'hakaa nudels', '2023-01-18 01:33:41', '2023-01-18 01:33:41'),
(16, 'pizaa', '99', '1674025470.jpg', 'pizaa', '2023-01-18 01:34:30', '2023-01-18 01:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `foodchefs`
--

CREATE TABLE `foodchefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foodchefs`
--

INSERT INTO `foodchefs` (`id`, `name`, `speciality`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sem', 'pizza', '1674025902.jpg', '2023-01-18 01:41:42', '2023-01-18 01:41:42'),
(2, 'diyaa', 'burger and punjabi', '1674025937.png', '2023-01-18 01:42:17', '2023-01-18 01:42:17'),
(3, 'wili', 'chinees', '1675696957.webp', '2023-02-06 09:52:37', '2023-02-06 09:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_25_154451_create_sessions_table', 1),
(7, '2022_06_26_113739_create_food_table', 1),
(8, '2022_06_27_085108_create_reservations_table', 1),
(9, '2022_06_27_132130_create_foodchefs_table', 1),
(10, '2022_06_28_034937_create_carts_table', 1),
(11, '2022_06_28_091136_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foodname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `foodname`, `price`, `quantity`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(3, 'manchow soup', '89', '1', 'harshit', '1234567891', 'surat', '2023-02-14 00:04:21', '2023-02-14 00:04:21'),
(4, 'wage biriyani', '89', '1', 'harshit', '1234567891', 'surat', '2023-02-14 00:04:21', '2023-02-14 00:04:21'),
(5, 'paneer butter masala', '100', '3', 'harshit', '1234567891', 'surat', '2023-02-14 00:04:21', '2023-02-14 00:04:21'),
(6, 'ice cream', '59', '2', 'harshit', '1234567891', 'surat', '2023-02-14 00:04:21', '2023-02-14 00:04:21'),
(7, 'manchow soup', '89', '1', 'rutvik', '7016454250', 'c/5148 shivnagar kaliyabid bhavnagar', '2023-03-14 00:12:07', '2023-03-14 00:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rutvik123@gmail.com', '$2y$10$gHIJeIy3YJHoLLB7jhD6JOyjpzKVL/0PqRLbM7Vt09Fwnf5yCKB4S', '2023-02-06 09:57:31'),
('kikanirutvik1115@gmail.com', '$2y$10$3Z5oNFJZRZSDoM1EIRLYH.sVwvaPSTkTD1WXaBupJN.juAxLR3jzu', '2023-03-14 00:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `guest`, `date`, `time`, `message`, `created_at`, `updated_at`) VALUES
(1, 'sahil', 'sahil123@gmail.com', '9685741230', '10', '28.12.2022', '12:30', 'weeding party', '2022-12-18 10:45:35', '2022-12-18 10:45:35'),
(2, 'jay', 'jay@gmail.com', '0987654321', '2', '18.01.2023', '15:15', 'hay', '2023-01-18 01:36:32', '2023-01-18 01:36:32'),
(3, 'digeesh', 'digeeshmordiya@gmail.com', '1313311411', '1', '20.02.2023', '05:06', 'rgeyhw3fqrw353ftw3td3', '2023-02-22 00:04:44', '2023-02-22 00:04:44'),
(4, 'digeesh', 'digeeshmordiya@gmail.com', '65656565656', '3', '28.02.2023', '04:54', 'sfwrewgrtgertg', '2023-02-22 00:05:52', '2023-02-22 00:05:52'),
(5, 'yash', 'yash@gmail.com', '8436589743', '10', '11.03.2023', '16:05', 's chdljml,w fjkwbrenw fbjclkwf', '2023-02-22 00:07:39', '2023-02-22 00:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MZX09CF5DcJcdZwKWXMaHsgq6LWpqhBQ5fAidoMU', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaGlya3M5cENweWEwYTRLbHdWTkRUVlJiRlJUWXM3SzdsaUR2a2xwViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb29kbWVudSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1677049021),
('OihQvgwugsyMa9zzpo25ZNkz5sbHbXyKpMdSixD6', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVVpoenl0RzNodlA3TTY0NEF0VUVia3VtSE9rTFVyOWNwNG5Ea2dzTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93Y2FydC8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1676877392),
('QfGeJujfSH0mS1w163YJDBltPmgKVkmZbIbf2hSk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3V0ZlQyTFJ4Sk52MnRPQXdvWFRQYXFZMjlRSEY1S0FybXVWWFZTRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO319', 1680152770),
('qhAwtIVm4jfL9SaKA825H2FnfJI9mB2e2OEzXSbl', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM05pNkZvUmZBZnkzeVI1Q3R1dmNMTkxDZmNLbVAyNlJ1S2RDeXYxSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93Y2FydC8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1680005093),
('ZeRsaWWAnEplT9kFrtCIxBOW14zYS5iAIF05RC81', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiME9JVUgxMjFpS0NpZHQwTkloa2dhQTVqZkgzaVo2elQxcG9WWjBaRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWRpcmVjdHMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1678780027);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'rutvik', 'rutvik123@gmail.com', '1', NULL, '$2y$10$vPjUPaTa773Yh8lgmWtQZuNTFVzFGPrac3NBxVCiFnmx/VT.rgZ7S', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-18 10:20:22', '2022-12-18 10:20:22'),
(2, 'sahil123', 'sahil123@gmail.com', '0', NULL, '$2y$10$UFXrEuJdr7q.tlEAYf0ic.YbmeG8irdDSdEsQWn5oP6JwUEwn96g6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-18 10:42:38', '2022-12-18 10:42:38'),
(3, 'rutvik', 'rutvik1234@gmail.com', '0', NULL, '$2y$10$v6GHjuB6U1eKTwE.tn8vp.e14lXRZ30XpFyccyBLYNsOunQpMUZ6K', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 02:04:03', '2022-12-20 02:04:03'),
(4, 'harshit123', 'harshit123@gmail.com', '0', NULL, '$2y$10$MtPCOCH/Xxbw8zsm9.7pJegTOWr5urHSaF3hTGwi8qWpMkov/cy1C', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-12 10:20:02', '2023-02-12 10:20:02'),
(5, 'kikanirutvik', 'kikanirutvik1115@gmail.com', '0', NULL, '$2y$10$D/KGowR7RlGkx4d2DQ9qT.TzAZcExl3l0CqlY9M6SkZCgPRjd2OJm', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 00:15:30', '2023-03-14 00:15:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodchefs`
--
ALTER TABLE `foodchefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `foodchefs`
--
ALTER TABLE `foodchefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
