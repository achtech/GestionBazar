-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 21 oct. 2019 à 00:34
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gbazar`
--

-- --------------------------------------------------------

--
-- Structure de la table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-12-14 08:00:47', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-12-14 08:20:03', NULL),
(3, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-12-14 20:45:30', NULL),
(4, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-12-31 18:55:33', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-12-14 20:48:46', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/1', 'Update data Achraf Saloumi at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>Achraf Saloumi</td></tr><tr><td>photo</td><td></td><td>uploads/1/2018-12/chrysanthemum.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>achraf.saloumi@exo-it.com</td></tr><tr><td>password</td><td>$2y$10$ZJo3rsLQHivHufaznFfc0elsnqATwkY6YNXLnjsK2X1waz./0eSl.</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-12-14 20:58:46', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/add-save', 'Add New Data Administratif at Menu Management', '', 1, '2018-12-15 07:57:22', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/add-save', 'Add New Data Projects at Menu Management', '', 1, '2018-12-15 07:58:16', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/add-save', 'Add New Data Parametres at Menu Management', '', 1, '2018-12-15 07:58:49', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/add-save', 'Add New Data Noura Bouchbaat at Users Management', '', 1, '2018-12-15 08:23:34', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/add-save', 'Add New Data Brahim barjali at Users Management', '', 1, '2018-12-15 08:24:16', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/add-save', 'Add New Data Oumaima Stitini at Users Management', '', 1, '2018-12-15 08:25:20', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/add-save', 'Add New Data Mohammed Lechiakh at Users Management', '', 1, '2018-12-15 08:26:14', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/add-save', 'Add New Data Abdelah Taha at Users Management', '', 1, '2018-12-15 08:26:55', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/4', 'Update data Oumaima Stitini at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$EEUbBwoJjeWjJRb3UyQ9Z.SaaojVp3wgAF6RZhnySI6xHD3D2qMTW</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-15 08:27:09', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/logout', 'achraf.saloumi@exo-it.com logout', '', 1, '2018-12-15 09:36:23', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'noura.bouchbaat@exo-it.com login with IP Address ::1', '', 2, '2018-12-15 09:38:10', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/1', 'Update data Achraf Saloumi at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$ZJo3rsLQHivHufaznFfc0elsnqATwkY6YNXLnjsK2X1waz./0eSl.</td><td>$2y$10$JWPs.xq1VebGO./hZhrEkuRON/B7E7oSr6tRHgE7zYfo8/ENGxdgy</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 2, '2018-12-15 09:38:47', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/clients/add-save', 'Add New Data  at Clients', '', 2, '2018-12-15 10:36:03', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/clients/add-save', 'Add New Data  at Clients', '', 2, '2018-12-15 10:36:08', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/projects/add-save', 'Add New Data  at Projects', '', 2, '2018-12-15 10:38:01', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/projects/edit-save/1', 'Update data  at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2018-12-15 10:47:48', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/logout', 'noura.bouchbaat@exo-it.com logout', '', 2, '2018-12-15 10:56:52', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-15 10:57:17', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/projects/edit-save/1', 'Update data  at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_clients</td><td>1</td><td>2</td></tr></tbody></table>', 1, '2018-12-15 11:03:06', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/projects/edit-save/1', 'Update data  at Projects', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_clients</td><td>2</td><td>1</td></tr></tbody></table>', 1, '2018-12-15 11:03:15', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/modules/add-save', 'Add New Data  at Modules', '', 1, '2018-12-15 11:22:33', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/tasks/add-save', 'Add New Data Create analysis at Tasks', '', 1, '2018-12-15 12:36:14', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-15 19:51:45', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/projects/add-save', 'Add New Data  at Projects', '', 1, '2018-12-15 22:38:51', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/modules/add-save', 'Add New Data  at Modules', '', 1, '2018-12-15 22:39:18', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/logout', 'achraf.saloumi@exo-it.com logout', '', 1, '2018-12-15 22:48:25', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-15 22:49:02', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-17 07:23:33', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/modules/add-save', 'Add New Data  at Modules', '', 1, '2018-12-17 07:26:58', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/professions/add-save', 'Add New Data  at Profession', '', 1, '2018-12-17 07:58:12', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-17 12:05:21', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/statistic_builder/add-save', 'Add New Data Projects at Statistic Builder', '', 1, '2018-12-17 12:05:49', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/add-save', 'Add New Data Personnels at Menu Management', '', 1, '2018-12-17 12:23:45', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/logout', 'achraf.saloumi@exo-it.com logout', '', 1, '2018-12-17 13:25:04', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-17 13:25:07', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/tasks/edit-save/2', 'Update data Create analysis at Tasks', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>TODO</td><td>DONE</td></tr></tbody></table>', 1, '2018-12-17 13:27:10', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-17 17:08:53', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-18 07:05:23', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-18 09:23:54', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/professions/add-save', 'Add New Data  at Profession', '', 1, '2018-12-18 15:47:50', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/personnels/add-save', 'Add New Data  at Personnel', '', 1, '2018-12-18 16:15:41', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/personnels/add-save', 'Add New Data  at Personnel', '', 1, '2018-12-18 16:19:37', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/pointages/delete/1206', 'Delete data 1206 at Pointages', '', 1, '2018-12-18 17:40:07', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/pointages/delete/1208', 'Delete data 1208 at Pointages', '', 1, '2018-12-18 17:40:10', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/pointages/delete/1210', 'Delete data 1210 at Pointages', '', 1, '2018-12-18 17:40:14', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/pointages/delete/1207', 'Delete data 1207 at Pointages', '', 1, '2018-12-18 17:40:17', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/pointages/delete/1209', 'Delete data 1209 at Pointages', '', 1, '2018-12-18 17:40:20', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/10', 'Update data Pointages at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminPointagesControllerGetIndex</td><td>pointages_journaliere</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>15</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-12-18 18:27:02', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/projects/add-save', 'Add New Data  at Projects', '', 1, '2018-12-18 18:56:42', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/modules/add-save', 'Add New Data  at Modules', '', 1, '2018-12-18 18:57:36', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/modules/add-save', 'Add New Data  at Modules', '', 1, '2018-12-18 18:57:51', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/modules/add-save', 'Add New Data  at Modules', '', 1, '2018-12-18 18:58:10', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/modules/add-save', 'Add New Data  at Modules', '', 1, '2018-12-18 18:58:46', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-18 19:01:47', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/spent_revenues/add-save', 'Add New Data  at Spent / Revenue', '', 1, '2018-12-18 19:10:00', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/spent_revenues/add-save', 'Add New Data  at Spent / Revenue', '', 1, '2018-12-18 19:24:16', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/19', 'Update data Personnels at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-12-18 20:27:54', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/delete/19', 'Delete data Personnels at Menu Management', '', 1, '2018-12-18 20:28:01', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/add-save', 'Add New Data Pointages at Menu Management', '', 1, '2018-12-18 20:28:39', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/10', 'Update data Pointages Journaliere at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pointages</td><td>Pointages Journaliere</td></tr><tr><td>parent_id</td><td>21</td><td></td></tr></tbody></table>', 1, '2018-12-18 20:29:26', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/delete/18', 'Delete data Users at Menu Management', '', 1, '2018-12-18 20:29:55', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/personnels/edit-save/2', 'Update data  at Personnel', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cnss</td><td></td><td>140924898</td></tr></tbody></table>', 1, '2018-12-18 21:24:47', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/personnels/edit-save/3', 'Update data  at Personnel', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>mobile</td><td>+212628803044</td><td>+212 6 28 80 30 44</td></tr></tbody></table>', 1, '2018-12-18 21:25:03', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Achraf Saloumi at Users Management', '', 1, '2018-12-18 21:26:15', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/1', 'Update data Achraf Saloumi at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/achraf600_600.png</td></tr><tr><td>password</td><td>$2y$10$JWPs.xq1VebGO./hZhrEkuRON/B7E7oSr6tRHgE7zYfo8/ENGxdgy</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-12-18 21:29:41', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/logout', 'achraf.saloumi@exo-it.com logout', '', 1, '2018-12-18 21:29:59', NULL),
(69, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-18 21:30:02', NULL),
(70, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/69', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-18 21:33:45', NULL),
(71, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/68', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-18 21:34:27', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-19 07:24:30', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/add-save', 'Add New Data Pointages Report at Menu Management', '', 1, '2018-12-19 07:27:28', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-20 17:41:09', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/delete/22', 'Delete data Pointages Report at Menu Management', '', 1, '2018-12-20 19:53:29', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-21 12:36:47', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-21 19:46:12', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-21 21:21:44', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-22 10:42:56', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-22 11:11:31', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-23 13:17:59', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-23 15:53:43', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-23 16:06:58', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 19:30:50', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 19:32:26', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/68', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-23 19:39:04', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/64', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-23 19:39:22', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 19:41:30', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/24', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-23 19:42:21', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/70', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-23 19:42:40', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 19:47:41', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/69', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-23 19:56:22', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/67', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-23 19:56:35', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:06:33', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:09:28', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:17:45', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:23:14', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:24:43', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:25:59', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:27:47', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:32:10', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-23 20:53:38', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/66', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nbr_days</td><td>2</td><td>1.5</td></tr><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-23 20:55:54', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/66', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nbr_days</td><td>2</td><td>3</td></tr></tbody></table>', 1, '2018-12-23 20:56:37', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/66', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nbr_days</td><td>3</td><td>2</td></tr></tbody></table>', 1, '2018-12-23 20:56:48', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/21', 'Update data Pointages et Conges at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pointages</td><td>Pointages et Conges</td></tr></tbody></table>', 1, '2018-12-23 20:59:12', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-23 21:50:41', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/6', 'Update data Abdelah Taha at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$zbasJVSdlkekmt/AvGVOr.2hXwryM5UTSc8Tr0Xlp3daRjB3l.zH.</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-23 22:03:34', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/5', 'Update data Mohammed Lechiakh at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$nLruciKkSvgWRpe3Ql/jFuor842xhwEdhbg58DYNpkpqFLh8yCsc.</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-23 22:03:46', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/3', 'Update data Brahim barjali at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$1VNoHoqdMcVqTyTmut1.buWEZS5s8c42xFoyy9ioYSnVr9ZYBqJ/y</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-23 22:04:01', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/2', 'Update data Noura Bouchbaat at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$DRrv58s/MbKdPcRepj4uDOxZEIOpEKoGOVAZRFUec.3ji9/xmVnju</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-23 22:04:16', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-24 07:25:59', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/6', 'Update data Abdelah Taha at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$zbasJVSdlkekmt/AvGVOr.2hXwryM5UTSc8Tr0Xlp3daRjB3l.zH.</td><td>$2y$10$yDBxto/n.VfWVdFyqVbq3uq6v88g3EqrhAuzgpwx1CQhKqgOoHWtW</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-24 07:27:00', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/logout', 'achraf.saloumi@exo-it.com logout', '', 1, '2018-12-24 07:27:11', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'abdellah.taha@exo-it.com login with IP Address ::1', '', 6, '2018-12-24 07:27:21', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/logout', 'abdellah.taha@exo-it.com logout', '', 6, '2018-12-24 07:27:33', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-24 07:27:53', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/21', 'Update data Pointages et Conges at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-12-24 07:29:34', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/10', 'Update data Pointages Journaliere at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>21</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:29:48', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/20', 'Update data Pointage details at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>21</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:29:59', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/23', 'Update data Pointages Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>21</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:30:12', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/3', 'Update data Conges at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>21</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:30:28', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/3', 'Update data Conges at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>21</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:31:35', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/15', 'Update data Administratif at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:32:08', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/9', 'Update data Personnel at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>15</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:32:21', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/8', 'Update data Notifications at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>15</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:32:36', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/16', 'Update data Projects at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:33:40', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/12', 'Update data Projects at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>16</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:33:47', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/7', 'Update data Modules at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>16</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:33:53', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/14', 'Update data Tasks at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>16</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:33:59', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/2', 'Update data Commentaires at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>16</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:34:07', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/17', 'Update data Parametres at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:34:13', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/edit-save/6', 'Update data Free days at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>17</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-12-24 07:34:20', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'abdellah.taha@exo-it.com login with IP Address ::1', '', 6, '2018-12-24 07:34:59', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-24 19:51:45', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/pointagesDetails/add-save', 'Add New Data  at Pointage details', '', 1, '2018-12-24 20:42:58', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/pointagesDetails/edit-save/1594', 'Update data  at Pointage details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date_pointage</td><td>2018-12-24</td><td>2018-12-25</td></tr><tr><td>time_in</td><td>22:30:15</td><td>00:00:15</td></tr><tr><td>time_out</td><td>22:30:15</td><td>00:00:15</td></tr></tbody></table>', 1, '2018-12-24 21:22:35', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/pointagesDetails/delete/1594', 'Delete data 1594 at Pointage details', '', 1, '2018-12-24 22:28:11', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-25 06:39:56', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-25 11:46:28', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-25 13:46:47', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-25 17:19:22', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-25 17:34:13', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-26 06:50:52', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/entreprises/add-save', 'Add New Data  at Entreprise', '', 1, '2018-12-26 13:20:57', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(146, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/entreprises/edit-save/1', 'Update data  at Entreprise', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>logo</td><td></td><td>uploads/1/2018-12/Logo.jpg</td></tr></tbody></table>', 1, '2018-12-26 13:25:14', NULL),
(147, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/87', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>libelle</td><td>4 jours Mariage + 1 jour fÃ©rier </td><td>12 Jours = 4 jours Mariage + 1 jour fÃ©rier  + 7 jour de conge</td></tr></tbody></table>', 1, '2018-12-26 13:31:01', NULL),
(148, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/75', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-26 13:34:39', NULL),
(149, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/101', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nbr_days</td><td>33</td><td>18</td></tr></tbody></table>', 1, '2018-12-26 13:36:44', NULL),
(150, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-26 13:37:43', NULL),
(151, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-26 13:44:36', NULL),
(152, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/10', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>libelle</td><td>Inconnue</td><td>Conge  (Remplacent du jour de mariage)</td></tr><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-26 13:56:23', NULL),
(153, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/9', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>libelle</td><td>Inconnue</td><td>Conge  (Remplacent du jour de mariage)</td></tr><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-26 13:57:08', NULL),
(154, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/conges/edit-save/36', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>libelle</td><td>Conge </td><td>Conge   (Remplacent du jour de mariage)</td></tr><tr><td>isJustify</td><td>Non</td><td>Oui</td></tr></tbody></table>', 1, '2018-12-26 13:57:23', NULL),
(155, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/personnels/edit-save/6', 'Update data  at Personnel', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cin</td><td></td><td>EE471931</td></tr><tr><td>cnss</td><td></td><td>145169200</td></tr><tr><td>polite</td><td></td><td>Mr.</td></tr><tr><td>mobile</td><td></td><td>+212 6 98 18 01 57</td></tr><tr><td>adress</td><td></td><td>Assif B N 28 Marrakech</td></tr><tr><td>birth_date</td><td>2018-12-12</td><td>1992-05-12</td></tr></tbody></table>', 1, '2018-12-26 14:05:07', NULL),
(156, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/personnels/edit-save/5', 'Update data  at Personnel', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cin</td><td>EE563836</td><td>JA152555</td></tr><tr><td>cnss</td><td></td><td>139893601</td></tr><tr><td>polite</td><td></td><td>Mr.</td></tr><tr><td>mobile</td><td></td><td>+212 6 96 78 43 70</td></tr><tr><td>adress</td><td></td><td>N 193 unite mohammed safou quartier youssef ben tachfine Marrakech</td></tr><tr><td>birth_date</td><td>2018-12-30</td><td>1993-05-15</td></tr><tr><td>family_situation</td><td></td><td>Marie</td></tr><tr><td>number_children</td><td>20</td><td>0</td></tr></tbody></table>', 1, '2018-12-26 14:07:25', NULL),
(157, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/personnels/edit-save/3', 'Update data  at Personnel', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>birth_date</td><td>2018-12-18</td><td>1987-06-24</td></tr><tr><td>gross_salary</td><td>8000</td><td>8092</td></tr><tr><td>number_children</td><td>10</td><td>0</td></tr></tbody></table>', 1, '2018-12-26 14:11:38', NULL),
(158, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Abdelah Taha at Users Management', '', 1, '2018-12-26 14:17:22', NULL),
(159, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/6', 'Update data Abdelah Taha at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/abdellah.jpg</td></tr><tr><td>password</td><td>$2y$10$yDBxto/n.VfWVdFyqVbq3uq6v88g3EqrhAuzgpwx1CQhKqgOoHWtW</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 14:17:31', NULL),
(160, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Abdelah Taha at Users Management', '', 1, '2018-12-26 14:17:42', NULL),
(161, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/6', 'Update data Abdelah Taha at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/abdellah.jpg</td></tr><tr><td>password</td><td>$2y$10$yDBxto/n.VfWVdFyqVbq3uq6v88g3EqrhAuzgpwx1CQhKqgOoHWtW</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 14:22:31', NULL),
(162, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Mohammed Lechiakh at Users Management', '', 1, '2018-12-26 14:22:38', NULL),
(163, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/5', 'Update data Mohammed Lechiakh at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/mohamed.jpg</td></tr><tr><td>password</td><td>$2y$10$nLruciKkSvgWRpe3Ql/jFuor842xhwEdhbg58DYNpkpqFLh8yCsc.</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 14:25:33', NULL),
(164, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Brahim barjali at Users Management', '', 1, '2018-12-26 14:25:43', NULL),
(165, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/3', 'Update data Brahim barjali at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/brahim.jpg</td></tr><tr><td>password</td><td>$2y$10$1VNoHoqdMcVqTyTmut1.buWEZS5s8c42xFoyy9ioYSnVr9ZYBqJ/y</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 14:25:55', NULL),
(166, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Oumaima Stitini at Users Management', '', 1, '2018-12-26 14:26:05', NULL),
(167, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/4', 'Update data Oumaima Stitini at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/oumaima.JPG</td></tr><tr><td>password</td><td>$2y$10$EEUbBwoJjeWjJRb3UyQ9Z.SaaojVp3wgAF6RZhnySI6xHD3D2qMTW</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 14:27:55', NULL),
(168, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Noura Bouchbaat at Users Management', '', 1, '2018-12-26 14:28:02', NULL),
(169, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/2', 'Update data Noura Bouchbaat at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/nora.jpg</td></tr><tr><td>password</td><td>$2y$10$DRrv58s/MbKdPcRepj4uDOxZEIOpEKoGOVAZRFUec.3ji9/xmVnju</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 14:28:08', NULL),
(170, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/statistic_builder/add-save', 'Add New Data FirstDashboard at Statistic Builder', '', 1, '2018-12-26 14:29:14', NULL),
(171, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-26 20:49:42', NULL),
(172, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', '', 1, '2018-12-26 20:56:40', NULL),
(173, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Abdelah Taha at Users Management', '', 1, '2018-12-26 21:43:19', NULL),
(174, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/6', 'Update data Abdelah Taha at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/taha_200_200.png</td></tr><tr><td>password</td><td>$2y$10$yDBxto/n.VfWVdFyqVbq3uq6v88g3EqrhAuzgpwx1CQhKqgOoHWtW</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 21:43:42', NULL),
(175, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Mohammed Lechiakh at Users Management', '', 1, '2018-12-26 21:43:50', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/5', 'Update data Mohammed Lechiakh at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/simo_200_200.png</td></tr><tr><td>password</td><td>$2y$10$nLruciKkSvgWRpe3Ql/jFuor842xhwEdhbg58DYNpkpqFLh8yCsc.</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 21:43:58', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Oumaima Stitini at Users Management', '', 1, '2018-12-26 21:44:05', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/4', 'Update data Oumaima Stitini at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/oumaima.png</td></tr><tr><td>password</td><td>$2y$10$EEUbBwoJjeWjJRb3UyQ9Z.SaaojVp3wgAF6RZhnySI6xHD3D2qMTW</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 21:44:16', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Brahim barjali at Users Management', '', 1, '2018-12-26 21:44:23', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/3', 'Update data Brahim barjali at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/bihi_200_200.png</td></tr><tr><td>password</td><td>$2y$10$1VNoHoqdMcVqTyTmut1.buWEZS5s8c42xFoyy9ioYSnVr9ZYBqJ/y</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 21:44:33', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Noura Bouchbaat at Users Management', '', 1, '2018-12-26 21:44:42', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/2', 'Update data Noura Bouchbaat at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/noura.png</td></tr><tr><td>password</td><td>$2y$10$DRrv58s/MbKdPcRepj4uDOxZEIOpEKoGOVAZRFUec.3ji9/xmVnju</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-12-26 21:45:13', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/delete-image', 'Delete the image of Achraf Saloumi at Users Management', '', 1, '2018-12-26 21:45:21', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/users/edit-save/1', 'Update data Achraf Saloumi at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-12/achraf600_600.png</td></tr><tr><td>password</td><td>$2y$10$JWPs.xq1VebGO./hZhrEkuRON/B7E7oSr6tRHgE7zYfo8/ENGxdgy</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-12-26 21:45:37', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-26 21:45:54', NULL),
(186, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Avast/70.0.917.103', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-26 21:47:51', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/laravel/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-26 22:04:49', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-29 10:35:04', NULL),
(189, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/pointagesDetails/action-selected', 'Delete data 1663,1664,1665,1666,1667,1661,1660,1659,1668 at Pointage details', '', 1, '2018-12-29 11:47:52', NULL),
(190, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/pointagesDetails/delete/1669', 'Delete data 1669 at Pointage details', '', 1, '2018-12-29 12:15:12', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/logout', 'achraf.saloumi@exo-it.com logout', '', 1, '2018-12-29 12:28:34', NULL),
(192, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-29 12:29:04', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/pointagesDetails/edit/1656', 'Try edit the data 1656 at Pointage details', '', 1, '2018-12-29 12:47:41', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-29 20:30:55', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-30 15:36:22', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-31 09:07:39', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/freedays/edit-save/4', 'Update data  at Free days', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>end_date</td><td>2019-01-02</td><td>2019-01-01</td></tr></tbody></table>', 1, '2018-12-31 09:08:29', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/freedays/edit-save/6', 'Update data  at Free days', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isFixed</td><td>1</td><td></td></tr><tr><td>start_date</td><td>2019-04-01</td><td>2019-05-01</td></tr></tbody></table>', 1, '2018-12-31 09:08:46', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/freedays/edit-save/6', 'Update data  at Free days', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nbr_days</td><td>31</td><td>1</td></tr></tbody></table>', 1, '2018-12-31 09:08:57', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/freedays/edit-save/4', 'Update data  at Free days', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>end_date</td><td>2019-01-01</td><td>2018-12-31</td></tr></tbody></table>', 1, '2018-12-31 09:09:48', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/pointagesDetails/edit-save/1673', 'Update data  at Pointage details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>time_in</td><td>11:01:27</td><td>10:01:27</td></tr><tr><td>time_out</td><td>11:01:27</td><td>10:01:27</td></tr></tbody></table>', 1, '2018-12-31 09:15:09', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/login', 'achraf.saloumi@exo-it.com login with IP Address ::1', '', 1, '2018-12-31 14:55:21', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/conges/edit-save/68', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>end_date</td><td>2019-01-31</td><td>2018-12-31</td></tr><tr><td>nbr_days</td><td>65</td><td>39</td></tr></tbody></table>', 1, '2018-12-31 14:59:23', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-31 15:01:16', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-31 15:01:53', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/conges/edit-save/68', 'Update data  at Conges', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>end_date</td><td>2018-12-31</td><td>2018-11-30</td></tr><tr><td>nbr_days</td><td>39</td><td>19</td></tr></tbody></table>', 1, '2018-12-31 15:04:51', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/conges/add-save', 'Add New Data  at Conges', '', 1, '2018-12-31 15:05:32', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/GE/public/admin/freedays/edit-save/4', 'Update data  at Free days', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-12-31 15:20:33', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36 Avast/77.1.1829.91', 'http://localhost:8000/admin/login', 'achraf.saloumi@exo-it.com login with IP Address 127.0.0.1', '', 1, '2019-10-20 19:50:13', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36 Avast/77.1.1829.91', 'http://localhost:8000/admin/module_generator/delete/13', 'Delete data Commentaires at Module Generator', '', 1, '2019-10-20 20:45:12', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36 Avast/77.1.1829.91', 'http://localhost:8000/admin/module_generator/delete/14', 'Delete data Conges at Module Generator', '', 1, '2019-10-20 20:45:18', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36 Avast/77.1.1829.91', 'http://127.0.0.1:8000/admin/login', 'achraf.saloumi@exo-it.com login with IP Address 127.0.0.1', '', 1, '2019-10-20 21:44:22', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36 Avast/77.1.1829.91', 'http://localhost:8000/admin/logout', 'achraf.saloumi@exo-it.com logout', '', 1, '2019-10-20 21:59:37', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36 Avast/77.1.1829.91', 'http://localhost:8000/admin/login', 'achraf.saloumi@exo-it.com login with IP Address 127.0.0.1', '', 1, '2019-10-20 22:00:08', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-12-14 08:00:47', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-12-14 08:00:47', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-12-14 08:00:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2018-12-14 08:00:47', NULL),
(2, 'User', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-12-14 08:00:47', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-12-14 08:00:47', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-12-14 08:00:47', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-12-14 08:00:47', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-12-14 08:00:47', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-12-14 08:00:47', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-12-14 08:00:47', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-12-14 08:00:47', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-12-14 08:00:47', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-12-14 08:00:47', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-12-14 08:00:47', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-12-14 08:00:47', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-12-14 08:00:47', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'a.mareshal@gmail.com', 'text', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-12-14 08:00:47', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', NULL, 'text', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-12-14 08:00:47', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', NULL, 'text', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', NULL, 'text', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Bazar', 'text', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-12-14 08:00:47', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2018-12/16c952a48fd5cc9872481da00395f126.jpg', 'upload_image', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2018-12/b69f81914182c40bb616227fc882f722.png', 'upload_image', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-12-14 08:00:47', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-12-14 08:00:47', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Achraf Saloumi', 'uploads/1/2018-12/achraf600_600.png', 'achraf.saloumi@exo-it.com', '$2y$10$JWPs.xq1VebGO./hZhrEkuRON/B7E7oSr6tRHgE7zYfo8/ENGxdgy', 1, '2018-12-14 08:00:47', '2018-12-26 21:45:37', 'Active'),
(2, 'Noura Bouchbaat', 'uploads/1/2018-12/noura.png', 'noura.bouchbaat@exo-it.com', '$2y$10$DRrv58s/MbKdPcRepj4uDOxZEIOpEKoGOVAZRFUec.3ji9/xmVnju', 2, '2018-12-15 08:23:34', '2018-12-26 21:45:13', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

DROP TABLE IF EXISTS `entreprises`;
CREATE TABLE IF NOT EXISTS `entreprises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `social_reason` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` text NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `rc` varchar(20) NOT NULL,
  `patente` varchar(20) NOT NULL,
  `idfisc` varchar(40) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `social_reason`, `mobile`, `phone`, `adress`, `zip_code`, `rc`, `patente`, `idfisc`, `logo`) VALUES
(1, 'Software S.A.R.L', '+212 5 24 4 93 52', '212653903659', 'App 6 2eme étage M\'HITA espace AL moustapha Semlalia Marrakech', '40000', '58467', '92110189', '0652837', 'uploads/1/2018-12/Logo.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2018_12_20_200819_create_pointage_reports_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `role` int(11) NOT NULL,
  `nom` text NOT NULL,
  `date_contrat` date NOT NULL,
  `cin` text NOT NULL,
  `qualite` text NOT NULL,
  `classCss` text NOT NULL,
  `idLogs` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`, `nom`, `date_contrat`, `cin`, `qualite`, `classCss`, `idLogs`) VALUES
(2, 'achraf.saloumi', 'achtech@1985', 1, 'Achraf Saloumi', '2014-02-01', 'AA3256', 'Devloppeur de logiciel', 'success', 1206),
(3, 'noura.bouchbaat', 'software', 2, 'Noura Bouchbaat', '2014-02-01', 'AA3256', 'Devloppeur de logiciel', 'danger', 1177);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
