-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 07:42 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apk_kasir_restoran_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax_cruds`
--

CREATE TABLE `ajax_cruds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2020_03_17_031048_create_ajax_cruds_table', 2),
(5, '2014_10_12_000000_create_users_table', 3),
(6, '2014_10_12_100000_create_password_resets_table', 3),
(7, '2019_08_19_000000_create_failed_jobs_table', 3);

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
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Snack'),
(4, 'Crunch'),
(5, 'Makanan Berat'),
(6, 'Makanan Penutup'),
(7, 'Masakan Pembuka'),
(8, 'Makanan Pembuka');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masakan`
--

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama_masakan` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `status_masakan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `kategori_id`, `nama_masakan`, `harga`, `status_masakan`) VALUES
(1, 3, 'Ikan Goreng', 10000, 'tersedia'),
(2, 1, 'Ikan Goreng', 10000, 'tersedia'),
(3, 5, 'Ayam Bakar', 20000, 'tersedia'),
(4, 5, 'Nasi Kuning', 10000, 'tersedia'),
(5, 7, 'Pisang Geprek', 20000, 'tersedia'),
(6, 7, 'Sambalado', 20000, 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_meja`
--

CREATE TABLE `tb_meja` (
  `id_meja` int(11) NOT NULL,
  `no_meja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_meja`
--

INSERT INTO `tb_meja` (`id_meja`, `no_meja`) VALUES
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` int(11) NOT NULL,
  `masakan_id` int(11) NOT NULL,
  `user_order_id` int(11) NOT NULL,
  `tanggal_order` date NOT NULL,
  `status_order` enum('sedang_dipesan','sudah_bayar') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `masakan_id`, `user_order_id`, `tanggal_order`, `status_order`, `jumlah`, `sub_total`) VALUES
(1, 2, 10, '2020-03-18', 'sudah_bayar', 2, 20000),
(2, 3, 10, '2020-03-18', 'sudah_bayar', 1, 20000),
(3, 5, 10, '2020-03-18', 'sudah_bayar', 1, 20000),
(4, 2, 10, '2020-03-18', 'sudah_bayar', 1, 10000),
(5, 2, 10, '2020-03-18', 'sudah_bayar', 3, 30000),
(6, 3, 10, '2020-03-18', 'sudah_bayar', 1, 20000),
(7, 2, 10, '2020-03-18', 'sudah_bayar', 3, 30000),
(8, 4, 10, '2020-03-18', 'sudah_bayar', 2, 20000),
(9, 2, 10, '2020-03-18', 'sudah_bayar', 3, 30000),
(10, 6, 10, '2020-03-18', 'sudah_bayar', 1, 20000),
(11, 2, 10, '2020-03-18', 'sedang_dipesan', 1, 10000),
(12, 3, 10, '2020-03-18', 'sedang_dipesan', 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_detail`
--

CREATE TABLE `tb_order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order_detail`
--

INSERT INTO `tb_order_detail` (`id_order_detail`, `order_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(4, 4),
(6, 5),
(6, 6),
(8, 7),
(8, 8),
(10, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_resto`
--

CREATE TABLE `tb_resto` (
  `id_resto` int(11) NOT NULL,
  `nama_resto` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `alamat_resto` varchar(100) NOT NULL,
  `email_resto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_resto`
--

INSERT INTO `tb_resto` (`id_resto`, `nama_resto`, `url`, `alamat_resto`, `email_resto`) VALUES
(1, 'Resto Znow', 'www.restoznow.com', 'Puncak bogor jawabarat', 'znow@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` varchar(100) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `user_transaksi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `order_detail_id`, `tanggal_transaksi`, `total_bayar`, `jumlah_pembayaran`, `kembalian`, `user_transaksi_id`) VALUES
('KTP - 1', 3, '2020-03-16', 60000, 100000, 40000, 10),
('KTP - 2', 4, '2020-03-18', 10000, 20000, 10000, 10),
('KTP - 3', 6, '2020-03-18', 50000, 100000, 50000, 10),
('KTP - 4', 8, '2020-03-18', 50000, 100000, 50000, 10),
('KTP - 5', 10, '2020-03-18', 50000, 70000, 20000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax_cruds`
--
ALTER TABLE `ajax_cruds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  ADD PRIMARY KEY (`id_masakan`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `tb_meja`
--
ALTER TABLE `tb_meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `masakan_id` (`masakan_id`);

--
-- Indexes for table `tb_resto`
--
ALTER TABLE `tb_resto`
  ADD PRIMARY KEY (`id_resto`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `order_id` (`order_detail_id`);

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
-- AUTO_INCREMENT for table `ajax_cruds`
--
ALTER TABLE `ajax_cruds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_meja`
--
ALTER TABLE `tb_meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_resto`
--
ALTER TABLE `tb_resto`
  MODIFY `id_resto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
