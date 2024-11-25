-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2024 at 08:53 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '''1:Active, 0:Inactive''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contacts_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone`, `dob`, `city`, `state`, `zipcode`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Devyn', 'Monahan', 'farrell.vada@example.com', '+15734853590', '1992-09-25', 'Lake Elwyn', 'North Dakota', '32985-7479', '55571 McLaughlin Heights\nNew Carli, FL 38043', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(2, 'Jerel', 'Torphy', 'ayla.rolfson@example.com', '1-909-701-2154', '1976-08-07', 'Ellsworthhaven', 'Massachusetts', '79362-6821', '7925 Loyce Lodge\nNew Emmymouth, IN 80659-1006', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(3, 'Edwina', 'Gutkowski', 'hbergnaum@example.com', '+1.463.438.4447', '1990-01-13', 'Ferrybury', 'New Jersey', '50441-4564', '95099 Wolf Island Apt. 587\nHestertown, MI 71237', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(4, 'Angelica', 'Muller', 'williamson.joana@example.com', '+1.272.606.1697', '1996-10-03', 'East Javon', 'Virginia', '63861', '509 Lilian Green\nBeauport, KS 65937', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(5, 'Elody', 'Klocko', 'conrad.oconnell@example.org', '+1-551-951-9356', '1993-07-30', 'Darrelmouth', 'Indiana', '47943-2996', '2454 Hodkiewicz Shoals Apt. 653\nWittingside, WI 97514', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(6, 'Yazmin', 'Kuvalis', 'alabadie@example.org', '+12099673607', '1997-01-05', 'Myrtletown', 'Georgia', '74919-4016', '5694 Lewis Point\nMargeville, CT 44508', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(7, 'Deshawn', 'Bogisich', 'weber.jazmin@example.org', '360-954-0132', '1977-01-25', 'Darylbury', 'Oregon', '65315-0928', '9449 Gaylord Ford\nNorth Jaysonchester, IL 29497-5396', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(8, 'Montana', 'Lakin', 'srau@example.net', '848.329.6440', '1971-02-12', 'Harrischester', 'Virginia', '16818', '6856 Mueller Bypass Apt. 872\nNew Guidofort, CT 83628', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(9, 'Karina', 'Weber', 'jrippin@example.net', '607-360-7348', '1992-12-29', 'Port Danchester', 'Oregon', '54618', '7922 Burley Trail\nLake Heber, AL 05894', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(10, 'Lucie', 'Hyatt', 'ward45@example.com', '(657) 917-8077', '1971-03-26', 'Port Isaiah', 'Georgia', '99704-3824', '70531 Towne Park Suite 772\nBrionnahaven, OR 75814-9208', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(11, 'Crystel', 'Spencer', 'blick.trent@example.org', '469-403-3678', '1994-10-18', 'Gottliebfort', 'Delaware', '80710-2061', '706 Laron Wells Suite 688\nWalterfort, AK 69528', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(12, 'Sean', 'Hintz', 'sporer.gregg@example.com', '260.206.2808', '1972-08-10', 'South Ernesto', 'Maryland', '40235', '32673 Hailie Knolls\nMarleeburgh, NJ 29535-6198', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(13, 'Hosea', 'Nader', 'gbartoletti@example.net', '+16203606072', '1979-02-09', 'Dickenshaven', 'Georgia', '50383', '1766 Hilton Turnpike\nLeschton, AZ 98556', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(14, 'General', 'Keebler', 'wilford.lehner@example.com', '408.440.5269', '1981-07-18', 'South Alfonsotown', 'Connecticut', '45468', '358 Moen Rest Apt. 315\nHackettside, NJ 88442', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(15, 'Cruz', 'Kovacek', 'carlo53@example.com', '1-470-320-2371', '1994-11-14', 'Lake Cortney', 'Missouri', '35256-1559', '9890 Collier Drive\nNorth Woodrowview, MI 49628', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(16, 'Myrtle', 'Doyle', 'bmitchell@example.com', '(248) 313-0020', '1980-12-16', 'South Hannaport', 'New York', '99630-9647', '51157 Ernser Place Suite 814\nMuhammadville, SD 64715-1273', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(17, 'Americo', 'Wolff', 'douglas.susan@example.net', '405.645.0155', '1996-03-29', 'Lake Saige', 'Utah', '65660', '1785 Halvorson Mews\nEast Albina, NH 49783-3286', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(18, 'Rhea', 'Bergstrom', 'rowe.nestor@example.org', '(351) 365-7921', '1997-03-02', 'Wunschstad', 'Indiana', '75924', '2998 Becker Locks\nNew Ignaciohaven, NV 11953-5320', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(19, 'Eulah', 'Nienow', 'maggio.darwin@example.net', '605-390-4384', '1993-06-25', 'Sporermouth', 'Nebraska', '54671', '41421 Agnes Road Apt. 974\nWisozkfurt, NJ 79502', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(20, 'Quinn', 'Kirlin', 'dulce.paucek@example.net', '+1 (256) 980-5529', '1986-03-26', 'West Rosalind', 'Pennsylvania', '17351-4568', '260 Zita Course Apt. 315\nNolanstad, NY 17844-7952', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(21, 'Eriberto', 'Windler', 'keanu.ratke@example.org', '413.383.3021', '1995-12-20', 'New Axelfort', 'Alabama', '31709-7595', '1173 Pollich Cliffs Suite 658\nNew Peyton, IA 26680-3574', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(22, 'Wendell', 'Padberg', 'iupton@example.com', '(504) 984-5083', '1997-09-20', 'West Blancheland', 'Nebraska', '81317-7161', '92318 Kaylie Alley Suite 635\nIvahfort, MI 59702-2183', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(23, 'Leilani', 'Dickinson', 'amaya.hilpert@example.org', '+1 (862) 603-8250', '1975-03-31', 'Buckridgeberg', 'Maine', '43175', '270 Reinger Parkway Apt. 027\nNorth Eloychester, VT 59953', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(24, 'Daniella', 'Grant', 'edythe57@example.org', '1-541-928-8926', '1972-01-04', 'Port Marcosshire', 'Missouri', '17771-4218', '4537 Haley Loop Apt. 104\nWest Fabiolahaven, TN 76627-6218', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(25, 'Eliezer', 'Price', 'esteban10@example.net', '(419) 450-3708', '1975-12-24', 'New Jess', 'Missouri', '35320', '491 Borer Locks\nNorth Mark, NJ 63244', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(26, 'Providenci', 'Buckridge', 'irwin42@example.org', '+1.360.869.7130', '1994-07-03', 'Sonyafort', 'Massachusetts', '20249-9573', '68188 Polly Vista Apt. 956\nHudsonburgh, MN 18514', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(27, 'Candelario', 'Heathcote', 'tillman.elody@example.com', '540.689.9340', '1991-06-07', 'Heathcoteberg', 'South Carolina', '35551', '5201 Boehm Roads Suite 912\nEast Helen, MA 21748-5485', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(28, 'Sydni', 'Buckridge', 'cornell97@example.com', '(631) 375-7456', '1999-08-19', 'Garrisonburgh', 'Michigan', '77878-2045', '685 Langosh Glen\nPort Edward, MO 80188', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(29, 'Schuyler', 'Balistreri', 'fnienow@example.org', '+1-817-305-1436', '1996-08-09', 'New Arnoldo', 'Kansas', '56074-2652', '42085 Alva Flats Apt. 149\nMarksville, WI 77200', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(30, 'Uriah', 'Becker', 'nkerluke@example.net', '+18602778384', '1999-04-08', 'Creminberg', 'Ohio', '32374', '484 Sincere Passage Apt. 507\nJacobiview, IL 59743', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(31, 'Annabel', 'Boyer', 'yasmine62@example.org', '1-509-229-1783', '1978-10-22', 'Port Deangeloport', 'North Carolina', '95605', '8093 Lebsack Vista Suite 306\nRueckerchester, ME 45343-6566', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(32, 'Adriana', 'Douglas', 'spinka.anissa@example.net', '830.288.2302', '1977-09-20', 'Kiehnport', 'Arkansas', '00568-5305', '1494 Hill Forge Apt. 566\nFadelton, NE 76981', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(33, 'Doyle', 'Kuhn', 'lindsey44@example.org', '+1 (669) 681-7774', '1986-07-01', 'Kaydenport', 'Arkansas', '93576-6088', '90320 Carlos Mission Apt. 925\nNew Nannie, NC 04466', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(34, 'Saul', 'McDermott', 'wsanford@example.org', '1-413-371-7160', '1975-03-05', 'New Lee', 'California', '77368-0083', '9489 Schuppe Lakes\nHegmannfort, IA 04024', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(35, 'Reggie', 'Prohaska', 'dare.elvie@example.com', '856.564.3859', '1975-10-09', 'West Calista', 'Mississippi', '96478', '3307 King Cliff Apt. 855\nSouth Josie, ID 09282', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(36, 'Anika', 'Zboncak', 'camilla.pouros@example.net', '843.225.7922', '1971-01-30', 'Murrayville', 'Idaho', '12069-2437', '188 Calista Garden\nRobertshaven, ID 29512', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(37, 'Philip', 'Brekke', 'jast.tiana@example.com', '641-346-7124', '1998-06-06', 'Port Libbieland', 'Mississippi', '63815-4894', '92213 Josue Lights Suite 849\nLake Germanville, WV 45546', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(38, 'Selmer', 'Emard', 'beverly05@example.org', '+1 (272) 691-8469', '1983-08-04', 'Creminfort', 'Minnesota', '05594', '2675 Goldner Mountains Suite 891\nLake Tomasbury, NJ 82969', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(39, 'Timothy', 'Rowe', 'otrantow@example.com', '+1-724-734-6344', '1981-03-18', 'Quigleyview', 'New York', '73005', '296 Eduardo Court\nJeramybury, MO 96716-8029', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(40, 'Van', 'Fisher', 'dion.king@example.net', '(240) 730-4921', '1998-05-16', 'West Ayanaland', 'North Carolina', '49470', '973 Aaliyah Mills\nCollinsfort, MA 60714', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(41, 'Alysson', 'Waelchi', 'maeve14@example.net', '+1 (276) 645-7154', '1999-09-26', 'Wolffburgh', 'Rhode Island', '85412', '962 Marcel Circles Suite 486\nEricaberg, ND 26397-3225', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(42, 'Gwendolyn', 'Ferry', 'wjerde@example.org', '334-242-7667', '1989-12-10', 'Nathanstad', 'Florida', '32171-5007', '58701 Vandervort Common Apt. 597\nSouth Electa, CO 03091', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(43, 'Jana', 'Jaskolski', 'rosemary87@example.net', '+1.564.314.2072', '1985-05-14', 'Port Carley', 'Alaska', '69569', '3215 Hildegard Station\nBergnaummouth, VT 37056', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(44, 'Gerald', 'Rodriguez', 'skeebler@example.org', '1-283-888-0876', '1988-09-30', 'Connellyview', 'New York', '18463-3060', '5320 Stark Forge Suite 723\nEast Milfordmouth, PA 69416-7058', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(45, 'Hazel', 'Keebler', 'laila53@example.com', '228-443-2003', '1973-02-08', 'Lake Tiana', 'Connecticut', '49518', '217 Rocio Drive Suite 658\nSchillermouth, AR 09680', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(46, 'Mona', 'Hirthe', 'ruthie74@example.net', '720.683.6743', '1995-03-07', 'South Hailie', 'Iowa', '85442-9927', '8085 Santina Brook Apt. 064\nNorth Loyce, CO 30146', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(47, 'Rowan', 'Kling', 'javonte07@example.net', '917.948.3677', '1991-11-27', 'North Cyril', 'Vermont', '43297-2398', '467 Austin Meadows\nAugustuston, WA 78282-6052', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(48, 'Joany', 'Kovacek', 'myron.wyman@example.net', '+1 (903) 506-5250', '1986-02-07', 'North Coleman', 'Ohio', '47213-4973', '401 McCullough Ville\nLake Silasland, ME 93376-2361', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(49, 'Lora', 'Gleason', 'oberbrunner.rhea@example.org', '1-520-201-3003', '1973-07-13', 'Durwardton', 'Idaho', '28181', '38697 Volkman Ports Apt. 847\nWest Arnulfo, MO 99543-7049', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(50, 'Estella', 'Gaylord', 'xander74@example.com', '+1.346.666.7357', '1987-10-21', 'East Mike', 'Maryland', '08671', '489 Daniel Divide\nWest Owen, MN 29209', 1, '2024-11-25 08:43:10', '2024-11-25 08:43:10'),
(51, 'Rajiv', 'Sharma', 'rajivsharma@gmail.com', '8103099592', '1993-11-25', 'Bhopal', 'Madhya Pradesh', '462030', 'Gulmohar Colony', 0, NULL, '2024-11-26 01:36:39'),
(52, 'Eesha', 'Sharma', 'essha@gmail.com', '8770274740', '1994-11-13', 'Delhi', 'Delhi', '3556657', 'Delhi India', 0, NULL, '2024-11-26 01:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2024_11_25_031807_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
