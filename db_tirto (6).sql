-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2025 at 05:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tirto`
--

-- --------------------------------------------------------

--
-- Table structure for table `clusterings`
--

CREATE TABLE `clusterings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_pembayaran` int(11) NOT NULL DEFAULT 0,
  `rata_rata_keterlambatan` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tagihan` int(11) NOT NULL DEFAULT 0,
  `cluster_ke` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bulan` tinyint(3) UNSIGNED DEFAULT NULL,
  `tahun` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clusterings`
--

INSERT INTO `clusterings` (`id`, `pelanggan_id`, `jumlah_pembayaran`, `rata_rata_keterlambatan`, `total_tagihan`, `cluster_ke`, `created_at`, `updated_at`, `bulan`, `tahun`) VALUES
(1, 1, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(2, 2, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(3, 3, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(4, 4, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(5, 5, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(6, 6, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(7, 7, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(8, 8, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(9, 9, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(10, 10, 0, 0.00, 0, NULL, '2025-07-19 08:09:40', '2025-07-19 08:09:40', NULL, NULL),
(11, 11, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(12, 12, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(13, 13, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(14, 14, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(15, 15, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(16, 16, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(17, 17, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(18, 18, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(19, 19, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(20, 20, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(21, 21, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(22, 22, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(23, 23, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(24, 24, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(25, 25, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(26, 26, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(27, 27, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(28, 28, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(29, 29, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(30, 30, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(31, 31, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(32, 32, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(33, 33, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(34, 34, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(35, 35, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(36, 36, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(37, 37, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(38, 38, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(39, 39, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(40, 40, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(41, 41, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(42, 42, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(43, 43, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(44, 44, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(45, 45, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(46, 46, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(47, 47, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(48, 48, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL),
(49, 49, 0, 0.00, 0, NULL, '2025-07-19 08:09:41', '2025-07-19 08:09:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporans`
--

CREATE TABLE `laporans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `total_tagihan` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_lunas` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_belum_lunas` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_05_25_080131_create_pelanggans_table', 1),
(6, '2025_05_25_080132_create_tagihans_table', 1),
(7, '2025_05_25_080143_create_pembayarans_table', 1),
(8, '2025_05_25_080152_create_clusterings_table', 1),
(9, '2025_05_25_080201_create_pengingats_table', 1),
(10, '2025_06_18_133922_update_status_terlambat_enum_on_pembayarans_table', 1),
(11, '2025_06_29_085349_create_laporans_table', 1),
(12, '2025_06_29_103944_add_role_to_users_table', 1),
(13, '2025_07_06_053734_add_bulan_tahun_to_clusterings_table', 1),
(14, '2025_07_08_131600_add_tanggal_tagihan_to_tagihans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_wa` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `air_dipakai` int(11) NOT NULL DEFAULT 0,
  `jumlah_tagihan` decimal(10,2) NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `nama`, `no_wa`, `alamat`, `air_dipakai`, `jumlah_tagihan`, `tanggal_jatuh_tempo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sudar', '085062120058', 'Basekan, Dagangan, Madiun', 8, 25000.00, '2025-07-27', 'Aktif', '2025-07-19 08:01:55', '2025-07-19 08:01:55'),
(2, 'Andik', '084805787459', 'Basekan, Dagangan, Madiun', 21, 41500.00, '2025-07-29', 'Aktif', '2025-07-19 08:01:55', '2025-07-19 08:01:55'),
(3, 'Paimin', '081408044469', 'Basekan, Dagangan, Madiun', 19, 38500.00, '2025-07-29', 'Aktif', '2025-07-19 08:01:55', '2025-07-19 08:01:55'),
(4, 'Rodin', '083454321237', 'Basekan, Dagangan, Madiun', 24, 46000.00, '2025-07-31', 'Aktif', '2025-07-19 08:01:55', '2025-07-19 08:01:55'),
(5, 'Dafit', '088197816882', 'Basekan, Dagangan, Madiun', 6, 25000.00, '2025-07-28', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(6, 'Silo', '088503619716', 'Basekan, Dagangan, Madiun', 13, 29500.00, '2025-08-01', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(7, 'Saelan', '085877269053', 'Basekan, Dagangan, Madiun', 14, 31000.00, '2025-07-28', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(8, 'Parmon', '085895148741', 'Basekan, Dagangan, Madiun', 11, 26500.00, '2025-07-27', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(9, 'Kabib', '085286972081', 'Basekan, Dagangan, Madiun', 6, 25000.00, '2025-07-24', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(10, 'Tumijan', '088667131288', 'Basekan, Dagangan, Madiun', 14, 31000.00, '2025-07-30', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(11, 'Nur', '086081396335', 'Basekan, Dagangan, Madiun', 0, 25000.00, '2025-07-26', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(12, 'Podo', '082740692551', 'Basekan, Dagangan, Madiun', 7, 25000.00, '2025-07-31', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(13, 'Sutris', '083482582676', 'Basekan, Dagangan, Madiun', 14, 31000.00, '2025-08-01', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(14, 'B. Wo', '084224698938', 'Basekan, Dagangan, Madiun', 10, 25000.00, '2025-08-03', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(15, 'Nyatun', '082030568702', 'Basekan, Dagangan, Madiun', 3, 25000.00, '2025-07-24', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(16, 'Ines', '089911427927', 'Basekan, Dagangan, Madiun', 14, 31000.00, '2025-08-03', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(17, 'Pandi', '083188469673', 'Basekan, Dagangan, Madiun', 18, 25000.00, '2025-08-03', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(18, 'Supri', '088217482770', 'Basekan, Dagangan, Madiun', 19, 38500.00, '2025-07-25', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(19, 'Jiono', '082631865970', 'Basekan, Dagangan, Madiun', 12, 28000.00, '2025-08-03', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(20, 'Warsini', '084181023233', 'Basekan, Dagangan, Madiun', 12, 28000.00, '2025-07-25', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(21, 'Rokim', '087285502872', 'Basekan, Dagangan, Madiun', 30, 55000.00, '2025-07-24', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(22, 'Sugik', '086274076440', 'Basekan, Dagangan, Madiun', 20, 40000.00, '2025-07-31', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(23, 'Eny', '083986403894', 'Basekan, Dagangan, Madiun', 14, 31000.00, '2025-08-01', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(24, 'Sd', '083191962083', 'Basekan, Dagangan, Madiun', 2, 25000.00, '2025-07-25', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(25, 'Makim', '088691224691', 'Basekan, Dagangan, Madiun', 10, 29500.00, '2025-07-27', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(26, 'Marsono', '087248040709', 'Basekan, Dagangan, Madiun', 29, 53500.00, '2025-07-29', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(27, 'Wagimun', '082529911853', 'Basekan, Dagangan, Madiun', 38, 67000.00, '2025-07-29', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(28, 'Meslan', '087025177118', 'Basekan, Dagangan, Madiun', 10, 25000.00, '2025-07-26', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(29, 'Yahmen', '087413686246', 'Basekan, Dagangan, Madiun', 19, 38500.00, '2025-07-28', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(30, 'Bon', '081081635280', 'Basekan, Dagangan, Madiun', 17, 35500.00, '2025-07-28', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(31, 'Sus', '084546374954', 'Basekan, Dagangan, Madiun', 38, 67000.00, '2025-08-03', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(32, 'Ri', '084846915148', 'Basekan, Dagangan, Madiun', 28, 52000.00, '2025-07-31', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(33, 'Budi', '089647659118', 'Basekan, Dagangan, Madiun', 13, 29500.00, '2025-08-02', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(34, 'Rusit', '081537437099', 'Basekan, Dagangan, Madiun', 18, 37000.00, '2025-07-31', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(35, 'Wajib', '088590611034', 'Basekan, Dagangan, Madiun', 14, 31000.00, '2025-07-24', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(36, 'Azis', '086418261882', 'Basekan, Dagangan, Madiun', 24, 46000.00, '2025-07-26', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(37, 'Sokinem', '089745194791', 'Basekan, Dagangan, Madiun', 16, 34000.00, '2025-08-03', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(38, 'Andra', '087693290427', 'Basekan, Dagangan, Madiun', 1, 25000.00, '2025-07-27', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(39, 'Wagiran', '087564562216', 'Basekan, Dagangan, Madiun', 1, 25000.00, '2025-07-24', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(40, 'Jumadi', '089070176825', 'Basekan, Dagangan, Madiun', 41, 71500.00, '2025-07-31', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(41, 'Sigit', '081790371599', 'Basekan, Dagangan, Madiun', 15, 32500.00, '2025-07-30', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(42, 'Sumi', '085796213551', 'Basekan, Dagangan, Madiun', 8, 25000.00, '2025-07-28', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(43, 'Wawan', '088354466654', 'Basekan, Dagangan, Madiun', 25, 47500.00, '2025-08-01', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(44, 'Senen', '088012430824', 'Basekan, Dagangan, Madiun', 0, 20000.00, '2025-07-28', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(45, 'Jamin', '087835007884', 'Basekan, Dagangan, Madiun', 24, 46000.00, '2025-07-27', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(46, 'Kuat', '082238947531', 'Basekan, Dagangan, Madiun', 18, 37000.00, '2025-07-29', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(47, 'Indoko', '087484649724', 'Basekan, Dagangan, Madiun', 11, 26500.00, '2025-08-01', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(48, 'Jogoboyo', '083687780436', 'Basekan, Dagangan, Madiun', 12, 28000.00, '2025-08-01', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56'),
(49, 'Bani Lor', '082269573536', 'Basekan, Dagangan, Madiun', 34, 61000.00, '2025-08-03', 'Aktif', '2025-07-19 08:01:56', '2025-07-19 08:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `jumlah_bayar` decimal(12,2) NOT NULL,
  `status_lunas` enum('Lunas','Belum Lunas','Sebagian') NOT NULL DEFAULT 'Belum Lunas',
  `status_terlambat` enum('Tepat Waktu','Terlambat','Sering Terlambat') DEFAULT 'Tepat Waktu',
  `metode_pembayaran` varchar(255) NOT NULL DEFAULT 'Tunai',
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `pelanggan_id`, `tagihan_id`, `tanggal_bayar`, `jumlah_bayar`, `status_lunas`, `status_terlambat`, `metode_pembayaran`, `bukti_pembayaran`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-07-11', 29116.00, 'Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(2, 1, 2, '2025-06-11', 19676.00, 'Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(3, 1, 3, '2025-05-10', 25621.00, 'Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(4, 1, 4, '2025-04-10', 12262.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(5, 1, 5, '2025-03-11', 24779.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(6, 1, 6, '2025-02-09', 48399.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(7, 2, 7, '2025-07-15', 66346.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(8, 2, 8, '2025-06-15', 48755.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(9, 2, 9, '2025-05-15', 38339.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(10, 2, 10, '2025-04-18', 80763.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(11, 2, 11, '2025-03-17', 60245.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(12, 2, 12, '2025-02-11', 51507.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(13, 3, 13, '2025-07-15', 22656.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(14, 3, 14, '2025-06-13', 36981.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(15, 3, 15, '2025-05-10', 60251.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(16, 3, 16, '2025-04-10', 19127.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(17, 3, 17, '2025-03-10', 74999.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(18, 3, 18, '2025-02-11', 81775.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(19, 4, 19, '2025-07-09', 40455.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(20, 4, 20, '2025-06-11', 50107.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(21, 4, 21, '2025-05-10', 69417.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(22, 4, 22, '2025-04-10', 80377.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(23, 4, 23, '2025-03-09', 68241.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(24, 4, 24, '2025-02-10', 22082.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(25, 5, 25, '2025-07-11', 35453.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(26, 5, 26, '2025-06-09', 50100.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(27, 5, 27, '2025-05-11', 75688.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(28, 5, 28, '2025-04-09', 35775.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(29, 5, 29, '2025-03-11', 48063.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(30, 5, 30, '2025-02-10', 15534.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(31, 6, 31, '2025-07-15', 53589.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(32, 6, 32, '2025-06-15', 80124.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(33, 6, 33, '2025-05-17', 14448.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(34, 6, 34, '2025-04-15', 36011.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(35, 6, 35, '2025-03-15', 50067.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(36, 6, 36, '2025-02-10', 24573.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(37, 7, 37, '2025-07-09', 32188.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(38, 7, 38, '2025-06-11', 56408.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(39, 7, 39, '2025-05-14', 25731.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(40, 7, 40, '2025-04-10', 79384.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(41, 7, 41, '2025-03-13', 71776.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(42, 7, 42, '2025-02-11', 16195.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(43, 8, 43, '2025-07-14', 26593.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(44, 8, 44, '2025-06-15', 42874.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(45, 8, 45, '2025-05-15', 37088.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(46, 8, 46, '2025-04-16', 76716.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(47, 8, 47, '2025-03-14', 45548.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(48, 8, 48, '2025-02-10', 78832.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(49, 9, 49, '2025-07-11', 44810.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(50, 9, 50, '2025-06-11', 57212.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(51, 9, 51, '2025-05-10', 45806.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(52, 9, 52, '2025-04-10', 39992.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(53, 9, 53, '2025-03-10', 51079.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(54, 9, 54, '2025-02-10', 47915.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(55, 10, 55, '2025-07-09', 55352.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(56, 10, 56, '2025-06-11', 81488.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(57, 10, 57, '2025-05-11', 31497.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(58, 10, 58, '2025-04-10', 53477.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(59, 10, 59, '2025-03-11', 14192.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(60, 10, 60, '2025-02-11', 54934.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(61, 11, 61, '2025-07-15', 34241.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(62, 11, 62, '2025-06-15', 70899.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(63, 11, 63, '2025-05-16', 43304.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(64, 11, 64, '2025-04-14', 81465.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(65, 11, 65, '2025-03-17', 56883.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(66, 11, 66, '2025-02-11', 63247.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(67, 12, 67, '2025-07-18', 53223.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(68, 12, 68, '2025-06-16', 11521.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(69, 12, 69, '2025-05-15', 58274.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(70, 12, 70, '2025-04-16', 14970.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(71, 12, 71, '2025-03-14', 48273.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(72, 12, 72, '2025-02-09', 53968.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(73, 13, 73, '2025-07-11', 18833.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(74, 13, 74, '2025-06-11', 24822.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(75, 13, 75, '2025-05-10', 45871.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(76, 13, 76, '2025-04-09', 81300.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(77, 13, 77, '2025-03-11', 17262.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(78, 13, 78, '2025-02-09', 81948.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(79, 14, 79, '2025-07-11', 10485.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(80, 14, 80, '2025-06-10', 70062.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(81, 14, 81, '2025-05-10', 70671.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(82, 14, 82, '2025-04-10', 59192.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(83, 14, 83, '2025-03-09', 35359.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(84, 14, 84, '2025-02-11', 52788.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(85, 15, 85, '2025-07-11', 32308.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(86, 15, 86, '2025-06-10', 23638.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(87, 15, 87, '2025-05-09', 11417.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(88, 15, 88, '2025-04-09', 24146.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(89, 15, 89, '2025-03-09', 17998.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(90, 15, 90, '2025-02-09', 32124.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(91, 16, 91, '2025-07-11', 79524.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(92, 16, 92, '2025-06-11', 65085.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(93, 16, 93, '2025-05-09', 16938.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(94, 16, 94, '2025-04-10', 35778.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(95, 16, 95, '2025-03-11', 66047.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(96, 16, 96, '2025-02-14', 74977.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(97, 17, 97, '2025-07-09', 33845.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(98, 17, 98, '2025-06-11', 71294.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(99, 17, 99, '2025-05-10', 57201.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(100, 17, 100, '2025-04-11', 59408.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(101, 17, 101, '2025-03-11', 53479.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(102, 17, 102, '2025-02-09', 40130.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(103, 18, 103, '2025-07-11', 56324.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(104, 18, 104, '2025-06-09', 42394.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(105, 18, 105, '2025-05-10', 35434.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(106, 18, 106, '2025-04-10', 24529.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(107, 18, 107, '2025-03-11', 17417.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(108, 18, 108, '2025-02-11', 71562.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(109, 19, 109, '2025-07-14', 68029.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(110, 19, 110, '2025-06-17', 64543.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(111, 19, 111, '2025-05-17', 33385.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(112, 19, 112, '2025-04-16', 22688.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(113, 19, 113, '2025-03-16', 56720.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(114, 19, 114, '2025-02-11', 44413.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(115, 20, 115, '2025-07-11', 65754.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(116, 20, 116, '2025-06-11', 14154.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(117, 20, 117, '2025-05-11', 12370.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(118, 20, 118, '2025-04-11', 62201.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(119, 20, 119, '2025-03-09', 14758.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(120, 20, 120, '2025-02-09', 50246.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(121, 21, 121, '2025-07-11', 55282.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(122, 21, 122, '2025-06-11', 30675.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(123, 21, 123, '2025-05-09', 69339.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(124, 21, 124, '2025-04-11', 31033.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(125, 21, 125, '2025-03-09', 21409.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(126, 21, 126, '2025-02-09', 68533.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(127, 22, 127, '2025-07-09', 37555.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(128, 22, 128, '2025-06-09', 78636.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(129, 22, 129, '2025-05-09', 18944.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(130, 22, 130, '2025-04-09', 26390.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(131, 22, 131, '2025-03-11', 26103.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(132, 22, 132, '2025-02-11', 23845.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(133, 23, 133, '2025-07-11', 15958.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(134, 23, 134, '2025-06-11', 18700.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(135, 23, 135, '2025-05-09', 12128.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(136, 23, 136, '2025-04-10', 79843.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(137, 23, 137, '2025-03-10', 13932.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(138, 23, 138, '2025-02-11', 57012.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(139, 24, 139, '2025-07-09', 72512.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(140, 24, 140, '2025-06-10', 33684.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(141, 24, 141, '2025-05-11', 27335.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(142, 24, 142, '2025-04-10', 68819.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(143, 24, 143, '2025-03-11', 70863.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(144, 24, 144, '2025-02-10', 24761.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(145, 25, 145, '2025-07-15', 39984.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(146, 25, 146, '2025-06-15', 11070.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(147, 25, 147, '2025-05-14', 81395.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(148, 25, 148, '2025-04-17', 68324.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(149, 25, 149, '2025-03-17', 47666.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(150, 25, 150, '2025-02-09', 52497.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(151, 26, 151, '2025-07-16', 31073.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(152, 26, 152, '2025-06-17', 48498.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(153, 26, 153, '2025-05-18', 62682.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(154, 26, 154, '2025-04-18', 72089.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(155, 26, 155, '2025-03-18', 38641.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(156, 26, 156, '2025-02-09', 22546.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(157, 27, 157, '2025-07-17', 81488.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(158, 27, 158, '2025-06-18', 67380.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(159, 27, 159, '2025-05-17', 72327.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(160, 27, 160, '2025-04-17', 66221.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(161, 27, 161, '2025-03-17', 37139.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(162, 27, 162, '2025-02-10', 39856.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(163, 28, 163, '2025-07-10', 11084.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(164, 28, 164, '2025-06-11', 66998.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(165, 28, 165, '2025-05-09', 21366.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(166, 28, 166, '2025-04-10', 36619.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(167, 28, 167, '2025-03-09', 13038.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(168, 28, 168, '2025-02-11', 14892.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(169, 29, 169, '2025-07-13', 26810.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(170, 29, 170, '2025-06-14', 60625.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(171, 29, 171, '2025-05-11', 44210.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(172, 29, 172, '2025-04-09', 34596.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(173, 29, 173, '2025-03-10', 27806.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(174, 29, 174, '2025-02-11', 47356.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(175, 30, 175, '2025-07-13', 32262.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(176, 30, 176, '2025-06-15', 33668.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(177, 30, 177, '2025-05-10', 47139.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(178, 30, 178, '2025-04-09', 27798.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(179, 30, 179, '2025-03-11', 47240.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(180, 30, 180, '2025-02-10', 65882.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(181, 31, 181, '2025-07-11', 20053.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(182, 31, 182, '2025-06-12', 68509.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(183, 31, 183, '2025-05-13', 40973.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(184, 31, 184, '2025-04-11', 71707.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(185, 31, 185, '2025-03-09', 58651.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(186, 31, 186, '2025-02-11', 36240.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(187, 32, 187, '2025-07-11', 66557.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(188, 32, 188, '2025-06-09', 69169.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(189, 32, 189, '2025-05-09', 60248.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(190, 32, 190, '2025-04-09', 38292.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(191, 32, 191, '2025-03-11', 32238.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(192, 32, 192, '2025-02-09', 74862.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(193, 33, 193, '2025-07-11', 14523.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(194, 33, 194, '2025-06-11', 37325.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(195, 33, 195, '2025-05-09', 53639.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(196, 33, 196, '2025-04-10', 31655.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(197, 33, 197, '2025-03-11', 38533.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(198, 33, 198, '2025-02-11', 14455.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(199, 34, 199, '2025-07-10', 45406.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(200, 34, 200, '2025-06-11', 77924.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(201, 34, 201, '2025-05-10', 12632.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(202, 34, 202, '2025-04-11', 68562.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(203, 34, 203, '2025-03-10', 32425.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(204, 34, 204, '2025-02-11', 47943.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(205, 35, 205, '2025-07-11', 11496.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(206, 35, 206, '2025-06-09', 48732.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(207, 35, 207, '2025-05-09', 68395.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(208, 35, 208, '2025-04-11', 31975.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(209, 35, 209, '2025-03-10', 56100.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(210, 35, 210, '2025-02-09', 73191.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(211, 36, 211, '2025-07-11', 62918.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(212, 36, 212, '2025-06-11', 71537.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(213, 36, 213, '2025-05-13', 32852.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(214, 36, 214, '2025-04-11', 77169.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(215, 36, 215, '2025-03-09', 52333.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(216, 36, 216, '2025-02-14', 48714.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(217, 37, 217, '2025-07-10', 70893.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(218, 37, 218, '2025-06-09', 25295.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(219, 37, 219, '2025-05-11', 25855.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(220, 37, 220, '2025-04-10', 37454.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(221, 37, 221, '2025-03-10', 49442.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(222, 37, 222, '2025-02-11', 77909.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(223, 38, 223, '2025-07-14', 70150.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(224, 38, 224, '2025-06-15', 44946.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(225, 38, 225, '2025-05-18', 78781.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(226, 38, 226, '2025-04-18', 76884.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(227, 38, 227, '2025-03-17', 69050.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(228, 38, 228, '2025-02-11', 78829.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(229, 39, 229, '2025-07-14', 19367.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(230, 39, 230, '2025-06-14', 70464.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(231, 39, 231, '2025-05-14', 25693.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(232, 39, 232, '2025-04-16', 45715.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(233, 39, 233, '2025-03-18', 19825.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(234, 39, 234, '2025-02-10', 74750.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(235, 40, 235, '2025-07-09', 72358.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(236, 40, 236, '2025-06-11', 51414.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(237, 40, 237, '2025-05-11', 30955.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(238, 40, 238, '2025-04-11', 46044.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(239, 40, 239, '2025-03-10', 31938.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(240, 40, 240, '2025-02-09', 74577.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(241, 41, 241, '2025-07-09', 33802.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(242, 41, 242, '2025-06-11', 68230.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(243, 41, 243, '2025-05-09', 77883.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(244, 41, 244, '2025-04-09', 19323.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(245, 41, 245, '2025-03-10', 43678.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(246, 41, 246, '2025-02-10', 50786.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(247, 42, 247, '2025-07-10', 11119.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(248, 42, 248, '2025-06-10', 40141.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(249, 42, 249, '2025-05-09', 45070.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(250, 42, 250, '2025-04-09', 66862.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(251, 42, 251, '2025-03-10', 44429.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(252, 42, 252, '2025-02-09', 25132.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(253, 43, 253, '2025-07-10', 42247.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(254, 43, 254, '2025-06-11', 60807.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(255, 43, 255, '2025-05-09', 54464.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(256, 43, 256, '2025-04-10', 69713.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(257, 43, 257, '2025-03-10', 12564.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(258, 43, 258, '2025-02-09', 58475.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(259, 44, 259, '2025-07-10', 45747.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(260, 44, 260, '2025-06-11', 46388.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(261, 44, 261, '2025-05-09', 59964.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(262, 44, 262, '2025-04-11', 15517.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(263, 44, 263, '2025-03-11', 58622.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(264, 44, 264, '2025-02-09', 13523.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(265, 45, 265, '2025-07-17', 58678.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(266, 45, 266, '2025-06-15', 71163.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(267, 45, 267, '2025-05-17', 57576.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(268, 45, 268, '2025-04-15', 28191.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(269, 45, 269, '2025-03-18', 14576.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(270, 45, 270, '2025-02-10', 31562.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(271, 46, 271, '2025-07-15', 15974.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(272, 46, 272, '2025-06-11', 71386.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(273, 46, 273, '2025-05-14', 27238.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(274, 46, 274, '2025-04-11', 15162.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(275, 46, 275, '2025-03-09', 11000.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(276, 46, 276, '2025-02-09', 69771.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(277, 47, 277, '2025-07-12', 59966.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(278, 47, 278, '2025-06-12', 11383.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(279, 47, 279, '2025-05-09', 73483.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(280, 47, 280, '2025-04-10', 59485.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(281, 47, 281, '2025-03-09', 54405.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(282, 47, 282, '2025-02-11', 25667.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(283, 48, 283, '2025-07-09', 25713.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(284, 48, 284, '2025-06-09', 36208.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(285, 48, 285, '2025-05-09', 44311.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(286, 48, 286, '2025-04-11', 11155.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(287, 48, 287, '2025-03-11', 15427.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(288, 48, 288, '2025-02-11', 57809.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(289, 49, 289, '2025-07-17', 41617.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(290, 49, 290, '2025-06-17', 26151.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(291, 49, 291, '2025-05-15', 28181.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(292, 49, 292, '2025-04-15', 74809.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(293, 49, 293, '2025-03-17', 78855.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(294, 49, 294, '2025-02-10', 21335.00, 'Belum Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(295, 1, 295, '2025-01-01', 25000.00, 'Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:15:28', '2025-07-19 08:15:28'),
(296, 4, 296, '2025-01-01', 46000.00, 'Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:15:44', '2025-07-19 08:15:44'),
(297, 7, 297, '2025-01-01', 31000.00, 'Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-19 08:15:59', '2025-07-19 08:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `pengingats`
--

CREATE TABLE `pengingats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `no_wa` varchar(255) NOT NULL,
  `jumlah_tagihan` int(11) NOT NULL,
  `tanggal_dikirim` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_pengiriman` varchar(255) NOT NULL DEFAULT 'gagal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `tagihans`
--

CREATE TABLE `tagihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_tagihan` date DEFAULT NULL,
  `bulan` tinyint(3) UNSIGNED NOT NULL,
  `tahun` smallint(5) UNSIGNED NOT NULL,
  `jumlah_tagihan` decimal(12,2) NOT NULL,
  `air_dipakai` int(10) UNSIGNED NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `status` enum('Belum Lunas','Lunas','Terlambat','Sebagian') NOT NULL DEFAULT 'Belum Lunas',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagihans`
--

INSERT INTO `tagihans` (`id`, `pelanggan_id`, `tanggal_tagihan`, `bulan`, `tahun`, `jumlah_tagihan`, `air_dipakai`, `tanggal_jatuh_tempo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-07-01', 7, 2025, 29116.00, 26, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(2, 1, '2025-06-01', 6, 2025, 19676.00, 18, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(3, 1, '2025-05-01', 5, 2025, 25621.00, 28, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(4, 1, '2025-04-01', 4, 2025, 12262.00, 19, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(5, 1, '2025-03-01', 3, 2025, 24779.00, 21, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(6, 1, '2025-02-01', 2, 2025, 48399.00, 26, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(7, 2, '2025-07-01', 7, 2025, 66346.00, 10, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(8, 2, '2025-06-01', 6, 2025, 48755.00, 7, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(9, 2, '2025-05-01', 5, 2025, 38339.00, 21, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(10, 2, '2025-04-01', 4, 2025, 80763.00, 18, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(11, 2, '2025-03-01', 3, 2025, 60245.00, 7, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(12, 2, '2025-02-01', 2, 2025, 51507.00, 9, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(13, 3, '2025-07-01', 7, 2025, 22656.00, 30, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(14, 3, '2025-06-01', 6, 2025, 36981.00, 22, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(15, 3, '2025-05-01', 5, 2025, 60251.00, 26, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(16, 3, '2025-04-01', 4, 2025, 19127.00, 18, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(17, 3, '2025-03-01', 3, 2025, 74999.00, 28, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(18, 3, '2025-02-01', 2, 2025, 81775.00, 21, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(19, 4, '2025-07-01', 7, 2025, 40455.00, 14, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(20, 4, '2025-06-01', 6, 2025, 50107.00, 24, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(21, 4, '2025-05-01', 5, 2025, 69417.00, 19, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(22, 4, '2025-04-01', 4, 2025, 80377.00, 22, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(23, 4, '2025-03-01', 3, 2025, 68241.00, 22, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(24, 4, '2025-02-01', 2, 2025, 22082.00, 8, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(25, 5, '2025-07-01', 7, 2025, 35453.00, 28, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(26, 5, '2025-06-01', 6, 2025, 50100.00, 23, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(27, 5, '2025-05-01', 5, 2025, 75688.00, 8, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(28, 5, '2025-04-01', 4, 2025, 35775.00, 15, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(29, 5, '2025-03-01', 3, 2025, 48063.00, 5, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(30, 5, '2025-02-01', 2, 2025, 15534.00, 14, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(31, 6, '2025-07-01', 7, 2025, 53589.00, 20, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(32, 6, '2025-06-01', 6, 2025, 80124.00, 20, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(33, 6, '2025-05-01', 5, 2025, 14448.00, 16, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(34, 6, '2025-04-01', 4, 2025, 36011.00, 7, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(35, 6, '2025-03-01', 3, 2025, 50067.00, 23, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(36, 6, '2025-02-01', 2, 2025, 24573.00, 10, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(37, 7, '2025-07-01', 7, 2025, 32188.00, 30, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(38, 7, '2025-06-01', 6, 2025, 56408.00, 29, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(39, 7, '2025-05-01', 5, 2025, 25731.00, 6, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(40, 7, '2025-04-01', 4, 2025, 79384.00, 15, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(41, 7, '2025-03-01', 3, 2025, 71776.00, 19, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(42, 7, '2025-02-01', 2, 2025, 16195.00, 24, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(43, 8, '2025-07-01', 7, 2025, 26593.00, 23, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(44, 8, '2025-06-01', 6, 2025, 42874.00, 23, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(45, 8, '2025-05-01', 5, 2025, 37088.00, 22, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(46, 8, '2025-04-01', 4, 2025, 76716.00, 9, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(47, 8, '2025-03-01', 3, 2025, 45548.00, 30, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(48, 8, '2025-02-01', 2, 2025, 78832.00, 7, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(49, 9, '2025-07-01', 7, 2025, 44810.00, 6, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(50, 9, '2025-06-01', 6, 2025, 57212.00, 20, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(51, 9, '2025-05-01', 5, 2025, 45806.00, 18, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(52, 9, '2025-04-01', 4, 2025, 39992.00, 13, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(53, 9, '2025-03-01', 3, 2025, 51079.00, 14, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(54, 9, '2025-02-01', 2, 2025, 47915.00, 30, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(55, 10, '2025-07-01', 7, 2025, 55352.00, 24, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(56, 10, '2025-06-01', 6, 2025, 81488.00, 9, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(57, 10, '2025-05-01', 5, 2025, 31497.00, 20, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(58, 10, '2025-04-01', 4, 2025, 53477.00, 23, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(59, 10, '2025-03-01', 3, 2025, 14192.00, 12, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(60, 10, '2025-02-01', 2, 2025, 54934.00, 8, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(61, 11, '2025-07-01', 7, 2025, 34241.00, 9, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(62, 11, '2025-06-01', 6, 2025, 70899.00, 6, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(63, 11, '2025-05-01', 5, 2025, 43304.00, 8, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(64, 11, '2025-04-01', 4, 2025, 81465.00, 10, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(65, 11, '2025-03-01', 3, 2025, 56883.00, 14, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(66, 11, '2025-02-01', 2, 2025, 63247.00, 25, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(67, 12, '2025-07-01', 7, 2025, 53223.00, 17, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(68, 12, '2025-06-01', 6, 2025, 11521.00, 7, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(69, 12, '2025-05-01', 5, 2025, 58274.00, 25, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(70, 12, '2025-04-01', 4, 2025, 14970.00, 9, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(71, 12, '2025-03-01', 3, 2025, 48273.00, 30, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(72, 12, '2025-02-01', 2, 2025, 53968.00, 10, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(73, 13, '2025-07-01', 7, 2025, 18833.00, 23, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(74, 13, '2025-06-01', 6, 2025, 24822.00, 28, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(75, 13, '2025-05-01', 5, 2025, 45871.00, 18, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(76, 13, '2025-04-01', 4, 2025, 81300.00, 15, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(77, 13, '2025-03-01', 3, 2025, 17262.00, 11, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(78, 13, '2025-02-01', 2, 2025, 81948.00, 19, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(79, 14, '2025-07-01', 7, 2025, 10485.00, 30, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(80, 14, '2025-06-01', 6, 2025, 70062.00, 22, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(81, 14, '2025-05-01', 5, 2025, 70671.00, 15, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(82, 14, '2025-04-01', 4, 2025, 59192.00, 11, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(83, 14, '2025-03-01', 3, 2025, 35359.00, 29, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(84, 14, '2025-02-01', 2, 2025, 52788.00, 15, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(85, 15, '2025-07-01', 7, 2025, 32308.00, 29, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(86, 15, '2025-06-01', 6, 2025, 23638.00, 15, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(87, 15, '2025-05-01', 5, 2025, 11417.00, 22, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(88, 15, '2025-04-01', 4, 2025, 24146.00, 10, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(89, 15, '2025-03-01', 3, 2025, 17998.00, 7, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(90, 15, '2025-02-01', 2, 2025, 32124.00, 16, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(91, 16, '2025-07-01', 7, 2025, 79524.00, 18, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(92, 16, '2025-06-01', 6, 2025, 65085.00, 12, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(93, 16, '2025-05-01', 5, 2025, 16938.00, 12, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(94, 16, '2025-04-01', 4, 2025, 35778.00, 26, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(95, 16, '2025-03-01', 3, 2025, 66047.00, 29, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(96, 16, '2025-02-01', 2, 2025, 74977.00, 21, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(97, 17, '2025-07-01', 7, 2025, 33845.00, 16, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(98, 17, '2025-06-01', 6, 2025, 71294.00, 22, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(99, 17, '2025-05-01', 5, 2025, 57201.00, 5, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(100, 17, '2025-04-01', 4, 2025, 59408.00, 25, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(101, 17, '2025-03-01', 3, 2025, 53479.00, 16, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(102, 17, '2025-02-01', 2, 2025, 40130.00, 15, '2025-02-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(103, 18, '2025-07-01', 7, 2025, 56324.00, 17, '2025-07-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(104, 18, '2025-06-01', 6, 2025, 42394.00, 19, '2025-06-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(105, 18, '2025-05-01', 5, 2025, 35434.00, 9, '2025-05-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(106, 18, '2025-04-01', 4, 2025, 24529.00, 30, '2025-04-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(107, 18, '2025-03-01', 3, 2025, 17417.00, 13, '2025-03-11', 'Lunas', '2025-07-19 08:07:58', '2025-07-19 08:07:58'),
(108, 18, '2025-02-01', 2, 2025, 71562.00, 10, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(109, 19, '2025-07-01', 7, 2025, 68029.00, 21, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(110, 19, '2025-06-01', 6, 2025, 64543.00, 26, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(111, 19, '2025-05-01', 5, 2025, 33385.00, 9, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(112, 19, '2025-04-01', 4, 2025, 22688.00, 26, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(113, 19, '2025-03-01', 3, 2025, 56720.00, 15, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(114, 19, '2025-02-01', 2, 2025, 44413.00, 15, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(115, 20, '2025-07-01', 7, 2025, 65754.00, 25, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(116, 20, '2025-06-01', 6, 2025, 14154.00, 23, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(117, 20, '2025-05-01', 5, 2025, 12370.00, 29, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(118, 20, '2025-04-01', 4, 2025, 62201.00, 13, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(119, 20, '2025-03-01', 3, 2025, 14758.00, 9, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(120, 20, '2025-02-01', 2, 2025, 50246.00, 28, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(121, 21, '2025-07-01', 7, 2025, 55282.00, 25, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(122, 21, '2025-06-01', 6, 2025, 30675.00, 20, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(123, 21, '2025-05-01', 5, 2025, 69339.00, 12, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(124, 21, '2025-04-01', 4, 2025, 31033.00, 13, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(125, 21, '2025-03-01', 3, 2025, 21409.00, 8, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(126, 21, '2025-02-01', 2, 2025, 68533.00, 11, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(127, 22, '2025-07-01', 7, 2025, 37555.00, 22, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(128, 22, '2025-06-01', 6, 2025, 78636.00, 8, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(129, 22, '2025-05-01', 5, 2025, 18944.00, 5, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(130, 22, '2025-04-01', 4, 2025, 26390.00, 26, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(131, 22, '2025-03-01', 3, 2025, 26103.00, 16, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(132, 22, '2025-02-01', 2, 2025, 23845.00, 6, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(133, 23, '2025-07-01', 7, 2025, 15958.00, 20, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(134, 23, '2025-06-01', 6, 2025, 18700.00, 11, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(135, 23, '2025-05-01', 5, 2025, 12128.00, 9, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(136, 23, '2025-04-01', 4, 2025, 79843.00, 17, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(137, 23, '2025-03-01', 3, 2025, 13932.00, 19, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(138, 23, '2025-02-01', 2, 2025, 57012.00, 19, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(139, 24, '2025-07-01', 7, 2025, 72512.00, 30, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(140, 24, '2025-06-01', 6, 2025, 33684.00, 9, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(141, 24, '2025-05-01', 5, 2025, 27335.00, 18, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(142, 24, '2025-04-01', 4, 2025, 68819.00, 16, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(143, 24, '2025-03-01', 3, 2025, 70863.00, 29, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(144, 24, '2025-02-01', 2, 2025, 24761.00, 9, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(145, 25, '2025-07-01', 7, 2025, 39984.00, 22, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(146, 25, '2025-06-01', 6, 2025, 11070.00, 8, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(147, 25, '2025-05-01', 5, 2025, 81395.00, 14, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(148, 25, '2025-04-01', 4, 2025, 68324.00, 12, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(149, 25, '2025-03-01', 3, 2025, 47666.00, 30, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(150, 25, '2025-02-01', 2, 2025, 52497.00, 6, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(151, 26, '2025-07-01', 7, 2025, 31073.00, 26, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(152, 26, '2025-06-01', 6, 2025, 48498.00, 17, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(153, 26, '2025-05-01', 5, 2025, 62682.00, 5, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(154, 26, '2025-04-01', 4, 2025, 72089.00, 7, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(155, 26, '2025-03-01', 3, 2025, 38641.00, 20, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(156, 26, '2025-02-01', 2, 2025, 22546.00, 7, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(157, 27, '2025-07-01', 7, 2025, 81488.00, 8, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(158, 27, '2025-06-01', 6, 2025, 67380.00, 22, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(159, 27, '2025-05-01', 5, 2025, 72327.00, 23, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(160, 27, '2025-04-01', 4, 2025, 66221.00, 18, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(161, 27, '2025-03-01', 3, 2025, 37139.00, 9, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(162, 27, '2025-02-01', 2, 2025, 39856.00, 5, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(163, 28, '2025-07-01', 7, 2025, 11084.00, 22, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(164, 28, '2025-06-01', 6, 2025, 66998.00, 20, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(165, 28, '2025-05-01', 5, 2025, 21366.00, 7, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(166, 28, '2025-04-01', 4, 2025, 36619.00, 24, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(167, 28, '2025-03-01', 3, 2025, 13038.00, 23, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(168, 28, '2025-02-01', 2, 2025, 14892.00, 16, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(169, 29, '2025-07-01', 7, 2025, 26810.00, 8, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(170, 29, '2025-06-01', 6, 2025, 60625.00, 25, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(171, 29, '2025-05-01', 5, 2025, 44210.00, 13, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(172, 29, '2025-04-01', 4, 2025, 34596.00, 7, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(173, 29, '2025-03-01', 3, 2025, 27806.00, 9, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(174, 29, '2025-02-01', 2, 2025, 47356.00, 10, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(175, 30, '2025-07-01', 7, 2025, 32262.00, 5, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(176, 30, '2025-06-01', 6, 2025, 33668.00, 25, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(177, 30, '2025-05-01', 5, 2025, 47139.00, 25, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(178, 30, '2025-04-01', 4, 2025, 27798.00, 26, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(179, 30, '2025-03-01', 3, 2025, 47240.00, 16, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(180, 30, '2025-02-01', 2, 2025, 65882.00, 24, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(181, 31, '2025-07-01', 7, 2025, 20053.00, 24, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(182, 31, '2025-06-01', 6, 2025, 68509.00, 13, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(183, 31, '2025-05-01', 5, 2025, 40973.00, 11, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(184, 31, '2025-04-01', 4, 2025, 71707.00, 5, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(185, 31, '2025-03-01', 3, 2025, 58651.00, 19, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(186, 31, '2025-02-01', 2, 2025, 36240.00, 10, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(187, 32, '2025-07-01', 7, 2025, 66557.00, 16, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(188, 32, '2025-06-01', 6, 2025, 69169.00, 29, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(189, 32, '2025-05-01', 5, 2025, 60248.00, 8, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(190, 32, '2025-04-01', 4, 2025, 38292.00, 11, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(191, 32, '2025-03-01', 3, 2025, 32238.00, 25, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(192, 32, '2025-02-01', 2, 2025, 74862.00, 7, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(193, 33, '2025-07-01', 7, 2025, 14523.00, 28, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(194, 33, '2025-06-01', 6, 2025, 37325.00, 14, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(195, 33, '2025-05-01', 5, 2025, 53639.00, 7, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(196, 33, '2025-04-01', 4, 2025, 31655.00, 16, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(197, 33, '2025-03-01', 3, 2025, 38533.00, 16, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(198, 33, '2025-02-01', 2, 2025, 14455.00, 7, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(199, 34, '2025-07-01', 7, 2025, 45406.00, 21, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(200, 34, '2025-06-01', 6, 2025, 77924.00, 17, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(201, 34, '2025-05-01', 5, 2025, 12632.00, 15, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(202, 34, '2025-04-01', 4, 2025, 68562.00, 13, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(203, 34, '2025-03-01', 3, 2025, 32425.00, 8, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(204, 34, '2025-02-01', 2, 2025, 47943.00, 12, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(205, 35, '2025-07-01', 7, 2025, 11496.00, 17, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(206, 35, '2025-06-01', 6, 2025, 48732.00, 22, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(207, 35, '2025-05-01', 5, 2025, 68395.00, 29, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(208, 35, '2025-04-01', 4, 2025, 31975.00, 11, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(209, 35, '2025-03-01', 3, 2025, 56100.00, 6, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(210, 35, '2025-02-01', 2, 2025, 73191.00, 15, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(211, 36, '2025-07-01', 7, 2025, 62918.00, 27, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(212, 36, '2025-06-01', 6, 2025, 71537.00, 15, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(213, 36, '2025-05-01', 5, 2025, 32852.00, 15, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(214, 36, '2025-04-01', 4, 2025, 77169.00, 28, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(215, 36, '2025-03-01', 3, 2025, 52333.00, 30, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(216, 36, '2025-02-01', 2, 2025, 48714.00, 30, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(217, 37, '2025-07-01', 7, 2025, 70893.00, 25, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(218, 37, '2025-06-01', 6, 2025, 25295.00, 8, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(219, 37, '2025-05-01', 5, 2025, 25855.00, 26, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(220, 37, '2025-04-01', 4, 2025, 37454.00, 23, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(221, 37, '2025-03-01', 3, 2025, 49442.00, 28, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(222, 37, '2025-02-01', 2, 2025, 77909.00, 5, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(223, 38, '2025-07-01', 7, 2025, 70150.00, 13, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(224, 38, '2025-06-01', 6, 2025, 44946.00, 26, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(225, 38, '2025-05-01', 5, 2025, 78781.00, 23, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(226, 38, '2025-04-01', 4, 2025, 76884.00, 15, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(227, 38, '2025-03-01', 3, 2025, 69050.00, 5, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(228, 38, '2025-02-01', 2, 2025, 78829.00, 18, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(229, 39, '2025-07-01', 7, 2025, 19367.00, 10, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(230, 39, '2025-06-01', 6, 2025, 70464.00, 7, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(231, 39, '2025-05-01', 5, 2025, 25693.00, 19, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(232, 39, '2025-04-01', 4, 2025, 45715.00, 27, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(233, 39, '2025-03-01', 3, 2025, 19825.00, 14, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(234, 39, '2025-02-01', 2, 2025, 74750.00, 6, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(235, 40, '2025-07-01', 7, 2025, 72358.00, 26, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(236, 40, '2025-06-01', 6, 2025, 51414.00, 9, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(237, 40, '2025-05-01', 5, 2025, 30955.00, 11, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(238, 40, '2025-04-01', 4, 2025, 46044.00, 18, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(239, 40, '2025-03-01', 3, 2025, 31938.00, 16, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(240, 40, '2025-02-01', 2, 2025, 74577.00, 25, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(241, 41, '2025-07-01', 7, 2025, 33802.00, 15, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(242, 41, '2025-06-01', 6, 2025, 68230.00, 13, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(243, 41, '2025-05-01', 5, 2025, 77883.00, 18, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(244, 41, '2025-04-01', 4, 2025, 19323.00, 18, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(245, 41, '2025-03-01', 3, 2025, 43678.00, 18, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(246, 41, '2025-02-01', 2, 2025, 50786.00, 27, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(247, 42, '2025-07-01', 7, 2025, 11119.00, 24, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(248, 42, '2025-06-01', 6, 2025, 40141.00, 20, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(249, 42, '2025-05-01', 5, 2025, 45070.00, 17, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(250, 42, '2025-04-01', 4, 2025, 66862.00, 22, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(251, 42, '2025-03-01', 3, 2025, 44429.00, 6, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(252, 42, '2025-02-01', 2, 2025, 25132.00, 27, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(253, 43, '2025-07-01', 7, 2025, 42247.00, 7, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(254, 43, '2025-06-01', 6, 2025, 60807.00, 26, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(255, 43, '2025-05-01', 5, 2025, 54464.00, 5, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(256, 43, '2025-04-01', 4, 2025, 69713.00, 10, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(257, 43, '2025-03-01', 3, 2025, 12564.00, 24, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(258, 43, '2025-02-01', 2, 2025, 58475.00, 15, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(259, 44, '2025-07-01', 7, 2025, 45747.00, 28, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(260, 44, '2025-06-01', 6, 2025, 46388.00, 16, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(261, 44, '2025-05-01', 5, 2025, 59964.00, 14, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(262, 44, '2025-04-01', 4, 2025, 15517.00, 17, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(263, 44, '2025-03-01', 3, 2025, 58622.00, 10, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(264, 44, '2025-02-01', 2, 2025, 13523.00, 27, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(265, 45, '2025-07-01', 7, 2025, 58678.00, 26, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(266, 45, '2025-06-01', 6, 2025, 71163.00, 27, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(267, 45, '2025-05-01', 5, 2025, 57576.00, 21, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(268, 45, '2025-04-01', 4, 2025, 28191.00, 13, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(269, 45, '2025-03-01', 3, 2025, 14576.00, 9, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(270, 45, '2025-02-01', 2, 2025, 31562.00, 6, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(271, 46, '2025-07-01', 7, 2025, 15974.00, 17, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(272, 46, '2025-06-01', 6, 2025, 71386.00, 25, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(273, 46, '2025-05-01', 5, 2025, 27238.00, 13, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(274, 46, '2025-04-01', 4, 2025, 15162.00, 27, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(275, 46, '2025-03-01', 3, 2025, 11000.00, 17, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(276, 46, '2025-02-01', 2, 2025, 69771.00, 21, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(277, 47, '2025-07-01', 7, 2025, 59966.00, 23, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(278, 47, '2025-06-01', 6, 2025, 11383.00, 22, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(279, 47, '2025-05-01', 5, 2025, 73483.00, 21, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(280, 47, '2025-04-01', 4, 2025, 59485.00, 18, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(281, 47, '2025-03-01', 3, 2025, 54405.00, 27, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(282, 47, '2025-02-01', 2, 2025, 25667.00, 16, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(283, 48, '2025-07-01', 7, 2025, 25713.00, 25, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(284, 48, '2025-06-01', 6, 2025, 36208.00, 5, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(285, 48, '2025-05-01', 5, 2025, 44311.00, 9, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(286, 48, '2025-04-01', 4, 2025, 11155.00, 26, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(287, 48, '2025-03-01', 3, 2025, 15427.00, 10, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(288, 48, '2025-02-01', 2, 2025, 57809.00, 7, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(289, 49, '2025-07-01', 7, 2025, 41617.00, 20, '2025-07-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(290, 49, '2025-06-01', 6, 2025, 26151.00, 24, '2025-06-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(291, 49, '2025-05-01', 5, 2025, 28181.00, 11, '2025-05-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(292, 49, '2025-04-01', 4, 2025, 74809.00, 9, '2025-04-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(293, 49, '2025-03-01', 3, 2025, 78855.00, 23, '2025-03-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(294, 49, '2025-02-01', 2, 2025, 21335.00, 13, '2025-02-11', 'Lunas', '2025-07-19 08:07:59', '2025-07-19 08:07:59'),
(295, 1, NULL, 1, 2025, 25000.00, 8, '2025-01-04', 'Lunas', '2025-07-19 08:11:20', '2025-07-19 08:15:28'),
(296, 4, NULL, 1, 2025, 46000.00, 24, '2025-01-04', 'Lunas', '2025-07-19 08:14:31', '2025-07-19 08:15:44'),
(297, 7, NULL, 1, 2025, 31000.00, 14, '2025-01-04', 'Lunas', '2025-07-19 08:15:03', '2025-07-19 08:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Tirto', 'admin@tirto.test', NULL, '$2y$10$gcth0aUguCvE20DuHGuTMeUOS8Y.i5a8xHoq3Xbmbc60DeoYPp/fG', 'admin', NULL, '2025-07-19 08:01:59', '2025-07-19 08:01:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clusterings`
--
ALTER TABLE `clusterings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clusterings_pelanggan_id_foreign` (`pelanggan_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayarans_pelanggan_id_index` (`pelanggan_id`),
  ADD KEY `pembayarans_tagihan_id_index` (`tagihan_id`),
  ADD KEY `pembayarans_tanggal_bayar_index` (`tanggal_bayar`);

--
-- Indexes for table `pengingats`
--
ALTER TABLE `pengingats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengingats_pelanggan_id_foreign` (`pelanggan_id`),
  ADD KEY `pengingats_tagihan_id_foreign` (`tagihan_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tagihans_pelanggan_id_bulan_tahun_unique` (`pelanggan_id`,`bulan`,`tahun`),
  ADD KEY `tagihans_pelanggan_id_index` (`pelanggan_id`),
  ADD KEY `tagihans_bulan_tahun_index` (`bulan`,`tahun`),
  ADD KEY `tagihans_status_index` (`status`),
  ADD KEY `tagihans_tanggal_jatuh_tempo_index` (`tanggal_jatuh_tempo`);

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
-- AUTO_INCREMENT for table `clusterings`
--
ALTER TABLE `clusterings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `pengingats`
--
ALTER TABLE `pengingats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tagihans`
--
ALTER TABLE `tagihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clusterings`
--
ALTER TABLE `clusterings`
  ADD CONSTRAINT `clusterings_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD CONSTRAINT `pembayarans_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayarans_tagihan_id_foreign` FOREIGN KEY (`tagihan_id`) REFERENCES `tagihans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengingats`
--
ALTER TABLE `pengingats`
  ADD CONSTRAINT `pengingats_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengingats_tagihan_id_foreign` FOREIGN KEY (`tagihan_id`) REFERENCES `tagihans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD CONSTRAINT `tagihans_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggans` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
