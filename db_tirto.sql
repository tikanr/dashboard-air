-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2025 at 02:16 AM
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
(1, 1, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(2, 2, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(3, 3, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(4, 4, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(5, 5, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(6, 6, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(7, 7, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(8, 8, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(9, 9, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(10, 10, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(11, 11, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(12, 12, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(13, 13, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(14, 14, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(15, 15, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(16, 16, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(17, 17, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(18, 18, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(19, 19, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(20, 20, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(21, 21, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(22, 22, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(23, 23, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(24, 24, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(25, 25, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(26, 26, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(27, 27, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(28, 28, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(29, 29, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(30, 30, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(31, 31, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(32, 32, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(33, 33, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(34, 34, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(35, 35, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(36, 36, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(37, 37, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(38, 38, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(39, 39, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(40, 40, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(41, 41, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(42, 42, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(43, 43, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(44, 44, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(45, 45, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(46, 46, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(47, 47, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(48, 48, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL),
(49, 49, 0, 0.00, 0, NULL, '2025-07-05 23:03:45', '2025-07-05 23:03:45', NULL, NULL);

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
(52, '2014_10_12_000000_create_users_table', 1),
(53, '2014_10_12_100000_create_password_resets_table', 1),
(54, '2019_08_19_000000_create_failed_jobs_table', 1),
(55, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(56, '2025_05_25_080131_create_pelanggans_table', 1),
(57, '2025_05_25_080132_create_tagihans_table', 1),
(58, '2025_05_25_080143_create_pembayarans_table', 1),
(59, '2025_05_25_080152_create_clusterings_table', 1),
(60, '2025_05_25_080201_create_pengingats_table', 1),
(61, '2025_06_18_133922_update_status_terlambat_enum_on_pembayarans_table', 1),
(62, '2025_06_29_085349_create_laporans_table', 1),
(63, '2025_06_29_103944_add_role_to_users_table', 1),
(64, '2025_07_06_053734_add_bulan_tahun_to_clusterings_table', 1);

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
(1, 'Sudar', '083701818307', 'Dagangan, Madiun', 8, 25000.00, '2025-07-20', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(2, 'Andik', '082002128130', 'Dagangan, Madiun', 21, 41500.00, '2025-07-16', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(3, 'Paimin', '087263586273', 'Dagangan, Madiun', 19, 38500.00, '2025-07-21', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(4, 'Rodin', '083549889778', 'Dagangan, Madiun', 24, 46000.00, '2025-07-15', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(5, 'Dafit', '087758021782', 'Dagangan, Madiun', 6, 25000.00, '2025-07-16', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(6, 'Silo', '088836393068', 'Dagangan, Madiun', 13, 29500.00, '2025-07-19', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(7, 'Saelan', '088332568066', 'Dagangan, Madiun', 14, 31000.00, '2025-07-11', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(8, 'Parmon', '088770622869', 'Dagangan, Madiun', 11, 26500.00, '2025-07-14', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(9, 'Kabib', '087256480417', 'Dagangan, Madiun', 6, 25000.00, '2025-07-13', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(10, 'Tumijan', '081871945143', 'Dagangan, Madiun', 14, 31000.00, '2025-07-18', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(11, 'Nur', '086078132014', 'Dagangan, Madiun', 0, 25000.00, '2025-07-15', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(12, 'Podo', '084852498209', 'Dagangan, Madiun', 7, 25000.00, '2025-07-19', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(13, 'Sutris', '087037481660', 'Dagangan, Madiun', 14, 31000.00, '2025-07-18', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(14, 'B. Wo', '083646758244', 'Dagangan, Madiun', 10, 25000.00, '2025-07-13', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(15, 'Nyatun', '085553710650', 'Dagangan, Madiun', 3, 25000.00, '2025-07-16', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(16, 'Ines', '086007863239', 'Dagangan, Madiun', 14, 31000.00, '2025-07-13', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(17, 'Pandi', '088671836031', 'Dagangan, Madiun', 18, 25000.00, '2025-07-15', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(18, 'Supri', '083981695534', 'Dagangan, Madiun', 19, 38500.00, '2025-07-14', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(19, 'Jiono', '086916807696', 'Dagangan, Madiun', 12, 28000.00, '2025-07-16', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(20, 'Warsini', '083705745437', 'Dagangan, Madiun', 12, 28000.00, '2025-07-15', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(21, 'Rokim', '085677422259', 'Dagangan, Madiun', 30, 55000.00, '2025-07-21', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(22, 'Sugik', '088686037443', 'Dagangan, Madiun', 20, 40000.00, '2025-07-14', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(23, 'Eny', '085929594589', 'Dagangan, Madiun', 14, 31000.00, '2025-07-17', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(24, 'Sd', '087979350818', 'Dagangan, Madiun', 2, 25000.00, '2025-07-11', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(25, 'Makim', '081905416274', 'Dagangan, Madiun', 10, 29500.00, '2025-07-14', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(26, 'Marsono', '085135855754', 'Dagangan, Madiun', 29, 53500.00, '2025-07-16', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(27, 'Wagimun', '082559252610', 'Dagangan, Madiun', 38, 67000.00, '2025-07-21', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(28, 'Meslan', '086723556987', 'Dagangan, Madiun', 10, 25000.00, '2025-07-20', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(29, 'Yahmen', '087069354865', 'Dagangan, Madiun', 19, 38500.00, '2025-07-11', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(30, 'Bon', '082565681092', 'Dagangan, Madiun', 17, 35500.00, '2025-07-12', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(31, 'Sus', '084580141571', 'Dagangan, Madiun', 38, 67000.00, '2025-07-17', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(32, 'Ri', '089515515124', 'Dagangan, Madiun', 28, 52000.00, '2025-07-17', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(33, 'Budi', '085143454307', 'Dagangan, Madiun', 13, 29500.00, '2025-07-12', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(34, 'Rusit', '088394587497', 'Dagangan, Madiun', 18, 37000.00, '2025-07-20', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(35, 'Wajib', '088826366417', 'Dagangan, Madiun', 14, 31000.00, '2025-07-19', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(36, 'Azis', '085437067806', 'Dagangan, Madiun', 24, 46000.00, '2025-07-13', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(37, 'Sokinem', '086873441803', 'Dagangan, Madiun', 16, 34000.00, '2025-07-17', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(38, 'Andra', '085915773245', 'Dagangan, Madiun', 1, 25000.00, '2025-07-11', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(39, 'Wagiran', '086551778251', 'Dagangan, Madiun', 1, 25000.00, '2025-07-13', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(40, 'Jumadi', '087433313976', 'Dagangan, Madiun', 41, 71500.00, '2025-07-18', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(41, 'Sigit', '087279631323', 'Dagangan, Madiun', 15, 32500.00, '2025-07-17', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(42, 'Sumi', '083968848770', 'Dagangan, Madiun', 8, 25000.00, '2025-07-12', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(43, 'Wawan', '083950277413', 'Dagangan, Madiun', 25, 47500.00, '2025-07-13', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(44, 'Senen', '086288330072', 'Dagangan, Madiun', 0, 20000.00, '2025-07-16', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(45, 'Jamin', '083779336624', 'Dagangan, Madiun', 24, 46000.00, '2025-07-21', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(46, 'Kuat', '087987387116', 'Dagangan, Madiun', 18, 37000.00, '2025-07-18', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(47, 'Indoko', '081713713678', 'Dagangan, Madiun', 11, 26500.00, '2025-07-19', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(48, 'Jogoboyo', '089259828040', 'Dagangan, Madiun', 12, 28000.00, '2025-07-21', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09'),
(49, 'Bani Lor', '085288735564', 'Dagangan, Madiun', 34, 61000.00, '2025-07-18', 'Aktif', '2025-07-05 23:03:09', '2025-07-05 23:03:09');

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
(1, 1, 1, '2025-07-12', 25000.00, 'Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-05 23:04:17', '2025-07-05 23:04:17'),
(2, 2, 3, '2025-07-15', 41500.00, 'Lunas', 'Terlambat', 'Tunai', NULL, NULL, '2025-07-05 23:05:06', '2025-07-05 23:05:06'),
(3, 3, 5, '2025-07-12', 38500.00, 'Lunas', 'Terlambat', 'Tunai', NULL, NULL, '2025-07-05 23:05:42', '2025-07-05 23:05:42'),
(4, 1, 34, '2025-08-02', 25000.00, 'Lunas', 'Tepat Waktu', 'Tunai', NULL, NULL, '2025-07-05 23:07:51', '2025-07-05 23:07:51');

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

INSERT INTO `tagihans` (`id`, `pelanggan_id`, `bulan`, `tahun`, `jumlah_tagihan`, `air_dipakai`, `tanggal_jatuh_tempo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 2025, 25000.00, 8, '2025-07-13', 'Lunas', '2025-07-05 23:03:22', '2025-07-05 23:04:17'),
(2, 25, 7, 2025, 29500.00, 10, '2025-07-16', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(3, 2, 7, 2025, 41500.00, 21, '2025-07-11', 'Lunas', '2025-07-05 23:03:22', '2025-07-05 23:05:06'),
(4, 26, 7, 2025, 53500.00, 29, '2025-07-13', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(5, 3, 7, 2025, 38500.00, 19, '2025-07-11', 'Lunas', '2025-07-05 23:03:22', '2025-07-05 23:05:42'),
(6, 27, 7, 2025, 67000.00, 38, '2025-07-11', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(7, 4, 7, 2025, 46000.00, 24, '2025-07-13', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(8, 28, 7, 2025, 25000.00, 10, '2025-07-11', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(9, 5, 7, 2025, 25000.00, 6, '2025-07-15', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(10, 6, 7, 2025, 29500.00, 13, '2025-07-13', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(11, 7, 7, 2025, 31000.00, 14, '2025-07-15', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(12, 8, 7, 2025, 26500.00, 11, '2025-07-15', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(13, 9, 7, 2025, 25000.00, 6, '2025-07-14', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(14, 10, 7, 2025, 31000.00, 14, '2025-07-12', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(15, 11, 7, 2025, 25000.00, 0, '2025-07-13', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(16, 12, 7, 2025, 25000.00, 7, '2025-07-12', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(17, 13, 7, 2025, 31000.00, 14, '2025-07-12', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(18, 37, 7, 2025, 34000.00, 16, '2025-07-16', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(19, 38, 7, 2025, 25000.00, 1, '2025-07-13', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(20, 14, 7, 2025, 25000.00, 10, '2025-07-12', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(21, 15, 7, 2025, 25000.00, 3, '2025-07-16', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(22, 16, 7, 2025, 31000.00, 14, '2025-07-14', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(23, 17, 7, 2025, 25000.00, 18, '2025-07-14', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(24, 18, 7, 2025, 38500.00, 19, '2025-07-12', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(25, 19, 7, 2025, 28000.00, 12, '2025-07-13', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(26, 44, 7, 2025, 20000.00, 0, '2025-07-12', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(27, 45, 7, 2025, 46000.00, 24, '2025-07-13', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(28, 46, 7, 2025, 37000.00, 18, '2025-07-12', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(29, 22, 7, 2025, 40000.00, 20, '2025-07-11', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(30, 23, 7, 2025, 31000.00, 14, '2025-07-11', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(31, 48, 7, 2025, 28000.00, 12, '2025-07-11', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(32, 24, 7, 2025, 25000.00, 2, '2025-07-12', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(33, 49, 7, 2025, 61000.00, 34, '2025-07-14', 'Belum Lunas', '2025-07-05 23:03:22', '2025-07-05 23:03:22'),
(34, 1, 8, 2025, 25000.00, 11, '2025-08-12', 'Lunas', '2025-07-05 23:07:32', '2025-07-05 23:07:52');

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
(1, 'Admin Tirto', 'admin@tirto.test', NULL, '$2y$10$FB.MQBAaElkzXrpp0WSGHO1gcF15ywsmGeyvdRZOqIHnTRD7JT112', 'admin', NULL, '2025-07-05 22:59:48', '2025-07-05 22:59:48');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
