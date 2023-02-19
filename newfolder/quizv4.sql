-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 13, 2021 at 12:59 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizv4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admobs`
--

DROP TABLE IF EXISTS `admobs`;
CREATE TABLE IF NOT EXISTS `admobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admob_native` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admob_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admob_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admob_interstitial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_native` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_interstitial` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bottom_banner_type` varchar(191) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'admob',
  `interstitial_type` varchar(191) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'admob',
  `video_type` varchar(191) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'admob',
  `fb_video` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `adcolony_banner` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `adcolony_app_id` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `adcolony_interstitial` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `adcolony_reward` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `startapp_app_id` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `admob_app_id` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admobs`
--

INSERT INTO `admobs` (`id`, `admob_native`, `admob_banner`, `admob_video`, `admob_interstitial`, `fb_native`, `fb_banner`, `fb_interstitial`, `bottom_banner_type`, `interstitial_type`, `video_type`, `fb_video`, `adcolony_banner`, `adcolony_app_id`, `adcolony_interstitial`, `adcolony_reward`, `startapp_app_id`, `admob_app_id`, `created_at`, `updated_at`) VALUES
(1, 'ca-app-pub-3940256099942544/2247696110', 'ca-app-pub-3940256099942544/6300978111', 'ca-app-pub-3940256099942544/5224354917', 'ca-app-pub-3940256099942544/1033173712', 'YOUR_PLACEMENT_ID', 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID', 'YOUR_PLACEMENT_ID', 'admob', 'facebook', 'facebook', 'YOUR_PLACEMENT_ID', 'vzbf9e87921de440908b', 'appa02a566b48de44d2be', 'vz16792ce0727b4c0f8a', 'vz683a6d724e1c4edb87', '204911339', 'ca-app-pub-3940256099942544~3347511713', '2020-02-17 20:26:39', '2021-05-10 18:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `completeds`
--

DROP TABLE IF EXISTS `completeds`;
CREATE TABLE IF NOT EXISTS `completeds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_quiz_points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `completeds_player_id_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chef_id` varchar(191) NOT NULL,
  `device_id` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_id` (`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2019_12_27_133720_create_users', 1),
(11, '2019_12_27_133736_create_players', 1),
(12, '2019_12_27_133806_create_categories', 1),
(13, '2019_12_27_133825_create_questions', 1),
(14, '2019_12_27_133833_create_completeds', 1),
(15, '2019_12_27_133845_create_paymentmethods', 1),
(16, '2019_12_27_133854_create_refers', 1),
(17, '2019_12_27_133905_create_settings', 1),
(18, '2019_12_27_133915_create_withdrawals', 1),
(19, '2019_12_27_134409_create_password_resets', 1),
(20, '2019_12_27_134432_create_failed_jobs', 1),
(21, '2020_02_10_124733_create_ads_table', 2),
(22, '2020_02_13_001351_create_dones_table', 3),
(23, '2020_02_17_220925_create_admobs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `referral_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `players_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `true_answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `false_answer1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `false_answer2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `false_answer3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_category_id_index` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refers`
--

DROP TABLE IF EXISTS `refers`;
CREATE TABLE IF NOT EXISTS `refers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `li_m_refer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `li_m_refer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refers_player_id_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_to_withdraw` double(8,2) NOT NULL,
  `conversion_rate` int(11) NOT NULL,
  `question_time` int(11) NOT NULL,
  `referral_register_points` int(11) NOT NULL,
  `completed_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fifty_fifty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `video_reward` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `api_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verification_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `min_to_withdraw`, `conversion_rate`, `question_time`, `referral_register_points`, `completed_option`, `fifty_fifty`, `video_reward`, `api_secret_key`, `email_verification_option`, `created_at`, `updated_at`) VALUES
(1, '$', 2.00, 5000, 90, 20, 'no', 'no', 'yes', 'todocode', 'yes', '2019-12-26 23:00:00', '2021-05-12 01:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Buyer CodeCanyon', 'buyer@todocode.com', NULL, '$2y$10$orpiaATgu890eJ/VXhpjvuW6uYoL6UfiPbY5HH1CFrMGBbuKUReZ6', NULL, '2019-12-27 13:22:49', '2019-12-27 13:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
CREATE TABLE IF NOT EXISTS `verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) NOT NULL,
  `account_verification_code` varchar(191) NOT NULL,
  `pw_reset_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
CREATE TABLE IF NOT EXISTS `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `withdrawals_player_id_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
