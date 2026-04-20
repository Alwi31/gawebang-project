-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 20 Apr 2026 pada 13.43
-- Versi server: 5.7.39
-- Versi PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `gawebang_project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:9:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:17:\"manage categories\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"manage tools\";s:1:\"c\";s:3:\"web\";}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:15:\"manage projects\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:20:\"manage project tools\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:14:\"manage wallets\";s:1:\"c\";s:3:\"web\";}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:17:\"manage applicants\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:9:\"apply job\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"topup wallet\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"withdraw wallet\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:14:\"project_client\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:18:\"project_freelancer\";s:1:\"c\";s:3:\"web\";}}}', 1776776029);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Digital Marketing', 'digital-marketing', 'icons/82km5cDYFIBjXQS2QRov8t7HeZOYRXrpPieVNtjV.png', NULL, '2026-04-20 05:57:02', '2026-04-20 05:57:02'),
(2, 'Web Development', 'web-development', 'icons/VieR2AFMcVndNSTDkELBNODYHGM8Ty7wuTsmtEBX.png', NULL, '2026-04-20 05:59:30', '2026-04-20 05:59:30'),
(3, 'UI/UX Design', 'uiux-design', 'icons/EWHtTp2bEtYx8sY4QedDhM3W3P7FInjUjiEzlznJ.png', NULL, '2026-04-20 05:59:51', '2026-04-20 05:59:51'),
(4, 'User Research', 'user-research', 'icons/IHDk3AUvpxuHaCGFys20HTVErA7P8YERDrDptfjx.png', NULL, '2026-04-20 06:00:12', '2026-04-20 06:00:12'),
(5, 'App Developer', 'app-developer', 'icons/jpdE2grP4FM2La2bOnoid4iHJAkyadGCzZ4zUgAu.png', NULL, '2026-04-20 06:00:23', '2026-04-20 06:00:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_21_161200_create_permission_tables', 1),
(5, '2026_02_21_164326_create_categories_table', 1),
(6, '2026_02_21_164637_create_tools_table', 1),
(7, '2026_02_21_164756_create_projects_table', 1),
(8, '2026_02_21_164813_create_project_tools_table', 1),
(9, '2026_02_21_164839_create_wallets_table', 1),
(10, '2026_02_21_164853_create_wallet_transactions_table', 1),
(11, '2026_02_21_164902_create_project_applicants_table', 1),
(12, '2026_04_01_084912_add_skill_level__to_projects_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage categories', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(2, 'manage tools', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(3, 'manage projects', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(4, 'manage project tools', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(5, 'manage wallets', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(6, 'manage applicants', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(7, 'apply job', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(8, 'topup wallet', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(9, 'withdraw wallet', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `budget` bigint(20) UNSIGNED NOT NULL,
  `skill_level` enum('Beginner','Intermediate','Expert') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `has_finished` tinyint(1) NOT NULL,
  `has_started` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `name`, `slug`, `thumbnail`, `about`, `category_id`, `budget`, `skill_level`, `client_id`, `has_finished`, `has_started`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Company Profile', 'company-profile', 'thumbnails/OuJOQX3BpyQRbP0ry66wehYby2WQuczUbcHgLiW5.jpg', 'Build Company Profile by Rules', 2, 2000000, 'Intermediate', 2, 1, 1, NULL, '2026-04-20 06:28:28', '2026-04-20 06:41:17'),
(2, 'Inventory System', 'inventory-system', 'thumbnails/O58bUMiBCFBtqMM5OWbYFfACAULA8JUVts9ZOBWy.jpg', 'System Inventory CMS & App for Staff at company', 2, 3500000, 'Intermediate', 2, 0, 0, NULL, '2026-04-20 06:34:31', '2026-04-20 06:34:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_applicants`
--

CREATE TABLE `project_applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `freelancer_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project_applicants`
--

INSERT INTO `project_applicants` (`id`, `project_id`, `freelancer_id`, `message`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'I can get this project.', 'Hired', NULL, '2026-04-20 06:39:05', '2026-04-20 06:40:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_tools`
--

