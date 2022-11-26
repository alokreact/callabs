-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 12:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `callabs`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `category_slug` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Woman Health', NULL, '1', '2022-09-03 05:56:52', '2022-09-03 05:56:52'),
(2, 'Diabetis', NULL, '1', '2022-09-03 05:57:20', '2022-09-03 05:57:20'),
(3, 'Covid 19', NULL, '2', '2022-09-03 05:57:35', '2022-10-04 05:29:38'),
(4, 'Fever', NULL, NULL, '2022-09-03 05:57:50', '2022-09-03 05:57:50'),
(5, 'Jaundice', NULL, NULL, '2022-09-07 15:29:20', '2022-09-07 15:29:20'),
(7, 'Blood', NULL, '2', '2022-10-03 03:57:01', '2022-10-03 04:29:10'),
(8, NULL, NULL, '0', '2022-10-11 06:22:55', '2022-10-11 06:22:55'),
(9, 'Heart', NULL, '1', '2022-10-12 05:10:27', '2022-10-12 05:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `findtestbyorgan`
--

CREATE TABLE `findtestbyorgan` (
  `id` int(11) NOT NULL,
  `organ_id` int(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `sub_test_id` int(10) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `findtestbyorgan`
--

INSERT INTO `findtestbyorgan` (`id`, `organ_id`, `image`, `sub_test_id`, `created_at`, `updated_at`) VALUES
(5, 3, NULL, 5, '2022-10-24 13:40:33', '2022-10-24 13:40:33'),
(6, 3, NULL, 6, '2022-10-24 13:40:33', '2022-10-24 13:40:33'),
(14, 1, NULL, 3, '2022-11-16 12:59:35', '2022-11-16 12:59:35'),
(15, 1, NULL, 4, '2022-11-16 12:59:35', '2022-11-16 12:59:35'),
(16, 1, NULL, 5, '2022-11-16 12:59:35', '2022-11-16 12:59:35'),
(17, 1, NULL, 7, '2022-11-16 12:59:35', '2022-11-16 12:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(11) NOT NULL,
  `lab_name` varchar(50) NOT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `sub_test_id` varchar(50) DEFAULT NULL,
  `sub_test_name` varchar(50) DEFAULT NULL,
  `no_of_tests` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `lab_name`, `address1`, `address2`, `state`, `city`, `pin`, `sub_test_id`, `sub_test_name`, `no_of_tests`, `price`, `phone`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Call Labs', 'Vasava Colony, Kothapet', NULL, 'Telengana', 'Hyderabad', '500089', NULL, '5', NULL, NULL, '1234567897', '20221022WhatsApp Image 2022-10-16 at 01.25.31.jpeg', NULL, '2022-10-22 06:23:31', '2022-10-22 06:23:31'),
(2, 'Kyra Dejesus', 'Kyra Dejesus', 'Quinlan Cross', 'Keith Fields', 'Alana Young', '123455', NULL, NULL, NULL, NULL, '1234567897', '202211021713WhatsApp Image 2022-10-16 at 01.25.31 (1).jpeg', NULL, '2022-11-02 17:13:10', '2022-11-02 17:13:10'),
(3, 'Judith Hubbard', 'Judith Hubbard', 'Jessica Munoz', 'Karleigh Ortiz', 'Daria Howard', '123555', NULL, NULL, NULL, NULL, '1234567977', '202211100723WhatsApp Image 2022-10-16 at 01.25.30 (1).jpeg', NULL, '2022-11-10 07:07:16', '2022-11-10 07:07:16'),
(4, 'Raven Dorsey', 'Calista Keller', 'Fredericka Fowler', 'Kennan Robbins', 'Zane Fitzgerald', '123471', NULL, NULL, NULL, NULL, '1234567897', '20221113WhatsApp Image 2022-10-16 at 01.25.31.jpeg', NULL, '2022-11-13 06:17:50', '2022-11-13 06:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `lab_package`
--

CREATE TABLE `lab_package` (
  `id` int(11) NOT NULL,
  `lab_id` varchar(50) NOT NULL,
  `subtest_id` varchar(50) NOT NULL,
  `price` varchar(50) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_package`
--

INSERT INTO `lab_package` (`id`, `lab_id`, `subtest_id`, `price`, `updated_at`) VALUES
(1, '1', '4', '100', '2022-10-26 13:37:11'),
(4, '2', '5', '1000', '2022-11-02 22:43:53'),
(6, '2', '4', '300', '2022-11-02 22:59:37'),
(7, '3', '4', '400', '2022-11-10 12:53:59'),
(12, '3', '5', '400', '2022-11-10 13:33:58');

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
(4, '2020_10_07_193011_create_roles_table', 1),
(5, '2020_10_09_151013_create_appointments_table', 1),
(6, '2020_10_09_154934_create_times_table', 1),
(7, '2020_10_10_185223_create_bookings_table', 1),
(8, '2020_10_12_164109_create_prescriptions_table', 1),
(9, '2020_10_13_154251_create_departments_table', 1),
(10, '2022_08_15_160125_create_packages_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(50) DEFAULT NULL,
  `pay_option` varchar(50) DEFAULT NULL,
  `recieptId` varchar(50) DEFAULT NULL,
  `razorpayId` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `user_id` varchar(50) NOT NULL,
  `report_url` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `pay_option`, `recieptId`, `razorpayId`, `name`, `email`, `payment_id`, `amount`, `currency`, `description`, `phone`, `address`, `order_date`, `user_id`, `report_url`, `created_at`, `updated_at`) VALUES
(1, NULL, '2', 'xdIhOVKBmDJzhgxzrCJM', NULL, 'Preston Santiago', 'ryvanacago@mailinator.com', NULL, '700', 'INR', 'New Test', '+15458146035', '989 North White Hague Extension', NULL, '2', '202211181118OpTransactionHistory15-11-2022.pdf', '2022-11-17 06:31:11', '2022-11-17 06:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_test`
--

CREATE TABLE `order_test` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `test_name` varchar(50) DEFAULT NULL,
  `test_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `lab_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_test`
--

INSERT INTO `order_test` (`id`, `order_id`, `price`, `test_name`, `test_id`, `user_id`, `lab_name`) VALUES
(1, '1', '300', '1,25-Dihydroxy Vitamin D', NULL, '2', 'Kyra Dejesus'),
(2, '1', '400', '1,25-Dihydroxy Vitamin D', NULL, '2', 'Judith Hubbard');

-- --------------------------------------------------------

--
-- Table structure for table `organs`
--

CREATE TABLE `organs` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organs`
--

INSERT INTO `organs` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Heart', '202210120606heart.png', '1', '2022-10-12 06:06:54', '2022-10-12 06:06:54'),
(2, 'Lungs', '202210192032cal_icon.jpeg', '1', '2022-10-13 09:58:06', '2022-10-13 09:58:06'),
(3, 'Neuro', '202210130958neural-connections.png', '1', '2022-10-13 09:58:28', '2022-10-13 09:58:28'),
(4, 'Ear', '202210130958hearing-96.png', '1', '2022-10-13 09:58:48', '2022-10-13 09:58:48'),
(5, 'Vein', '202210131001icons8-vein-100.png', '1', '2022-10-13 10:01:00', '2022-10-13 10:01:00'),
(7, 'Thyroid', '202210131129icons8-thyroid-100.png', '1', '2022-10-13 11:29:56', '2022-10-13 11:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `organ_subtest`
--

CREATE TABLE `organ_subtest` (
  `id` int(11) NOT NULL,
  `test_id` varchar(50) NOT NULL,
  `organ_id` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_tests` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_test_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `category`, `lab_name`, `no_of_tests`, `package_desc`, `parent_test_id`, `price`, `created_at`, `updated_at`) VALUES
(8, 'CALL LAB’S cardiac Profile', '1', '1', NULL, '<p>sss</p>', NULL, '2200', '2022-10-17 23:38:46', '2022-10-17 23:38:46'),
(9, 'Full Body Check Up', '2', '1', NULL, '<p>test</p>', NULL, '1200', '2022-11-20 00:19:03', '2022-11-20 00:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `package_parent`
--

CREATE TABLE `package_parent` (
  `id` int(11) NOT NULL,
  `parent_test_id` varchar(50) DEFAULT NULL,
  `package_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_parent`
--

INSERT INTO `package_parent` (`id`, `parent_test_id`, `package_id`) VALUES
(1, '1', '8'),
(2, '2', '8'),
(3, '1', '9'),
(4, '2', '9');

-- --------------------------------------------------------

--
-- Table structure for table `parent_tests`
--

CREATE TABLE `parent_tests` (
  `id` int(11) NOT NULL,
  `parent_test_name` varchar(50) DEFAULT NULL,
  `no_of_tests` varchar(50) DEFAULT NULL,
  `sub_tests` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent_tests`
--

INSERT INTO `parent_tests` (`id`, `parent_test_name`, `no_of_tests`, `sub_tests`, `price`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Kidney Panel', '4', '1,3,4,5', '2000', '1', NULL, '2022-10-16 08:41:17', '2022-10-16 08:41:17'),
(2, 'Nosal Infection', '2', '3,5', '1000', '1', NULL, '2022-10-16 09:01:16', '2022-10-16 09:01:16');

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
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `user_id`, `name`, `age`, `gender`, `created_at`) VALUES
(1, '2', 'Odette Burke', '12', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `name_of_disease` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptoms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage_instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'doctor', '2022-08-15 06:03:53', '2022-08-15 06:03:53'),
(2, 'admin', '2022-08-15 06:03:53', '2022-08-15 06:03:53'),
(3, 'patient', '2022-08-15 06:03:53', '2022-08-15 06:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `sub_tests`
--

CREATE TABLE `sub_tests` (
  `id` int(11) NOT NULL,
  `parent_test_id` varchar(50) DEFAULT NULL,
  `sub_test_name` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `sample_type` varchar(50) DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_tests`
--

INSERT INTO `sub_tests` (`id`, `parent_test_id`, `sub_test_name`, `created_at`, `updated_at`, `price`, `sample_type`, `volume`, `status`) VALUES
(1, NULL, '5α - DihydroTestosterone (5α-DHT)', '2022-10-15 20:10:01', '2022-10-15 20:10:01', '2600', 'Serum', '1ml', '1'),
(2, NULL, '5-Hydroxy Indole Acetic Acid (5-HIAA)', '2022-10-15 20:10:45', '2022-10-15 20:10:45', '2600', '24 hrs Urine', '1ml', '1'),
(3, NULL, '25-Hydroxy Vitamin D', '2022-10-16 07:38:27', '2022-10-16 07:38:27', '1000', 'Serum', '1ml', '1'),
(4, NULL, '1,25-Dihydroxy Vitamin D', '2022-10-16 07:39:14', '2022-10-16 07:39:14', '1660', 'Serum', '1ml', '1'),
(5, NULL, '17-alpha Hydroxy Progesterone (17•OHP)', '2022-10-16 07:40:02', '2022-10-16 07:40:02', '1300', 'Serum', '1ml', '1'),
(6, NULL, '17-OH Ketosteriods', '2022-10-16 07:41:01', '2022-10-16 07:41:01', '4500', '24 hrs Urine', '25ml', '1'),
(7, NULL, 'Absolute Eosinophil Count', '2022-10-16 07:42:04', '2022-10-16 07:42:04', '180', 'WB•EDTA', '3ml', '1'),
(8, NULL, 'Absolute Reticulocyte Count', '2022-10-16 07:42:49', '2022-10-16 07:42:49', '200', 'WB•EDTA', '3ml', '1');

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
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
  `role_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `address`, `phone_number`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-08-15 06:03:53', '$2y$10$QF/hBxpWlGDTnZl2P2wvhemVGpwyemDUD4OLPmQnovyrd2NF3T.O2', 2, NULL, NULL, 'male', '3ri2iIh38tbuqesvsTDm9X4qzqNnOOURj0czGi4MLcjLbqoi5CKaI52npZGo', '2022-08-15 06:03:53', '2022-08-15 06:03:53'),
(2, 'Zahir Hood', 'alok@gmail.com', NULL, '$2y$10$Wsj2nyIeQAmCvOOnlv4Bnuu9tNpbPSgHfQGtzk/7Dx3PZoDFd5bje', 3, NULL, NULL, NULL, NULL, '2022-10-13 13:28:45', '2022-10-13 13:28:45'),
(4, 'Zahir Hood', 'alok@rsaamerica.com', NULL, '$2y$10$661SQIAbKz4qw3YMsW5.B.G4tdbTX5BOHxGDbnR0Op4SrUgtzekbW', 3, NULL, NULL, NULL, NULL, '2022-10-13 13:30:08', '2022-10-13 13:30:08'),
(6, 'rinal@mailinator.com', 'sam@gmail.com', NULL, '$2y$10$FjrzImnbFFTEL02xgslHeu9CsY65IrcUmFpgKLlJxfjWiM56Mgpmq', 3, NULL, NULL, NULL, NULL, '2022-10-19 00:43:52', '2022-10-19 00:43:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `findtestbyorgan`
--
ALTER TABLE `findtestbyorgan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_package`
--
ALTER TABLE `lab_package`
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
-- Indexes for table `order_test`
--
ALTER TABLE `order_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organs`
--
ALTER TABLE `organs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organ_subtest`
--
ALTER TABLE `organ_subtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_parent`
--
ALTER TABLE `package_parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_tests`
--
ALTER TABLE `parent_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_tests`
--
ALTER TABLE `sub_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `findtestbyorgan`
--
ALTER TABLE `findtestbyorgan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lab_package`
--
ALTER TABLE `lab_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_test`
--
ALTER TABLE `order_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organs`
--
ALTER TABLE `organs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `organ_subtest`
--
ALTER TABLE `organ_subtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `package_parent`
--
ALTER TABLE `package_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parent_tests`
--
ALTER TABLE `parent_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_tests`
--
ALTER TABLE `sub_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
