-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 10 Jun 2021 pada 06.18
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$hKW6JPTAEY9eu3hNjaO9/eX7mFihPg8OOY2EJJnfIZ77sbVx9PEYO', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggotas`
--

DROP TABLE IF EXISTS `anggotas`;
CREATE TABLE IF NOT EXISTS `anggotas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_p3m` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_anggota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifikasi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anggotas_id_p3m_foreign` (`id_p3m`),
  KEY `anggotas_id_user_foreign` (`id_user`),
  KEY `anggotas_id_anggota_foreign` (`id_anggota`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggotas`
--

INSERT INTO `anggotas` (`id`, `id_p3m`, `id_user`, `id_anggota`, `notifikasi`, `created_at`, `updated_at`) VALUES
(21, 21, '1', '204', NULL, '2020-10-26 09:10:06', '2020-10-26 09:10:06'),
(20, 20, '1', '204', NULL, '2020-10-26 09:09:44', '2020-10-26 09:09:44'),
(19, 20, '1', '3', NULL, '2020-10-26 09:09:44', '2020-10-26 09:09:44'),
(18, 19, '1', '3', NULL, '2020-10-26 09:02:24', '2020-10-26 09:02:24'),
(17, 18, '1', '2', NULL, '2020-08-20 03:00:11', '2020-08-20 03:00:11'),
(16, 17, '1', '2', NULL, '2020-08-20 02:59:47', '2020-08-20 02:59:47'),
(15, 16, '1', '2', NULL, '2020-08-20 02:59:08', '2020-08-20 02:59:08'),
(14, 15, '1', '2', NULL, '2020-08-20 02:57:36', '2020-08-20 02:57:36'),
(13, 14, '1', '2', NULL, '2020-08-20 02:54:53', '2020-08-20 02:54:53'),
(12, 13, '1', '2', NULL, '2020-08-20 02:48:30', '2020-08-20 02:48:30'),
(11, 12, '1', '2', NULL, '2020-08-20 02:43:14', '2020-08-20 02:43:14'),
(22, 22, '1', '204', NULL, '2020-10-26 09:11:16', '2020-10-26 09:11:16'),
(23, 23, '1', '204', NULL, '2020-10-26 09:13:43', '2020-10-26 09:13:43'),
(24, 24, '1', '204', NULL, '2020-10-26 10:12:51', '2020-10-26 10:12:51'),
(25, 25, '1', '204', NULL, '2020-10-26 23:13:16', '2020-10-26 23:13:16'),
(26, 26, '1', '204', NULL, '2020-10-27 00:04:48', '2020-10-27 00:04:48'),
(27, 65, '1', '204', NULL, NULL, NULL),
(28, 66, '1', '204', NULL, NULL, NULL),
(29, 67, '1', '4', 'anda telah ditambahkan ke penelitian Nurniswati S.Farm', NULL, NULL),
(30, 68, '1', '5', 'anda telah ditambahkan ke penelitian Nurniswati S.Farm', NULL, NULL),
(31, 69, '1', '5', 'anda telah ditambahkan ke penelitian Nurniswati S.Farm', NULL, NULL),
(32, 70, '1', '204', 'anda telah ditambahkan ke penelitian Nurniswati S.Farm', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `h_k_i_s`
--

DROP TABLE IF EXISTS `h_k_i_s`;
CREATE TABLE IF NOT EXISTS `h_k_i_s` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kewarganegaraan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_cipta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `h_k_i_s_id_user_foreign` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ka_p3_m_s`
--

DROP TABLE IF EXISTS `ka_p3_m_s`;
CREATE TABLE IF NOT EXISTS `ka_p3_m_s` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nidn` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ka_p3_m_s_nidn_unique` (`nidn`),
  UNIQUE KEY `ka_p3_m_s_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ka_p3_m_s`
--

INSERT INTO `ka_p3_m_s` (`id`, `nidn`, `prodi`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, '123456', NULL, 'dairoh', 'zaroh@yahoo.co.id', NULL, '$2y$10$utgcuCI.t51U1blmE6.D5OMeBnLE1DvoMkh2ypL79AgzMj7qVvXU2', NULL, '2020-07-27 06:17:03', '2020-07-27 06:17:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_04_07_061359_create_reviewers_table', 1),
(4, '2020_04_07_061532_create_ka_p3_m_s_table', 1),
(5, '2020_04_07_061556_create_admins_table', 1),
(7, '2020_04_07_061654_create_h_k_i_s_table', 1),
(8, '2020_04_30_085330_create_anggotas_table', 1),
(9, '2020_06_22_081724_add_terima_on_p3m', 1),
(10, '2020_07_25_125356_add_prodi_column_on_ka_p3_m_s_table', 1),
(11, '2020_07_25_132049_create_posts_table', 1),
(12, '2020_07_25_144204_add_deleted_at_column_on_post_table', 1),
(18, '2020_07_27_140550_add_prodi_column_on_ka_p3_m_s_table', 5),
(17, '2020_07_26_132928_add_penilaian_column_on_p3_m_s_table', 4),
(16, '2020_04_07_061639_create_p3_m_s_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `p3_m_s`
--

DROP TABLE IF EXISTS `p3_m_s`;
CREATE TABLE IF NOT EXISTS `p3_m_s` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_reviewer1` int(10) UNSIGNED DEFAULT NULL,
  `id_reviewer2` int(10) UNSIGNED DEFAULT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `bidang_penelitian` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penilaian` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monev` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisi_proposal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_proposal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `revisi` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `terima` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p3_m_s_id_reviewer1_foreign` (`id_reviewer1`),
  KEY `p3_m_s_id_reviewer2_foreign` (`id_reviewer2`),
  KEY `p3_m_s_id_user_foreign` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `p3_m_s`
--

INSERT INTO `p3_m_s` (`id`, `id_user`, `id_reviewer1`, `id_reviewer2`, `judul`, `tahun`, `nominal`, `bidang_penelitian`, `proposal`, `penilaian`, `monev`, `revisi_proposal`, `jenis_proposal`, `kategori`, `status`, `revisi`, `terima`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 'proposal penelitian', '2018/2019', 120000, 'teknik', '200808111036-Untitled Diagram.pdf', NULL, NULL, NULL, 'penelitian', NULL, '1', '1', '1', '2020-08-08 04:10:36', '2020-08-08 04:12:21'),
(2, 1, 2, 3, 'proposal pengabdian', '2019/2020', 130000, 'teknik', '200808111113-moon2010.pdf', '200812105448-penilaian.pdf', NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-08 04:11:13', '2021-02-10 08:17:45'),
(3, 1, NULL, NULL, 'simpen', '2019/2020', 500000, 'sosial', '200820091959-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:19:59', '2020-08-20 02:19:59'),
(4, 1, NULL, NULL, 'simpen', '2019/2020', 7000000, 'sosial', '200820092815-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:28:15', '2020-08-20 02:28:15'),
(5, 1, NULL, NULL, 'simpen', '2019/2020', 7000000, 'sosial', '200820092944-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:29:44', '2020-08-20 02:29:44'),
(6, 1, NULL, NULL, 'simpen', '2019/2020', 7000000, 'sosial', '200820092950-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:29:50', '2020-08-20 02:29:50'),
(7, 1, NULL, NULL, 'simpen', '2019/2020', 7000000, 'sosial', '200820092956-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:29:56', '2020-08-20 02:29:56'),
(8, 1, NULL, NULL, 'simpen', '----', 1, 'kesehatan', '200820093054-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:30:54', '2020-08-20 02:30:54'),
(9, 1, NULL, NULL, 'simpen', '2019/2020', 1, 'kesehatan', '200820093314-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:33:14', '2020-08-20 02:33:14'),
(10, 1, NULL, NULL, 'simpen', '----', 1, 'kesehatan', '200820093440-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:34:40', '2020-08-20 02:34:40'),
(11, 1, 5, 6, 'simpen', '2018/2019', 1, 'kesehatan', '200820094028-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:40:28', '2021-06-09 23:06:34'),
(12, 1, NULL, NULL, 'simpen', '2018/2019', 9, 'kesehatan', '200820094314-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:43:14', '2020-08-20 02:43:14'),
(13, 1, NULL, NULL, 'simpen', '2018/2019', 1, 'kesehatan', '200820094829-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:48:30', '2020-08-20 02:48:30'),
(14, 1, NULL, NULL, 'simpen', '2018/2019', 1, 'kesehatan', '200820095453-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:54:53', '2020-08-20 02:54:53'),
(15, 1, NULL, NULL, 'simpen', '2019/2020', 1, 'kesehatan', '200820095736-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:57:36', '2020-08-20 02:57:36'),
(16, 1, NULL, NULL, 'simpen', '2019/2020', 1, 'kesehatan', '200820095908-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:59:08', '2020-08-20 02:59:08'),
(17, 1, NULL, NULL, 'simpen', '2019/2020', 1, 'kesehatan', '200820095947-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 02:59:47', '2020-08-20 02:59:47'),
(18, 1, NULL, NULL, 'simpen', '2019/2020', 1, 'kesehatan', '200820100011-Transkrip Nilai 10060116079.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-08-20 03:00:11', '2020-08-20 03:00:11'),
(19, 1, NULL, NULL, 'judul pengabdianw', '2019/2020', 344556778, 'teknik', '201026160224-Introduction to Cloud.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-26 09:02:24', '2020-10-26 09:02:24'),
(20, 1, NULL, NULL, 'judul pengabdianw', '2019/2020', 344556778, 'teknik', '201026160943-Introduction to Cloud.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-26 09:09:43', '2020-10-26 09:09:43'),
(21, 1, NULL, NULL, 'judul pengabdianw', '2019/2020', 344556778, 'teknik', '201026161006-Introduction to Cloud.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-26 09:10:06', '2020-10-26 09:10:06'),
(22, 1, NULL, NULL, 'judul pengabdianw', '2019/2020', 344556778, 'teknik', '201026161116-Introduction to Cloud.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-26 09:11:16', '2020-10-26 09:11:16'),
(23, 1, NULL, NULL, 'judul pengabdianw', '2019/2020', 344556778, 'teknik', '201026161343-Introduction to Cloud.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-26 09:13:43', '2020-10-26 09:13:43'),
(24, 1, NULL, NULL, 'judul pengabdianw', '2019/2020', 344556778, 'teknik', '201026171251-Introduction to Cloud.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-26 10:12:51', '2020-10-26 10:12:51'),
(25, 1, NULL, NULL, 'judul pengabdianw', '2019/2020', 1234567, 'teknik', '201027061316-Lampiran.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-26 23:13:16', '2020-10-26 23:13:16'),
(26, 1, NULL, NULL, 'proposal peng', '2019/2020', 678, 'teknik', '201027070448-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:04:48', '2020-10-27 00:04:48'),
(27, 1, NULL, NULL, 'k', '2018/2019', 6, 'teknik', '201027071311-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:13:11', '2020-10-27 00:13:11'),
(28, 1, NULL, NULL, 'k', '2018/2019', 6, 'teknik', '201027071619-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:16:19', '2020-10-27 00:16:19'),
(29, 1, NULL, NULL, 'k', '2018/2019', 6, 'teknik', '201027072054-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:20:54', '2020-10-27 00:20:54'),
(30, 1, NULL, NULL, 'k', '2018/2019', 6, 'teknik', '201027072331-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:23:31', '2020-10-27 00:23:31'),
(31, 1, NULL, NULL, 'k', '2018/2019', 6, 'teknik', '201027072642-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:26:42', '2020-10-27 00:26:42'),
(32, 1, NULL, NULL, 'jhg', '2019/2020', 45678, 'teknik', '201027072907-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:29:07', '2020-10-27 00:29:07'),
(33, 1, NULL, NULL, 'lkhalsd', '2019/2020', 56778, 'teknik', '201027072938-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:29:38', '2020-10-27 00:29:38'),
(34, 1, NULL, NULL, 'jy', '2019/2020', 456678, 'teknik', '201027073306-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-27 00:33:06', '2020-10-27 00:33:06'),
(35, 1, NULL, NULL, 'simpen', '2019/2020', 654, 'teknik', '201029133204-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-29 06:32:04', '2020-10-29 06:32:04'),
(36, 1, NULL, NULL, 'simpeng', '2018/2019', 986, 'teknik', '201029134809-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-29 06:48:09', '2020-10-29 06:48:09'),
(37, 1, NULL, NULL, 'simpengr', '2019/2020', 7654, 'teknik', '201031052848-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:28:48', '2020-10-30 22:28:48'),
(38, 1, NULL, NULL, 'jas', '2018/2019', 986, 'teknik', '201031053325-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:33:25', '2020-10-30 22:33:25'),
(39, 1, NULL, NULL, 'kj', '2019/2020', 98, 'teknik', '201031053812-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:38:12', '2020-10-30 22:38:12'),
(40, 1, NULL, NULL, 'lkajl', '2019/2020', 90856, 'teknik', '201031053924-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:39:24', '2020-10-30 22:39:24'),
(41, 1, NULL, NULL, 'lksjd', '2018/2019', 9707, 'teknik', '201031054108-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:41:08', '2020-10-30 22:41:08'),
(42, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031055102-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:51:02', '2020-10-30 22:51:02'),
(43, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031055236-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:52:36', '2020-10-30 22:52:36'),
(44, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031055429-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:54:29', '2020-10-30 22:54:29'),
(45, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031055457-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:54:57', '2020-10-30 22:54:57'),
(46, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031055919-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 22:59:19', '2020-10-30 22:59:19'),
(47, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031060059-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:00:59', '2020-10-30 23:00:59'),
(48, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031060432-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:04:32', '2020-10-30 23:04:32'),
(49, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031060539-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:05:39', '2020-10-30 23:05:39'),
(50, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031061317-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:13:17', '2020-10-30 23:13:17'),
(51, 1, NULL, NULL, 'kll', '2019/2020', 986, 'teknik', '201031061903-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:19:03', '2020-10-30 23:19:03'),
(52, 1, NULL, NULL, 'kiu', '2018/2019', 9875, 'teknik', '201031062004-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:20:04', '2020-10-30 23:20:04'),
(53, 1, NULL, NULL, 'kjr', '2019/2020', 875, 'teknik', '201031062142-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:21:42', '2020-10-30 23:21:42'),
(54, 1, NULL, NULL, 'kt', '2018/2019', 896, 'teknik', '201031062539-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:25:39', '2020-10-30 23:25:39'),
(55, 1, NULL, NULL, 'kjsg', '2019/2020', 9872, 'teknik', '201031065339-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:53:39', '2020-10-30 23:53:39'),
(56, 1, NULL, NULL, 'ajsd', '2018/2019', 892163, 'teknik', '201031065446-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:54:46', '2020-10-30 23:54:46'),
(57, 1, NULL, NULL, 'ajsd', '2018/2019', 892163, 'teknik', '201031065609-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-30 23:56:09', '2020-10-30 23:56:09'),
(58, 1, NULL, NULL, 'kjas', '2018/2019', 86, 'teknik', '201031070004-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-31 00:00:04', '2020-10-31 00:00:04'),
(59, 1, NULL, NULL, 'kjas', '2018/2019', 86, 'teknik', '201031070004-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-31 00:00:04', '2020-10-31 00:00:04'),
(60, 1, NULL, NULL, 'kjads', '2019/2020', 985, 'teknik', '201031071330-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-31 00:13:30', '2020-10-31 00:13:30'),
(61, 1, NULL, NULL, 'kjas', '2019/2020', 86, 'teknik', '201031072447-FORM_PERTANGGUNGJAWABAN_PESERTA_DTS2020 (1).pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-10-31 00:24:47', '2020-10-31 00:24:47'),
(62, 1, NULL, NULL, 'judul', '2019/2020', 875, 'teknik', '201109165921-0-11391919579_20200928_140347_0000.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-11-09 09:59:21', '2020-11-09 09:59:21'),
(63, 1, NULL, NULL, 'judul', '2019/2020', 875, 'teknik', '201109170014-0-11391919579_20200928_140347_0000.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-11-09 10:00:14', '2020-11-09 10:00:14'),
(64, 1, NULL, NULL, 'lksd', '2019/2020', 96888, 'teknik', '201109170417-0-11391919579_20200928_140347_0000.pdf', NULL, NULL, NULL, 'pengabdian', NULL, '1', '1', '1', '2020-11-09 10:04:17', '2020-11-09 10:04:17'),
(65, 1, NULL, NULL, 'judul', '2018/2019', 97, 'teknik', '201109171328-0-11391919579_20200928_140347_0000.pdf', NULL, NULL, NULL, 'penelitian', NULL, '1', '1', '1', '2020-11-09 10:13:28', '2020-11-09 10:13:28'),
(66, 1, NULL, NULL, 'judul', '2018/2019', 97, 'teknik', '201109171459-0-11391919579_20200928_140347_0000.pdf', NULL, NULL, NULL, 'penelitian', NULL, '1', '1', '1', '2020-11-09 10:14:59', '2020-11-09 10:14:59'),
(67, 1, NULL, NULL, 'coba', '2019/2020', 12000, 'teknik', '201129152958-200812105448-penilaian (1).pdf', '210210162253-penilaian.pdf', NULL, NULL, 'penelitian', NULL, '1', '1', '1', '2020-11-29 08:29:58', '2021-02-10 09:22:54'),
(68, 1, 6, 5, 'judul', '2019/2020', 858, 'kesehatan', '210210152024-200812105448-penilaian (2).pdf', NULL, NULL, NULL, 'penelitian', NULL, '1', '1', '1', '2021-02-10 08:20:24', '2021-06-09 23:10:30'),
(69, 1, NULL, NULL, 'judul', '2019/2020', 858, 'kesehatan', '210210152123-200812105448-penilaian (2).pdf', NULL, NULL, NULL, 'penelitian', NULL, '1', '1', '1', '2021-02-10 08:21:23', '2021-02-10 08:21:23'),
(70, 1, NULL, NULL, 'judul', '2019/2020', 858, 'kesehatan', '210210152218-200812105448-penilaian (2).pdf', NULL, NULL, NULL, 'penelitian', NULL, '1', '1', '1', '2021-02-10 08:22:18', '2021-02-10 08:22:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviewers`
--

DROP TABLE IF EXISTS `reviewers`;
CREATE TABLE IF NOT EXISTS `reviewers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nidn` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_penelitian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviewers_nidn_unique` (`nidn`),
  UNIQUE KEY `reviewers_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviewers`
--

INSERT INTO `reviewers` (`id`, `nidn`, `name`, `email`, `email_verified_at`, `password`, `bidang_penelitian`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '0612108701', 'DAIROH M.Sc.', 'zaroh@yahoo.co.id', NULL, '$2y$10$39dFUKwBcJh7YPrJFAUmGOPBfH499gf/XR00bm0qKgNig//Ek44o6', 'Teknik', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40'),
(2, '0613028601', 'GINANJAR WIRO SASMITO M.Kom', 'ginanjar@gmail.com', NULL, '$2y$10$qV0qBzcjHb38nLVwO2qgcO.Ee70IR6BiwusIX1/Qn/w2ttwHHGqHq', 'Teknik', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40'),
(3, '0625118301', 'VERY KURNIA BAKTI M.Kom', 'very@gmail.com', NULL, '$2y$10$00sdyDsgrT6UEwm6plZB0.r.ZjYKogXzEDj6Wnap.Z6E5tP5HOtya', 'Teknik', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40'),
(4, '0605018003', 'ULFATUL LATIFAH M.Kes', 'ulfa@gmail.com', NULL, '$2y$10$VISWovawPfLijeYbBbMCgeOdlndfL0R8.ApchMAQLiHMi.5X9VL1i', 'Kesehatan', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40'),
(5, '0624037501', 'IROMA MAULIDA M.Epid', 'iroma@gmail.com', NULL, '$2y$10$GXGHGvmQe/StykVDFg1RFeCvCvAdpdKZYGiygAUO2Mq8txKwocwNS', 'Kesehatan', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40'),
(6, '0611058001', 'HERU NURCAHYO M.Sc', 'heru@gmail.com', NULL, '$2y$10$lnm088d450pIRFhW0x4TcO8MKBF.P82W8Lsaz11jAjzPzTYxFnbdG', 'Kesehatan', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40'),
(7, '0619087505', 'SUNANDAR M.Si', 'sunandar@gmail.com', NULL, '$2y$10$M/hB2iRfp3B2jW3Ozzn.y.tWN.2HQcBA96EdhMHPh/CXL6OsKGsWG', ' Akuntansi', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40'),
(8, '0626017902', 'IDA FARIDA M.Si', 'ida@gmail.com', NULL, '$2y$10$S0nMcIDG/vh7VaQIKoQC0uhZ0XzAsSeLlD9zcRAtIhrssK7EQtVQm', 'Akuntansi', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40'),
(9, '0627037702', 'YENI PRIATNA SARI M.Si', 'yeni@gmail.com', NULL, '$2y$10$WWKE/Ncgj.e/JhvIDgok9.l1t/5ks6IDZoZgpyJbNda99/30Bl/wC', 'Akuntansi', NULL, '2020-07-26 08:25:40', '2020-07-26 08:25:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nidn` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_nidn_unique` (`nidn`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nidn`, `name`, `email`, `email_verified_at`, `password`, `prodi`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '0025056501', 'Nurniswati S.Farm', NULL, NULL, '$2y$10$XYQ8kDhB009uXncIPWp5vOp160zCFjrQi48rxjKmvZwRy4jaGgfnq', 'Farmasi', NULL, '2020-07-26 08:25:09', '2020-07-26 08:25:09'),
(2, '0601068801', 'ANGGY RIMA PUTRI S.Farm', NULL, NULL, '$2y$10$xDX45ehdxbrJTK5//rdVQ.zLDma3pGSw01NKeQErcMoWhmQTXL4x2', 'Farmasi', NULL, '2020-07-26 08:25:09', '2020-07-26 08:25:09'),
(3, '0601097202', 'USWATUN KHASANAH', NULL, NULL, '$2y$10$EJhgtCInvCGiitJpKNEDxOfzaud5FQvXZ/oVZj5VPEC1iTvV2Q9lO', 'Teknik Komputer', NULL, '2020-07-26 08:25:09', '2020-07-26 08:25:09'),
(4, '0601099002', 'M. YOKA FATHONI S.Kom', NULL, NULL, '$2y$10$WF4siNNdUIz94FQXw6fu3uKmsjZeUX2IPkus4sb7QxFkV.izBgfz2', 'Teknik Informatika', NULL, '2020-07-26 08:25:09', '2020-07-26 08:25:09'),
(5, '0602038701', 'ALDI BUDI RIYANTA S.Si', NULL, NULL, '$2y$10$JIbNedNqdTO4QQYGZ.UCp.vPSynfYqYiCZ2yiSn2/t1O7KKUZhrS6', 'Farmasi', NULL, '2020-07-26 08:25:09', '2020-07-26 08:25:09'),
(6, '0602047202', 'SUNARYO', NULL, NULL, '$2y$10$VG1Dh12zrjnCQrmyDDA2q.VQicutZU9OwflKS6WdfCX4ceQBwr37G', 'Teknik Komputer', NULL, '2020-07-26 08:25:09', '2020-07-26 08:25:09'),
(7, '0602108902', 'HIKMATUL MAULIDAH S.Pd', NULL, NULL, '$2y$10$U8ATnf/DYQnYl1kGODbiTeifB8gDATJO4Wr6.r9ZS4tztBKXeZz6K', 'Akuntansi', NULL, '2020-07-26 08:25:09', '2020-07-26 08:25:09'),
(8, '0602109001', 'ELISA PURWITASARI S.E.', NULL, NULL, '$2y$10$dIxzIFz2ZKNh824UrG5yteDdA5tVEDuox/DAG9pw0r79NjDbhwLD2', 'Akuntansi', NULL, '2020-07-26 08:25:09', '2020-07-26 08:25:09'),
(9, '0603038401', 'MARTSELANI ADIAS SABARA S.Kom', NULL, NULL, '$2y$10$8sFEZmnAV.3Ef34IGNec3uR/nJgJuzoUkUp4nlF6Bf8fZ9xwFdoEq', 'Teknik Elektronika', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(10, '0603058401', 'RINA PURWANINGSIH', NULL, NULL, '$2y$10$4mIxXPfRc6/Fe3s0.4N.BuR4jxBa85/U3uX.tGSOT4CT/dAltb5YS', 'Teknik Komputer', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(11, '0603068701', 'DESY FITRIANINGSIH S.ST', NULL, NULL, '$2y$10$.nFZcft2BnkNajFsH9dX4.c4dEi1.p/lW8iSlsvt1aWhgaBQFu2JG', 'Kebidanan', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(12, '0603088305', 'TAUFIQ ABIDIN M.Kom', NULL, NULL, '$2y$10$KPN7w4AHrYoIHDNl3coDO.yN50oY50/bJDi6PBGUNiyKkK6AzOVg2', 'Teknik Informatika', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(13, '0604029003', 'RATIH SAKTI PRASTIWI S.S.T', NULL, NULL, '$2y$10$U44MJuzcEEziFhYSdry1iu14.Ugm.klw1bJ4wNKpmjezoLhclGXJO', 'Kebidanan', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(14, '0604067901', 'M. WAWAN JUNAIDI USMAN S.T', NULL, NULL, '$2y$10$zggYQJ1ojQojhKVQWlC0ue1hmrdcKid92hdOwFMEnm1xVbP9kTLfe', 'Teknik Mesin', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(15, '0604069301', 'RONA NISA SOFIA AMRIZA S.Kom', NULL, NULL, '$2y$10$FH7S99M2CTn87WjUmiFxNeV6wIDxIgDyk.BCXF348HtMDOzwp0OP6', 'Teknik Informatika', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(16, '0604126301', 'SUTIKNO', NULL, NULL, '$2y$10$w9ORWOhllcl3QjA.cwxV8.He0E0MrW.YIJ8cr5P3zrolsh3PG0hyS', 'Teknik Komputer', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(17, '0605018003', 'ULFATUL LATIFAH S.KM', NULL, NULL, '$2y$10$mfoCtSr8X9HlnvWwiVOrJe8lqyy17mAXeL1H9tWu6drEwyDarNqUC', 'Kebidanan', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(18, '0605018501', 'ALI SOFYAN S.T', NULL, NULL, '$2y$10$/7p2fulccyYLTcvZzPIExe0Lxin165QFxdFBAiXRsjJdjNfBZyfMu', 'Teknik Komputer', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(19, '0605037304', 'EKO BUDIHARTONO S.T', NULL, NULL, '$2y$10$Abs/Ofbn2MlhM8wXz6lAwu2fUhtZyYU.JGlDRTibq3oDVssqw6wJW', 'Teknik Komputer', NULL, '2020-07-26 08:25:10', '2020-07-26 08:25:10'),
(20, '0605058603', 'DWI SETIA MUJIONO M.Pd', NULL, NULL, '$2y$10$Lb5j2Hi5RPQyPDharsjAZuvpIA4RpXSCH1o/tltOceP7gkPnLjyNa', 'Teknik Komputer', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(21, '0605088801', 'TRI AYU AGUSTINA', NULL, NULL, '$2y$10$TbICUrXut9dyjjCpmM5Yp.X3S9G0aJSBF4IafSLIXuJvD8pXDnpj.', 'Kebidanan', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(22, '0605128902', 'WILDA AMANANTI S.Pd', NULL, NULL, '$2y$10$PjuDACYiVsdNhSmZQXQdMur0OoH5TE.uw/Y134Co92poUh3dADawG', 'Farmasi', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(23, '0606027802', 'RAKWID', NULL, NULL, '$2y$10$HHbAiWkMe.synHCvH9u4VuWR.CKIXXnaRx5RUR.VspBjxLSlee7pa', 'Akuntansi', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(24, '0606038301', 'NUR WAHYUNI', NULL, NULL, '$2y$10$Dg7i7WvWT4egb8Ff3loAW.s9tIm1RwBon6ZfZT/89me2nQ5Zx3NB.', 'Teknik Elektronika', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(25, '0606048701', 'NILATUL IZAH S.ST', NULL, NULL, '$2y$10$1P3jrrPqgMCOqXV63qC2jega06.QrwLWiu/vc1IiKEZkgdMuz7Y8K', 'Kebidanan', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(26, '0606048901', 'HETIKA M.Si', NULL, NULL, '$2y$10$G9rZBMtz0/K/kQmsjRoiGuN/PpaQIIi8UNNUaRpeiDm1p9nKRqZI6', 'Akuntansi', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(27, '0606088602', 'ASTERIA FIKI ANTIKA', NULL, NULL, '$2y$10$JCT7COGp36N.O1QzHykFT.frmqVoiQ1qvUdldIt4NvTHnSYMJMhHS', 'Kebidanan', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(28, '0606118802', 'ADEVIA MAULIDYA CHIKMAH S.ST', NULL, NULL, '$2y$10$IeCRxvv05AuUoFuWxQCH8.IbCnTU7zjPn4d0q39ouuiUdN4YEqvBm', 'Kebidanan', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(29, '0606128001', 'RONY DARPONO S.T', NULL, NULL, '$2y$10$.yzxvzussljECvSB6385G.9.5Nfwb1sUzr7CFP6IvANnvzrkLd/TS', 'Teknik Elektronika', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(30, '0607058202', 'MAYLANE BONI ABDILLAH', NULL, NULL, '$2y$10$ES9Tpu3kSUuPSy/gwWcUQOgrBplu4vTiFiZbAvAELgpTj6IFvI4Bi', 'Teknik Komputer', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(31, '0607108202', 'DEGA SURONO WIBOWO S.T', NULL, NULL, '$2y$10$c02O7F253lVYheB2hhnrX.sNIWq9ClAI0xEk9ggDI6VEwlQcC2Q7G', 'Teknik Informatika', NULL, '2020-07-26 08:25:11', '2020-07-26 08:25:11'),
(32, '0607117001', 'M TEGUH PRIHANDOYO M.Kom', NULL, NULL, '$2y$10$ImAr9G8D.9RKMhutiCqICeZ4LO9ngwk3rRDKh/Yj3jv7Z16T5Ld0S', 'Teknik Komputer', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(33, '0608058601', 'M. Eng  MUKHAMAD KHUMAIDI USMAN S.T', NULL, NULL, '$2y$10$urwW0HDV2yfdNbTMtGt2yu/75ZqSGZGAnyaDbYdlwfL1NgDIpiWCC', 'Teknik Mesin', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(34, '0608059501', 'RIYANI PRIMA DEWI S.T', NULL, NULL, '$2y$10$3Cy5iPzC5s2v7K6Pc1HCauGOvA9vKryJL1oxEUHdzxNpyyXQnA4SG', 'Teknik Elektronika', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(35, '0608068801', 'MUCHAMAD SOBRI SUNGKAR S.Kom', NULL, NULL, '$2y$10$E8hHTOKArBmGScU4s6x4u.2wWf9t29UM.KJdq5mI231ZHc/ETx.Da', 'Teknik Elektronika', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(36, '0608096604', 'KUSNO ADI HARYANTO', NULL, NULL, '$2y$10$kh9EZYOuXc7IYfoZzDDLue/IpizBPJJuWpH48xwDeKvI/VK8ouDr.', 'Teknik Komputer', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(37, '0608108101', 'HAJAR ADHAYANTI S.E.', NULL, NULL, '$2y$10$dF4vCnNfGuKbfn0O8s6M8eg1NyucnGQlLtz1hWjZn2sn8d9FH42wW', 'Perhotelan', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(38, '0608108502', 'DEVI BUDI RAHAYU S.Si', NULL, NULL, '$2y$10$NIGcuxNA6.VZkUFSnUw8q.HMt2atWYCx8DA6VSJh/1rBAG/884XZG', 'Teknik Komputer', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(39, '0608128701', 'YM ANGGARA MAHARDIKA', NULL, NULL, '$2y$10$OuhvSddlkTDeeW9dX0eoWOCYH0HZoD6q5.gSSHdppcP4uyRhScRG6', 'Teknik Elektronika', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(40, '0609067704', 'RIRIH SRI HARJANTI S.E.', NULL, NULL, '$2y$10$JJEP/.xkc2530oJ2UplLrOz9k4GTT1/ITe7q7qGt9MeuTX8MWEyPq', 'Akuntansi', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(41, '0609106102', 'Y V GUNAWAN ALIM', NULL, NULL, '$2y$10$Rt4iLzQpCAhZISn1IwWJG.ayCBbxDWAvYeCm1TE14iPzdji2JOTEK', 'Teknik Elektronika', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(42, '0610018901', 'ADILA PRABASIWI S.KM', NULL, NULL, '$2y$10$O9pQuZqb3N4sXQ8zmka1dOXV1RiFbGHDBca1xOVoSY7n5/o93dv4m', 'Farmasi', NULL, '2020-07-26 08:25:12', '2020-07-26 08:25:12'),
(43, '0610046002', 'METIA FARIDHA', NULL, NULL, '$2y$10$YE/wTs67pI0Ij8QNQofrsehRY57Nk.9i0j41lxmLdTR2v28L6tKL6', 'Teknik Komputer', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(44, '0610078502', 'INUR TIVANI S.Si', NULL, NULL, '$2y$10$EqZUsJ7NccgKRyq007Ta..NSZtdr4DWf8Op3V8UxZEVgsmbmQftKO', 'Farmasi', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(45, '0610079003', 'MELIYANA PERWITA SARI S.Farm', NULL, NULL, '$2y$10$2cgG4F4OF2ZumHGokDfjZuIVzj.qKJeh8bRFCSdwfDLKsW4N6RhDi', 'Farmasi', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(46, '0610108904', 'MOHAMMAD ALFIAN S.E', NULL, NULL, '$2y$10$m8XPcda.13MXlGuTLNh7ZePjjOkXvIRNucfIxW6NgYWp0l8V8rsLO', 'Akuntansi Sektor Publik', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(47, '0610127204', 'SRI KUSUMANINGRUM', NULL, NULL, '$2y$10$yk5qSwVjv4v/zWDVVtsWduW9b.NgrZPIeGPiCN1GJZxFzHOOcaHxW', 'Teknik Komputer', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(48, '0611019102', 'MUCHAMMAD SOFYAN FIRMANSYAH S.S', NULL, NULL, '$2y$10$Yfn2P5hbXPhl9.Lt7uWtgO0iItS/UfwfpCDNxscJ8PGR5ViK18BCm', 'Akuntansi Sektor Publik', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(49, '0611019201', 'ARIFIA YASMIN S.E.', NULL, NULL, '$2y$10$HkpdqmFqu/jGUgf84Qrqxu/4Whqi/GiBfirC6ig6M16dWGBxS1YzG', 'Akuntansi', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(50, '0611058001', 'HERU NURCAHYO S.Farm', NULL, NULL, '$2y$10$Vwpdd.P46.B.c2DsZoJtLuVDJzrrmG2FIb0UcMTrejTjqJC6MUtD6', 'Farmasi', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(51, '0611058702', 'MEYLIYA QUDRIANI S.T', NULL, NULL, '$2y$10$4gEXaK1ITPjimkIyFsQyieWYl7ZVGmmfxfs76xQCffu4Z1WDOhD2m', 'Kebidanan', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(52, '0611108102', 'ROSARIA IKA PRATIWI S.Farm', NULL, NULL, '$2y$10$Oy8dJxBO4oRL2G5XCEq7TuZrHmduTilgB5fqYzJ02xaas6ch6FYpC', 'Farmasi', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(53, '0612018701', 'RATIH WULANDARI', NULL, NULL, '$2y$10$KAHzNhTdoXBj6gNzayIZPuffbw.2cCugzUh4vY9jSe3cibFfeAOdC', 'Teknik Mesin', NULL, '2020-07-26 08:25:13', '2020-07-26 08:25:13'),
(54, '0612018703', 'PUPUT DEWI ANGGRAENI S.ST.Par', NULL, NULL, '$2y$10$lRbhDVQ9/zkzpQ6gX4KTW.vpOU0UIai9VHgkvrLhalkogQ5hiuC4S', 'Perhotelan', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(55, '0612048901', 'NOVI ANDING SUCIATI S.T', NULL, NULL, '$2y$10$ES3ZJd3NrjndiJ7H/o7anO4LTxiekU7yn3S39wSQP6HQRYrL9I7i2', 'Kebidanan', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(56, '0612067504', 'ANDI SUSILO M.M', NULL, NULL, '$2y$10$6EsQ0wAm7SlHO2ayIYJ5XeEPoGXeFxPSsYLjTukWwoUpmmmKXM1TS', 'Teknik Elektronika', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(57, '0612068803', 'PRASETYA PUTRA NUGRAHA M.Pd', NULL, NULL, '$2y$10$zLMiGgugs9HOdJ.dGichO.EHxmrz8gGF3/xtl2Z7W9eSYP/H0BsfO', 'Teknik Komputer', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(58, '0612076101', 'DARWIN', NULL, NULL, '$2y$10$HDLQoy7JiMbZhepzoOLwdO/UGFnyW97fmttzWHYMEmQxCjz17i1im', 'Teknik Komputer', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(59, '0612099301', 'ARIEF ZUL FAUZI S.Pd', NULL, NULL, '$2y$10$Wn/ekGlDDlPzUcD.nQHq3exi2dAntpBHeey6coXMGcCvfMafnuL2i', 'Akuntansi', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(60, '0612108701', 'DAIROH M.Sc.', NULL, NULL, '$2y$10$x.HrQL3/kqOEtXCGCQgbee3/K16jYWgI9icsxuZ2EACczubxg4qMG', 'Teknik Informatika', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(61, '0613028601', 'GINANJAR WIRO SASMITO S.Kom', NULL, NULL, '$2y$10$9wWo/lnSvgfhYBLGhRjSueJKnIELvF6fad18aRiTNDD8D3dPnqrKy', 'Teknik Informatika', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(62, '0613028602', 'YERRY FEBRIAN SABANISE', NULL, NULL, '$2y$10$B0VSjs9VsEmSHo0bNi9xCuBmjk6FfcFQI8jdqq66pCS5uqtf0xzHK', 'Teknik Komputer', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(63, '0613059201', 'MELLA KATRINA SARI S.S.T', NULL, NULL, '$2y$10$glvHziBlRqEtj/a9Bbx/ieM4DbMBHseGwIdLyazDw5r/FxuLaGX26', 'Teknik Komputer', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(64, '0613109201', 'SENA WIJAYANTO S.Pd', NULL, NULL, '$2y$10$zwp/LCjVWm1TC8maQawrEOSk9Gpdw366Bvf7g4ZnT5VACgkzjLq26', 'Teknik Informatika', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(65, '0613118506', 'NORA RAHMANINDAR S.Si.T.', NULL, NULL, '$2y$10$X/rUTZurNjz1w7/fKsuTUOZUhk0WV/ZZ6N91apMcm9NEydhyRrwX2', 'Kebidanan', NULL, '2020-07-26 08:25:14', '2020-07-26 08:25:14'),
(66, '0614028402', 'DAVID BANI ADAM', NULL, NULL, '$2y$10$6tSS3h39hqs2d8pZC5DhP.6fSGLgAOF35XL0Rjb7qXYVJ.tJGFSZ2', 'Teknik Komputer', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(67, '0614048802', 'DANAR ARDIAN PRAMANA', NULL, NULL, '$2y$10$De4JCtacA0WTD6jyyBBJuu8XbQI.cA/tJWRmzWxwlHwNimAPPD4Hq', 'Teknik Informatika', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(68, '0614049002', 'DYAH APRILIANI S.T', NULL, NULL, '$2y$10$k88UxzODkGj/3uhuGsabDOBvYMMm5e2cf6.yd5q4duXtzAhlKMrQC', 'Teknik Informatika', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(69, '0614108501', 'RAIS S.Pd', NULL, NULL, '$2y$10$INt.WtXmVRxj2Qd2thBXX.JMPiEhA6U.vBtemXrYrxCFyUDpacoYS', 'Teknik Komputer', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(70, '0614109301', 'LA ODE MOHAMAD ZULFIQAR S.T', NULL, NULL, '$2y$10$Zk3hmXNesPx1uK0BbbL3eeTilcp8HojgNY5epjX29AUBdf4dx8Dtu', 'Teknik Informatika', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(71, '0615039201', 'AHMAD RAMDHANI S.Kom', NULL, NULL, '$2y$10$hvIf3KJQjD71oJdZyceRe.upXKFRo36f67gvZaR/m7piZEWuh.N62', 'Desain Komunikasi Visual', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(72, '0615048901', 'EVI ZULFIANA M.H', NULL, NULL, '$2y$10$5kkgG3y/OCiGB4qeiBPusOqRP6ZjIb62ES3iZv4z/7057CHYlA.aW', 'Kebidanan', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(73, '0615056705', 'Ir RUSMAN KOSASIH M.T', NULL, NULL, '$2y$10$NeDXd6i5ehxCc7KDK2iO1e4fONiYfaeLeI1oIyUSzI2p5fdYd/ofe', 'Teknik Mesin', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(74, '0615068401', 'SYAEFANI ARIF ROMADHON S.S.', NULL, NULL, '$2y$10$893PtHZmO/83mgord8WX.eNu6CBW14E9y./e0K1ThFB/b5Jd1kaHS', 'Teknik Mesin', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(75, '0615088001', 'AGUS SUSANTO S.Th', NULL, NULL, '$2y$10$.v2dzDAYgOxccrOmlbDtuerTQtM0QKkzwvHKlPAbPhLb2DRLuRuOu', 'Farmasi', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(76, '0615118101', 'SUS HARDIANTO', NULL, NULL, '$2y$10$TJhcsnCD8R5yhVnOQQggAexoHtcnO07Q0Al.7dM3Rg4CRssrUR/Hi', 'Teknik Komputer', NULL, '2020-07-26 08:25:15', '2020-07-26 08:25:15'),
(77, '0615118803', 'SAINUDIN SST', NULL, NULL, '$2y$10$6AuGNxYi61KVMz2jKYd4zeZreU.8KhsJRhjE8YNrT03FAsihw1fy6', 'Teknik Elektronika', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(78, '0616038304', 'ALI YUSNI S.T', NULL, NULL, '$2y$10$Xv/pQZQZ86r8O8w1qxgGIOrfHBPoIWeJnYVZVoIFqGQBp59zHgYBy', 'Teknik Elektronika', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(79, '0616038701', 'KUSNADI S.Pd', NULL, NULL, '$2y$10$ziOqE1KX30/Qf78CKBreveq/Cvjtq1K8IBmq9COuVL50I28cwwEyK', 'Farmasi', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(80, '0616038801', 'ASROFI LANGGENG NOERMAN SYAH S.Pd', NULL, NULL, '$2y$10$Cj8GtPyrQg/xGpVFyHXiA.iMaJK/u4nM0X6KWdoaWO94JPYwuVTBS', 'Akuntansi', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(81, '0616068904', 'ULIL ALBAB S.ST', NULL, NULL, '$2y$10$wQMQeHMgA.SyYg2qH7bY3O/erDbxCnUPPA.HsNThChZ3zUlakGoUi', 'Teknik Elektronika', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(82, '0616077903', 'ISTIANAH', NULL, NULL, '$2y$10$g2Dv/TSVLtdDJgEFD.96fOKEkxpE2jW8/PROwKDIZJLtpaXwKELz2', 'Akuntansi', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(83, '0616088301', 'SUGIARTO', NULL, NULL, '$2y$10$16MOc4FN0LHwLhBM59iS8OwT0ua3HjJq.Vbg93UddBKZCkV/G4sQe', 'Teknik Elektronika', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(84, '0616106601', 'BAMBANG DARYOSO', NULL, NULL, '$2y$10$uqHFmjsvNjSAoIlvUvcDgOgt5D7izjloc7/FYaJiNuyxRShhnNveW', 'Teknik Komputer', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(85, '0616117404', 'KRISDIYAWATI S.E.', NULL, NULL, '$2y$10$sImi3RfUA8MMxTh7iHN3Iup7Q6LzWD5yVVVFBAzsSamW.vw2EfK/O', 'Akuntansi', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(86, '0616118101', 'NOVIAN ARDHIANSYAH YUSUF', NULL, NULL, '$2y$10$tFw2gzSfd7CJqgBfGa/G/OuAyWDaBrIRByd7B.5UR1tRRz4xOB0UW', 'Akuntansi', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(87, '0617078102', 'BAHRI KAMAL S.E.', NULL, NULL, '$2y$10$Ud7C6sQPigI5uiAme2WlgOaAUnr7kxHnsJ5LI6ISqPAfExbqi7cpy', 'Akuntansi', NULL, '2020-07-26 08:25:16', '2020-07-26 08:25:16'),
(88, '0617078204', 'WILDANI EKO NUGROHO S.Kom', NULL, NULL, '$2y$10$G9jCDW6LLKi63VYUysuGFuUd4qxc7zFj6FhgSarz4ExV8bHQS0e56', 'Teknik Komputer', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(89, '0617128201', 'DIAN KUSUMANINGRUM', NULL, NULL, '$2y$10$TuK2L.C2kWz254YM1a4hwOLUTPcWRSJjEwr6eRVtB00mxzKzIG.9K', 'Teknik Komputer', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(90, '0618027703', 'TAUFIK PURWANTO', NULL, NULL, '$2y$10$Wx9dwHeT3Irf5wWw9U1qoeFGAAAfvuAdSrLRmzqKcBZ3kaST6OH/S', 'Teknik Komputer', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(91, '0618028301', 'AENUR AYU FUTIKHASARI', NULL, NULL, '$2y$10$OTCBdvO3xS45XeLfgrUd5.YuGzhxMD9L5qQ6yNV/uGet.nyV/VM3e', 'Teknik Komputer', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(92, '0618047705', 'MA. IRFAN RAHMANA', NULL, NULL, '$2y$10$LLlRScDZEOW4rG0ukbBdI.t5atMXUhwifoQMabuAjLgCyorDEzvom', 'Teknik Komputer', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(93, '0618049002', 'YUSRI ANIS FAIDAH S.E', NULL, NULL, '$2y$10$9L.EOSxm8798fiHj.GUOXOpBD1B29h9eM5iZEFrLyhPMGzlNBja36', 'Akuntansi Sektor Publik', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(94, '0618078601', 'AHMAD SUNARDI M.Pd', NULL, NULL, '$2y$10$YOq4./KET0UzSqrFNvvwXOuvpd64Zn4W4FK47KtmAtDDOywdhvbDO', 'Farmasi', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(95, '0618117901', 'MOHAMMAD HUMAM S.Kom', NULL, NULL, '$2y$10$BXURyMH53L5Ukrdr3DQdeO4y2cC83RJc5Jf83F0DgM4WQxayJjMmy', 'Teknik Komputer', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(96, '0618118201', 'HADI MULYANTO M.Pd.I', NULL, NULL, '$2y$10$.d8JSKKxcnbeIBprX08SgOOlXWHAEGhMh6fBqbcPp59hYLrAIyC2K', 'Teknik Elektronika', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(97, '0619028903', 'ADI CANDRA KUSUMA S.Pd', NULL, NULL, '$2y$10$RyyZOa4397yN46M6VJ3SYumJSgOWb.v6iP6Lmx3m/PyG8Y3W0d/DG', 'Teknik Komputer', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(98, '0619048701', 'M. NISHOM S.Kom', NULL, NULL, '$2y$10$TGVbhe2Pg9FBqgUm111cAOn8ldNV6ZZReROUbEGUYTmIe3F05QSa2', 'Teknik Informatika', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(99, '0619057802', 'PURGIYANTI S.Si', NULL, NULL, '$2y$10$2KZc/BGwBpcdQZi6Jz10leJQmIEi4/ssj1a6AsUO.eP6d3eu89/UK', 'Farmasi', NULL, '2020-07-26 08:25:17', '2020-07-26 08:25:17'),
(100, '0619069101', 'RAHMATIKA DEWI S.Pd', NULL, NULL, '$2y$10$fyVCYS434Z.R7EZ1GBuZ..6Nm/98lk8mWcVz4jinK3WtGaPH7zyP6', 'Teknik Elektronika', NULL, '2020-07-26 08:25:18', '2020-07-26 08:25:18'),
(101, '0619087505', 'SUNANDAR S.E.', NULL, NULL, '$2y$10$0q6FL4ZpSwEvKYuE0u2sN.lnSz.sLQrrG8kSiSKg4cYUWqrFKbS1.', 'Akuntansi', NULL, '2020-07-26 08:25:18', '2020-07-26 08:25:18'),
(102, '0619095801', 'BAMBANG ENDRO SUTJAHYO', NULL, NULL, '$2y$10$KrTHYYVxyKwbSuzN04sXOe4k1AevLkTpFg1UnwOQhSmDu4gAdvE5m', 'Teknik Komputer', NULL, '2020-07-26 08:25:18', '2020-07-26 08:25:18'),
(103, '0620018402', 'UMI BAROROH M.Kes.', NULL, NULL, '$2y$10$zsHtWpy38zeg7HyVEoyNjOv1msJmq70e8xYsPdEYlukWA8jJoAP8S', 'Kebidanan', NULL, '2020-07-26 08:25:18', '2020-07-26 08:25:18'),
(104, '0620038601', 'IMAM BUKHARI M.M', NULL, NULL, '$2y$10$M8H7XAeLU250yYc..nngGeViO.JgES9PTm4KvsQTV6cggp7iwURyW', 'Teknik Komputer', NULL, '2020-07-26 08:25:18', '2020-07-26 08:25:18'),
(105, '0620068502', 'NAUFAL PERDANA', NULL, NULL, '$2y$10$fjz0wISrMFvmM66HgTd6AuSuOSbUlt.c2bbMZgzRvGVkGfnpKyCnK', 'Teknik Komputer', NULL, '2020-07-26 08:25:18', '2020-07-26 08:25:18'),
(106, '0620098402', 'RIZKY KURNIAWAN', NULL, NULL, '$2y$10$cCyhl27Kfr7YZCxhnn1iy.7pWDnqvzMRREKYyjxZQoaieNNxozBQ6', 'Teknik Komputer', NULL, '2020-07-26 08:25:18', '2020-07-26 08:25:18'),
(107, '0620127801', 'MIFTAKHUL HUDA S.Kom', NULL, NULL, '$2y$10$W15o5Qp6h4bl0PcgxGJehuf3gKjt1n/ZF8R/QHcUf2pHExzJLCUjC', 'Teknik Komputer', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(108, '0621028701', 'M. TAUFIK QUROHMAN S.Pd', NULL, NULL, '$2y$10$l9DQHE7OEuzKYmsHaPeOZuP8WO9KGtgORrePMWVFYZ6R/hOlCfGuO', 'Teknik Mesin', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(109, '0621108704', 'SAJARWO ANGGAI SST', NULL, NULL, '$2y$10$RY359AwZTXGLWOk165kLBe4oZg8F5DKfPgHdf8R4AMzRsVzR2nkqS', 'Teknik Elektronika', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(110, '0621117802', 'HANGGORO AGUNG NUGROHO', NULL, NULL, '$2y$10$22bRfliV2YdknyxOIPECRuIPMI75nRSLpyyQJ1crTVjnfe7889Opi', 'Farmasi', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(111, '0621127703', 'YUSABBIHUL AKBAR', NULL, NULL, '$2y$10$H8PU0J9e2pGIUNqjKUh8VeQhP3aIHXYQAm6DNhrsYEvL9fjO9tCN6', 'Teknik Komputer', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(112, '0622028602', 'MUHAMAD BAKHAR S.Kom', NULL, NULL, '$2y$10$8qsuKb/cdXgLcR/TAfqOrOqdrcdydzeYDE0cSYx2XqKTjWiSKnwy2', 'Teknik Komputer', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(113, '0622039201', 'GHEA DWI RAHMADIANE S.E', NULL, NULL, '$2y$10$DkR1R1WbS7xLup3AIFudSOtynQ6ts0FP91vCfKQ/nVyIez.ts7RFW', 'Akuntansi Sektor Publik', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(114, '0622048302', 'AMIN NUR AKHMADI M.T', NULL, NULL, '$2y$10$w95YfecBMlfqcyR2NwrTOuanOG9mK7VDiv5zIczAzeqwaoHoICjxi', 'Teknik Mesin', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(115, '0622058002', 'LINGGA BRAHMANING KUSUMA', NULL, NULL, '$2y$10$nE4tuDVKY0ZcLvdMG923QeQ/sRc8tX9036Pj0HuOQRAUHBCgO0IWi', 'Teknik Komputer', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(116, '0622088901', 'MOKHAMMAD RIFQI TSANI S.Kom', NULL, NULL, '$2y$10$nDmtWtIIJBVEhtztEPYjG.POThCPIwqQ/1lm07kYnK5h870VELMwS', 'Teknik Komputer', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(117, '0623018502', 'SARI PRABANDARI S.Farm', NULL, NULL, '$2y$10$bNdCjSmiiyidLFSoqXl6HO8Usrf/N6uYiFXa0G1l870XjZhgGuUD2', 'Farmasi', NULL, '2020-07-26 08:25:19', '2020-07-26 08:25:19'),
(118, '0623037704', 'ARFAN HAQIQI SULASMORO S.Kom', NULL, NULL, '$2y$10$mbj07Io.r2Lwl9MjxCpnEuI40W9thP6gcxt1iF2cpgjNUbtYZq9WW', 'Teknik Komputer', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(119, '0623108801', 'MUHAMMAD FIKRI HIDAYATTULLAH M.Kom', NULL, NULL, '$2y$10$Tax7FgHfieOY5caYS93he.Z4J8FbZshJq5aDt88pSjxdv5YCadlZm', 'Teknik Informatika', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(120, '0623109201', 'JOKO SANTOSO S.Farm', NULL, NULL, '$2y$10$7.ZRegBi/DpqPoj9s6IW3OtI3a8xk0y3LU484NlG75zmXwOWM5Qc6', 'Farmasi', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(121, '0623118301', 'ARIF RAKHMAN S.E.', NULL, NULL, '$2y$10$E0.15ptjWxKuVbdzVA4izO0HwPlGRyZOZRQvfp8zpJCJu0C0S5Uui', 'Teknik Komputer', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(122, '0623118501', 'TRIBUWANA SEPTI CEMPAKA S.Pd', NULL, NULL, '$2y$10$huYP3VZ5pFqvxfQbE77UD.wgbGhKdnUe0QbOjG/Be5i4lHD3070zi', 'Akuntansi', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(123, '0623119401', 'NURUL RENANINGTIAS S.T', NULL, NULL, '$2y$10$Sxr/20wTWNrsgv7t5bKGZesawZCU3AJlNgPPuXxjLU4svTF8TDz3C', 'Teknik Informatika', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(124, '0623128802', 'FIKI FIRDAUS S.Pd', NULL, NULL, '$2y$10$nI0cXCBSKWiPC/9ZclB7hOJLkPhhDytXYK0hyZk8phbCbvIuZr4cG', 'Teknik Mesin', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(125, '0624037501', 'IROMA MAULIDA S.KM', NULL, NULL, '$2y$10$5Gt4NLdRelBShNeVnWUC1u4cn3/PS.vQKsGNFtCrzu1SHLX24Y3xi', 'Kebidanan', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(126, '0624047701', 'JATMIKO INDRIYANTO S.Kom', NULL, NULL, '$2y$10$pyepvmUoSI1LyLXX3ieIl.f7GYvHhFUWIft2inW6OzF/jusS7rRl.', 'Teknik Komputer', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(127, '0624047703', 'IDA AFRILIANA S.T', NULL, NULL, '$2y$10$jdebbLs66VSaVaviyinttuKNenjFR8hYkm5lIlHaq0B/DdHpYE3HC', 'Teknik Komputer', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(128, '0625067701', 'NUROHIM SST', NULL, NULL, '$2y$10$9cLCzEsMipD4FCy5bXAk6.tx26agxIXi1VHT4tjrmVIr.89Nj97JG', 'Teknik Komputer', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(129, '0625077102', 'ERNI UNGGUL SEDYA UTAMI SE.', NULL, NULL, '$2y$10$UB3fn2toB4eDK4jW/hl5rO.rwitylhhYAVF8rA5jnPAqGuAZ2W13S', 'Akuntansi', NULL, '2020-07-26 08:25:20', '2020-07-26 08:25:20'),
(130, '0625088702', 'INDAH SILOKA DINA S.T', NULL, NULL, '$2y$10$AEraAZvyyg9zi.P17gnznu32hqwUiyjxTK3T5OnWUolXW4ZdVhrp6', 'Kebidanan', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(131, '0625099101', 'DIDIK VIRGIAWAN S.Kom', NULL, NULL, '$2y$10$G8Vr8ksl8k4tNUy7PbJKduU6n1MbBm/TEE/Wv49BvNeCjq7Gw4lRy', 'Perhotelan', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(132, '0625118301', 'VERY KURNIA BAKTI S.Kom', NULL, NULL, '$2y$10$pRgCgxQCjvNAnUZfN.5k9uamXQN3RxaIALnGo/vzmhKPPz6kmT3oC', 'Teknik Komputer', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(133, '0625127904', 'ROMADANI S.Kom', NULL, NULL, '$2y$10$F6qdlcJCl6a9suSp4qj0m.RV7C/kCpYGSKie1Ub3Telc2i4Ax5/VO', 'Teknik Komputer', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(134, '0626017902', 'IDA FARIDA S.E.', NULL, NULL, '$2y$10$Utk3UV1n3Lk65GzyPITbqe/E7zeFcETNhQBYfgvApXYkFtGd6VUSO', 'Akuntansi', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(135, '0626029101', 'RATRI WIKANINGTYAS S.Pd', NULL, NULL, '$2y$10$AsqQa/aDMwHVMxw9TPZQuutQ.Sth08KPxa44nTc2fiEwaMB5DdfHq', 'Teknik Elektronika', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(136, '0626057603', 'HARSONO S.Kom', NULL, NULL, '$2y$10$oB2rGmYSl4A3byZhK0CU0ulQRfXcj.OnU3z1EqUMmA7N8U5pRthBC', 'Teknik Komputer', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(137, '0626059001', 'SLAMET WIYONO S.Pd', NULL, NULL, '$2y$10$v4JAaEpkFYRPbkTcUVVaveFqap2k/Leez.jF.q0L8Z8CT.jc.mlQC', 'Teknik Informatika', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(138, '0626063701', 'SJAMSUDDIN DACHLAN S.T', NULL, NULL, '$2y$10$DE2d5QDJngmIWgyIoHUIWu0r.N743/MYK8nDn2Q0aVMm.t8R0ng2C', 'Teknik Elektronika', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(139, '0626088801', 'JUHROTUN NISA S.ST', NULL, NULL, '$2y$10$7VJoTttYcHMoHeTLczA7MuUaezk3eqBuiBCwIJ2U..Xl6Gi0JBtYy', 'Kebidanan', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(140, '0627028302', 'RIZKI FEBRIYANTI S.Farm', NULL, NULL, '$2y$10$YFJWWvu/J5GscjXGdz1jP.JtrLi3Nm1sOFSj0sHWDk2F7K5xVmcl6', 'Farmasi', NULL, '2020-07-26 08:25:21', '2020-07-26 08:25:21'),
(141, '0627037702', 'YENI PRIATNA SARI S.E.', NULL, NULL, '$2y$10$R5gC1MoLXhSDj..ukTaXpe1gbVszifMImUI.AnBXt3mI2JPeIuVIm', 'Akuntansi', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(142, '0627039102', 'TANTRI ADITHIA SABRINA S.Pd', NULL, NULL, '$2y$10$i0f5Hv10gRB0H9tqwn6Gjemmgd7L7s9lgIMFJu7pbVWdRYn121nde', 'Perhotelan', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(143, '0627068803', 'SYARIFUDIN S.T', NULL, NULL, '$2y$10$M1TAaKKEvZcegULktiUQFOwAfUJmeHCe3PW8cwVcl7/menCYyceZS', 'Teknik Mesin', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(144, '0627076201', 'KARTA', NULL, NULL, '$2y$10$OaW3mZ6zykR8EQ4Omr13o.rSmqcKagTxg9bAxRLjsAYFnJY0R7Z1G', 'Teknik Komputer', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(145, '0627127401', 'HENDRO BUDI SUSETYO S.T', NULL, NULL, '$2y$10$BpPRomhwaFLg6AaugzcwaerE/JyPz2vQKfGdLVuw.c/GNm8qSjP/6', 'Teknik Komputer', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(146, '0627128503', 'QIROM S.Pd', NULL, NULL, '$2y$10$J1zaRxoJJTQqyY9r2W0.Gun49HtNrPeOnHIOfR4/oN.n1g1yUUIL.', 'Teknik Elektronika', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(147, '0628018501', 'IKHA PUTRI IRIANTIE S.Si', NULL, NULL, '$2y$10$/HsRgi5cOgogHJv1wCWDH./ZA1TVMmDpLwz0mEl..keA5e/3UQiA6', 'Farmasi', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(148, '0628048201', 'HESTI WIDIANTI S.E.', NULL, NULL, '$2y$10$Ob.zHDAMYsjouIaCSx9Oxe9N8OGijPvyVa3QxVWGdjX8v7ZAOdshC', 'Akuntansi', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(149, '0628078002', 'YULIA YUSTIKASARI', NULL, NULL, '$2y$10$c9C9.YFi/lo/1V5FckT6j.xXJz63DytePL1x7l1rIt3hBJZBKgl2y', 'Teknik Komputer', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(150, '0628088601', 'UMRIATY S.ST', NULL, NULL, '$2y$10$bQxVZSwXZm52dyDRNYxQAuOjFQrt/e9zmzLj.agEbLfiz10BE7FV2', 'Kebidanan', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(151, '0628097201', 'ABDUL HOFIR', 'fina@gmail.com', NULL, '$2y$10$uSk5jiWZJWPVaDRKH4WUYeowDwpCNSmO2xNcnCZK6EOkHt27TRlu2', 'Teknik Komputer', NULL, '2020-07-26 08:25:22', '2020-10-30 23:12:52'),
(152, '0628098802', 'WAHYU DWI SEPTIANI', NULL, NULL, '$2y$10$QJHZ0dNiVldQyb68VOV6vuhqLqEQbNpM4PTTowmXN4RedJjMr3jym', 'Teknik Mesin', NULL, '2020-07-26 08:25:22', '2020-07-26 08:25:22'),
(153, '0628108902', 'ANITA KARUNIA S.E.', NULL, NULL, '$2y$10$J5zc6/iaZlhHnsQSqELTYe3kPGNNzokBfkGe8.LuY3K7HH816lRvm', 'Akuntansi', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(154, '0629048102', 'IBNUN ASLAMADIN', NULL, NULL, '$2y$10$YhIo5SP91a63MTzR9HxkgOCJHy5ngXzPGHrajyRwb9rH/b1JL5TnO', 'Akuntansi', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(155, '0629068902', 'NURUL MAHMUDAH S.E', NULL, NULL, '$2y$10$M0.oKE3tf0XXi4jSmreL/.dSgCveRHyAPn3VTZO0LxkGJX5dbaXnW', 'Akuntansi Sektor Publik', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(156, '0629098302', 'BAHRUN NIAM S.T', NULL, NULL, '$2y$10$uKk2HR/huqr0JkdNHE3Qj.NSm4sZAF.Du6yNMIYA87ay48kvTh4za', 'Teknik Elektronika', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(157, '0629098701', 'NUGROHO ADHI SANTOSO S.Kom', NULL, NULL, '$2y$10$ePbDDBIowbwjSOiHrZvIS.u0FbMtlCBLoiY.9tAxlqGymGYpwO7oi', 'Teknik Komputer', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(158, '0629107903', 'SIGIT SETIJO BUDI S.T', NULL, NULL, '$2y$10$2YDuPNtLfqT99nRwlrJn.OAXX7.q2KZadVxdRNyKIfOy.tqELFOvO', 'Teknik Mesin', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(159, '0629129101', 'ANDRI WIDIANTO S.E.', NULL, NULL, '$2y$10$rHQkXMHqOn5NaBfmYKnTAev4o59LW9maBqOSlO.JtJNj1RW9aqppe', 'Akuntansi', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(160, '0630058203', 'DRAJAT EDI PRASETIYO S.E', NULL, NULL, '$2y$10$eBgamgfd5SD9.i.Ua5OP7uW1h9UW5APTidVGm5u5cL8VatEvVAI.m', 'Perhotelan', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(161, '0631088201', 'ANGGUN SETYA WIBAWA', NULL, NULL, '$2y$10$1XgBF1EZbCJEHN5JZNx4xeEDDizjrsVvYp.5SI01QKG8YR6cv3QTW', 'Farmasi', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(162, '1117088601', 'SEVENTINA NURUL HIDAYAH A.Md', NULL, NULL, '$2y$10$ETHDPswvEUefWPq/gzevo.yQ31IupKLacPHmJgMn/jUMQex6TQIgW', 'Kebidanan', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(163, '4209068801', 'DANI FITRIA BRILIANTI M.Pd', NULL, NULL, '$2y$10$qj0KQFnIzpgCR4V9JS68vO/F8zWZocLp8aYs9reMHf0PK3.ZtIGcq', 'Teknik Komputer', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(164, '8800650017', 'Drs AGUS SUPRIHADI M.T', NULL, NULL, '$2y$10$KD6T5z6mTYieMw3Y1Rrnwezf/LwmYpyp5eskodaFqPQoAq.ZGZEHu', 'Teknik Mesin', NULL, '2020-07-26 08:25:23', '2020-07-26 08:25:23'),
(165, '8830330017', 'KHAIRUL FAHMI S.Kom', NULL, NULL, '$2y$10$jJRsbz3niMEyn0n6UxLJ9Od6O8P8i0wFFxRQYAkbWb2PhmtLb87ny', 'Teknik Elektronika', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(166, '8859740017', 'SUROSO S.IP', NULL, NULL, '$2y$10$fp2/UrSSAL/jpw1ePmnXIOGA/50rA6BJ9MJlO0JwW3GQOv.0VteDi', 'Teknik Komputer', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(167, '9904007368', 'DEWI SULISTYOWATI', NULL, NULL, '$2y$10$qZdws6wTeY.pukYQdnLg8.G7m2abeUHg69bkj0w/uaGQQmfbbJuxK', 'Akuntansi', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(168, '9906000348', 'OON SOPIAH', NULL, NULL, '$2y$10$bTB229qrBjDyOCofYQ6R6eGLQjGMZ22.8wZ8h8BeaZP138Nb7YAUq', 'Farmasi', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(169, '9906000519', 'MOHAMMAD TOFIK', NULL, NULL, '$2y$10$PK.tCb2EJAVEvpQkx1n34u/EWSrIqrGyLXTXTjF1hLolCMXkwOCoC', 'Teknik Mesin', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(170, '9906000812', 'MURWANI', NULL, NULL, '$2y$10$TXNaZs07mVJHm5hFgTYQ8.PeLiaI8m43tu28s0V9IYsvSTA4DR842', 'Farmasi', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(171, '9906003072', 'FITRI NURMAZIYA', NULL, NULL, '$2y$10$v.3b8eHu8Yk/v9Np1NoifeDsii7kXzakbddKofPpqSjzT6mhizV5a', 'Kebidanan', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(172, '9906004022', 'GUSTI AYU PUTU SRY EKA ASTUTI', NULL, NULL, '$2y$10$uX32H6GjaBxcIIvnD1YibO.EoMufBG97Id8WqYx4.aCKdGmuSIb4O', 'Farmasi', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(173, '9906004150', 'AMIR EFENDI', NULL, NULL, '$2y$10$7GMXKsqAXqnmWwiMyHeatOCEmVO5GzS/JgvUJFch9Dg9Dtn1gzpd.', 'Teknik Mesin', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(174, '9906004906', 'AI GUNARSIH', NULL, NULL, '$2y$10$99jy9NGt4hjegIdDcuD8Z.zL4Y4z65E8Uw7cKfVoZuTwZZdS0NGx6', 'Farmasi', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(175, '9906005190', 'IKA DIYAN MARIYANI', NULL, NULL, '$2y$10$tiiH2YrBqAFpCsXRHOzZXuL.Wk.T5Nhz69wBlFVUVbyvwzVnZ3fGy', 'Kebidanan', NULL, '2020-07-26 08:25:24', '2020-07-26 08:25:24'),
(176, '9906005533', 'AMIN BUDIHARTO', NULL, NULL, '$2y$10$SKdBs23sZ98QzrNatO3bnO89C8/ny5nf5JgrUYjRNeKSOXW9w4gqW', 'Teknik Mesin', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(177, '9906005706', 'AINUN RODLIYAH', NULL, NULL, '$2y$10$fb8D5gj32x0Fmz2LOn7yG.2mo9kcDG/cm89lU.3nq/ZvXvUCsm3sW', 'Farmasi', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(178, '9906005832', 'LENNY HARLINA HERDHA SANTI', NULL, NULL, '$2y$10$m19FoFEdcy/92VZDk3jro.hNMYhO7tU0QnG0h1AXsuMjS5wt7pKrC', 'Kebidanan', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(179, '9906006523', 'INDAH MEGAWATI', NULL, NULL, '$2y$10$616Ss9h4evELNswSG666J.nZn5hcmbVDj4MS5l9XaRt60TSUrzw9O', 'Teknik Elektronika', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(180, '9906007429', 'FANNI RIZKA WIDYASARI', NULL, NULL, '$2y$10$WcgzE6Qv7PKB5.XKquKvQ.X/R0kI.nPtmmfvY.N5uLM0Wwj5XlVS.', 'Kebidanan', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(181, '9906007565', 'LULUK AMALIA', NULL, NULL, '$2y$10$1S7Eqj4uj1MKnwA7TPtEieEcK7rjKkgFw5iTQHXTAWGEekop08gQa', 'Teknik Komputer', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(182, '9906007723', 'LULUK LESTARI', NULL, NULL, '$2y$10$Y1ARw877UdWCAl7g9HQ.Ve2Po9AUFKhENJ/zDiIvCPgQApjqn7rqW', 'Teknik Komputer', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(183, '9906008120', 'ISTI ROKHMANTI', NULL, NULL, '$2y$10$xLM6aPOOI0L7EZjXnmBza.Qj8zkzTTVSs5vMTQhI0tV7hDTzByHg2', 'Kebidanan', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(184, '9906009003', 'JAELANI', NULL, NULL, '$2y$10$g.RgeYLhBE56z.1jbkRycOtn7DNqmhZ1CcY7HQ8HlNVeNx3x1PgP6', 'Teknik Mesin', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(185, '9906009064', 'REZKY NILAMSARI S.Kom', NULL, NULL, '$2y$10$Or/Zunf6fVIXJN0mVMO.FeXK04.thvQxN1llvWe9s.RjkVARJb.5u', 'Teknik Komputer', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(186, '9906009649', 'ARFA ARBAATI NINGRUM', NULL, NULL, '$2y$10$bu1h5i.hrEydhkwRLYnTPe5i9wQ.Cnif4sNUrIJV96vuKNnNSAKc2', 'Teknik Komputer', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(187, '9906966925', 'NOVIA LUDHA ARISANTI', NULL, NULL, '$2y$10$9h7FBxy/NG48DzGaqAaJceIGaxIRtLRXEZr1wf.MrJckjaXlbPP7K', 'Kebidanan', NULL, '2020-07-26 08:25:25', '2020-07-26 08:25:25'),
(188, '9906966944', 'ISTIQOMAH DWI ANDARI', NULL, NULL, '$2y$10$o0oVXYAA0H1LvnbHpC0eLea/rm/cp/tT2ziDtpG1ABvF2QUB4nN4m', 'Kebidanan', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(189, '9906966968', 'MUTIARAWATI', NULL, NULL, '$2y$10$rnJPyaJ70fHIJCp2jDTeBeM3S5iB96V/wns8TaSnui8jgaYyB4Yki', 'Kebidanan', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(190, '9906966977', 'TIARA INDAH GALERI', NULL, NULL, '$2y$10$98x.rSp67CElaVM/uAq1cu0NWft7G2m3RbPrS.N6jEyEEOMcJNOz.', 'Farmasi', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(191, '9906966982', 'AHMAD MAULANA', NULL, NULL, '$2y$10$zlllJbRwhgipsZdBs4UoaeI2ku9Ia0F4bQF6ENhhV5OBub5b7nBaW', 'Teknik Komputer', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(192, '9906966983', 'AKHMAD ANIQ BARLIAN', NULL, NULL, '$2y$10$RID8z3xilEZQwQiXk8u0Uem0/yDgPbQyJp5AyesmzpDpcxhosgxce', 'Farmasi', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(193, '9906966985', 'AMELIA ZORAYA', NULL, NULL, '$2y$10$HZKhL2ixHoZS.KaEbJ9dce3TJ4b5evC4AF7/5J3PQg.TtaFfppz4S', 'Farmasi', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(194, '9906966986', 'DWI SARI ASTUTI', NULL, NULL, '$2y$10$7Uy7mxyIojwpnS2gZLxo5Okh2mHvhU4Y9dy94ps53H7zDHngYVI3i', 'Farmasi', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(195, '9906966987', 'FITRI AMALIYAH', NULL, NULL, '$2y$10$StNouqs6KnLTfQ/HQxMBO.tm35GxR/jRmCqkjh8fuihCS9pVWKWji', 'Akuntansi', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(196, '9906966988', 'HENI PURWANTININGRUM', NULL, NULL, '$2y$10$ET3RJyTlXVoB1OlWcmTkDOXB8Bz16PS9.dzoL/cZt7mm4Ucefigvq', 'Farmasi', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(197, '9906966990', 'MIA NURUL AZMI', NULL, NULL, '$2y$10$Y7ZUIoxFmNiHwCdMzBWTcuxxQcD3qw9o9.vUuwSRoLQUO.qlLF.wi', 'Teknik Komputer', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(198, '9906966991', 'NUR AIDI ARIYANTO', NULL, NULL, '$2y$10$NGmwxL3bFjG/TzrvXWIvyeiw9TGttrj.f7t6inWsPsGMwm39RBFgO', 'Teknik Mesin', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(199, '9906967005', 'TRIMA MUSTOFA', NULL, NULL, '$2y$10$u.UD310bzyFOqY6aGfkUIeFPBLXz.DjAwDJd/OlLE50X1VwDPt/G6', 'Teknik Komputer', NULL, '2020-07-26 08:25:26', '2020-07-26 08:25:26'),
(200, '9906977252', 'JOHAN FIRMANSYAH S.T', NULL, NULL, '$2y$10$VQWI45.wRcJa30.wYP8EvOC4U4xWDpOQG.DJuJmW5vnBX0tXJkddi', 'Teknik Mesin', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(201, '9906977260', 'REZA ARFI FAISAL S.T', NULL, NULL, '$2y$10$.uj.dApX9hX47vbvycDwkeNrQNkRoiIrWDP9QIKLnO1prVPnxLS2.', 'Teknik Mesin', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(202, '9906977548', 'DANY SUCIPTO S.T', NULL, NULL, '$2y$10$hG754C0RyXUnh.ZJrH1ywepfIVj..jId6Kq7J2JF6ZDEsLA6Nt1EO', 'Teknik Elektronika', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(203, '9906977554', 'GATOT SANTOSO S.T', NULL, NULL, '$2y$10$puNHUq9lz1qiv6PE3z6WyuTUn5dmmZDIdi5JOYUSvHEw4R0XhYRLy', 'Teknik Elektronika', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(204, '9906977557', 'ABDUL BASIT S.Kom', 'yuniafina4@gmail.com', NULL, '$2y$10$AIEbsTcS2Jy61G8u/h.uXOtRzkbhEXLRgUM9DiRLyjpkSVKzCW1kO', 'Teknik Komputer', NULL, '2020-07-26 08:25:27', '2020-10-30 23:18:26'),
(205, '9906977559', 'SOEHARDI S.T', NULL, NULL, '$2y$10$tVacEftAq8M6a3iSsBrWrenoPw8PF1IMBl0hKADS/NZ6AB6irfYpO', 'Teknik Elektronika', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(206, '9906977561', 'ANDRE BUDHI HENDRAWAN S.T', NULL, NULL, '$2y$10$O3L3HvYmKGG5.yfG871EFujr0suv4N7PA9HPVV7ZnLHodbvgSUhl6', 'Teknik Mesin', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(207, '9906977712', 'TOHARI S.T', NULL, NULL, '$2y$10$Bse4Mz/BWlBMC01Dgw.o8O9uRQ2xdbFnjOx/9zm2fJPIXtEMQMdPm', 'Teknik Elektronika', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(208, '9906977787', 'DONNA WIRABUANNA PUTRA S.Kom', NULL, NULL, '$2y$10$/d6a1T9V9AyHNi2xzDuI.eQZVVU451ETqdRHgX0A3Abze/H624see', 'Teknik Komputer', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(209, '9990000174', 'SABARI S.T', NULL, NULL, '$2y$10$dR18VP96i940dguoaByyu.QdJT/UiazJZlOMZQtCp7U5kXd3CNlWO', 'Teknik Elektronika', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27'),
(210, '9990344375', 'G SUPRIYONO S.T', NULL, NULL, '$2y$10$r9X00br1AZlLJ2w6JI0YR.gQKuAGiDCEBldvuUJtHEvBGfgAu6ee2', 'Teknik Elektronika', NULL, '2020-07-26 08:25:27', '2020-07-26 08:25:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