CREATE TABLE `project_tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `tool_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project_tools`
--

INSERT INTO `project_tools` (`id`, `project_id`, `tool_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2026-04-20 06:30:00', '2026-04-20 06:30:00'),
(2, 1, 7, NULL, '2026-04-20 06:30:07', '2026-04-20 06:30:07'),
(3, 1, 3, NULL, '2026-04-20 06:30:14', '2026-04-20 06:30:14'),
(4, 1, 30, NULL, '2026-04-20 06:30:25', '2026-04-20 06:30:25'),
(5, 2, 4, NULL, '2026-04-20 06:34:45', '2026-04-20 06:34:45'),
(6, 2, 6, NULL, '2026-04-20 06:34:49', '2026-04-20 06:34:49'),
(7, 2, 10, NULL, '2026-04-20 06:34:55', '2026-04-20 06:34:55'),
(8, 2, 3, NULL, '2026-04-20 06:35:01', '2026-04-20 06:35:01'),
(9, 2, 7, NULL, '2026-04-20 06:35:05', '2026-04-20 06:35:05'),
(10, 2, 20, NULL, '2026-04-20 06:35:19', '2026-04-20 06:35:19'),
(11, 2, 27, NULL, '2026-04-20 06:35:31', '2026-04-20 06:35:31'),
(12, 2, 30, NULL, '2026-04-20 06:35:41', '2026-04-20 06:35:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'project_client', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(2, 'project_freelancer', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(3, 'super_admin', 'web', '2026-04-20 05:40:56', '2026-04-20 05:40:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(3, 1),
(4, 1),
(6, 1),
(8, 1),
(9, 1),
(7, 2),
(9, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cBBd9PD826C50ASGUwdHSLJAyDVRwby1ZjbxbZcc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRmZJbWNZWXFxWWljWU01NTlxQVRiODJXMnVXeXFRQ1c0eTJpVktHMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL2NvbXBhbnktcHJvZmlsZSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1776692515),
('KTsG71OSLbdHhju57YMyEi6FoCVqUOmehEDfpC6i', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0VwVDI5SjFNT3pvYVNlUG16UklxVUY5aTFyY2JBQmZRS2VLQzV1diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvcHJvcG9zYWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1776689162),
('pzD6xbrnPwI2H1G3IR5ujAooy0A9IIi458zE0xYU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmFUVDIwUk9pT0E1bGcyWFFJclk3QWhGYkdscjNJbjR2UnZQMkZTSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1776692542);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tools`
--

CREATE TABLE `tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tools`
--

INSERT INTO `tools` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', 'icons/rNXzRhksEIM7zcG6SOgiqjztNnN2bq3C1m9X17Zc.png', NULL, '2026-04-20 06:03:45', '2026-04-20 06:03:45'),
(2, 'CodeIgniter', 'codeigniter', 'icons/YmUzjbpXfY70nHpTjZ3mwEoBtlgif2xImaOVfOJq.jpg', NULL, '2026-04-20 06:04:12', '2026-04-20 06:04:12'),
(3, 'Tailwind CSS', 'tailwind-css', 'icons/Xf40NZAtsQuw1VnYRBEKnqC2VcNpvEVJ4b6BLW44.png', NULL, '2026-04-20 06:04:28', '2026-04-20 06:04:28'),
(4, 'NextJS', 'nextjs', 'icons/ouHs76wBPKh1UePCj24fw8kEbunOso45Fg8vcXji.png', NULL, '2026-04-20 06:04:41', '2026-04-20 06:04:41'),
(5, 'ExpressJS', 'expressjs', 'icons/6wmRFY2OvREcuHEOikxHCFUlPWK2zNOSue0yj0YP.jpg', NULL, '2026-04-20 06:04:52', '2026-04-20 06:04:52'),
(6, 'React', 'react', 'icons/CTtyZELZL4iVOjOV0iOPlBnG9L5XHryW8YBjnncl.jpg', NULL, '2026-04-20 06:05:09', '2026-04-20 06:05:09'),
(7, 'Figma', 'figma', 'icons/6fWUV1WcOrp0O83GwJ0nn3fp8wDjY9Kc1xkdnLs0.png', NULL, '2026-04-20 06:05:22', '2026-04-20 06:05:22'),
(8, 'Vue JS', 'vue-js', 'icons/6Aa0dE8oNoMUoN4JfGik9UDn0eeGmLEXKFZCpKlE.jpg', NULL, '2026-04-20 06:05:51', '2026-04-20 06:05:51'),
(9, 'JavaScript', 'javascript', 'icons/sbbpMKP7C7WlEhKNnqT447nnGMdtdVScajaFWflQ.jpg', NULL, '2026-04-20 06:06:04', '2026-04-20 06:06:04'),
(10, 'TypeScript', 'typescript', 'icons/Y1S052sRoN2qK0zsvlJbnRtc29Ffig87HQSrhCX0.jpg', NULL, '2026-04-20 06:06:15', '2026-04-20 06:06:15'),
(11, 'React Native', 'react-native', 'icons/dlihFMqz7RUHCip4lF6rpUuaf7yT1MAYA5Yv7gqi.jpg', NULL, '2026-04-20 06:06:25', '2026-04-20 06:06:25'),
(12, 'Spring Boot', 'spring-boot', 'icons/m7HjGNxa49sblxEzx2ogCGl8DZIph7a2UHaH1ont.jpg', NULL, '2026-04-20 06:06:44', '2026-04-20 06:06:44'),
(13, 'NuxtJS', 'nuxtjs', 'icons/kz24CKhUk8L50ehZqYy97evbXDX2R1vmyaJzKUMv.jpg', NULL, '2026-04-20 06:07:04', '2026-04-20 06:07:04'),
(14, 'Flask', 'flask', 'icons/wTY8I55hlT5mKlO5xEyUUba0ZIk97SEMo6lH2CEx.jpg', NULL, '2026-04-20 06:07:19', '2026-04-20 06:07:19'),
(15, 'Django', 'django', 'icons/3bxBAftn6rU8I6EWwxMiLR6fR24rnXzCyZ5FxolT.jpg', NULL, '2026-04-20 06:07:27', '2026-04-20 06:07:27'),
(16, 'Golang', 'golang', 'icons/8Kq1UbL5I6Zjf9ai9FphvgMZswA6pNcQtJ8HwVSh.jpg', NULL, '2026-04-20 06:07:35', '2026-04-20 06:07:35'),
(17, 'C#', 'c', 'icons/oIE1xFhRmlXB9nctPDkJ0xn5TJtdHYKcL8ATyU2D.jpg', NULL, '2026-04-20 06:07:56', '2026-04-20 06:07:56'),
(18, '.Net', 'net', 'icons/xbtvRtxKUtfrrs1xGwAv8E8NDgghIo7tKZ2Gtway.jpg', NULL, '2026-04-20 06:08:13', '2026-04-20 06:08:13'),
(19, 'Kotlin', 'kotlin', 'icons/RmWuHcpryfqDUbiTtQj01QGVkgjcKyHQ5VTNXviN.jpg', NULL, '2026-04-20 06:08:33', '2026-04-20 06:08:33'),
(20, 'Flutter', 'flutter', 'icons/60ABc0p6gfK0tyUvA70HbHgmEij0F6gAXaeqFOnI.jpg', NULL, '2026-04-20 06:08:42', '2026-04-20 06:08:42'),
(21, 'Dart', 'dart', 'icons/oRvjC16eDJrFp1mtphBT97cvWH3PTEER3ysz4Fpf.jpg', NULL, '2026-04-20 06:08:51', '2026-04-20 06:08:51'),
(22, 'Swift', 'swift', 'icons/0gP0L61qvhEcOhtjMZiMv5KfpG7Jjhae9H8QvozZ.jpg', NULL, '2026-04-20 06:09:06', '2026-04-20 06:09:06'),
(23, 'Laragon', 'laragon', 'icons/g0obpPvc0kCXkPXayxHNJ1WA5P7wbPAU7xorjMZo.jpg', NULL, '2026-04-20 06:09:36', '2026-04-20 06:09:36'),
(24, 'Xampp', 'xampp', 'icons/iCaprYvgcoQq9zmP0rRaVOQ98DpcOtQKfHba0Qx4.jpg', NULL, '2026-04-20 06:09:42', '2026-04-20 06:09:42'),
(25, 'MySQL', 'mysql', 'icons/y1HFB3MeO6jsPpT9DMJgCG4zqyf50pRjIuu7ZPQf.jpg', NULL, '2026-04-20 06:09:50', '2026-04-20 06:09:50'),
(26, 'MongoDB', 'mongodb', 'icons/74bdHFhgiIa7DK63dJOOrPM5PN1B2icmeegW1GXa.jpg', NULL, '2026-04-20 06:09:58', '2026-04-20 06:09:58'),
(27, 'PostgreeSQL', 'postgreesql', 'icons/W3jT1fg54qZCTPq0DI5p9iiC4zCtGb81OT27mO6G.jpg', NULL, '2026-04-20 06:10:09', '2026-04-20 06:10:09'),
(28, 'Netlify', 'netlify', 'icons/AdoAzNg3HwS3jwOK7WnxYDvx0CIWxaI7rWi7NonV.jpg', NULL, '2026-04-20 06:10:28', '2026-04-20 06:10:28'),
(29, 'Vercel', 'vercel', 'icons/HSSJL0XmEMV50b2OoOVZwUkmN7GrMQibtuOgpDkX.jpg', NULL, '2026-04-20 06:10:35', '2026-04-20 06:10:35'),
(30, 'cPanel', 'cpanel', 'icons/rMTejRwxaZ56hxqGRu12cyjBj8PD8BQHTPfsoZVY.jpg', NULL, '2026-04-20 06:10:43', '2026-04-20 06:10:43'),
(31, 'GitHub', 'github', 'icons/m1jqysV5R0UJzg3JJSeCDYxhX8WeSsnof2YgSAfD.jpg', NULL, '2026-04-20 06:10:53', '2026-04-20 06:10:53'),
(32, 'NestJS', 'nestjs', 'icons/ZhC56Hp2xDBd8mq0ml45zNCK2EGufNB3Ws4hANWx.jpg', NULL, '2026-04-20 06:11:08', '2026-04-20 06:11:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connect` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `occupation`, `connect`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'images/default-avatar.png', 'Owner', 999999, 'super@admin.com', NULL, '$2y$12$ED/gM086/bnV8PHpHkz/2urpojmn1PC/L4r4uMFrwsO2ZA8AwVrS6', NULL, '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(2, 'Muhammad Nizar Alwi', 'avatars/EyfGqq0frTxHyV20vOPHKF5ZonKIypVvqDd9cXSU.jpg', 'Client', 10, 'nizaaralwi@gmail.com', NULL, '$2y$12$fKvj5EKPVm9yfgwRr6x0ROCGztNtAE3YGiHNu513ZVxZpzOZhNGQi', NULL, '2026-04-20 05:55:50', '2026-04-20 05:55:50'),
(3, 'Awing', 'avatars/y2X9t5rvxOhQlZmJnuECpxGS4AGi3ifgHuIZI0VK.jpg', 'Programmer', 9, 'awing@gmail.com', NULL, '$2y$12$jQcT6ZuVc7tssqEJgCCxBO2blBDiOYY2XktEMnqoGyvcglDZoKIzK', NULL, '2026-04-20 06:38:12', '2026-04-20 06:39:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `balance` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `balance`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, '2026-04-20 05:40:56', '2026-04-20 05:40:56'),
(2, 2, 19500000, NULL, '2026-04-20 05:55:50', '2026-04-20 06:34:31'),
(3, 3, 2000000, NULL, '2026-04-20 06:38:12', '2026-04-20 06:41:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `user_id`, `amount`, `type`, `is_paid`, `proof`, `bank_name`, `bank_account_name`, `bank_account_number`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 25000000, 'Topup', 1, 'proofs/vX26eLgKO76oUQHkGm46pBxFRIaGGaxDgzH7z291.png', NULL, NULL, NULL, NULL, '2026-04-20 06:16:56', '2026-04-20 06:17:18'),
(2, 3, 2000000, 'Revenue', 1, NULL, NULL, NULL, NULL, NULL, '2026-04-20 06:41:17', '2026-04-20 06:41:17');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_category_id_foreign` (`category_id`),
  ADD KEY `projects_client_id_foreign` (`client_id`);

--
-- Indeks untuk tabel `project_applicants`
--
ALTER TABLE `project_applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_applicants_project_id_foreign` (`project_id`),
  ADD KEY `project_applicants_freelancer_id_foreign` (`freelancer_id`);

--
-- Indeks untuk tabel `project_tools`
--
ALTER TABLE `project_tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_tools_project_id_foreign` (`project_id`),
  ADD KEY `project_tools_tool_id_foreign` (`tool_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `project_applicants`
--
ALTER TABLE `project_applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `project_tools`
--
ALTER TABLE `project_tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tools`
--
ALTER TABLE `tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_applicants`
--
ALTER TABLE `project_applicants`
  ADD CONSTRAINT `project_applicants_freelancer_id_foreign` FOREIGN KEY (`freelancer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_applicants_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_tools`
--
ALTER TABLE `project_tools`
  ADD CONSTRAINT `project_tools_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_tools_tool_id_foreign` FOREIGN KEY (`tool_id`) REFERENCES `tools` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
