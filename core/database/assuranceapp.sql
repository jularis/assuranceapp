-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 19 fév. 2024 à 14:19
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `assuranceapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `phone`, `email_verified_at`, `image`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'juliuskouame@gmail.com', 'admin', NULL, NULL, '6238276ac25d11647847274.png', '$2y$10$BzEisiNLovooqk9dABR.tu5lwckwdV2peg79V4J4opMeYL35ofemi', 1, NULL, NULL, '2023-08-10 09:22:03');

-- --------------------------------------------------------

--
-- Structure de la table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT '0',
  `click_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'ENABLE: 1, DISABLE: 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `branches`
--

INSERT INTO `branches` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ambulatoire', 'ambulatoire@domain.com', '99999999999', 'N/A', 1, '2023-08-07 20:37:49', '2023-08-10 22:39:22'),
(2, 'Pharmacie', 'pharmacie@domain.com', '999999999', 'N/A', 1, '2023-08-07 20:38:23', '2023-09-10 17:32:27'),
(3, 'Hospitalisation', 'hospitalisation@domain.com', '99999999999', 'N/A', 1, '2023-08-07 20:38:52', '2023-08-10 22:53:24'),
(4, 'Laboratoire', 'laboratoire@domain.com', '99999999999', 'N/A', 1, '2023-08-07 20:39:12', '2023-09-10 17:32:22'),
(5, 'Dentisterie', 'dentisterie@domain.com', '99999999999', 'N/A', 1, '2023-08-07 20:39:28', '2023-08-10 22:53:20'),
(6, 'Optique', 'optique@domain.com', '99999999999', 'N/A', 0, '2023-08-07 20:39:53', '2024-02-18 22:12:18'),
(7, 'Kinesitherapie', 'kinesitherapie@domain.com', '99999999999', 'N/A', 1, '2023-08-07 20:40:21', '2023-08-10 22:40:12'),
(8, 'Formation', 'formation@domain.com', '99999999999', 'N/A', 1, '2023-08-07 20:40:38', '2023-08-10 22:40:02'),
(9, 'Clinique', 'clinique@domain.com', '9999999999', 'N/A', 1, '2023-08-10 16:53:04', '2023-08-11 15:52:55'),
(10, 'Caisse', 'franckosse@gmail.com', '52461323232', 'N/A', 1, '2024-02-18 22:13:03', '2024-02-18 22:13:56'),
(11, 'Magasin', 'magasin@domain.com', '9999999999', 'N/A', 1, '2024-02-18 22:18:50', '2024-02-18 22:18:50'),
(12, 'Portier', 'portier@domain.com', '464623265645', 'nskjdnjsfdljlkjf', 1, '2024-02-18 22:20:49', '2024-02-18 22:20:49');

-- --------------------------------------------------------

--
-- Structure de la table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint UNSIGNED NOT NULL,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'object',
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2022-09-29 03:51:11'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>', '{\"site_key\":{\"title\":\"Site Key\",\"value\":\"6LduFFolAAAAALK1Y6Qq83YNX_tKAZQ0J1y9mLOV\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"6LduFFolAAAAACxxS4dj3r5GIUSqo_hdenflLHup\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2023-04-04 12:24:00'),
(3, 'custom-captcha', 'Custom Captcha', 'Just put any random string', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, NULL, '2019-10-18 23:16:05', '2022-09-29 08:11:36'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, NULL, '2021-05-04 10:19:12'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}', 'fb_com.PNG', 0, NULL, NULL, '2022-09-29 04:03:36');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint UNSIGNED NOT NULL,
  `data_keys` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"cargo\",\"parcel\",\"shipment\",\"courier\",\"Delivery\"],\"description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"social_title\":\"CourierLab - Online Courier Service\",\"social_description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit ff\",\"image\":\"6371ff57877181668415319.png\"}', '2020-07-04 23:42:52', '2022-11-14 06:11:59'),
