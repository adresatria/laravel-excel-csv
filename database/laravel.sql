-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 11:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raphael Haley', 'lboyle@example.com', '2021-10-31 23:31:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fgdkXfCeLa', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(2, 'Jay Corkery DVM', 'brianne70@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HYn8YdaL6W', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(3, 'Aurelio Rolfson', 'wiza.grayce@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qH63yA0RBA', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(4, 'Abraham Osinski PhD', 'maxwell.zieme@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uWgCVRuGAq', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(5, 'Prof. Lambert Will', 'bpacocha@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dM5KyCoaBO', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(6, 'Prof. Alec Beer Jr.', 'barry.lemke@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2P6opzM3X1', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(7, 'Mr. Deangelo Hauck', 'cremin.josue@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '72JG6cxyph', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(8, 'Elvie Sipes IV', 'kub.giovanna@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X06AMxIXtI', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(9, 'Leanne Thiel', 'schuster.laury@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IAam4zPpYn', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(10, 'Dr. Nakia Marquardt Sr.', 'khintz@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VGnLtcbEYh', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(11, 'Precious Connelly', 'ewald.bernhard@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DjEwRdRnrV', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(12, 'Mr. Junior Connelly IV', 'jhermiston@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JyrUXnRaHm', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(13, 'Travon Kuhlman MD', 'xmetz@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gNns4QKq5p', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(14, 'Breana Satterfield', 'rdickens@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VdofpWdORF', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(15, 'Lonny Borer', 'lehner.brisa@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5nObVoWnqB', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(16, 'Mr. Edwin Marks II', 'ivory.stiedemann@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RlGK6oQuPg', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(17, 'Addie Wunsch', 'retta61@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4gKNsAwwkI', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(18, 'Mrs. Lottie Rowe II', 'volkman.chauncey@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B2qrDJyHYX', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(19, 'Ofelia Mann', 'emmalee52@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Re3ByOXDVA', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(20, 'Dr. Mathew Wilkinson PhD', 'sleffler@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1hcUIQEgw5', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(21, 'Dr. Arlo Terry V', 'arturo.gutkowski@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J5Awomk4bl', '2021-10-31 23:31:50', '2021-10-31 23:31:50'),
(22, 'Prof. Faye Krajcik III', 'rosemary09@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JFURfOZcJv', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(23, 'Adrienne Homenick', 'dmclaughlin@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BoP2Nh1Ao7', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(24, 'Coralie Nolan PhD', 'arne26@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NREoY2Ydw8', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(25, 'Wiley Nienow', 'wabshire@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'poc2Y4uIWl', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(26, 'Dayana Mertz', 'tyree.dickens@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OBWkaMlt0y', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(27, 'Miss Carissa Leuschke', 'hintz.emile@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BvYnSAwdro', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(28, 'Vesta Renner', 'mclaughlin.dino@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bDKMk4nabq', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(29, 'Prof. Oswald Rodriguez II', 'upton.jeramie@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oSLWvffUD3', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(30, 'Miss Malvina Spencer Sr.', 'guadalupe.gorczany@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aleT4ALUGZ', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(31, 'Jasmin Casper', 'linda.spinka@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'utTo02Fgjr', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(32, 'Ewell Reynolds', 'toby.veum@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ogLrW8Orzk', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(33, 'Yolanda Durgan', 'labadie.carmen@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CDjCRafhEn', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(34, 'Darby Weimann PhD', 'stephania.crist@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nLblcbStPj', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(35, 'August Skiles', 'icarter@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LKFpVfydgi', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(36, 'Lamont Smitham', 'laila.torphy@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6NalvjRsv3', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(37, 'Willa Lowe', 'blaise.hansen@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '00ueXMoSAX', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(38, 'Ruby VonRueden', 'abshire.juanita@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LjpslfpQ1V', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(39, 'Ms. Joanny Farrell DDS', 'raymundo.rodriguez@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rTj8yqfdHR', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(40, 'Tremaine Hermann', 'jarred39@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I0VXIvjfj6', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(41, 'Destiny Bruen', 'jwatsica@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mzgcu5hbXW', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(42, 'Rosemary Ryan', 'alexandra.schumm@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'STgLmQJiJ2', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(43, 'Dr. Patrick Huels MD', 'marcos20@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6CDLRF8yeL', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(44, 'Nelson Witting', 'felix.fisher@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RVtPJV021M', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(45, 'Dr. Valentin Waters PhD', 'demond.howe@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9GarCYeP0J', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(46, 'Felipa Rice MD', 'gorczany.jacinthe@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XK92jaddO5', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(47, 'Emerald O\'Conner II', 'garnett.jones@example.com', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AEeZZC0RwC', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(48, 'Dr. Macie Brekke', 'agustin.kohler@example.net', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UV2cHkRads', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(49, 'Mrs. Beverly Pagac Sr.', 'royce49@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UghJU0nixI', '2021-10-31 23:31:51', '2021-10-31 23:31:51'),
(50, 'Cornelius White', 'yjakubowski@example.org', '2021-10-31 23:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uatD08bOlB', '2021-10-31 23:31:51', '2021-10-31 23:31:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
