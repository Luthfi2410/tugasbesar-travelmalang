-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21 Des 2020 pada 08.12
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jancok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `thumbnail`, `name`, `slug`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Laravel', 'laravel', '1', '2020-12-08 12:56:56', '2020-12-08 12:56:56'),
(2, 1, NULL, 'WordPress', 'wordpress', '0', '2020-12-08 12:56:56', '2020-12-08 12:56:56'),
(3, 1, NULL, 'Python', 'python', '1', '2020-12-08 12:56:56', '2020-12-08 12:56:56'),
(4, 1, NULL, 'Javascript', 'javascript', '1', '2020-12-08 12:56:56', '2020-12-08 12:56:56'),
(5, 1, NULL, 'Django', 'django', '1', '2020-12-08 12:56:56', '2020-12-08 12:56:56'),
(6, 6, '#', 'Pengumuman', 'pengumuman', '1', '2020-12-10 04:46:05', '2020-12-10 04:46:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_posts`
--

CREATE TABLE IF NOT EXISTS `category_posts` (
`id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category_posts`
--

INSERT INTO `category_posts` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 44, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(2, 1, 87, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(3, 1, 57, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(4, 4, 98, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(5, 2, 35, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(6, 4, 90, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(7, 3, 29, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(8, 4, 89, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(9, 5, 60, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(10, 2, 78, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(11, 4, 48, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(12, 1, 3, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(13, 4, 30, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(14, 3, 7, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(15, 5, 36, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(16, 5, 67, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(17, 3, 100, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(18, 3, 83, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(19, 2, 76, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(20, 1, 60, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(21, 1, 81, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(22, 3, 70, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(23, 2, 38, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(24, 4, 52, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(25, 1, 74, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(26, 1, 27, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(27, 5, 85, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(28, 1, 98, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(29, 4, 45, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(30, 5, 33, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(31, 1, 34, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(32, 1, 45, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(33, 3, 29, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(34, 5, 71, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(35, 5, 36, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(36, 4, 34, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(37, 1, 47, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(38, 4, 16, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(39, 5, 11, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(40, 3, 38, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(41, 1, 38, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(42, 1, 68, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(43, 2, 24, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(44, 3, 5, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(45, 1, 32, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(46, 5, 90, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(47, 4, 67, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(48, 1, 50, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(49, 4, 75, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(50, 4, 29, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(51, 1, 34, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(52, 4, 25, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(53, 3, 78, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(54, 4, 12, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(55, 3, 11, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(56, 5, 68, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(57, 5, 53, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(58, 3, 78, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(59, 4, 78, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(60, 3, 4, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(61, 2, 51, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(62, 4, 26, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(63, 4, 20, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(64, 3, 96, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(65, 3, 15, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(66, 3, 26, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(67, 5, 55, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(68, 3, 46, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(69, 4, 39, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(70, 4, 27, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(71, 4, 89, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(72, 3, 63, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(73, 3, 90, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(74, 2, 86, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(75, 3, 47, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(76, 5, 14, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(77, 2, 6, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(78, 3, 10, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(79, 4, 96, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(80, 5, 80, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(81, 5, 2, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(82, 4, 24, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(83, 1, 33, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(84, 5, 31, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(85, 2, 41, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(86, 2, 12, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(87, 1, 96, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(88, 3, 62, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(89, 1, 66, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(90, 1, 60, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(91, 3, 23, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(92, 5, 96, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(93, 2, 68, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(94, 1, 61, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(95, 2, 7, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(96, 4, 80, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(97, 1, 80, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(98, 3, 98, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(99, 2, 70, '2020-12-08 12:57:10', '2020-12-08 12:57:10'),
(100, 2, 78, '2020-12-08 12:57:10', '2020-12-08 12:57:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
`id` bigint(20) unsigned NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
`id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
`id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_13_111343_create_categories_table', 1),
(5, '2020_05_13_111359_create_posts_table', 1),
(6, '2020_05_13_111413_create_galleries_table', 1),
(7, '2020_05_13_111436_create_category_posts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `thumbnail`, `title`, `slug`, `sub_title`, `details`, `post_type`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 'Soluta expedita dolores rerum.', 'soluta-expedita-dolores-rerum', 'Aut dicta sed quasi nobis.', 'Iste et explicabo nam quia cumque nam nihil. Alias similique occaecati omnis voluptatem eum consectetur. Laborum saepe atque est. Sit et hic dolorem.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(2, 4, NULL, 'Harum magnam quaerat cum nihil.', 'harum-magnam-quaerat-cum-nihil', 'Eum temporibus aspernatur repellat.', 'Dolorum quia autem est magnam voluptatem ea impedit. Quaerat ullam dicta sit non natus totam. Qui voluptatibus ut voluptas qui. A perspiciatis id consequuntur sed praesentium magnam vel.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(3, 2, NULL, 'Est necessitatibus asperiores enim voluptatem.', 'est-necessitatibus-asperiores-enim-voluptatem', 'Iusto exercitationem nam sunt ut placeat.', 'Temporibus quibusdam placeat natus molestiae. Iste omnis doloremque dolorem qui nihil consectetur eos. Beatae dolor eius necessitatibus quaerat.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(4, 5, NULL, 'In consequatur enim est voluptate ex dicta sit.', 'in-consequatur-enim-est-voluptate-ex-dicta-sit', 'Aut in voluptatem necessitatibus sed.', 'Aut explicabo quo autem sed et molestiae ipsum. Iure numquam voluptas aliquam. Ut animi vel porro dignissimos minus.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(5, 4, NULL, 'Ipsa quibusdam neque ut quisquam facilis sunt velit et.', 'ipsa-quibusdam-neque-ut-quisquam-facilis-sunt-velit-et', 'Provident est et quod quis in.', 'Ipsam qui et dolor recusandae accusantium sed accusamus. Architecto ad dolorum nesciunt alias pariatur iusto voluptatem. Reprehenderit laboriosam blanditiis sint facilis dolor eos hic non. Animi sunt explicabo dolore eum rerum dolorem incidunt.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(6, 4, NULL, 'Est iure quo odit ratione.', 'est-iure-quo-odit-ratione', 'Voluptatem est quia enim eius sit.', 'Deleniti fugit libero veritatis commodi quidem ad. Et delectus quaerat et suscipit perspiciatis. Excepturi sit sunt animi aut. Sunt itaque quod ex numquam.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(7, 5, NULL, 'Rerum ut officia iusto magnam.', 'rerum-ut-officia-iusto-magnam', 'Itaque voluptatem ullam nihil.', 'Officiis vitae eum modi ut ratione. Illo est ducimus laudantium non. Optio est asperiores alias quod.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(8, 1, NULL, 'Harum numquam ut repellat sit repellendus eos excepturi voluptas.', 'harum-numquam-ut-repellat-sit-repellendus-eos-excepturi-voluptas', 'Non facilis cumque ducimus illum illo minima enim.', 'Eum sed ipsum eos. Explicabo temporibus blanditiis perspiciatis odio enim deleniti. Quia quis accusamus porro iusto eveniet maiores.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(9, 2, NULL, 'Quia non repudiandae sunt dolore.', 'quia-non-repudiandae-sunt-dolore', 'Veniam aut error voluptatibus unde non cupiditate nihil in.', 'Aut ea consequatur cum maxime illum iusto. Ut consequatur quasi natus corrupti esse ea. Eveniet voluptatem consequatur dolorum rerum.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(10, 3, NULL, 'Ut qui sapiente nisi excepturi fuga magnam.', 'ut-qui-sapiente-nisi-excepturi-fuga-magnam', 'Harum culpa dolore similique.', 'Aliquam commodi ex non dolore debitis distinctio in sunt. Quis ea molestiae vitae consequuntur. Consequatur reiciendis dolor sapiente minima beatae ab vitae.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(11, 2, NULL, 'Non quia laboriosam omnis voluptate quos autem perspiciatis.', 'non-quia-laboriosam-omnis-voluptate-quos-autem-perspiciatis', 'Blanditiis ullam ut corrupti.', 'Voluptatem animi doloremque voluptatem quia rerum doloremque explicabo. Consequatur et possimus iure voluptatem voluptatibus doloribus. Ea aliquid vel ut dolores officia consectetur. Ut et aliquam vel est ut adipisci beatae.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(12, 3, NULL, 'Ut sit odio quia rerum.', 'ut-sit-odio-quia-rerum', 'Quas autem vel porro molestiae consequatur et.', 'Nesciunt aut cupiditate et molestiae molestias corrupti aut necessitatibus. Omnis maxime ut earum pariatur ab harum perspiciatis. Voluptate iusto repellat quibusdam ipsam.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(13, 5, NULL, 'Laborum magnam est repudiandae illum et vero dolores.', 'laborum-magnam-est-repudiandae-illum-et-vero-dolores', 'Corporis et consequatur numquam consequuntur ipsam molestiae.', 'Dolorem perferendis sapiente quia. Consequatur omnis culpa aut consequatur at quisquam iste. Occaecati est suscipit dolorem error ullam odit.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(14, 3, NULL, 'Ea dolores sed aut culpa corporis et.', 'ea-dolores-sed-aut-culpa-corporis-et', 'Qui assumenda voluptates itaque eaque.', 'Quod laborum porro quaerat mollitia. Et aut ut odit. Excepturi quis nemo ipsa ad facere provident fuga. Consectetur perferendis non amet harum quo.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(15, 2, NULL, 'Placeat sequi dolorum et minus fuga.', 'placeat-sequi-dolorum-et-minus-fuga', 'Omnis adipisci dignissimos ea ipsam nam odio rem eos.', 'Corrupti minus corporis molestias voluptas. Quis magnam ratione consectetur voluptas omnis iusto. Quia odit ullam occaecati numquam non ullam neque magni. Officiis ut beatae ut necessitatibus eveniet libero voluptates dolor.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(16, 1, NULL, 'Sed tempore quibusdam voluptas et.', 'sed-tempore-quibusdam-voluptas-et', 'Aut pariatur amet omnis laboriosam sint repudiandae ut corrupti.', 'Fugiat ut omnis excepturi adipisci ea laborum. Qui omnis ut labore. Explicabo ducimus maiores quia quod incidunt provident fugiat.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(17, 2, NULL, 'Atque ut ullam id aut earum est repellendus blanditiis.', 'atque-ut-ullam-id-aut-earum-est-repellendus-blanditiis', 'Sed accusamus aut beatae fuga.', 'Modi nihil dolores quod consequatur ut earum. Occaecati sunt est amet dolores fugit. Blanditiis ab ad dolorem. Explicabo consequatur sed molestiae dolorum animi illo quas dolore. Impedit nisi id facilis voluptatem nulla sed adipisci dolores.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(18, 1, NULL, 'Eos tenetur rerum nesciunt ut id debitis.', 'eos-tenetur-rerum-nesciunt-ut-id-debitis', 'Praesentium est iste delectus consequuntur.', 'Facilis aperiam labore incidunt. Consectetur laborum est et. Ab debitis doloremque deserunt necessitatibus itaque quis. Sunt quis voluptate et libero est.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(19, 1, NULL, 'Vel perspiciatis nobis quos autem adipisci dolores.', 'vel-perspiciatis-nobis-quos-autem-adipisci-dolores', 'Cupiditate non velit iure quas et animi omnis.', 'Voluptatem rerum suscipit eius provident mollitia molestias excepturi. Quaerat veritatis molestiae fugit asperiores et doloremque. Blanditiis voluptas odit enim optio.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(20, 5, NULL, 'Voluptatem maxime reiciendis quas.', 'voluptatem-maxime-reiciendis-quas', 'Corrupti temporibus sit culpa.', 'Repudiandae est porro fugit facilis enim repellat quos qui. Exercitationem aperiam quasi quia. Velit voluptatibus autem nisi et exercitationem.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(21, 1, NULL, 'Eos voluptatem similique totam repellat fugiat ut velit.', 'eos-voluptatem-similique-totam-repellat-fugiat-ut-velit', 'Porro vel modi molestiae minus eum.', 'Et aut deserunt laborum quasi quia et. Sunt et rerum veniam a porro doloremque rerum. Soluta ullam unde quod enim.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(22, 2, NULL, 'Est illo recusandae dolores ut.', 'est-illo-recusandae-dolores-ut', 'Totam placeat sint animi ex odit laboriosam.', 'Non aut voluptas nulla quia impedit expedita soluta. Voluptate atque odit neque aliquid.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(23, 4, NULL, 'Possimus totam quae fugiat.', 'possimus-totam-quae-fugiat', 'Et voluptatem eveniet in.', 'Voluptatum ut temporibus quia. A amet rem beatae voluptatem natus quis. Quia nemo quam vero et sed repudiandae earum.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(24, 2, NULL, 'Culpa nisi consequatur ducimus eveniet sint odit.', 'culpa-nisi-consequatur-ducimus-eveniet-sint-odit', 'Officiis voluptas sunt cupiditate praesentium quia eum.', 'Quisquam possimus omnis cupiditate cupiditate. Ut tempora similique nihil minima corrupti corporis est sunt. Aut beatae et ut quis.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(25, 4, NULL, 'Aspernatur aperiam ea sed ducimus exercitationem.', 'aspernatur-aperiam-ea-sed-ducimus-exercitationem', 'Inventore ipsam aut rerum doloremque.', 'Magni similique maxime sit laborum id facilis iste. Ut consectetur iusto quidem molestias rerum nostrum. Qui rem est distinctio quisquam mollitia repellendus enim. Corporis dolorem ut qui debitis ut rerum.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(26, 5, NULL, 'Voluptas sunt sit labore architecto aut voluptatibus ipsum repellendus.', 'voluptas-sunt-sit-labore-architecto-aut-voluptatibus-ipsum-repellendus', 'Itaque voluptas tempora reprehenderit laboriosam facilis saepe et deserunt.', 'Cumque eaque temporibus temporibus. Facilis atque voluptatum quo at distinctio. Dolor quia perspiciatis fugiat enim quo consequatur.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(27, 1, NULL, 'Minus rem neque nihil sequi.', 'minus-rem-neque-nihil-sequi', 'Inventore aut at veniam minima fuga ut.', 'Non eaque voluptatem libero unde dolor beatae aliquam. Aut velit dolores natus quos eos. Quis veniam sapiente doloribus occaecati.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(28, 4, NULL, 'Dolores et quibusdam sint soluta.', 'dolores-et-quibusdam-sint-soluta', 'Sit unde laborum aut quisquam mollitia nisi nisi.', 'Dignissimos et nesciunt ipsum. Temporibus rerum provident reiciendis est. Rerum alias rerum asperiores rerum ex nihil.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(29, 2, NULL, 'Consequatur rerum cum harum eveniet quo.', 'consequatur-rerum-cum-harum-eveniet-quo', 'Possimus earum quia esse aut facilis ducimus dolores.', 'Cum possimus quia et repellendus fuga. Quas praesentium sapiente perspiciatis omnis commodi. Ab iure et optio asperiores. Accusamus soluta aut aut sunt quam dignissimos.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(30, 5, NULL, 'Laborum illo perferendis accusamus ut.', 'laborum-illo-perferendis-accusamus-ut', 'Et quo necessitatibus et architecto suscipit.', 'Ex nesciunt neque voluptas animi odio odio enim aliquam. Animi autem nihil fuga facilis ipsum aut debitis. Eum doloremque dolore illo similique est rerum quia excepturi.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(31, 1, NULL, 'Et quia eius voluptatem.', 'et-quia-eius-voluptatem', 'Quasi laborum exercitationem quisquam est corrupti.', 'Dolorem et ipsum sint sit qui modi qui sapiente. Et repellendus sed qui ab soluta. Tempora repellat numquam natus cumque. Sunt tempore ad et sit quisquam eos autem fugit.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(32, 3, NULL, 'Eum et id expedita voluptas inventore et debitis.', 'eum-et-id-expedita-voluptas-inventore-et-debitis', 'Architecto aut eligendi aliquam repellendus qui omnis at.', 'Dignissimos mollitia est exercitationem sint qui. Deserunt exercitationem soluta repudiandae et nesciunt praesentium. Voluptate mollitia dignissimos fuga laboriosam labore provident sit. Officiis dicta eos itaque quia consectetur. Repellendus beatae ex corporis.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(33, 4, NULL, 'Molestiae asperiores expedita assumenda sapiente eaque.', 'molestiae-asperiores-expedita-assumenda-sapiente-eaque', 'Ea omnis dignissimos deserunt corporis aperiam.', 'Consequatur eum fugit similique molestiae esse maxime et. Sit et quasi perspiciatis accusamus quam. Libero consequuntur vitae exercitationem voluptas neque.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(34, 3, NULL, 'Labore perspiciatis aliquam rerum omnis.', 'labore-perspiciatis-aliquam-rerum-omnis', 'Nulla dolores eum qui ducimus harum.', 'Ex placeat autem iure quisquam repellendus officiis vero. Quaerat incidunt consequatur eum aut eius. Quidem quas dolorem modi voluptatem alias voluptate eveniet.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(35, 4, NULL, 'Officia consequatur illo qui est reiciendis id amet voluptatum.', 'officia-consequatur-illo-qui-est-reiciendis-id-amet-voluptatum', 'Est dolorem quisquam placeat libero non facere.', 'Reprehenderit aut voluptatem magnam ea quidem. Ut unde sapiente optio corporis saepe eos. Dolores fuga dolorem praesentium temporibus aperiam autem.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(36, 2, NULL, 'Qui optio voluptates aut et ab sequi id.', 'qui-optio-voluptates-aut-et-ab-sequi-id', 'Ab quas ratione aut et.', 'Fuga voluptate dolore sed quo eius. Aut cumque ut quos. Minus molestias dicta placeat.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(37, 2, NULL, 'Ratione quia sed voluptatibus placeat.', 'ratione-quia-sed-voluptatibus-placeat', 'Laboriosam quia tempore assumenda maxime.', 'Voluptate error officiis est rerum magni cumque. Ea non consequatur qui ex reprehenderit.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(38, 1, NULL, 'Aut rerum voluptatem quisquam est et debitis.', 'aut-rerum-voluptatem-quisquam-est-et-debitis', 'Reprehenderit veritatis ut quam mollitia magnam qui.', 'Qui aut et minima qui nulla vel. Velit impedit dignissimos iste iste quaerat magni. Sint voluptatem veritatis aut neque aut.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(39, 1, NULL, 'Hic voluptatem voluptatem et fuga sunt.', 'hic-voluptatem-voluptatem-et-fuga-sunt', 'Omnis temporibus molestiae reiciendis est et expedita.', 'Quia dolorem ut nesciunt. Illo dolores nulla dolore quibusdam et sed ut maxime. Pariatur unde occaecati fugiat quae ipsa ut.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(40, 2, NULL, 'Modi natus ipsa quaerat blanditiis.', 'modi-natus-ipsa-quaerat-blanditiis', 'Aliquid amet quo exercitationem consequuntur fugiat voluptatem dolores.', 'Ab magni sit aliquid dolorum nemo. Aspernatur necessitatibus quis qui. Ipsam praesentium ipsam voluptatem sed culpa iure excepturi.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(41, 5, NULL, 'Voluptatem harum quis magnam suscipit voluptas nemo.', 'voluptatem-harum-quis-magnam-suscipit-voluptas-nemo', 'Error nemo est animi nesciunt alias natus magni.', 'Qui ipsum aliquid voluptatem expedita ullam dolores et. Dolorum sit enim harum perspiciatis. Et non molestias molestias mollitia esse. Aut rerum dolor maxime delectus veritatis.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(42, 3, NULL, 'Ea molestiae molestias alias.', 'ea-molestiae-molestias-alias', 'Consequatur laudantium illo sed fuga.', 'Dolores animi sit unde facilis consequatur placeat. Odio laborum quod in est optio. Ipsam ab eos sint nobis neque dolor provident.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(43, 2, NULL, 'Molestiae repellat libero maiores eum ex voluptates.', 'molestiae-repellat-libero-maiores-eum-ex-voluptates', 'Et consequatur sed a voluptas iusto at ut.', 'Aut commodi dignissimos commodi qui. Facere dolores repellendus ratione neque necessitatibus. Et optio voluptates aliquam debitis illum amet illo. Nam labore tenetur eaque placeat unde odit expedita.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(44, 5, NULL, 'Excepturi sunt iusto repellat sint ipsum a deserunt praesentium.', 'excepturi-sunt-iusto-repellat-sint-ipsum-a-deserunt-praesentium', 'Non quis numquam voluptas a qui est.', 'Ut tempora ut et quam optio numquam voluptas mollitia. Qui ut labore id reiciendis. Debitis eum inventore est nihil est et. Et inventore placeat necessitatibus officiis dolores sit beatae.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(45, 1, NULL, 'Blanditiis rerum tenetur nihil odio dolorem.', 'blanditiis-rerum-tenetur-nihil-odio-dolorem', 'Quas sed eligendi totam qui.', 'Ea omnis tenetur quis nobis quia qui sit ex. Aspernatur dolor ut est sequi reprehenderit. Quia quisquam maiores asperiores et quibusdam eaque.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(46, 1, NULL, 'Earum voluptatum excepturi ut dignissimos possimus qui.', 'earum-voluptatum-excepturi-ut-dignissimos-possimus-qui', 'Eos aut laudantium eligendi eos quis eius.', 'Ea iure et aut nulla vero voluptatem dolores. Facere reprehenderit illum vel sit tenetur.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(47, 4, NULL, 'Rerum a voluptatum praesentium fugit.', 'rerum-a-voluptatum-praesentium-fugit', 'Soluta deleniti quia est incidunt.', 'Dignissimos quibusdam sequi provident nam sunt. Odio earum sapiente mollitia harum.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(48, 1, NULL, 'Dolores minus minus et repudiandae voluptas sunt.', 'dolores-minus-minus-et-repudiandae-voluptas-sunt', 'Quo autem tempore vel sint amet natus neque.', 'Harum est omnis et officiis a cum. Et nihil recusandae ducimus molestias eius porro. Dolore nisi consequatur quisquam explicabo consectetur consectetur quia consequatur. Voluptatem odio sunt sit dolores commodi saepe.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(49, 3, NULL, 'At iure nostrum delectus qui accusamus cumque.', 'at-iure-nostrum-delectus-qui-accusamus-cumque', 'Animi doloremque est numquam.', 'Non repellendus in praesentium pariatur ipsum molestias. Inventore quidem architecto quisquam. Quod perspiciatis non amet voluptatum omnis eos assumenda.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(50, 4, NULL, 'Deleniti quis et hic dolor consequuntur pariatur.', 'deleniti-quis-et-hic-dolor-consequuntur-pariatur', 'Molestias sit quos expedita non omnis iure illo non.', 'Placeat dolores cumque sed non. Dolore quasi enim error voluptatem fugit. Et aut nesciunt vel hic.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(51, 5, NULL, 'Eum vel animi consequatur voluptatibus quibusdam sapiente vel.', 'eum-vel-animi-consequatur-voluptatibus-quibusdam-sapiente-vel', 'Voluptatem quia nesciunt blanditiis illum vitae.', 'Qui placeat in nihil amet ut. Tempore similique repellat beatae accusamus a. Quisquam aspernatur quia aut inventore voluptas qui nostrum.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(52, 5, NULL, 'Facere optio qui nostrum repudiandae quia ut delectus.', 'facere-optio-qui-nostrum-repudiandae-quia-ut-delectus', 'Porro placeat et ut reiciendis repellendus sed est.', 'Id consequatur quod velit aut velit. A quisquam modi blanditiis. Ut fugiat sed et est ea magni et. Perspiciatis quia labore sint.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(53, 2, NULL, 'Fugit pariatur magni consequuntur voluptates.', 'fugit-pariatur-magni-consequuntur-voluptates', 'Eaque magni et aliquid quia accusantium.', 'Et soluta est ea voluptatem blanditiis ut beatae. Nostrum sint ad iusto labore minima consequuntur. Sequi rerum ut voluptatem qui. Est voluptatem dolor eaque eligendi nihil modi. Eveniet est ut itaque quo et ut beatae sunt.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(54, 3, NULL, 'Voluptatem aspernatur et animi cumque ad non velit non.', 'voluptatem-aspernatur-et-animi-cumque-ad-non-velit-non', 'Doloremque nihil sequi minus deserunt provident nam perspiciatis nobis.', 'Dolorem sit voluptatem quia. Id hic ducimus et tenetur quibusdam sapiente. Minus fuga nesciunt occaecati dignissimos et.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(55, 2, NULL, 'Necessitatibus omnis qui et molestiae.', 'necessitatibus-omnis-qui-et-molestiae', 'Fugiat repellat cumque enim quam minima vel consequuntur.', 'Distinctio distinctio non et. Repellendus numquam corporis sed reprehenderit sunt. Accusantium libero impedit delectus eligendi debitis. Cumque dolorem quod tenetur esse qui quos culpa.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(56, 3, NULL, 'Aut nostrum aliquam consequuntur.', 'aut-nostrum-aliquam-consequuntur', 'Quasi assumenda fuga aliquid iusto assumenda voluptatibus officia.', 'Dolores voluptas expedita corrupti. Similique iure quo dolores ut. Sapiente natus voluptatum vitae tempore autem natus sed. Quia repudiandae animi ut sit.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(57, 4, NULL, 'Rem repellat quis praesentium ut et aut.', 'rem-repellat-quis-praesentium-ut-et-aut', 'Molestias ullam illo temporibus et dolore asperiores perspiciatis.', 'Soluta voluptatem veniam consectetur exercitationem eum ut. Itaque veniam dolor quo. Et veritatis perferendis nam et corporis dicta.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(58, 5, NULL, 'Accusantium maxime quia dolor et.', 'accusantium-maxime-quia-dolor-et', 'Et non omnis atque.', 'Aliquid laboriosam aut voluptatum voluptatem deleniti sed. Voluptatum qui inventore quis. Tenetur reprehenderit et ad veritatis voluptas rerum quia. Qui deserunt ipsum autem.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(59, 5, NULL, 'Et ut dicta ipsam reprehenderit laborum incidunt iure et.', 'et-ut-dicta-ipsam-reprehenderit-laborum-incidunt-iure-et', 'Autem est architecto officiis recusandae ullam quaerat molestiae.', 'Labore suscipit velit est voluptatem. Ipsa cum est sed in. Repellendus eveniet tempore minima et. Laboriosam voluptatem libero quia.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(60, 3, NULL, 'Expedita qui sunt unde.', 'expedita-qui-sunt-unde', 'Illum id ea non odio.', 'Dolor ratione nulla assumenda. Tenetur quod laudantium ipsum ut impedit consequuntur. Non dolores accusamus cumque mollitia eos. Quibusdam est illo voluptatem odio corporis.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(61, 2, NULL, 'Vel ratione consequatur sequi occaecati eum sed nisi.', 'vel-ratione-consequatur-sequi-occaecati-eum-sed-nisi', 'Neque excepturi et eum temporibus.', 'Non vitae quos voluptas laudantium quia necessitatibus. Et amet officiis ratione repellendus. Deleniti molestias quo aut velit. Sint reiciendis ea commodi dolor assumenda possimus voluptatem. Voluptas rerum eum necessitatibus sunt assumenda amet laborum.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(62, 1, NULL, 'Qui officia eveniet vel.', 'qui-officia-eveniet-vel', 'Alias adipisci modi quidem eos et dolor.', 'Corporis omnis cumque nulla ea. Sit velit quibusdam cupiditate minima rem molestiae nobis. Nobis deserunt est velit voluptatum aliquid blanditiis dolor. Ipsam ea non ipsum aspernatur.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(63, 1, NULL, 'Iste non earum tenetur est nam.', 'iste-non-earum-tenetur-est-nam', 'Natus temporibus id ipsa commodi delectus dolor soluta nulla.', 'Inventore qui blanditiis quia consectetur. Dignissimos maxime sunt officiis laudantium quibusdam et. Est odio et velit esse.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(64, 5, NULL, 'Neque amet quia labore ex porro qui nihil.', 'neque-amet-quia-labore-ex-porro-qui-nihil', 'Omnis molestiae consequatur est.', 'Dolores inventore consequuntur velit veniam quaerat debitis quo enim. Dolores eum fuga quas non error quod at. Dolorem optio ut expedita.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(65, 3, NULL, 'In impedit excepturi id veritatis.', 'in-impedit-excepturi-id-veritatis', 'At blanditiis non tenetur quaerat unde et rerum quisquam.', 'Accusamus earum sunt ratione consequatur ducimus dolor nulla. Porro facilis enim doloribus quaerat quos quia. Dolor provident accusantium et id sapiente aut eum.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(66, 3, NULL, 'Quo distinctio excepturi maxime itaque.', 'quo-distinctio-excepturi-maxime-itaque', 'Sit deserunt quis eveniet doloremque.', 'Labore rem et provident assumenda at consequatur eum. Vel quia sit assumenda ut aut eum eius. Mollitia recusandae quidem expedita et.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(67, 2, NULL, 'Deleniti aliquam autem unde voluptate adipisci et.', 'deleniti-aliquam-autem-unde-voluptate-adipisci-et', 'Quia quam nulla nobis ea delectus.', 'Dolores sed eaque quas magni sint dolorem vel. Magnam aut a porro maiores ut minus. Et tempora itaque molestiae ipsa. Aut dolorum impedit vel perferendis omnis deserunt architecto. Deleniti voluptas voluptatem quo.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(68, 4, NULL, 'Nam fugit deleniti qui occaecati.', 'nam-fugit-deleniti-qui-occaecati', 'Consequatur voluptates consequatur expedita rerum optio.', 'Facilis et voluptates alias eum. Omnis rem iste assumenda quam et et sunt error. Aliquam atque in labore expedita sed dolor.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(69, 5, NULL, 'Magnam et similique rem et vel qui molestiae.', 'magnam-et-similique-rem-et-vel-qui-molestiae', 'Maxime odit natus doloremque quis omnis rerum.', 'Voluptatem autem est perspiciatis est. Rerum possimus reprehenderit facere eveniet veniam dolor assumenda. Sed cupiditate beatae dolorem qui non incidunt cupiditate.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(70, 1, NULL, 'Voluptas est eius magnam blanditiis.', 'voluptas-est-eius-magnam-blanditiis', 'Qui voluptas ex doloribus doloribus est vel.', 'Cum reprehenderit necessitatibus odio similique et quia rerum est. Molestiae debitis in dolorum neque tempora. Accusamus et quas labore rerum qui reiciendis.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(71, 5, NULL, 'Reiciendis amet molestiae delectus hic quisquam eius molestiae rerum.', 'reiciendis-amet-molestiae-delectus-hic-quisquam-eius-molestiae-rerum', 'Dignissimos in aut expedita amet ut assumenda.', 'Officiis earum nihil culpa ab. Excepturi laborum modi in ipsam molestias. Beatae quas architecto sint aliquid sint. Aperiam mollitia earum corporis aspernatur in officia.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(72, 1, NULL, 'Porro sint quia minus ut doloremque.', 'porro-sint-quia-minus-ut-doloremque', 'Sequi eveniet dolorum possimus asperiores ratione dolore labore.', 'Neque ullam consequatur sit esse. Modi hic non nam omnis. Dolorum qui cum quas.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(73, 4, NULL, 'A est similique aut et dolor temporibus corporis.', 'a-est-similique-aut-et-dolor-temporibus-corporis', 'Non sunt eos corrupti in et est.', 'Perspiciatis nisi odio veritatis molestias. Cum ratione vitae beatae est. Est quo ut expedita eos.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(74, 1, NULL, 'Delectus est officia error tempora aut.', 'delectus-est-officia-error-tempora-aut', 'Ipsam deserunt beatae nemo ea aut rem.', 'Itaque fuga quia voluptatem. Et maiores veritatis laudantium deleniti maiores. Sed quisquam quo numquam autem qui. Est ut voluptate necessitatibus nobis consectetur quae dolor.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(75, 5, NULL, 'Corrupti cupiditate vitae eveniet id sint ut et.', 'corrupti-cupiditate-vitae-eveniet-id-sint-ut-et', 'Reprehenderit molestiae id molestias tenetur.', 'Ab fugiat quae ut deleniti magnam libero. Quod necessitatibus error atque qui. Eligendi est aliquid rerum nulla omnis fugiat quis. Adipisci enim commodi placeat asperiores sed est amet id.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(76, 2, NULL, 'Rerum blanditiis dolor fuga qui mollitia.', 'rerum-blanditiis-dolor-fuga-qui-mollitia', 'Amet aut non architecto adipisci molestiae provident.', 'Eos aut laudantium dicta voluptas error. Facilis provident inventore perspiciatis temporibus reprehenderit eum. Et iste est ea. Sit ex inventore adipisci commodi.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(77, 4, NULL, 'Vel voluptatem eum quis magni.', 'vel-voluptatem-eum-quis-magni', 'Asperiores ut hic voluptates labore sed est.', 'Veniam voluptate at adipisci nisi iure. Qui totam eum atque sit ut neque dicta. Eos et repudiandae nisi doloribus impedit voluptatibus voluptatem. Vel sit omnis non molestiae voluptate.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(78, 1, NULL, 'Numquam alias ipsa et ut.', 'numquam-alias-ipsa-et-ut', 'Ex saepe facilis omnis et earum aut.', 'Dolor porro porro odit molestiae. Voluptatibus at minima aut officiis ipsa corrupti. Aperiam suscipit et accusantium omnis. Omnis nostrum eum deleniti sed exercitationem iure.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(79, 2, NULL, 'Cumque explicabo beatae consectetur dolor est architecto necessitatibus porro.', 'cumque-explicabo-beatae-consectetur-dolor-est-architecto-necessitatibus-porro', 'Quis repudiandae enim cum impedit corporis non ut voluptatem.', 'Voluptatem et nobis ut est voluptatum est est rerum. Amet harum aut nulla quo. Aut repudiandae optio quia non tenetur aliquam ipsa.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(80, 5, NULL, 'Omnis illum provident mollitia quibusdam molestias aut eos iure.', 'omnis-illum-provident-mollitia-quibusdam-molestias-aut-eos-iure', 'Quis qui tempora quos eum.', 'Voluptatem et ut enim et voluptas assumenda dolorem. Et accusamus officia sit quos molestiae temporibus. Voluptas deserunt velit dicta ab a voluptas porro.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(81, 4, NULL, 'Ut dolorem tempore magni odit quas.', 'ut-dolorem-tempore-magni-odit-quas', 'Atque est voluptas quae minima.', 'Est est qui quae aut reiciendis quidem recusandae. Enim rerum veniam perspiciatis earum doloremque. Quas eligendi voluptas et libero optio voluptate distinctio quisquam.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(82, 3, NULL, 'Aut saepe tenetur est omnis eaque tempora.', 'aut-saepe-tenetur-est-omnis-eaque-tempora', 'At quas et delectus ut adipisci et autem.', 'Maiores minima nostrum veritatis odio minima tenetur neque. Vel commodi quo harum maiores.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(83, 1, NULL, 'Temporibus autem aut odio sed quo.', 'temporibus-autem-aut-odio-sed-quo', 'Qui et quia laudantium quia dolor necessitatibus distinctio.', 'Ea ut impedit debitis esse error voluptas ipsum. Corrupti autem magni quaerat nostrum dolores. Rerum ut ipsam quod pariatur voluptatem sit. Velit doloribus hic quam voluptas eveniet error.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(84, 2, NULL, 'Esse ipsum expedita temporibus labore veritatis harum eligendi sed.', 'esse-ipsum-expedita-temporibus-labore-veritatis-harum-eligendi-sed', 'Ipsum blanditiis aspernatur itaque natus ut dolor.', 'Unde libero iusto omnis fuga sed autem. Doloremque sint deserunt vitae quidem magnam laboriosam distinctio.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(85, 1, NULL, 'Aut sed temporibus voluptas.', 'aut-sed-temporibus-voluptas', 'Doloribus consequuntur cupiditate explicabo libero ut aspernatur aliquam itaque.', 'Qui laudantium vel voluptatum consequatur. Et aut nihil veritatis porro qui sed. Rerum dolores quisquam quas officiis est qui. Nostrum ullam illo quo assumenda ut.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(86, 4, NULL, 'Alias possimus distinctio quod quibusdam quasi voluptate.', 'alias-possimus-distinctio-quod-quibusdam-quasi-voluptate', 'Rerum fugit et neque a.', 'Aut similique cum voluptas quo non. Explicabo vero at maiores dolor blanditiis. Sunt ea voluptate tempora in.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(87, 3, NULL, 'Odio cupiditate numquam labore et sit alias vel.', 'odio-cupiditate-numquam-labore-et-sit-alias-vel', 'Cum voluptatem aliquid dolorum dolor beatae.', 'Sint neque suscipit reiciendis quia non quia suscipit non. Odio at suscipit deserunt dolores illo. Et suscipit qui similique odit at. Fugiat et suscipit voluptatem. Consequatur nam quis dolores nam.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(88, 3, NULL, 'Nesciunt ut et alias saepe accusamus.', 'nesciunt-ut-et-alias-saepe-accusamus', 'Nihil odio assumenda non vel dolores nulla fugit aut.', 'Id voluptatem ex est voluptatibus dignissimos aliquid illum. Officiis voluptas ex maxime ea consequatur corrupti. Officia expedita voluptate ullam placeat et. Dolores impedit et ut repellat quis.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(89, 5, NULL, 'Labore dolor consequuntur quaerat vitae molestiae ut ab explicabo.', 'labore-dolor-consequuntur-quaerat-vitae-molestiae-ut-ab-explicabo', 'Sint voluptates optio deserunt cum non nihil.', 'Minima dolor tempora qui eligendi aut. Laboriosam earum odit vitae voluptatibus distinctio temporibus totam. Officiis omnis aperiam reiciendis voluptatem. Provident repellat repellat culpa quibusdam laudantium voluptatem praesentium odio.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(90, 1, NULL, 'Pariatur aspernatur nihil enim aut.', 'pariatur-aspernatur-nihil-enim-aut', 'Minus quidem ducimus excepturi non laudantium fugit nihil.', 'Blanditiis nulla est rerum accusantium natus natus. Quis dolores quis officia voluptatum. Accusantium deleniti molestiae et aut omnis. Velit ipsum dicta distinctio adipisci fuga sed tempora.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(91, 1, NULL, 'Omnis dignissimos ad distinctio id animi dolorem consequatur.', 'omnis-dignissimos-ad-distinctio-id-animi-dolorem-consequatur', 'Est aperiam voluptatem aut voluptatem voluptas eius.', 'Aliquam beatae quas est. Tempore consequatur voluptatum rerum quia nulla ea alias. Eos nobis quia eaque enim rerum praesentium dicta porro.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(92, 3, NULL, 'Dolores ut quisquam ullam sequi.', 'dolores-ut-quisquam-ullam-sequi', 'Aut recusandae asperiores at nihil.', 'Quibusdam assumenda aut recusandae aut. Et voluptas saepe eligendi perspiciatis ab. Sint ex magni sit beatae sit qui. Aut qui neque illum quam amet iure libero.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(93, 2, NULL, 'Sit esse quidem aliquid quia voluptatem a exercitationem.', 'sit-esse-quidem-aliquid-quia-voluptatem-a-exercitationem', 'Tempora consequatur quia in assumenda.', 'Doloribus vero saepe asperiores sint. In eaque dolorem modi nesciunt veniam aliquid placeat sit.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(94, 3, NULL, 'Soluta fugit alias sequi aperiam iure eos nam.', 'soluta-fugit-alias-sequi-aperiam-iure-eos-nam', 'Corrupti debitis autem est nesciunt adipisci tempora.', 'Expedita quia est autem excepturi. Nihil molestias velit et doloremque.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(95, 5, NULL, 'Vel sunt voluptatem eum rerum deleniti dolorem cum odit.', 'vel-sunt-voluptatem-eum-rerum-deleniti-dolorem-cum-odit', 'Id architecto iste et quia officiis sint.', 'Saepe mollitia molestias enim aliquid quia atque. Debitis omnis eum tenetur distinctio. Ex qui similique velit est velit qui autem. Rerum eos adipisci sint est mollitia non sit. Recusandae unde voluptas suscipit accusantium vel eaque fugit.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(96, 2, NULL, 'Occaecati voluptas officia officia sint necessitatibus commodi optio.', 'occaecati-voluptas-officia-officia-sint-necessitatibus-commodi-optio', 'Aspernatur ducimus repellat voluptatibus ratione adipisci.', 'Ad ratione dolorum vero et quaerat ut. Sit eaque quidem odio sequi accusamus. Ipsam est repudiandae est. Magnam numquam minima porro harum doloremque non fuga. Veritatis quia omnis enim voluptatem.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(97, 3, NULL, 'Dignissimos eius aperiam omnis provident ut.', 'dignissimos-eius-aperiam-omnis-provident-ut', 'Itaque quam laudantium beatae adipisci nobis.', 'Natus ullam voluptatem sint ea et asperiores. Quod autem vel aut tenetur. Dolores fugiat sint vero accusamus. Quos doloremque laudantium veniam sed aspernatur.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(98, 1, '#', 'Kegiatan Pemkot Malang', 'kegiatan-pemkot-malang', 'Qui quaerat corrupti corrupti iusto iure voluptatibus.', 'Veritatis quos neque accusantium beatae non voluptatum. Officia voluptatum aliquam voluptatem occaecati in eaque. Non accusamus non quisquam doloremque non voluptas dolores. Nesciunt necessitatibus nulla sed et accusantium aspernatur dolores. Ipsam possimus adipisci non eos quibusdam sed quasi.', 'post', '1', '2020-12-08 12:56:41', '2020-12-18 01:11:39'),
(99, 5, NULL, 'Molestiae quisquam voluptatem quod aliquam.', 'molestiae-quisquam-voluptatem-quod-aliquam', 'Voluptate sint nihil rem quo.', 'Est quo quia qui dolorem omnis esse. Quod molestiae corporis velit quos quam. Laboriosam non et doloribus molestias ut.', 'post', '1', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(100, 4, NULL, 'Magnam molestiae enim neque illum nostrum delectus.', 'magnam-molestiae-enim-neque-illum-nostrum-delectus', 'Et reprehenderit ex et recusandae voluptate vero mollitia.', 'Reprehenderit dolorem rerum omnis ratione dolorem voluptas. Quo consectetur perferendis rerum quo dolorem dolorem accusamus impedit. Iusto dicta ullam natus aut officiis aut commodi.', 'post', '0', '2020-12-08 12:56:41', '2020-12-08 12:56:41'),
(101, 6, '#', 'Pendaftaran', 'pendaftaran', 'pendaftaran', '<p>Pendaftaran</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Basic</td>\r\n			<td>100.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Intermediate</td>\r\n			<td>250.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Advanced</td>\r\n			<td>500.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 'page', '1', '2020-12-10 04:47:04', '2020-12-10 04:49:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Junior Feeney', 'cecil47@example.org', '2020-12-08 12:56:34', '$2y$10$YAizAfYkoSFbwZiK9CPHFO4SFB2qjsOuI..8io36pTtAaCfZFqeLu', 'dAx3cc24jb3Y6ITUYHl1EZ4CpqcL7KwHGgw6BZl0Igj7RB49D7EZlGzpaVOL', '2020-12-08 12:56:34', '2020-12-08 12:56:34'),
(2, 'Gerard Kub V', 'simone55@example.com', '2020-12-08 12:56:34', '$2y$10$sOwqPdtIhIaC6nbyfUqw6.BfMZWD3KbHaw608mPL1ua3H56.zgMoG', '2JpDgzGWZ5', '2020-12-08 12:56:34', '2020-12-08 12:56:34'),
(3, 'Kendrick Kshlerin', 'chowe@example.org', '2020-12-08 12:56:34', '$2y$10$sCs8I86TSWPBcW7RgG5re.6rrIn361WW6mjo2LOYTvjL8khZ5rikW', '0WVEU1lObU', '2020-12-08 12:56:34', '2020-12-08 12:56:34'),
(4, 'Wilford McKenzie', 'dedrick.schulist@example.com', '2020-12-08 12:56:34', '$2y$10$BD4nQfuGctTmLkEPBa2ZsO4bUaY0aAA6NhJhAsxw8nEyWSMRfzWjS', '2j4RGsanMF', '2020-12-08 12:56:34', '2020-12-08 12:56:34'),
(5, 'Hannah Hane', 'jarrell49@example.net', '2020-12-08 12:56:34', '$2y$10$FOiRmjOYm8YK16KwDibhbeNIoD.4UdutQOeAvDWYnWiTtUGkP78Uu', 'LZuHVIx9tt', '2020-12-08 12:56:34', '2020-12-08 12:56:34'),
(6, 'mamat', 'mrhmt81@gmail.com', NULL, '$2y$10$gyl.v49SRIdC8HCnTUAbSOreQh9FgDN95l1AbI8BaRDDfv5PDgSZi', 'MvRnakax2MtER1SaYDF7qP7ybUpowT2M3EBxrTM6ANeXMhnSOeNLjl3tQgfQ', '2020-12-10 04:45:22', '2020-12-10 04:45:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `categories_name_unique` (`name`), ADD UNIQUE KEY `categories_slug_unique` (`slug`), ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
 ADD PRIMARY KEY (`id`), ADD KEY `category_posts_category_id_foreign` (`category_id`), ADD KEY `category_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
 ADD PRIMARY KEY (`id`), ADD KEY `galleries_user_id_foreign` (`user_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `posts_title_unique` (`title`), ADD UNIQUE KEY `posts_slug_unique` (`slug`), ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `category_posts`
--
ALTER TABLE `category_posts`
ADD CONSTRAINT `category_posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galleries`
--
ALTER TABLE `galleries`
ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