(24, 'about.content', '{\"has_image\":\"1\",\"title\":\"Why We are The Best\",\"heading\":\"30+ Years Experiences in Courier Service\",\"sub_heading\":\"Doloribus debitis dolores amet, minus qui eaque itaque, doloremque at ipsa ab reiciendis assumenda et labore asperiores, cumque impedit! Corrupti, alias laboriosam!\",\"background_image\":\"632ff827c9bcd1664088103.png\"}', '2020-10-28 00:51:20', '2022-09-25 04:11:44'),
(25, 'blog.content', '{\"title\":\"Latest News\",\"heading\":\"Our Blog Posts\",\"sub_heading\":\"Non iste sint temporibus, facilis praesentium at eius excepturi veritatis natus maxime veniam eum impedit minus pariatur architecto necessitatibus dolorum? Minima, nihil?\"}', '2020-10-28 00:51:34', '2022-09-25 04:15:23'),
(27, 'contact_us.content', '{\"title\":\"Start Conversation\",\"heading\":\"Get in Touch\",\"sub_heading\":\"Voluptatem, fugit, facilis iure eligendi doloremque nisi minima ipsam corrupti vero eaque quo aut voluptatibus! Necessitatibus minima\",\"has_image\":\"1\",\"contact_image\":\"632ffabfea3cb1664088767.png\"}', '2020-10-28 00:59:19', '2022-09-25 04:22:48'),
(28, 'counter.content', '{\"has_image\":\"1\",\"background_image\":\"632ffafb46e611664088827.jpg\"}', '2020-10-28 01:04:02', '2022-09-25 04:23:47'),
(33, 'feature.content', '{\"heading\":\"asdf\",\"sub_heading\":\"asdf\"}', '2021-01-03 23:40:54', '2021-01-03 23:40:55'),
(36, 'service.content', '{\"title\":\"Services\",\"heading\":\"What We Serve\",\"sub_heading\":\"Non iste sint temporibus, facilis praesentium at eius excepturi veritatis natus maxime veniam eum impedit minus pariatur architecto necessitatibus dolorum? Minima, nihil?\",\"has_image\":\"1\",\"background_image\":\"632ffd40069361664089408.jpg\"}', '2021-03-06 01:27:34', '2022-09-25 04:33:28'),
(39, 'banner.content', '{\"heading\":\"Latest News\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptatum eaque earum quos quia? Id aspernatur ratione, voluptas nulla rerum laudantium neque ipsam eaque\"}', '2021-05-02 06:09:30', '2021-05-02 06:09:30'),
(41, 'cookie.data', '{\"short_desc\":\"We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">All provided delicate\\/credit data is sent through Stripe.<br>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\",\"status\":1}', '2020-07-04 23:42:52', '2022-03-30 11:23:12'),
(42, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2021-06-09 08:50:42', '2021-06-09 08:50:42'),
(43, 'policy_pages.element', '{\"title\":\"Terms of Service\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We claim all authority to dismiss, end, or handicap any help with or without cause per administrator discretion. This is a Complete independent facilitating, on the off chance that you misuse our ticket or Livechat or emotionally supportive network by submitting solicitations or protests we will impair your record. The solitary time you should reach us about the seaward facilitating is if there is an issue with the worker. We have not many substance limitations and everything is as per laws and guidelines. Try not to join on the off chance that you intend to do anything contrary to the guidelines, we do check these things and we will know, don\'t burn through our own and your time by joining on the off chance that you figure you will have the option to sneak by us and break the terms.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Configuration requests - If you have a fully managed dedicated server with us then we offer custom PHP\\/MySQL configurations, firewalls for dedicated IPs, DNS, and httpd configurations.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Software requests - Cpanel Extension Installation will be granted as long as it does not interfere with the security, stability, and performance of other users on the server.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Emergency Support - We do not provide emergency support \\/ Phone Support \\/ LiveChat Support. Support may take some hours sometimes.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Webmaster help - We do not offer any support for webmaster related issues and difficulty including coding, &amp; installs, Error solving. if there is an issue where a library or configuration of the server then we can help you if it\'s possible from our end.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Backups - We keep backups but we are not responsible for data loss, you are fully responsible for all backups.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">We Don\'t support any child porn or such material.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No spam-related sites or material, such as email lists, mass mail programs, and scripts, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No harassing material that may cause people to retaliate against you.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No phishing pages.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">You may not run any exploitation script from the server. reason can be terminated immediately.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">If Anyone attempting to hack or exploit the server by using your script or hosting, we will terminate your account to keep safe other users.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious Botnets are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Spam, mass mailing, or email marketing in any way are strictly forbidden here.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious hacking materials, trojans, viruses, &amp; malicious bots running or for download are forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Resource and cronjob abuse is forbidden and will result in suspension or termination.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Php\\/CGI proxies are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">CGI-IRC is strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No fake or disposal mailers, mass mailing, mail bombers, SMS bombers, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">NO CREDIT OR REFUND will be granted for interruptions of service, due to User Agreement violations.<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Terms &amp; Conditions for Users<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Before getting to this site, you are consenting to be limited by these site Terms and Conditions of Use, every single appropriate law, and guidelines, and concur that you are answerable for consistency with any material neighborhood laws. If you disagree with any of these terms, you are restricted from utilizing or getting to this site.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Support<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Whenever you have downloaded our item, you may get in touch with us for help through email and we will give a valiant effort to determine your issue. We will attempt to answer using the Email for more modest bug fixes, after which we will refresh the center bundle. Content help is offered to confirmed clients by Tickets as it were. Backing demands made by email and Livechat.<\\/p><p class=\\\"my-3 font-18 font-weight-bold\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">On the off chance that your help requires extra adjustment of the System, at that point, you have two alternatives:<\\/p><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Hang tight for additional update discharge.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Or on the other hand, enlist a specialist (We offer customization for extra charges).<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Ownership<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not guarantee scholarly or selective possession of any of our items, altered or unmodified. All items are property, we created them. Our items are given \\\"with no guarantees\\\" without guarantee of any sort, either communicated or suggested. On no occasion will our juridical individual be subject to any harms including, however not restricted to, immediate, roundabout, extraordinary, accidental, or significant harms or different misfortunes emerging out of the utilization of or powerlessness to utilize our items.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Warranty<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t offer any guarantee or assurance of these Services in any way. When our Services have been modified we can\'t ensure they will work with all outsider plugins, modules, or internet browsers. Program similarity ought to be tried against the show formats on the demo worker. If you don\'t mind guarantee that the programs you use will work with the component, as we can not ensure that our systems will work with all program mixes.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Unauthorized\\/Illegal Usage<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not utilize our things for any illicit or unapproved reason or may you, in the utilization of the stage, disregard any laws in your locale (counting yet not restricted to copyright laws) just as the laws of your nation and International law. Specifically, it is disallowed to utilize the things on our foundation for pages that advance: brutality, illegal intimidation, hard sexual entertainment, bigotry, obscenity content or warez programming joins.<br \\/><br \\/>You can\'t imitate, copy, duplicate, sell, exchange or adventure any of our segment, utilization of the offered on our things, or admittance to the administration without the express composed consent by us or item proprietor.<br \\/><br \\/>Our Members are liable for all substance posted on the discussion and demo and movement that happens under your record.<br \\/><br \\/>We hold the chance of hindering your participation account quickly if we will think about a particularly not allowed conduct.<br \\/><br \\/>If you make a record on our site, you are liable for keeping up the security of your record, and you are completely answerable for all exercises that happen under the record and some other activities taken regarding the record. You should quickly inform us, of any unapproved employments of your record or some other penetrates of security.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Fiverr, Seoclerks Sellers Or Affiliates<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We do NOT ensure full SEO campaign conveyance within 24 hours. We make no assurance for conveyance time by any means. We give our best assessment to orders during the putting in of requests, anyway, these are gauges. We won\'t be considered liable for loss of assets, negative surveys or you being prohibited for late conveyance. If you are selling on a site that requires time touchy outcomes, utilize Our SEO Services at your own risk.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Payment\\/Refund Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">No refund or cash back will be made. After a deposit has been finished, it is extremely unlikely to invert it. You should utilize your equilibrium on requests our administrations, Hosting, SEO campaign. You concur that once you complete a deposit, you won\'t document a debate or a chargeback against us in any way, shape, or form.<br \\/><br \\/>If you document a debate or chargeback against us after a deposit, we claim all authority to end every single future request, prohibit you from our site. False action, for example, utilizing unapproved or taken charge cards will prompt the end of your record. There are no special cases.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Free Balance \\/ Coupon Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We offer numerous approaches to get FREE Balance, Coupons and Deposit offers yet we generally reserve the privilege to audit it and deduct it from your record offset with any explanation we may it is a sort of misuse. If we choose to deduct a few or all of free Balance from your record balance, and your record balance becomes negative, at that point the record will naturally be suspended. If your record is suspended because of a negative Balance you can request to make a custom payment to settle your equilibrium to actuate your record.<\\/p><\\/div>\"}', '2021-06-09 08:51:18', '2021-06-09 08:51:18'),
(44, 'maintenance.data', '{\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"text-align: center; font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"text-align: center; margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div>\"}', '2020-07-04 23:42:52', '2022-05-11 03:57:17'),
(45, 'footer.content', '{\"heading\":\"Rem accusamus ducimus reiciendis corporis deserunt ipsum, fuga aut velit. Corporis vero atque sed. Dicta atque rerum, molestiae quidem sunt.\",\"address\":\"London, UK\",\"mobile\":\"45645647645\",\"fax\":\"47566-9847856\",\"email\":\"mail@yoursite.com\",\"has_image\":\"1\",\"background_image\":\"632fefa0becf51664085920.jpg\"}', '2022-09-25 03:35:20', '2022-09-25 03:35:21'),
(46, 'footer.element', '{\"menu\":\"Privacy and Policy\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2022-09-25 03:35:41', '2022-09-25 03:35:41'),
(47, 'footer.element', '{\"menu\":\"Refund Policy\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2022-09-25 03:36:00', '2022-09-25 03:36:00'),
(48, 'footer.element', '{\"menu\":\"Terms of Service\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2022-09-25 03:36:16', '2022-09-25 03:36:16'),
(49, 'breadcrumb.content', '{\"has_image\":\"1\",\"background_image\":\"632ff2f9b05301664086777.jpg\"}', '2022-09-25 03:49:37', '2022-09-25 03:49:37'),
(50, 'about.element', '{\"title\":\"Fast Delivery\",\"sub_title\":\"Ut recusandae non veniam obcaecati, sunt earum atque cumque, alias quae molestiae quo, ad debitis saepe.\",\"about_icon\":\"<i class=\\\"lab la-delicious\\\"><\\/i>\"}', '2022-09-25 04:12:16', '2022-09-25 04:12:16'),
(51, 'about.element', '{\"title\":\"Lowest Cost\",\"sub_title\":\"Ut recusandae non veniam obcaecati, sunt earum atque cumque, alias quae molestiae quo, ad debitis saepe.\",\"about_icon\":\"<i class=\\\"fas fa-money-check-alt\\\"><\\/i>\"}', '2022-09-25 04:12:38', '2022-09-25 04:12:38'),
(52, 'about.element', '{\"title\":\"Secured Services\",\"sub_title\":\"Ut recusandae non veniam obcaecati, sunt earum atque cumque, alias quae molestiae quo, ad debitis saepe.\",\"about_icon\":\"<i class=\\\"lab la-servicestack\\\"><\\/i>\"}', '2022-09-25 04:13:00', '2022-09-25 04:13:00'),
(53, 'banner.element', '{\"has_image\":[\"1\"],\"heading\":\"Welcome to Courierlab\",\"sub_heading\":\"We Provide Best Dispatch and Parcel Services\",\"first_button_name\":\"Get Quotes\",\"first_button_url\":\"\\/contact\",\"second_button_name\":\"Contact Us\",\"second_button_url\":\"\\/contact\",\"background_image\":\"632ff8b7a175b1664088247.jpg\"}', '2022-09-25 04:14:07', '2022-11-13 01:45:27'),
(54, 'banner.element', '{\"has_image\":[\"1\"],\"heading\":\"Welcome to Courierlab\",\"sub_heading\":\"We Provide Best Dispatch and Parcel Services\",\"first_button_name\":\"Get Quotes\",\"first_button_url\":\"\\/contact\",\"second_button_name\":\"Contact Us\",\"second_button_url\":\"\\/contact\",\"background_image\":\"632ff8df97e891664088287.jpg\"}', '2022-09-25 04:14:47', '2022-11-13 01:45:13'),
(55, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Praesentium at nobis unde quis aut quaerat autem libero in consequuntur recusandae provident\",\"description_nic\":\"<div class=\\\"post__header\\\" style=\\\"margin-bottom:45px;color:rgb(85,85,85);font-family:Nunito, sans-serif;\\\"><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">Asperiores nisi voluptates enim numquam vel recusandae consequatur libero, laboriosam possimus hic officiis voluptatum reprehenderit placeat voluptatibus aspernatur tempore quisquam tempora eius incidunt dignissimos maxime praesentium veniam. Veniam, sapiente.<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">Vitae optio minima nulla iusto, praesentium, natus exercitationem maiores qui temporibus consequatur, fuga repudiandae. Rem mollitia suscipit blanditiis, at porro recusandae vitae.<\\/p><\\/div><blockquote class=\\\"post__quote\\\" style=\\\"margin-bottom:30px;font-size:22px;line-height:1.5;font-family:Nunito, sans-serif;color:rgb(25,42,86);font-style:italic;text-align:center;padding:0px 30px;border-left:3px solid rgb(30,144,255);\\\">\\u201c Works together with striker consulting firms active in USA. Globally we work with more than 150 leading consulting firms and with a select number of partners. \\u201d<\\/blockquote><p style=\\\"margin-top:-8px;margin-bottom:30px;color:rgb(85,85,85);font-size:16px;font-family:Nunito, sans-serif;\\\">Architecto quis nobis repudiandae porro perferendis quisquam, ut exercitationem quae aliquid eveniet. Recusandae officia alias sapiente ullam quae veniam optio exercitationem incidunt nisi totam reiciendis expedita harum vel debitis ad quam ut rem porro ratione voluptatem quod, laboriosam ducimus magni. Molestias, distinctio!<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;color:rgb(85,85,85);font-size:16px;font-family:Nunito, sans-serif;\\\">Explicabo nobis dolorum, voluptates provident quasi harum optio nesciunt est accusantium eos soluta fugit illo vitae error numquam, sit ipsa quas nihil.<\\/p>\",\"blog_image\":\"636b3eaed6f731667972782.jpg\"}', '2022-09-25 04:16:09', '2022-11-09 03:16:22'),
(58, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Unde quis aut quaerat autem libero in consequuntur recusandae provident raesentium at nobis\",\"description_nic\":\"<div class=\\\"post__header\\\" style=\\\"margin-bottom:45px;color:rgb(85,85,85);font-family:Nunito, sans-serif;\\\"><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">Asperiores nisi voluptates enim numquam vel recusandae consequatur libero, laboriosam possimus hic officiis voluptatum reprehenderit placeat voluptatibus aspernatur tempore quisquam tempora eius incidunt dignissimos maxime praesentium veniam. Veniam, sapiente.<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">Vitae optio minima nulla iusto, praesentium, natus exercitationem maiores qui temporibus consequatur, fuga repudiandae. Rem mollitia suscipit blanditiis, at porro recusandae vitae.<\\/p><\\/div><blockquote class=\\\"post__quote\\\" style=\\\"margin-bottom:30px;font-size:22px;line-height:1.5;font-family:Nunito, sans-serif;color:rgb(25,42,86);font-style:italic;text-align:center;padding:0px 30px;border-left:3px solid rgb(30,144,255);\\\">\\u201c Works together with striker consulting firms active in USA. Globally we work with more than 150 leading consulting firms and with a select number of partners. \\u201d<\\/blockquote><p style=\\\"margin-top:-8px;margin-bottom:30px;color:rgb(85,85,85);font-size:16px;font-family:Nunito, sans-serif;\\\">Architecto quis nobis repudiandae porro perferendis quisquam, ut exercitationem quae aliquid eveniet. Recusandae officia alias sapiente ullam quae veniam optio exercitationem incidunt nisi totam reiciendis expedita harum vel debitis ad quam ut rem porro ratione voluptatem quod, laboriosam ducimus magni. Molestias, distinctio!<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;color:rgb(85,85,85);font-size:16px;font-family:Nunito, sans-serif;\\\">Explicabo nobis dolorum, voluptates provident quasi harum optio nesciunt est accusantium eos soluta fugit illo vitae error numquam, sit ipsa quas nihil.<\\/p>\",\"blog_image\":\"636b3e53341ba1667972691.jpg\"}', '2022-09-25 04:17:21', '2022-11-09 03:14:51'),
(59, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Praesentium at nobis unde quis aut quaerat autem libero in consequuntur recusandae provident\",\"description_nic\":\"<div class=\\\"post__header\\\" style=\\\"margin-bottom:45px;color:rgb(85,85,85);font-family:Nunito, sans-serif;\\\"><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">Asperiores nisi voluptates enim numquam vel recusandae consequatur libero, laboriosam possimus hic officiis voluptatum reprehenderit placeat voluptatibus aspernatur tempore quisquam tempora eius incidunt dignissimos maxime praesentium veniam. Veniam, sapiente.<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">Vitae optio minima nulla iusto, praesentium, natus exercitationem maiores qui temporibus consequatur, fuga repudiandae. Rem mollitia suscipit blanditiis, at porro recusandae vitae.<\\/p><\\/div><blockquote class=\\\"post__quote\\\" style=\\\"margin-bottom:30px;font-size:22px;line-height:1.5;font-family:Nunito, sans-serif;color:rgb(25,42,86);font-style:italic;text-align:center;padding:0px 30px;border-left:3px solid rgb(30,144,255);\\\">\\u201c Works together with striker consulting firms active in USA. Globally we work with more than 150 leading consulting firms and with a select number of partners. \\u201d<\\/blockquote><p style=\\\"margin-top:-8px;margin-bottom:30px;color:rgb(85,85,85);font-size:16px;font-family:Nunito, sans-serif;\\\">Architecto quis nobis repudiandae porro perferendis quisquam, ut exercitationem quae aliquid eveniet. Recusandae officia alias sapiente ullam quae veniam optio exercitationem incidunt nisi totam reiciendis expedita harum vel debitis ad quam ut rem porro ratione voluptatem quod, laboriosam ducimus magni. Molestias, distinctio!<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;color:rgb(85,85,85);font-size:16px;font-family:Nunito, sans-serif;\\\">Explicabo nobis dolorum, voluptates provident quasi harum optio nesciunt est accusantium eos soluta fugit illo vitae error numquam, sit ipsa quas nihil.<\\/p>\",\"blog_image\":\"636b3f1eb370d1667972894.jpg\"}', '2022-09-25 04:17:47', '2022-11-09 03:18:14');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(60, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Nobis unde quis aut quaerat autem libero in consequuntur recusandae provident Praesentium at\",\"description_nic\":\"<div class=\\\"post__header\\\" style=\\\"margin-bottom:45px;color:rgb(85,85,85);font-family:Nunito, sans-serif;\\\"><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">Asperiores nisi voluptates enim numquam vel recusandae consequatur libero, laboriosam possimus hic officiis voluptatum reprehenderit placeat voluptatibus aspernatur tempore quisquam tempora eius incidunt dignissimos maxime praesentium veniam. Veniam, sapiente.<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">Vitae optio minima nulla iusto, praesentium, natus exercitationem maiores qui temporibus consequatur, fuga repudiandae. Rem mollitia suscipit blanditiis, at porro recusandae vitae.<\\/p><\\/div><blockquote class=\\\"post__quote\\\" style=\\\"margin-bottom:30px;font-size:22px;line-height:1.5;font-family:Nunito, sans-serif;color:rgb(25,42,86);font-style:italic;text-align:center;padding:0px 30px;border-left:3px solid rgb(30,144,255);\\\">\\u201c Works together with striker consulting firms active in USA. Globally we work with more than 150 leading consulting firms and with a select number of partners. \\u201d<\\/blockquote><p style=\\\"margin-top:-8px;margin-bottom:30px;color:rgb(85,85,85);font-size:16px;font-family:Nunito, sans-serif;\\\">Architecto quis nobis repudiandae porro perferendis quisquam, ut exercitationem quae aliquid eveniet. Recusandae officia alias sapiente ullam quae veniam optio exercitationem incidunt nisi totam reiciendis expedita harum vel debitis ad quam ut rem porro ratione voluptatem quod, laboriosam ducimus magni. Molestias, distinctio!<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;color:rgb(85,85,85);font-size:16px;font-family:Nunito, sans-serif;\\\">Explicabo nobis dolorum, voluptates provident quasi harum optio nesciunt est accusantium eos soluta fugit illo vitae error numquam, sit ipsa quas nihil.<\\/p>\",\"blog_image\":\"636b3e427ea481667972674.jpg\"}', '2022-09-25 04:18:11', '2022-11-09 03:14:34'),
(61, 'branch.content', '{\"title\":\"Branches\",\"heading\":\"Our Top Branches\",\"sub_heading\":\"Voluptatem, fugit, facilis iure eligendi doloremque nisi minima ipsam corrupti vero eaque quo aut voluptatibus! Necessitatibus minima\",\"has_image\":\"1\",\"background_image\":\"632ff9d22a7a11664088530.png\"}', '2022-09-25 04:18:50', '2022-09-25 04:18:50'),
(62, 'client.content', '{\"has_image\":\"1\",\"background_image\":\"632ff9f2c8b171664088562.jpg\"}', '2022-09-25 04:19:22', '2022-09-25 04:19:23'),
(63, 'client.element', '{\"name\":\"Abu Desnan\",\"designation\":\"Backend Developer\",\"rating\":\"5\",\"testimonial\":\"Quas, illo. A commodi officia, eos, laborum expedita aliquid culpa ipsa neque dignissimos tempore id sed iste odit optio natus deleniti assumenda qui labore totam nam? Impedit, doloribus odit. Quo?\",\"has_image\":\"1\",\"client_image\":\"632ffa2e77de91664088622.jpg\"}', '2022-09-25 04:19:59', '2022-09-25 04:20:22'),
(64, 'client.element', '{\"name\":\"Md Jisan\",\"designation\":\"Delivery Boy\",\"rating\":\"4\",\"testimonial\":\"Quas, illo. A commodi officia, eos, laborum expedita aliquid culpa ipsa neque dignissimos tempore id sed iste odit optio natus deleniti assumenda qui labore totam nam? Impedit, doloribus odit. Quo?\",\"has_image\":\"1\",\"client_image\":\"632ffa49a88501664088649.jpg\"}', '2022-09-25 04:20:49', '2022-09-25 04:20:49'),
(65, 'client.element', '{\"name\":\"Md Demo Sarker\",\"designation\":\"Courier Customer\",\"rating\":\"3\",\"testimonial\":\"Quas, illo. A commodi officia, eos, laborum expedita aliquid culpa ipsa neque dignissimos tempore id sed iste odit optio natus deleniti assumenda qui labore totam nam? Impedit, doloribus odit. Quo?\",\"has_image\":\"1\",\"client_image\":\"632ffa6954cd11664088681.jpg\"}', '2022-09-25 04:21:21', '2022-09-25 04:21:21'),
(66, 'client.element', '{\"name\":\"Alex Branda\",\"designation\":\"Merchant\",\"rating\":\"5\",\"testimonial\":\"Quas, illo. A commodi officia, eos, laborum expedita aliquid culpa ipsa neque dignissimos tempore id sed iste odit optio natus deleniti assumenda qui labore totam nam? Impedit, doloribus odit. Quo?\",\"has_image\":\"1\",\"client_image\":\"632ffa86877431664088710.png\"}', '2022-09-25 04:21:50', '2022-09-25 04:21:50'),
(67, 'client.element', '{\"name\":\"Carlos Rabanda\",\"designation\":\"Business Owner\",\"rating\":\"5\",\"testimonial\":\"Quas, illo. A commodi officia, eos, laborum expedita aliquid culpa ipsa neque dignissimos tempore id sed iste odit optio natus deleniti assumenda qui labore totam nam? Impedit, doloribus odit. Quo?\",\"has_image\":\"1\",\"client_image\":\"632ffaa211a7d1664088738.jpg\"}', '2022-09-25 04:22:18', '2022-09-25 04:22:18'),
(68, 'counter.element', '{\"title\":\"Satisfied Client\",\"counter_digit\":\"323\",\"counter_icon\":\"<i class=\\\"las la-users\\\"><\\/i>\"}', '2022-09-25 04:24:09', '2022-09-25 04:24:09'),
(69, 'counter.element', '{\"title\":\"Total Branches\",\"counter_digit\":\"100\",\"counter_icon\":\"<i class=\\\"las la-store-alt\\\"><\\/i>\"}', '2022-09-25 04:24:42', '2022-09-25 04:24:42'),
(70, 'counter.element', '{\"title\":\"Total Staffs\",\"counter_digit\":\"865\",\"counter_icon\":\"<i class=\\\"las la-user-friends\\\"><\\/i>\"}', '2022-09-25 04:25:04', '2022-09-25 04:25:04'),
(71, 'counter.element', '{\"title\":\"Total Member\",\"counter_digit\":\"387534\",\"counter_icon\":\"<i class=\\\"las la-people-carry\\\"><\\/i>\"}', '2022-09-25 04:25:21', '2022-09-25 04:25:21'),
(72, 'faq.content', '{\"title\":\"What we offer\",\"heading\":\"Explore Our Services and Solutions\",\"sub_heading\":\"Voluptatem, fugit, facilis iure eligendi doloremque nisi minima ipsam corrupti vero eaque quo aut voluptatibus! Necessitatibus minima\",\"has_image\":\"1\",\"faq_image\":\"632ffb7a48f721664088954.png\"}', '2022-09-25 04:25:54', '2022-09-25 04:25:54'),
(73, 'faq.element', '{\"question\":\"Explore Our Services and Solutions\",\"answer\":\"Voluptatem, fugit, facilis iure eligendi doloremque nisi minima ipsam corrupti vero eaque quo aut voluptatibus! Necessitatibus minima\"}', '2022-09-25 04:26:07', '2022-09-25 04:26:07'),
(74, 'faq.element', '{\"question\":\"Cum molestias sequi dignissimos nemo?\",\"answer\":\"Quibusdam reprehenderit blanditiis adipisci facilis fugit, harum ab iste temporibus eveniet dolore porro ex excepturi consequatur.\"}', '2022-09-25 04:26:20', '2022-09-25 04:26:20'),
(75, 'faq.element', '{\"question\":\"Cum molestias sequi dignissimos nemo?\",\"answer\":\"Alias ducimus autem, laudantium rerum quas libero dolorem? Inventore, corrupti, nihil iste distinctio asperiores\"}', '2022-09-25 04:26:35', '2022-09-25 04:26:35'),
(76, 'faq.element', '{\"question\":\"harum ab iste temporibus eveniet dolore porro\",\"answer\":\"Alias ducimus autem, laudantium rerum quas libero dolorem? Inventore, corrupti, nihil iste distinctio asperiores\"}', '2022-09-25 04:26:53', '2022-09-25 04:26:53'),
(77, 'feature.element', '{\"heading\":\"Apply Online\",\"sub_heading\":\"Assumenda fugiat neque molestias recusandae nesciunt, ipsam porro expedita impedit tenetur dolorum sint error est natus ex harum.\",\"feature_icon\":\"<i class=\\\"fas fa-receipt\\\"><\\/i>\"}', '2022-09-25 04:27:29', '2022-09-25 04:27:29'),
(78, 'feature.element', '{\"heading\":\"Submit Documents\",\"sub_heading\":\"Assumenda fugiat neque molestias recusandae nesciunt, ipsam porro expedita impedit tenetur dolorum sint error est natus ex harum.\",\"feature_icon\":\"<i class=\\\"las la-file-invoice\\\"><\\/i>\"}', '2022-09-25 04:27:48', '2022-09-25 04:27:48'),
(79, 'feature.element', '{\"heading\":\"Receive Goods\",\"sub_heading\":\"Assumenda fugiat neque molestias recusandae nesciunt, ipsam porro expedita impedit tenetur dolorum sint error est natus ex harum.\",\"feature_icon\":\"<i class=\\\"las la-file-invoice\\\"><\\/i>\"}', '2022-09-25 04:28:07', '2022-09-25 04:28:07'),
(80, 'order_tracking.content', '{\"title\":\"Tracking Order\",\"heading\":\"Your Parcel Status\"}', '2022-09-25 04:28:30', '2022-09-25 04:28:30'),
(81, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"632ffc2b603911664089131.png\"}', '2022-09-25 04:28:51', '2022-09-25 04:28:51'),
(82, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"632ffc3547b0b1664089141.png\"}', '2022-09-25 04:29:01', '2022-09-25 04:29:01'),
(83, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"632ffc3d981021664089149.png\"}', '2022-09-25 04:29:09', '2022-09-25 04:29:09'),
(84, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"632ffc468293e1664089158.png\"}', '2022-09-25 04:29:18', '2022-09-25 04:29:18'),
(85, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"632ffc509c4501664089168.png\"}', '2022-09-25 04:29:28', '2022-09-25 04:29:28'),
(86, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"632ffc58e7d991664089176.png\"}', '2022-09-25 04:29:36', '2022-09-25 04:29:36'),
(87, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"632ffc9c469081664089244.png\"}', '2022-09-25 04:30:44', '2022-09-25 04:30:44'),
(88, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Standard Courier\",\"description\":\"Beatae rem sapiente dolorum cumque consequuntur quae quasi dignissimos, deleniti, quia voluptas aliquam nobis sit atque asperiores, debitis accusantium voluptatibus illum esse.\",\"image\":\"632ffd7be36a61664089467.png\"}', '2022-09-25 04:34:27', '2022-09-25 04:34:27'),
(89, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Express Courier\",\"description\":\"Beatae rem sapiente dolorum cumque consequuntur quae quasi dignissimos, deleniti, quia voluptas aliquam nobis sit atque asperiores, debitis accusantium voluptatibus illum esse.\",\"image\":\"632ffd912511d1664089489.png\"}', '2022-09-25 04:34:49', '2022-09-25 04:34:49'),
(90, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Pallet Courier\",\"description\":\"Beatae rem sapiente dolorum cumque consequuntur quae quasi dignissimos, deleniti, quia voluptas aliquam nobis sit atque asperiores, debitis accusantium voluptatibus illum esse.\",\"image\":\"632ffda99026b1664089513.png\"}', '2022-09-25 04:35:13', '2022-09-25 04:35:13'),
(91, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Over Night Courier\",\"description\":\"Beatae rem sapiente dolorum cumque consequuntur quae quasi dignissimos, deleniti, quia voluptas aliquam nobis sit atque asperiores, debitis accusantium voluptatibus illum esse.\",\"image\":\"632ffdbad53e01664089530.png\"}', '2022-09-25 04:35:30', '2022-09-25 04:35:30'),
(92, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"International Courier\",\"description\":\"Beatae rem sapiente dolorum cumque consequuntur quae quasi dignissimos, deleniti, quia voluptas aliquam nobis sit atque asperiores, debitis accusantium voluptatibus illum esse.\",\"image\":\"632ffdce9412c1664089550.png\"}', '2022-09-25 04:35:50', '2022-09-25 04:35:50'),
(93, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Warehousing\",\"description\":\"Beatae rem sapiente dolorum cumque consequuntur quae quasi dignissimos, deleniti, quia voluptas aliquam nobis sit atque asperiores, debitis accusantium voluptatibus illum esse.\",\"image\":\"632ffde5475d81664089573.png\"}', '2022-09-25 04:36:13', '2022-09-25 04:36:13'),
(94, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/\"}', '2022-09-25 04:36:57', '2022-09-25 04:36:57'),
(95, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"fab fa-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/www.twitter.com\\/\"}', '2022-09-25 04:37:11', '2022-09-25 04:37:11'),
(96, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\\/\"}', '2022-09-25 04:37:24', '2022-09-25 04:37:24'),
(97, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\\/\"}', '2022-09-25 04:37:37', '2022-09-25 04:37:37'),
(98, 'team.content', '{\"title\":\"Expert Team\",\"heading\":\"Our Expert Team\",\"sub_heading\":\"Non iste sint temporibus, facilis praesentium at eius excepturi veritatis natus maxime veniam eum impedit minus pariatur architecto necessitatibus dolorum? Minima, nihil?\"}', '2022-09-25 04:38:09', '2022-09-25 04:38:09'),
(99, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Liana Harris\",\"designation\":\"Sales Expert\",\"total_delivery\":\"2323\",\"member\":\"632ffe71011681664089713.png\"}', '2022-09-25 04:38:32', '2022-09-25 04:38:33'),
(100, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Dew Brisk\",\"designation\":\"Delivery Boy\",\"total_delivery\":\"323\",\"member\":\"632ffe85b069b1664089733.png\"}', '2022-09-25 04:38:53', '2022-09-25 04:38:53'),
(101, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Harry Hardson\",\"designation\":\"Delivery Boy\",\"total_delivery\":\"656\",\"member\":\"632ffe9ac0a431664089754.png\"}', '2022-09-25 04:39:14', '2022-09-25 04:39:14'),
(102, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"John Dew\",\"designation\":\"Delivery Boy\",\"total_delivery\":\"6543\",\"member\":\"632ffead896ca1664089773.png\"}', '2022-09-25 04:39:33', '2022-09-25 04:39:33'),
(103, 'contactInfo.content', '{\"address\":\"London, UK\",\"mobile\":\"45645647645\",\"fax\":\"47566-9847856\",\"email\":\"mail@yoursite.com\"}', '2022-09-28 08:00:21', '2022-09-28 08:00:22'),
(104, 'policy_pages.element', '{\"title\":\"Refund Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2022-09-28 09:05:24', '2022-09-28 09:05:24');

-- --------------------------------------------------------

--
-- Structure de la table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'email configuration',
  `sms_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `global_shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `en` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email notification, 0 - dont send, 1 - send',
  `sn` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms notification, 0 - dont send, 1 - send',
  `ln` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'language enable 0:disable , 1:enable',
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT '0',
  `active_template` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_body`, `sms_from`, `base_color`, `secondary_color`, `mail_config`, `sms_config`, `global_shortcodes`, `en`, `sn`, `ln`, `maintenance_mode`, `active_template`, `system_info`, `created_at`, `updated_at`) VALUES
(1, 'Assurance App', 'FCFA', 'FCFA', 'info@pouletbini.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td height=\"50\"></td></tr><tr><td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\"><table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td align=\"center\" width=\"600\"><table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\"><table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\"><tbody>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://pouletbini.com/assets/images/logoIcon/logo.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Salut {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2022&nbsp;<a href=\"#\">{{site_name}}</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'Salut {{fullname}} ({{username}}), {{message}}', 'Poulet Bini', '1e90ff', NULL, '{\"name\":\"smtp\",\"host\":\"pouletbini.com\",\"port\":\"465\",\"enc\":\"ssl\",\"username\":\"info@pouletbini.com\",\"password\":\"Xc)i@CXZ0qYr\"}', '{\"name\":\"infobip\",\"clickatell\":{\"api_key\":\"----------------\"},\"infobip\":{\"username\":\"juliuskouame\",\"password\":\"Daniel88@\",\"api_key\":\"94826f1ff7aa881333e0a1f7dd8efb3f-4cb74f21-e5eb-4c96-a7ba-df838ecba201\"},\"message_bird\":{\"api_key\":\"-------------------\"},\"nexmo\":{\"api_key\":\"----------------------\",\"api_secret\":\"----------------------\"},\"sms_broadcast\":{\"username\":\"----------------------\",\"password\":\"-----------------------------\"},\"twilio\":{\"account_sid\":\"-----------------------\",\"auth_token\":\"---------------------------\",\"from\":\"----------------------\"},\"text_magic\":{\"username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\"},\"custom\":{\"method\":\"get\",\"url\":\"https:\\/\\/hostname\\/demo-api-v1\",\"headers\":{\"name\":[\"api_key\"],\"value\":[\"test_api 555\"]},\"body\":{\"name\":[\"from_number\"],\"value\":[\"5657545757\"]}}}', '{\n    \"site_name\":\"Name of your site\",\n    \"site_currency\":\"Currency of your site\",\n    \"currency_symbol\":\"Symbol of currency\"\n}', 1, 1, 1, 0, 'basic', '[]', NULL, '2023-08-07 20:28:45');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'French', 'fr', '5f15968db08911595250317.png', 0, 1, '2020-07-06 03:47:55', '2023-08-07 20:46:20');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2023_08_04_113856_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'login', 'web', '2023-08-11 00:05:25', '2023-08-11 00:05:25'),
(3, 'logout', 'web', '2023-08-11 00:05:25', '2023-08-11 00:05:25'),
(5, 'password.request', 'web', '2023-08-11 00:05:25', '2023-08-11 00:05:25'),
(8, 'password.update', 'web', '2023-08-11 00:05:25', '2023-08-11 00:05:25'),
(12, 'password.reset.form', 'web', '2023-08-11 00:05:25', '2023-08-11 00:05:25'),
(13, 'password.change', 'web', '2023-08-11 00:05:25', '2023-08-11 00:05:25'),
(14, 'pharmacie.index', 'web', '2023-08-11 00:05:26', '2023-08-11 00:05:26'),
(15, 'pharmacie.profile', 'web', '2023-08-11 00:05:26', '2023-08-11 00:05:26'),
(16, 'pharmacie.profile.update', 'web', '2023-08-11 00:05:26', '2023-08-11 00:05:26'),
(17, 'pharmacie.password', 'web', '2023-08-11 00:05:26', '2023-08-11 00:05:26'),
(18, 'pharmacie.password.update', 'web', '2023-08-11 00:05:26', '2023-08-11 00:05:26');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Staff', 'web', '2023-08-11 00:06:44', '2023-08-11 00:06:44'),
(2, 'Manager', 'web', '2023-08-11 00:06:56', '2023-08-11 00:06:56');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(5, 1),
(8, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(2, 2),
(3, 2),
(5, 2),
(8, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2);

-- --------------------------------------------------------

--
-- Structure de la table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `support_message_id` int UNSIGNED DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `support_ticket_id` int UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` int UNSIGNED NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `branch_id` int NOT NULL,
  `firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `branch_id`, `firstname`, `lastname`, `username`, `user_type`, `email`, `mobile`, `address`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Gildas', 'Kouame', 'jularis', 'manager', 'juliuskouame@gmail.com', '+2250757187963', NULL, '$2y$10$OykH8lbI5L94Aa407ATWyOf/NYVxrEHGOGf7fjfs6l1ye3Wstudxq', '64d4f117ba8211691676951.png', 1, NULL, '2023-08-07 12:42:43', '2023-08-11 12:54:04'),
(2, 12, 'FRANCK', 'N\'ZI', 'franck', 'manager', 'franck.osse@gmail.com', '5456454545', NULL, '$2y$10$VUFo/kYC.Eg5P7UL1ZqLMeOZFO5FXaczS239IfC43kqrI667dLWy2', NULL, 1, NULL, '2024-02-18 22:26:39', '2024-02-18 22:26:39');

-- --------------------------------------------------------

--
-- Structure de la table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Index pour la table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Index pour la table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT pour la table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
