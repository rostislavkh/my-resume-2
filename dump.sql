-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Квт 25 2023 р., 21:58
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `my-resume-2`
--

-- --------------------------------------------------------

--
-- Структура таблиці `about_mes`
--

CREATE TABLE `about_mes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `positions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`positions`)),
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_uk` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`socials`)),
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_uk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `about_mes`
--

INSERT INTO `about_mes` (`id`, `img`, `name_en`, `name_uk`, `positions`, `description_en`, `description_uk`, `socials`, `phone_number`, `address_url`, `created_at`, `updated_at`, `email`, `address_en`, `address_uk`, `cv`) VALUES
(1, '1682355868.png', 'Rostislav Khorolskyi', 'Ростислав Хорольський', '[{\"position_en\":\"PHP Back-end developer.\",\"position_uk\":\"PHP Back-end \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a.\"},{\"position_en\":\"Web developer.\",\"position_uk\":\"Web \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a.\"}]', '<p>I am a&nbsp;<strong>PHP (Laravel) Developer</strong>&nbsp;with experience developing websites using the&nbsp;Laravel&nbsp;framework.</p>\r\n\r\n<p>My skills and knowledge in<strong>&nbsp;</strong>PHP,&nbsp;Laravel,&nbsp;HTML,&nbsp;CSS,&nbsp;JavaScript&nbsp;enable me to create high quality websites. I have experience using&nbsp;MySQL&nbsp;database and developing&nbsp;RESTful APIs&nbsp;using&nbsp;Laravel.</p>\r\n\r\n<p>I always strive to achieve the best results in my work and constantly grow professionally and personally. I have high quality standards and work effectively with a team to solve any task.</p>\r\n\r\n<p>I am open to cooperation and look forward to the opportunity to join cool projects and become part of a team to grow together.</p>\r\n\r\n<p>If you are looking for a reliable and responsible developer, please contact me. I will be happy to answer any questions and discuss the possibility of cooperation.</p>', '<p>Я&nbsp;<strong>PHP (Laravel) Developer</strong>&nbsp;з досвідом розробки веб-сайтів з використанням фреймворка Laravel.</p>\r\n\r\n<p>Мої навички та знання у&nbsp;PHP,&nbsp;Laravel,&nbsp;HTML,&nbsp;CSS,&nbsp;JavaScript&nbsp;дозволяють мені створювати високоякісні веб-сайти. Я маю досвід у використанні бази даних&nbsp;MySQL&nbsp;та розробці&nbsp;RESTful API&nbsp;з використанням&nbsp;Laravel.</p>\r\n\r\n<p>Я завжди прагну досягати найкращих результатів у своїй роботі та постійно зростати професійно та особистісно. Я маю високі стандарти якості та ефективно співпрацюю з командою, щоб вирішити будь-яке завдання.</p>\r\n\r\n<p>Я відкритий для співпраці та з нетерпінням очікую на можливість долучитися до крутих проектів та стати частиною команди, щоб розвиватися разом.</p>\r\n\r\n<p>Якщо Ви шукаєте надійного та відповідального розробника, будь ласка, зв&#39;яжіться зі мною. Я буду радий відповісти на будь-які запитання та обговорити можливість співпраці.</p>', '[{\"icon\":\"<svg width=\\\"40px\\\" height=\\\"40px\\\" version=\\\"1.1\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"\\r\\n                            viewBox=\\\"0 0 30 30\\\" xmlns:xlink=\\\"http:\\/\\/www.w3.org\\/1999\\/xlink\\\" xml:space=\\\"preserve\\\"\\r\\n                            xmlns:serif=\\\"http:\\/\\/www.serif.com\\/\\\"\\r\\n                            style=\\\"fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:1.41421;\\\">\\r\\n                            <path id=\\\"telegram-5\\\"\\r\\n                                d=\\\"M12,0c-6.627,0 -12,5.373 -12,12c0,6.627 5.373,12 12,12c6.627,0 12,-5.373 12,-12c0,-6.627 -5.373,-12 -12,-12Zm0,2c5.514,0 10,4.486 10,10c0,5.514 -4.486,10 -10,10c-5.514,0 -10,-4.486 -10,-10c0,-5.514 4.486,-10 10,-10Zm2.692,14.889c0.161,0.115 0.368,0.143 0.553,0.073c0.185,-0.07 0.322,-0.228 0.362,-0.42c0.435,-2.042 1.489,-7.211 1.884,-9.068c0.03,-0.14 -0.019,-0.285 -0.129,-0.379c-0.11,-0.093 -0.263,-0.12 -0.399,-0.07c-2.096,0.776 -8.553,3.198 -11.192,4.175c-0.168,0.062 -0.277,0.223 -0.271,0.4c0.006,0.177 0.125,0.33 0.296,0.381c1.184,0.354 2.738,0.847 2.738,0.847c0,0 0.725,2.193 1.104,3.308c0.047,0.139 0.157,0.25 0.301,0.287c0.145,0.038 0.298,-0.001 0.406,-0.103c0.608,-0.574 1.548,-1.461 1.548,-1.461c0,0 1.786,1.309 2.799,2.03Zm-5.505,-4.338l0.84,2.769l0.186,-1.754c0,0 3.243,-2.925 5.092,-4.593c0.055,-0.048 0.062,-0.13 0.017,-0.188c-0.045,-0.057 -0.126,-0.071 -0.188,-0.032c-2.143,1.368 -5.947,3.798 -5.947,3.798Z\\\" \\/>\\r\\n                        <\\/svg>\",\"label\":\"Telegram\",\"url\":\"https:\\/\\/telegram.me\\/rkhorolkiy\"},{\"icon\":\"<svg width=\\\"40px\\\" height=\\\"40px\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"\\r\\n                            viewBox=\\\"0 0 30 30\\\">\\r\\n                            <path\\r\\n                                d=\\\"M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm0 7.082c1.602 0 1.792.006 2.425.035 1.627.074 2.385.845 2.46 2.459.028.633.034.822.034 2.424s-.006 1.792-.034 2.424c-.075 1.613-.832 2.386-2.46 2.46-.633.028-.822.035-2.425.035-1.602 0-1.792-.006-2.424-.035-1.63-.075-2.385-.849-2.46-2.46-.028-.632-.035-.822-.035-2.424s.007-1.792.035-2.424c.074-1.615.832-2.386 2.46-2.46.632-.029.822-.034 2.424-.034zm0-1.082c-1.63 0-1.833.007-2.474.037-2.18.1-3.39 1.309-3.49 3.489-.029.641-.036.845-.036 2.474 0 1.63.007 1.834.036 2.474.1 2.179 1.31 3.39 3.49 3.49.641.029.844.036 2.474.036 1.63 0 1.834-.007 2.475-.036 2.176-.1 3.391-1.309 3.489-3.49.029-.64.036-.844.036-2.474 0-1.629-.007-1.833-.036-2.474-.098-2.177-1.309-3.39-3.489-3.489-.641-.03-.845-.037-2.475-.037zm0 2.919c-1.701 0-3.081 1.379-3.081 3.081s1.38 3.081 3.081 3.081 3.081-1.379 3.081-3.081c0-1.701-1.38-3.081-3.081-3.081zm0 5.081c-1.105 0-2-.895-2-2 0-1.104.895-2 2-2 1.104 0 2.001.895 2.001 2s-.897 2-2.001 2zm3.202-5.922c-.397 0-.72.322-.72.72 0 .397.322.72.72.72.398 0 .721-.322.721-.72 0-.398-.322-.72-.721-.72z\\\" \\/>\\r\\n                        <\\/svg>\",\"label\":\"Instagram\",\"url\":\"https:\\/\\/www.instagram.com\\/rkhorolskiy\"},{\"icon\":\"<svg width=\\\"40px\\\" height=\\\"40px\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"\\r\\n                            viewBox=\\\"0 0 30 30\\\">\\r\\n                            <path\\r\\n                                d=\\\"M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm6.5 8.778c-.441.196-.916.328-1.414.388.509-.305.898-.787 1.083-1.362-.476.282-1.003.487-1.564.597-.448-.479-1.089-.778-1.796-.778-1.59 0-2.758 1.483-2.399 3.023-2.045-.103-3.86-1.083-5.074-2.572-.645 1.106-.334 2.554.762 3.287-.403-.013-.782-.124-1.114-.308-.027 1.14.791 2.207 1.975 2.445-.346.094-.726.116-1.112.042.313.978 1.224 1.689 2.3 1.709-1.037.812-2.34 1.175-3.647 1.021 1.09.699 2.383 1.106 3.773 1.106 4.572 0 7.154-3.861 6.998-7.324.482-.346.899-.78 1.229-1.274z\\\" \\/>\\r\\n                        <\\/svg>\",\"label\":\"Twitter\",\"url\":\"https:\\/\\/twitter.com\\/rkhorolskiy\"},{\"icon\":\"<svg width=\\\"40px\\\" height=\\\"40px\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"\\r\\n                            viewBox=\\\"0 0 30 30\\\">\\r\\n                            <path\\r\\n                                d=\\\"M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2 10h-2v2h2v6h3v-6h1.82l.18-2h-2v-.833c0-.478.096-.667.558-.667h1.442v-2.5h-2.404c-1.798 0-2.596.792-2.596 2.308v1.692z\\\" \\/>\\r\\n                        <\\/svg>\",\"label\":\"Facebook\",\"url\":\"https:\\/\\/www.facebook.com\\/profile.php?id=100006202755689\"}]', '+38 (098) 706-55-58', 'https://goo.gl/maps/bG1h9yRGYkpcM7fD6', '2023-04-23 08:41:20', '2023-04-24 14:04:28', 'rkhorolskij@gmail.com', 'Ukraine, Dnipro.', 'Україна, Дніпро.', '1682355868.pdf');

-- --------------------------------------------------------

--
-- Структура таблиці `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'About me', 'icon-address-card', '/', NULL, NULL, '2023-04-23 16:19:47'),
(2, 0, 6, 'Admin', 'icon-server', '', NULL, NULL, '2023-04-24 17:47:31'),
(3, 2, 7, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2023-04-24 17:47:31'),
(4, 2, 8, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2023-04-24 17:47:31'),
(5, 2, 9, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2023-04-24 17:47:31'),
(6, 2, 10, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2023-04-24 17:47:31'),
(7, 2, 11, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2023-04-24 17:47:31'),
(8, 0, 12, 'Helpers', 'icon-cogs', '', NULL, '2023-04-22 08:49:23', '2023-04-24 17:47:31'),
(9, 8, 13, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2023-04-22 08:49:23', '2023-04-24 17:47:31'),
(10, 8, 14, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2023-04-22 08:49:23', '2023-04-24 17:47:31'),
(11, 8, 15, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2023-04-22 08:49:23', '2023-04-24 17:47:31'),
(12, 8, 16, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2023-04-22 08:49:23', '2023-04-24 17:47:31'),
(18, 0, 2, 'Skills', 'icon-clipboard-list', 'skills', NULL, '2023-04-23 16:19:32', '2023-04-23 16:19:47'),
(21, 0, 3, 'Projects', 'icon-book-open', 'projects', NULL, '2023-04-23 17:46:37', '2023-04-23 17:47:57'),
(23, 0, 4, 'Eexperiences', 'icon-code-branch', 'eexperiences', NULL, '2023-04-24 14:31:25', '2023-04-24 14:33:41'),
(24, 0, 5, 'Requests', 'icon-comment-dots', 'requests', NULL, '2023-04-24 17:47:01', '2023-04-24 17:48:08');

-- --------------------------------------------------------

--
-- Структура таблиці `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 08:40:26', '2023-04-22 08:40:26'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-04-22 08:40:43', '2023-04-22 08:40:43'),
(3, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-04-22 08:40:48', '2023-04-22 08:40:48'),
(4, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-04-22 08:40:56', '2023-04-22 08:40:56'),
(5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 08:41:16', '2023-04-22 08:41:16'),
(6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 08:41:40', '2023-04-22 08:41:40'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 08:42:07', '2023-04-22 08:42:07'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 08:42:13', '2023-04-22 08:42:13'),
(9, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 08:45:51', '2023-04-22 08:45:51'),
(10, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 08:45:54', '2023-04-22 08:45:54'),
(11, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 08:54:16', '2023-04-22 08:54:16'),
(12, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"about_me\",\"model_name\":\"App\\\\Models\\\\AboutMe\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\AboutMeController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"1\":{\"name\":\"name_en\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"0\":{\"name\":\"name_uk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"positions_en\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"positions_uk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"text_en\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"text_uk\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\"}', '2023-04-22 09:02:33', '2023-04-22 09:02:33'),
(13, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 09:02:34', '2023-04-22 09:02:34'),
(14, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 09:04:15', '2023-04-22 09:04:15'),
(15, 1, 'admin/about-mes', 'GET', '127.0.0.1', '[]', '2023-04-22 09:04:19', '2023-04-22 09:04:19'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:04:40', '2023-04-22 09:04:40'),
(17, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '[]', '2023-04-22 09:04:56', '2023-04-22 09:04:56'),
(18, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"About-mes\",\"icon\":\"icon-address-card\",\"uri\":\"about-mes\",\"roles\":[null],\"permission\":null,\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\",\"_method\":\"PUT\"}', '2023-04-22 09:05:12', '2023-04-22 09:05:12'),
(19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:05:13', '2023-04-22 09:05:13'),
(20, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\"}', '2023-04-22 09:05:23', '2023-04-22 09:05:23'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:05:23', '2023-04-22 09:05:23'),
(22, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:05:27', '2023-04-22 09:05:27'),
(23, 1, 'admin/about-mes', 'GET', '127.0.0.1', '[]', '2023-04-22 09:05:29', '2023-04-22 09:05:29'),
(24, 1, 'admin/about-mes/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:05:48', '2023-04-22 09:05:48'),
(25, 1, 'admin/about-mes/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:10:33', '2023-04-22 09:10:33'),
(26, 1, 'admin/about-mes', 'POST', '127.0.0.1', '{\"name_en\":\"Rostyslav Khorolskyi\",\"name_uk\":\"\\u0420\\u043e\\u0441\\u0442\\u0438\\u0441\\u043b\\u0430\\u0432 \\u0425\\u043e\\u0440\\u043e\\u043b\\u044c\\u0441\\u044c\\u043a\\u0438\\u0439\",\"positions_en\":\"PHP Back-end developer. | Web developer.\",\"positions_uk\":\"PHP Back-end \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a. | Web \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a.\",\"text_en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil! Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil! Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil!\",\"text_uk\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil! Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil! Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil!\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\"}', '2023-04-22 09:12:28', '2023-04-22 09:12:28'),
(27, 1, 'admin/about-mes', 'GET', '127.0.0.1', '[]', '2023-04-22 09:12:28', '2023-04-22 09:12:28'),
(28, 1, 'admin/about-mes', 'GET', '127.0.0.1', '{\"id\":null}', '2023-04-22 09:12:46', '2023-04-22 09:12:46'),
(29, 1, 'admin/about-mes/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-22 09:12:56', '2023-04-22 09:12:56'),
(30, 1, 'admin/about-mes/1', 'PUT', '127.0.0.1', '{\"name_en\":\"Rostyslav Khorolskyi\",\"name_uk\":\"\\u0420\\u043e\\u0441\\u0442\\u0438\\u0441\\u043b\\u0430\\u0432 \\u0425\\u043e\\u0440\\u043e\\u043b\\u044c\\u0441\\u044c\\u043a\\u0438\\u0439\",\"positions_en\":\"PHP Back-end developer. | Web developer.\",\"positions_uk\":\"PHP Back-end \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a. | Web \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a.\",\"text_en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil! Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil! Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil!\",\"text_uk\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil! Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil! Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil!\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\",\"_method\":\"PUT\"}', '2023-04-22 09:13:00', '2023-04-22 09:13:00'),
(31, 1, 'admin/about-mes', 'GET', '127.0.0.1', '[]', '2023-04-22 09:13:00', '2023-04-22 09:13:00'),
(32, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:13:07', '2023-04-22 09:13:07'),
(33, 1, 'admin/about-mes', 'GET', '127.0.0.1', '[]', '2023-04-22 09:13:35', '2023-04-22 09:13:35'),
(34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 09:15:02', '2023-04-22 09:15:02'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:15:08', '2023-04-22 09:15:08'),
(36, 1, 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\"}', '2023-04-22 09:15:11', '2023-04-22 09:15:11'),
(37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:15:12', '2023-04-22 09:15:12'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:15:19', '2023-04-22 09:15:19'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:20:19', '2023-04-22 09:20:19'),
(40, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Users\",\"icon\":\"icon-address-card\",\"uri\":\"users\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\"}', '2023-04-22 09:21:35', '2023-04-22 09:21:35'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:21:35', '2023-04-22 09:21:35'),
(42, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 09:21:39', '2023-04-22 09:21:39'),
(43, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-04-22 09:21:41', '2023-04-22 09:21:41'),
(44, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-04-22 09:35:07', '2023-04-22 09:35:07'),
(45, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:35:26', '2023-04-22 09:35:26'),
(46, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:36:54', '2023-04-22 09:36:54'),
(47, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:38:50', '2023-04-22 09:38:50'),
(48, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:41:07', '2023-04-22 09:41:07'),
(49, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:45:21', '2023-04-22 09:45:21'),
(50, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:48:51', '2023-04-22 09:48:51'),
(51, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\",\"_method\":\"PUT\"}', '2023-04-22 09:49:29', '2023-04-22 09:49:29'),
(52, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:49:30', '2023-04-22 09:49:30'),
(53, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:49:34', '2023-04-22 09:49:34'),
(54, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\\/create\"}', '2023-04-22 09:50:24', '2023-04-22 09:50:24'),
(55, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:50:25', '2023-04-22 09:50:25'),
(56, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:50:33', '2023-04-22 09:50:33'),
(57, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:54:00', '2023-04-22 09:54:00'),
(58, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\",\"_method\":\"PUT\"}', '2023-04-22 09:54:15', '2023-04-22 09:54:15'),
(59, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:54:15', '2023-04-22 09:54:15'),
(60, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\",\"after-save\":\"continue_editing\",\"_method\":\"PUT\"}', '2023-04-22 09:54:23', '2023-04-22 09:54:23'),
(61, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 09:54:23', '2023-04-22 09:54:23'),
(62, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-04-22 09:57:31', '2023-04-22 09:57:31'),
(63, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:57:32', '2023-04-22 09:57:32'),
(64, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":{\"new_1\":{\"_remove_\":\"0\"}},\"email\":\"rkhorolskij@gmail.com\",\"email_verified_at\":\"2023-04-22 12:57:32\",\"password\":\"*****-filtered-out-*****\",\"remember_token\":null,\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\"}', '2023-04-22 09:57:49', '2023-04-22 09:57:49'),
(65, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:57:50', '2023-04-22 09:57:50'),
(66, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2023-04-22 09:59:03', '2023-04-22 09:59:03'),
(67, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":{\"new_1\":{\"_remove_\":\"0\"}},\"email\":\"rkhorolskij@gmail.com\",\"email_verified_at\":\"2023-04-22 12:59:03\",\"password\":\"*****-filtered-out-*****\",\"remember_token\":null,\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\"}', '2023-04-22 09:59:13', '2023-04-22 09:59:13'),
(68, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-04-22 09:59:14', '2023-04-22 09:59:14'),
(69, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:00:48', '2023-04-22 10:00:48'),
(70, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:05:24', '2023-04-22 10:05:24'),
(71, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:05:59', '2023-04-22 10:05:59'),
(72, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:07:06', '2023-04-22 10:07:06'),
(73, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:07:20', '2023-04-22 10:07:20'),
(74, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:08:09', '2023-04-22 10:08:09'),
(75, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:08:28', '2023-04-22 10:08:28'),
(76, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 10:24:22', '2023-04-22 10:24:22'),
(77, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:37:26', '2023-04-22 10:37:26'),
(78, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\",\"_method\":\"PUT\"}', '2023-04-22 10:37:34', '2023-04-22 10:37:34'),
(79, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:37:34', '2023-04-22 10:37:34'),
(80, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:37:45', '2023-04-22 10:37:45'),
(81, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:39:26', '2023-04-22 10:39:26'),
(82, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/images\\/IMG_3348-PhotoRoom.png-PhotoRoom.png,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"f3cYH75Main7Ugp0cI7RAzVxuBw2YxwwBLQsN9dU\",\"_method\":\"PUT\"}', '2023-04-22 10:40:43', '2023-04-22 10:40:43'),
(83, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:40:43', '2023-04-22 10:40:43'),
(84, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 10:40:51', '2023-04-22 10:40:51'),
(85, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 10:43:53', '2023-04-22 10:43:53'),
(86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 12:56:31', '2023-04-22 12:56:31'),
(87, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 12:56:55', '2023-04-22 12:56:55'),
(88, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2023-04-22 13:06:08', '2023-04-22 13:06:08'),
(89, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2023-04-22 13:06:19', '2023-04-22 13:06:19'),
(90, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2023-04-22 13:06:29', '2023-04-22 13:06:29'),
(91, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 13:06:50', '2023-04-22 13:06:50'),
(92, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 13:16:03', '2023-04-22 13:16:03'),
(93, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 13:21:52', '2023-04-22 13:21:52'),
(94, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 13:21:55', '2023-04-22 13:21:55'),
(95, 1, 'admin/page-designer/create', 'GET', '127.0.0.1', '[]', '2023-04-22 13:21:59', '2023-04-22 13:21:59'),
(96, 1, 'admin/page-designer-texts/create', 'GET', '127.0.0.1', '{\"temp_id\":\"TSZjZKMlyX\",\"page_id\":null}', '2023-04-22 13:23:17', '2023-04-22 13:23:17'),
(97, 1, 'admin/page-designer-texts', 'POST', '127.0.0.1', '{\"title\":\"Text\",\"body\":null,\"page_id\":null,\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\"}', '2023-04-22 13:23:25', '2023-04-22 13:23:25'),
(98, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 13:23:39', '2023-04-22 13:23:39'),
(99, 1, 'admin/page-designer/create', 'GET', '127.0.0.1', '[]', '2023-04-22 13:27:48', '2023-04-22 13:27:48'),
(100, 1, 'admin/page-designer-images/create', 'GET', '127.0.0.1', '{\"temp_id\":\"IAwc7fRzbe\",\"page_id\":null}', '2023-04-22 13:28:08', '2023-04-22 13:28:08'),
(101, 1, 'admin/page-designer-images', 'POST', '127.0.0.1', '{\"title\":null,\"page_id\":null,\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\"}', '2023-04-22 13:28:18', '2023-04-22 13:28:18'),
(102, 1, 'admin/page-designer-images/create', 'GET', '127.0.0.1', '{\"temp_id\":\"IAwc7fRzbe\",\"page_id\":null}', '2023-04-22 13:28:19', '2023-04-22 13:28:19'),
(103, 1, 'admin/page-designer-texts/create', 'GET', '127.0.0.1', '{\"temp_id\":\"0wMqhAqRIz\",\"page_id\":null}', '2023-04-22 13:28:38', '2023-04-22 13:28:38'),
(104, 1, 'admin/page-designer-texts', 'POST', '127.0.0.1', '{\"title\":\"Text\",\"body\":\"Text 123\",\"page_id\":null,\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\"}', '2023-04-22 13:28:50', '2023-04-22 13:28:50'),
(105, 1, 'admin/page-designer', 'POST', '127.0.0.1', '{\"data\":\"{\\\"items\\\":[{\\\"id\\\":\\\"2\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":400,\\\"y\\\":120,\\\"width\\\":100,\\\"height\\\":100,\\\"px\\\":42,\\\"py\\\":12,\\\"pwidth\\\":10,\\\"pheight\\\":10}],\\\"settings\\\":{\\\"x\\\":315,\\\"y\\\":85.390625,\\\"width\\\":961,\\\"height\\\":700,\\\"top\\\":85.390625,\\\"right\\\":1276,\\\"bottom\\\":785.390625,\\\"left\\\":315}}\",\"status\":null,\"rank\":null,\"type\":\"page_designer\",\"search_terms\":null,\"title\":null,\"slug\":null,\"meta_title\":null,\"meta_description\":null,\"meta_keywords\":null,\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\"}', '2023-04-22 13:28:56', '2023-04-22 13:28:56'),
(106, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 13:28:56', '2023-04-22 13:28:56'),
(107, 1, 'admin/page-designer/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"status\":\"on\",\"after-save\":\"exit\"}', '2023-04-22 13:28:59', '2023-04-22 13:28:59'),
(108, 1, 'admin/page-designer/1', 'GET', '127.0.0.1', '[]', '2023-04-22 13:29:01', '2023-04-22 13:29:01'),
(109, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 13:29:06', '2023-04-22 13:29:06'),
(110, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 13:29:42', '2023-04-22 13:29:42'),
(111, 1, 'admin/page-designer/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-22 13:29:45', '2023-04-22 13:29:45'),
(112, 1, 'admin/page-designer/1', 'PUT', '127.0.0.1', '{\"data\":\"{\\\"items\\\":[{\\\"id\\\":\\\"2\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":400,\\\"y\\\":120,\\\"width\\\":100,\\\"height\\\":100,\\\"px\\\":42,\\\"py\\\":12,\\\"pwidth\\\":10,\\\"pheight\\\":10}],\\\"settings\\\":{\\\"x\\\":315,\\\"y\\\":85.390625,\\\"width\\\":961,\\\"height\\\":700,\\\"top\\\":85.390625,\\\"right\\\":1276,\\\"bottom\\\":785.390625,\\\"left\\\":315}}\",\"status\":\"1\",\"status_cb\":\"on\",\"rank\":null,\"type\":\"root\",\"search_terms\":null,\"title\":\"Test page\",\"slug\":\"page\",\"meta_title\":null,\"meta_description\":null,\"meta_keywords\":null,\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\",\"_method\":\"PUT\"}', '2023-04-22 13:30:14', '2023-04-22 13:30:14'),
(113, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 13:30:15', '2023-04-22 13:30:15'),
(114, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 13:30:32', '2023-04-22 13:30:32'),
(115, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 14:21:45', '2023-04-22 14:21:45'),
(116, 1, 'admin/page-designer', 'GET', '127.0.0.1', '[]', '2023-04-22 14:22:10', '2023-04-22 14:22:10'),
(117, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:24:05', '2023-04-22 14:24:05'),
(118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 14:24:18', '2023-04-22 14:24:18'),
(119, 1, 'admin/auth/menu/14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\"}', '2023-04-22 14:24:21', '2023-04-22 14:24:21'),
(120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 14:24:22', '2023-04-22 14:24:22'),
(121, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:24:26', '2023-04-22 14:24:26'),
(122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:29:09', '2023-04-22 14:29:09'),
(123, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-04-22 14:34:25', '2023-04-22 14:34:25'),
(124, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:34:27', '2023-04-22 14:34:27'),
(125, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-04-22 14:34:30', '2023-04-22 14:34:30'),
(126, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:34:31', '2023-04-22 14:34:31'),
(127, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 14:34:32', '2023-04-22 14:34:32'),
(128, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:34:35', '2023-04-22 14:34:35'),
(129, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-04-22 14:34:36', '2023-04-22 14:34:36'),
(130, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 14:37:13', '2023-04-22 14:37:13'),
(131, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 14:39:19', '2023-04-22 14:39:19'),
(132, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:39:21', '2023-04-22 14:39:21'),
(133, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:40:10', '2023-04-22 14:40:10'),
(134, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:44:03', '2023-04-22 14:44:03'),
(135, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:51:55', '2023-04-22 14:51:55'),
(136, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:53:49', '2023-04-22 14:53:49'),
(137, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:54:37', '2023-04-22 14:54:37'),
(138, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:56:18', '2023-04-22 14:56:18'),
(139, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 14:59:48', '2023-04-22 14:59:48'),
(140, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 15:00:13', '2023-04-22 15:00:13'),
(141, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 15:02:13', '2023-04-22 15:02:13'),
(142, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 15:02:48', '2023-04-22 15:02:48'),
(143, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 15:04:07', '2023-04-22 15:04:07'),
(144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:09:28', '2023-04-22 16:09:28'),
(145, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:10:20', '2023-04-22 16:10:20'),
(146, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:10:34', '2023-04-22 16:10:34'),
(147, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:11:08', '2023-04-22 16:11:08'),
(148, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:11:35', '2023-04-22 16:11:35'),
(149, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:16:52', '2023-04-22 16:16:52'),
(150, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:17:01', '2023-04-22 16:17:01'),
(151, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:17:45', '2023-04-22 16:17:45'),
(152, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:18:00', '2023-04-22 16:18:00'),
(153, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:20:29', '2023-04-22 16:20:29'),
(154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:20:38', '2023-04-22 16:20:38'),
(155, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:20:54', '2023-04-22 16:20:54'),
(156, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:21:42', '2023-04-22 16:21:42'),
(157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:22:12', '2023-04-22 16:22:12'),
(158, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:23:23', '2023-04-22 16:23:23'),
(159, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:25:32', '2023-04-22 16:25:32'),
(160, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:31:19', '2023-04-22 16:31:19'),
(161, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:31:51', '2023-04-22 16:31:51'),
(162, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:35:40', '2023-04-22 16:35:40'),
(163, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:42:29', '2023-04-22 16:42:29'),
(164, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:42:40', '2023-04-22 16:42:40'),
(165, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:44:44', '2023-04-22 16:44:44'),
(166, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:44:48', '2023-04-22 16:44:48'),
(167, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:44:52', '2023-04-22 16:44:52'),
(168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:48:42', '2023-04-22 16:48:42'),
(169, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:49:04', '2023-04-22 16:49:04'),
(170, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:49:14', '2023-04-22 16:49:14'),
(171, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:51:13', '2023-04-22 16:51:13'),
(172, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 16:51:37', '2023-04-22 16:51:37'),
(173, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:02:02', '2023-04-22 17:02:02'),
(174, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:02:38', '2023-04-22 17:02:38'),
(175, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:05:19', '2023-04-22 17:05:19'),
(176, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:08:48', '2023-04-22 17:08:48'),
(177, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:11:22', '2023-04-22 17:11:22'),
(178, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:41:37', '2023-04-22 17:41:37'),
(179, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:41:59', '2023-04-22 17:41:59'),
(180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:42:29', '2023-04-22 17:42:29'),
(181, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:47:20', '2023-04-22 17:47:20'),
(182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:52:25', '2023-04-22 17:52:25'),
(183, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:53:55', '2023-04-22 17:53:55'),
(184, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 17:55:03', '2023-04-22 17:55:03'),
(185, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:00:34', '2023-04-22 18:00:34'),
(186, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:01:55', '2023-04-22 18:01:55'),
(187, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:02:24', '2023-04-22 18:02:24'),
(188, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 18:02:46', '2023-04-22 18:02:46'),
(189, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-22 18:02:54', '2023-04-22 18:02:54'),
(190, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:02:57', '2023-04-22 18:02:57'),
(191, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:06:05', '2023-04-22 18:06:05'),
(192, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:10:51', '2023-04-22 18:10:51'),
(193, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:10:54', '2023-04-22 18:10:54'),
(194, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:11:31', '2023-04-22 18:11:31'),
(195, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:15:23', '2023-04-22 18:15:23'),
(196, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:16:28', '2023-04-22 18:16:28'),
(197, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:17:23', '2023-04-22 18:17:23'),
(198, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:17:35', '2023-04-22 18:17:35'),
(199, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:19:03', '2023-04-22 18:19:03'),
(200, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:19:41', '2023-04-22 18:19:41'),
(201, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:20:08', '2023-04-22 18:20:08'),
(202, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:21:42', '2023-04-22 18:21:42'),
(203, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:24:45', '2023-04-22 18:24:45'),
(204, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:25:16', '2023-04-22 18:25:16'),
(205, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:25:59', '2023-04-22 18:25:59'),
(206, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:29:00', '2023-04-22 18:29:00'),
(207, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:29:30', '2023-04-22 18:29:30'),
(208, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:29:55', '2023-04-22 18:29:55'),
(209, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:30:06', '2023-04-22 18:30:06'),
(210, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:30:41', '2023-04-22 18:30:41'),
(211, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:31:02', '2023-04-22 18:31:02'),
(212, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:31:15', '2023-04-22 18:31:15'),
(213, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:35:34', '2023-04-22 18:35:34'),
(214, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:35:45', '2023-04-22 18:35:45'),
(215, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 18:35:55', '2023-04-22 18:35:55'),
(216, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-22 18:35:59', '2023-04-22 18:35:59'),
(217, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"About me\",\"icon\":\"icon-address-card\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\",\"_method\":\"PUT\"}', '2023-04-22 18:36:32', '2023-04-22 18:36:32'),
(218, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 18:36:32', '2023-04-22 18:36:32'),
(219, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 18:36:38', '2023-04-22 18:36:38'),
(220, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:36:41', '2023-04-22 18:36:41'),
(221, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-22 18:37:04', '2023-04-22 18:37:04'),
(222, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:37:29', '2023-04-22 18:37:29'),
(223, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 18:37:36', '2023-04-22 18:37:36'),
(224, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\",\"_method\":\"PUT\"}', '2023-04-22 18:38:19', '2023-04-22 18:38:19'),
(225, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 18:38:20', '2023-04-22 18:38:20'),
(226, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\",\"_method\":\"PUT\"}', '2023-04-22 18:39:07', '2023-04-22 18:39:07'),
(227, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 18:39:07', '2023-04-22 18:39:07'),
(228, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 18:39:41', '2023-04-22 18:39:41'),
(229, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"omZMS9ENVu4yobDI84DeeX6uRIZP5qjpF2KPzabL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2023-04-22 18:39:49', '2023-04-22 18:39:49'),
(230, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 18:39:49', '2023-04-22 18:39:49'),
(231, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-22 18:39:55', '2023-04-22 18:39:55'),
(232, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:40:57', '2023-04-22 18:40:57'),
(233, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-22 18:41:45', '2023-04-22 18:41:45'),
(234, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:20:22', '2023-04-23 04:20:22'),
(235, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:21:17', '2023-04-23 04:21:17'),
(236, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:27:11', '2023-04-23 04:27:11'),
(237, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:27:28', '2023-04-23 04:27:28'),
(238, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"avatar_file_del_\":\"\\/uploads\\/images\\/IMG_3348-PhotoRoom-PhotoRoom_2.png,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"YoGGCLV4CfkzGGAqBZpGBB2KInCyBwTUPlWGJw7B\",\"_method\":\"PUT\"}', '2023-04-23 04:28:01', '2023-04-23 04:28:01'),
(239, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:28:02', '2023-04-23 04:28:02'),
(240, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:29:04', '2023-04-23 04:29:04'),
(241, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"YoGGCLV4CfkzGGAqBZpGBB2KInCyBwTUPlWGJw7B\",\"_method\":\"PUT\"}', '2023-04-23 04:29:16', '2023-04-23 04:29:16'),
(242, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:29:16', '2023-04-23 04:29:16'),
(243, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"YoGGCLV4CfkzGGAqBZpGBB2KInCyBwTUPlWGJw7B\",\"_method\":\"PUT\"}', '2023-04-23 04:29:27', '2023-04-23 04:29:27'),
(244, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:29:27', '2023-04-23 04:29:27'),
(245, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:29:46', '2023-04-23 04:29:46'),
(246, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:32:56', '2023-04-23 04:32:56'),
(247, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:33:37', '2023-04-23 04:33:37'),
(248, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:34:41', '2023-04-23 04:34:41'),
(249, 1, 'admin/media', 'GET', '127.0.0.1', '{\"select\":\"true\",\"fn\":\"setFileimg\",\"path\":\"test\"}', '2023-04-23 04:34:48', '2023-04-23 04:34:48'),
(250, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:35:10', '2023-04-23 04:35:10'),
(251, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:35:15', '2023-04-23 04:35:15'),
(252, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:35:26', '2023-04-23 04:35:26'),
(253, 1, 'admin/media', 'GET', '127.0.0.1', '{\"select\":\"true\",\"fn\":\"setFileimg\"}', '2023-04-23 04:35:28', '2023-04-23 04:35:28'),
(254, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"select\":\"true\",\"fn\":\"setFileimg\"}', '2023-04-23 04:35:33', '2023-04-23 04:35:33'),
(255, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:39:32', '2023-04-23 04:39:32'),
(256, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:39:47', '2023-04-23 04:39:47'),
(257, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:41:48', '2023-04-23 04:41:48'),
(258, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:42:10', '2023-04-23 04:42:10'),
(259, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 04:44:23', '2023-04-23 04:44:23'),
(260, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:44:32', '2023-04-23 04:44:32'),
(261, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/images\\/1608639_code_icon.png,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"YoGGCLV4CfkzGGAqBZpGBB2KInCyBwTUPlWGJw7B\",\"_method\":\"PUT\"}', '2023-04-23 04:58:58', '2023-04-23 04:58:58'),
(262, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:58:59', '2023-04-23 04:58:59'),
(263, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"YoGGCLV4CfkzGGAqBZpGBB2KInCyBwTUPlWGJw7B\",\"_method\":\"PUT\"}', '2023-04-23 04:59:06', '2023-04-23 04:59:06'),
(264, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:59:06', '2023-04-23 04:59:06'),
(265, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 04:59:11', '2023-04-23 04:59:11'),
(266, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 05:57:19', '2023-04-23 05:57:19'),
(267, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 05:57:41', '2023-04-23 05:57:41'),
(268, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 05:58:35', '2023-04-23 05:58:35'),
(269, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:01:35', '2023-04-23 06:01:35'),
(270, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:02:05', '2023-04-23 06:02:05'),
(271, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:02:10', '2023-04-23 06:02:10'),
(272, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:06:00', '2023-04-23 06:06:00'),
(273, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:08:43', '2023-04-23 06:08:43'),
(274, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:08:50', '2023-04-23 06:08:50'),
(275, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:08:54', '2023-04-23 06:08:54'),
(276, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:09:06', '2023-04-23 06:09:06'),
(277, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:09:19', '2023-04-23 06:09:19'),
(278, 1, 'admin/media', 'GET', '127.0.0.1', '{\"select\":\"true\",\"fn\":\"setFileimg\"}', '2023-04-23 06:09:21', '2023-04-23 06:09:21'),
(279, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"select\":\"true\",\"fn\":\"setFileimg\"}', '2023-04-23 06:09:23', '2023-04-23 06:09:23'),
(280, 1, 'admin/media', 'GET', '127.0.0.1', '{\"select\":\"true\",\"fn\":\"setFileimg\"}', '2023-04-23 06:09:29', '2023-04-23 06:09:29'),
(281, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:09:45', '2023-04-23 06:09:45'),
(282, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:14:21', '2023-04-23 06:14:21'),
(283, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:15:33', '2023-04-23 06:15:33'),
(284, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:15:40', '2023-04-23 06:15:40'),
(285, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:15:41', '2023-04-23 06:15:41'),
(286, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:16:37', '2023-04-23 06:16:37'),
(287, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:16:52', '2023-04-23 06:16:52'),
(288, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:16:54', '2023-04-23 06:16:54'),
(289, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:17:08', '2023-04-23 06:17:08'),
(290, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:17:24', '2023-04-23 06:17:24'),
(291, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:18:52', '2023-04-23 06:18:52'),
(292, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:19:17', '2023-04-23 06:19:17'),
(293, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:20:21', '2023-04-23 06:20:21'),
(294, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:20:22', '2023-04-23 06:20:22'),
(295, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:21:16', '2023-04-23 06:21:16'),
(296, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:21:17', '2023-04-23 06:21:17'),
(297, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:21:35', '2023-04-23 06:21:35'),
(298, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:21:42', '2023-04-23 06:21:42'),
(299, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:22:23', '2023-04-23 06:22:23'),
(300, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:22:29', '2023-04-23 06:22:29'),
(301, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:23:16', '2023-04-23 06:23:16'),
(302, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 06:23:57', '2023-04-23 06:23:57'),
(303, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/images\\/IMG_3348-PhotoRoom-PhotoRoom_3.png,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"YoGGCLV4CfkzGGAqBZpGBB2KInCyBwTUPlWGJw7B\",\"_method\":\"PUT\"}', '2023-04-23 06:24:06', '2023-04-23 06:24:06'),
(304, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 06:24:06', '2023-04-23 06:24:06'),
(305, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"YoGGCLV4CfkzGGAqBZpGBB2KInCyBwTUPlWGJw7B\",\"_method\":\"PUT\"}', '2023-04-23 06:24:12', '2023-04-23 06:24:12'),
(306, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 06:24:13', '2023-04-23 06:24:13'),
(307, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-23 06:24:15', '2023-04-23 06:24:15'),
(308, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:24:24', '2023-04-23 06:24:24'),
(309, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:29:46', '2023-04-23 06:29:46'),
(310, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 06:29:48', '2023-04-23 06:29:48'),
(311, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 07:46:04', '2023-04-23 07:46:04'),
(312, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 07:46:57', '2023-04-23 07:46:57'),
(313, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 07:47:16', '2023-04-23 07:47:16'),
(314, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 07:47:37', '2023-04-23 07:47:37'),
(315, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 07:48:52', '2023-04-23 07:48:52'),
(316, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 07:53:56', '2023-04-23 07:53:56'),
(317, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 07:55:13', '2023-04-23 07:55:13'),
(318, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:01:55', '2023-04-23 08:01:55'),
(319, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:06:17', '2023-04-23 08:06:17'),
(320, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:11:17', '2023-04-23 08:11:17'),
(321, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:14:05', '2023-04-23 08:14:05'),
(322, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:19:44', '2023-04-23 08:19:44'),
(323, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:20:46', '2023-04-23 08:20:46'),
(324, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:22:02', '2023-04-23 08:22:02'),
(325, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:24:19', '2023-04-23 08:24:19'),
(326, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:24:42', '2023-04-23 08:24:42'),
(327, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:24:52', '2023-04-23 08:24:52'),
(328, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:34:44', '2023-04-23 08:34:44'),
(329, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:35:00', '2023-04-23 08:35:00'),
(330, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:35:00', '2023-04-23 08:35:00'),
(331, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:41:20', '2023-04-23 08:41:20'),
(332, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:42:11', '2023-04-23 08:42:11'),
(333, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:42:40', '2023-04-23 08:42:40'),
(334, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 08:42:59', '2023-04-23 08:42:59'),
(335, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:14:43', '2023-04-23 10:14:43'),
(336, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:14:53', '2023-04-23 10:14:53'),
(337, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:15:10', '2023-04-23 10:15:10'),
(338, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:15:52', '2023-04-23 10:15:52'),
(339, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:22:21', '2023-04-23 10:22:21'),
(340, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:40:48', '2023-04-23 10:40:48'),
(341, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:41:54', '2023-04-23 10:41:54'),
(342, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:42:45', '2023-04-23 10:42:45'),
(343, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:42:49', '2023-04-23 10:42:49'),
(344, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:42:59', '2023-04-23 10:42:59'),
(345, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:43:09', '2023-04-23 10:43:09'),
(346, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:50:48', '2023-04-23 10:50:48'),
(347, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-04-23 10:51:03', '2023-04-23 10:51:03'),
(348, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:51:03', '2023-04-23 10:51:03'),
(349, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:56:20', '2023-04-23 10:56:20'),
(350, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2023-04-23 10:56:23', '2023-04-23 10:56:23'),
(351, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:57:53', '2023-04-23 10:57:53'),
(352, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-04-23 10:58:03', '2023-04-23 10:58:03'),
(353, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:58:04', '2023-04-23 10:58:04'),
(354, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-04-23 10:58:13', '2023-04-23 10:58:13'),
(355, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 10:58:14', '2023-04-23 10:58:14'),
(356, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-04-23 10:58:19', '2023-04-23 10:58:19'),
(357, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-04-23 10:58:25', '2023-04-23 10:58:25'),
(358, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-04-23 10:58:51', '2023-04-23 10:58:51'),
(359, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-04-23 10:59:57', '2023-04-23 10:59:57'),
(360, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:03:40', '2023-04-23 11:03:40'),
(361, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:03:41', '2023-04-23 11:03:41'),
(362, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:10:27', '2023-04-23 11:10:27'),
(363, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:10:40', '2023-04-23 11:10:40'),
(364, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-04-23 11:10:55', '2023-04-23 11:10:55'),
(365, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:10:55', '2023-04-23 11:10:55'),
(366, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:12:44', '2023-04-23 11:12:44'),
(367, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-04-23 11:12:51', '2023-04-23 11:12:51'),
(368, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:12:52', '2023-04-23 11:12:52'),
(369, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:13:03', '2023-04-23 11:13:03'),
(370, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 11:27:22', '2023-04-23 11:27:22'),
(371, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:07:10', '2023-04-23 12:07:10'),
(372, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-04-23 12:09:44', '2023-04-23 12:09:44'),
(373, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:09:45', '2023-04-23 12:09:45'),
(374, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:12:31', '2023-04-23 12:12:31'),
(375, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:19:07', '2023-04-23 12:19:07'),
(376, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2023-04-23 12:19:11', '2023-04-23 12:19:11'),
(377, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:19:27', '2023-04-23 12:19:27'),
(378, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:22:13', '2023-04-23 12:22:13'),
(379, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2023-04-23 12:22:26', '2023-04-23 12:22:26'),
(380, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:22:37', '2023-04-23 12:22:37'),
(381, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:25:02', '2023-04-23 12:25:02'),
(382, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:25:17', '2023-04-23 12:25:17'),
(383, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:25:54', '2023-04-23 12:25:54'),
(384, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:26:05', '2023-04-23 12:26:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(385, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:27:41', '2023-04-23 12:27:41'),
(386, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:27:45', '2023-04-23 12:27:45'),
(387, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2023-04-23 12:27:51', '2023-04-23 12:27:51'),
(388, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 12:28:08', '2023-04-23 12:28:08'),
(389, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:28:16', '2023-04-23 12:28:16'),
(390, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ar\":null}}', '2023-04-23 12:31:21', '2023-04-23 12:31:21'),
(391, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:21', '2023-04-23 12:31:21'),
(392, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"az\":null}}', '2023-04-23 12:31:24', '2023-04-23 12:31:24'),
(393, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:24', '2023-04-23 12:31:24'),
(394, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"bn\":null}}', '2023-04-23 12:31:26', '2023-04-23 12:31:26'),
(395, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:26', '2023-04-23 12:31:26'),
(396, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"de\":null}}', '2023-04-23 12:31:28', '2023-04-23 12:31:28'),
(397, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:28', '2023-04-23 12:31:28'),
(398, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"en\":null}}', '2023-04-23 12:31:29', '2023-04-23 12:31:29'),
(399, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:29', '2023-04-23 12:31:29'),
(400, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"es\":null}}', '2023-04-23 12:31:30', '2023-04-23 12:31:30'),
(401, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:30', '2023-04-23 12:31:30'),
(402, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"fa\":null}}', '2023-04-23 12:31:32', '2023-04-23 12:31:32'),
(403, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:32', '2023-04-23 12:31:32'),
(404, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"fr\":null}}', '2023-04-23 12:31:33', '2023-04-23 12:31:33'),
(405, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:33', '2023-04-23 12:31:33'),
(406, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"he\":null}}', '2023-04-23 12:31:34', '2023-04-23 12:31:34'),
(407, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:35', '2023-04-23 12:31:35'),
(408, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"id\":null}}', '2023-04-23 12:31:36', '2023-04-23 12:31:36'),
(409, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:36', '2023-04-23 12:31:36'),
(410, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ja\":null}}', '2023-04-23 12:31:37', '2023-04-23 12:31:37'),
(411, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:37', '2023-04-23 12:31:37'),
(412, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ko\":null}}', '2023-04-23 12:31:38', '2023-04-23 12:31:38'),
(413, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:39', '2023-04-23 12:31:39'),
(414, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ms\":null}}', '2023-04-23 12:31:40', '2023-04-23 12:31:40'),
(415, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:40', '2023-04-23 12:31:40'),
(416, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"nl\":null}}', '2023-04-23 12:31:41', '2023-04-23 12:31:41'),
(417, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:41', '2023-04-23 12:31:41'),
(418, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"pl\":null}}', '2023-04-23 12:31:42', '2023-04-23 12:31:42'),
(419, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:43', '2023-04-23 12:31:43'),
(420, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"pt\":null}}', '2023-04-23 12:31:44', '2023-04-23 12:31:44'),
(421, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:44', '2023-04-23 12:31:44'),
(422, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"pt-BR\":null}}', '2023-04-23 12:31:45', '2023-04-23 12:31:45'),
(423, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:45', '2023-04-23 12:31:45'),
(424, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ru\":null}}', '2023-04-23 12:31:46', '2023-04-23 12:31:46'),
(425, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:47', '2023-04-23 12:31:47'),
(426, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"tr\":null}}', '2023-04-23 12:31:48', '2023-04-23 12:31:48'),
(427, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:48', '2023-04-23 12:31:48'),
(428, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ur\":null}}', '2023-04-23 12:31:50', '2023-04-23 12:31:50'),
(429, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:50', '2023-04-23 12:31:50'),
(430, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"zh-CN\":null}}', '2023-04-23 12:31:51', '2023-04-23 12:31:51'),
(431, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:52', '2023-04-23 12:31:52'),
(432, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"zh-TW\":null}}', '2023-04-23 12:31:52', '2023-04-23 12:31:52'),
(433, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:53', '2023-04-23 12:31:53'),
(434, 1, 'admin/translations/locales/add', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"new-locale\":\"en\"}', '2023-04-23 12:31:57', '2023-04-23 12:31:57'),
(435, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:31:58', '2023-04-23 12:31:58'),
(436, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"de\":null}}', '2023-04-23 12:32:05', '2023-04-23 12:32:05'),
(437, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:05', '2023-04-23 12:32:05'),
(438, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"bn\":null}}', '2023-04-23 12:32:08', '2023-04-23 12:32:08'),
(439, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:08', '2023-04-23 12:32:08'),
(440, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"az\":null}}', '2023-04-23 12:32:09', '2023-04-23 12:32:09'),
(441, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:09', '2023-04-23 12:32:09'),
(442, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ar\":null}}', '2023-04-23 12:32:11', '2023-04-23 12:32:11'),
(443, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:12', '2023-04-23 12:32:12'),
(444, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"es\":null}}', '2023-04-23 12:32:13', '2023-04-23 12:32:13'),
(445, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:14', '2023-04-23 12:32:14'),
(446, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"fa\":null}}', '2023-04-23 12:32:15', '2023-04-23 12:32:15'),
(447, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:15', '2023-04-23 12:32:15'),
(448, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"fr\":null}}', '2023-04-23 12:32:16', '2023-04-23 12:32:16'),
(449, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:16', '2023-04-23 12:32:16'),
(450, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"he\":null}}', '2023-04-23 12:32:17', '2023-04-23 12:32:17'),
(451, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:18', '2023-04-23 12:32:18'),
(452, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"id\":null}}', '2023-04-23 12:32:19', '2023-04-23 12:32:19'),
(453, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:19', '2023-04-23 12:32:19'),
(454, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ja\":null}}', '2023-04-23 12:32:20', '2023-04-23 12:32:20'),
(455, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:21', '2023-04-23 12:32:21'),
(456, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ko\":null}}', '2023-04-23 12:32:22', '2023-04-23 12:32:22'),
(457, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:22', '2023-04-23 12:32:22'),
(458, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ms\":null}}', '2023-04-23 12:32:23', '2023-04-23 12:32:23'),
(459, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:23', '2023-04-23 12:32:23'),
(460, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"nl\":null}}', '2023-04-23 12:32:24', '2023-04-23 12:32:24'),
(461, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:25', '2023-04-23 12:32:25'),
(462, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"pl\":null}}', '2023-04-23 12:32:26', '2023-04-23 12:32:26'),
(463, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:26', '2023-04-23 12:32:26'),
(464, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"pt\":null}}', '2023-04-23 12:32:27', '2023-04-23 12:32:27'),
(465, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:27', '2023-04-23 12:32:27'),
(466, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"pt-BR\":null}}', '2023-04-23 12:32:28', '2023-04-23 12:32:28'),
(467, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:29', '2023-04-23 12:32:29'),
(468, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ru\":null}}', '2023-04-23 12:32:31', '2023-04-23 12:32:31'),
(469, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:31', '2023-04-23 12:32:31'),
(470, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"tr\":null}}', '2023-04-23 12:32:33', '2023-04-23 12:32:33'),
(471, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:33', '2023-04-23 12:32:33'),
(472, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"ur\":null}}', '2023-04-23 12:32:35', '2023-04-23 12:32:35'),
(473, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:36', '2023-04-23 12:32:36'),
(474, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"zh-CN\":null}}', '2023-04-23 12:32:37', '2023-04-23 12:32:37'),
(475, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:37', '2023-04-23 12:32:37'),
(476, 1, 'admin/translations/locales/remove', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"remove-locale\":{\"zh-TW\":null}}', '2023-04-23 12:32:38', '2023-04-23 12:32:38'),
(477, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:32:38', '2023-04-23 12:32:38'),
(478, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:33:26', '2023-04-23 12:33:26'),
(479, 1, 'admin/translations/find', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:34:42', '2023-04-23 12:34:42'),
(480, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:34:46', '2023-04-23 12:34:46'),
(481, 1, 'admin/translations/view/_json', 'GET', '127.0.0.1', '[]', '2023-04-23 12:34:48', '2023-04-23 12:34:48'),
(482, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:46:23', '2023-04-23 12:46:23'),
(483, 1, 'admin/translations/find', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:46:26', '2023-04-23 12:46:26'),
(484, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 12:46:28', '2023-04-23 12:46:28'),
(485, 1, 'admin/translations/view/_json', 'GET', '127.0.0.1', '[]', '2023-04-23 12:46:30', '2023-04-23 12:46:30'),
(486, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|About me\",\"value\":\"\\u041f\\u0440\\u043e \\u043c\\u0435\\u043d\\u0435\",\"pk\":\"2\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:48:17', '2023-04-23 12:48:17'),
(487, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Contact\",\"value\":\"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0438\",\"pk\":\"4\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:48:27', '2023-04-23 12:48:27'),
(488, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Contact Me\",\"value\":\"\\u0417\\u0432\'\\u044f\\u0437\\u043e\\u043a \\u0437\\u0456 \\u043c\\u043d\\u043e\\u044e\",\"pk\":\"15\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:48:46', '2023-04-23 12:48:46'),
(489, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Description\",\"value\":\"\\u041e\\u043f\\u0438\\u0441\",\"pk\":\"11\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:48:53', '2023-04-23 12:48:53'),
(490, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Download\",\"value\":\"\\u0417\\u0430\\u0432\\u0430\\u043d\\u0442\\u0430\\u0436\\u0438\\u0442\\u0438\",\"pk\":\"5\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:48:59', '2023-04-23 12:48:59'),
(491, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Experience\",\"value\":\"\\u0414\\u043e\\u0441\\u0432\\u0456\\u0434\",\"pk\":\"19\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:49:09', '2023-04-23 12:49:09'),
(492, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|I\'M\",\"value\":\"\\u041c\\u0435\\u043d\\u0435 \\u0437\\u0432\\u0430\\u0442\\u0438\",\"pk\":\"14\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:49:25', '2023-04-23 12:49:25'),
(493, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Images\",\"value\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438\",\"pk\":\"12\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:49:42', '2023-04-23 12:49:42'),
(494, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Language\",\"value\":\"\\u041c\\u043e\\u0432\\u0430\",\"pk\":\"9\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:49:48', '2023-04-23 12:49:48'),
(495, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|My Contacts\",\"value\":\"\\u041c\\u043e\\u0457 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0438\",\"pk\":\"25\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:50:04', '2023-04-23 12:50:04'),
(496, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|My skills\",\"value\":\"\\u041c\\u043e\\u0457 \\u043d\\u0430\\u0432\\u0438\\u0447\\u043a\\u0438\",\"pk\":\"16\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:50:50', '2023-04-23 12:50:50'),
(497, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Name\",\"value\":\"\\u0424\\u0406\\u041e\",\"pk\":\"20\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:52:02', '2023-04-23 12:52:02'),
(498, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Name\",\"value\":\"\\u0406\\u043c\'\\u044f\",\"pk\":\"20\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:52:28', '2023-04-23 12:52:28'),
(499, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Phone\",\"value\":\"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0443\",\"pk\":\"22\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:52:36', '2023-04-23 12:52:36'),
(500, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Portfilo\",\"value\":\"\\u041f\\u043e\\u0440\\u0442\\u0444\\u043e\\u043b\\u0456\\u043e\",\"pk\":\"17\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:52:43', '2023-04-23 12:52:43'),
(501, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Portfolio\",\"value\":\"\\u041f\\u043e\\u0440\\u0442\\u0444\\u043e\\u043b\\u0456\\u043e\",\"pk\":\"3\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:52:50', '2023-04-23 12:52:50'),
(502, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"en|Portfilo\",\"value\":\"Portfolio\",\"pk\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:52:57', '2023-04-23 12:52:57'),
(503, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Projects\",\"value\":\"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\",\"pk\":\"7\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:53:05', '2023-04-23 12:53:05'),
(504, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Projects witch tag\",\"value\":\"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438 \\u0437 \\u0442\\u0435\\u0433\\u043e\\u043c\",\"pk\":\"13\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:53:15', '2023-04-23 12:53:15'),
(505, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Search\",\"value\":\"\\u041f\\u043e\\u0448\\u0443\\u043a\",\"pk\":\"6\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:53:21', '2023-04-23 12:53:21'),
(506, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|See More\",\"value\":\"\\u0414\\u0438\\u0432. \\u0431\\u0456\\u043b\\u044c\\u0448\\u0435\",\"pk\":\"10\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:53:29', '2023-04-23 12:53:29'),
(507, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Send\",\"value\":\"\\u0412\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u0438\",\"pk\":\"24\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:53:36', '2023-04-23 12:53:36'),
(508, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Tags\",\"value\":\"\\u0422\\u0435\\u0433\\u0438\",\"pk\":\"8\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:53:48', '2023-04-23 12:53:48'),
(509, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|View More\",\"value\":\"\\u0414\\u0438\\u0432\\u0438\\u0442\\u0438\\u0441\\u044f \\u0431\\u0456\\u043b\\u044c\\u0448\\u0435\",\"pk\":\"18\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:54:08', '2023-04-23 12:54:08'),
(510, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|or\",\"value\":\"\\u0430\\u0431\\u043e\",\"pk\":\"23\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:54:16', '2023-04-23 12:54:16'),
(511, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"en|\\u0417\\u0430\\u0432\\u0430\\u043d\\u0442\\u0430\\u0436\\u0435\\u043d\\u043d\\u044f\",\"value\":\"Loading\",\"pk\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:54:29', '2023-04-23 12:54:29'),
(512, 1, 'admin/translations/publish/_json', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:54:35', '2023-04-23 12:54:35'),
(513, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|See More\",\"value\":\"\\u0414\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u0456\\u0448\\u0435\",\"pk\":\"10\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:56:21', '2023-04-23 12:56:21'),
(514, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|I\'M\",\"value\":\"\\u042f\",\"pk\":\"14\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:57:30', '2023-04-23 12:57:30'),
(515, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Contact Me\",\"value\":\"\\u0417\\u0432\'\\u044f\\u0437\\u0430\\u0442\\u0438\\u0441\\u044f\",\"pk\":\"15\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:58:52', '2023-04-23 12:58:52'),
(516, 1, 'admin/translations/publish/_json', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 12:58:58', '2023-04-23 12:58:58'),
(517, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Contact Me\",\"value\":\"\\u0417\\u0432\'\\u044f\\u0436\\u0456\\u0442\\u044c\\u0441\\u044f \\u0437\\u0456 \\u043c\\u043d\\u043e\\u044e\",\"pk\":\"15\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:00:06', '2023-04-23 13:00:06'),
(518, 1, 'admin/translations/publish/_json', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:00:22', '2023-04-23 13:00:22'),
(519, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 13:03:22', '2023-04-23 13:03:22'),
(520, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2023-04-23 13:03:35', '2023-04-23 13:03:35'),
(521, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:03:40', '2023-04-23 13:03:40'),
(522, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Translations\",\"icon\":\"icon-globe-americas\",\"uri\":\"admin\\/translation\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:05:51', '2023-04-23 13:05:51'),
(523, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:05:51', '2023-04-23 13:05:51'),
(524, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:05:56', '2023-04-23 13:05:56'),
(525, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:06:14', '2023-04-23 13:06:14'),
(526, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 13:06:17', '2023-04-23 13:06:17'),
(527, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Translations\",\"icon\":\"icon-globe-americas\",\"uri\":\"\\/admin\\/translation\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"_method\":\"PUT\"}', '2023-04-23 13:06:27', '2023-04-23 13:06:27'),
(528, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:06:27', '2023-04-23 13:06:27'),
(529, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 13:06:32', '2023-04-23 13:06:32'),
(530, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Translations\",\"icon\":\"icon-globe-americas\",\"uri\":\"translation\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"_method\":\"PUT\"}', '2023-04-23 13:06:44', '2023-04-23 13:06:44'),
(531, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:06:45', '2023-04-23 13:06:45'),
(532, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:06:55', '2023-04-23 13:06:55'),
(533, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:10', '2023-04-23 13:07:10'),
(534, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:12', '2023-04-23 13:07:12'),
(535, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Translations\",\"icon\":\"icon-globe-americas\",\"uri\":\"translations\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"_method\":\"PUT\"}', '2023-04-23 13:07:15', '2023-04-23 13:07:15'),
(536, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:15', '2023-04-23 13:07:15'),
(537, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:18', '2023-04-23 13:07:18'),
(538, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:27', '2023-04-23 13:07:27'),
(539, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:29', '2023-04-23 13:07:29'),
(540, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:35', '2023-04-23 13:07:35'),
(541, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:40', '2023-04-23 13:07:40'),
(542, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:52', '2023-04-23 13:07:52'),
(543, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:54', '2023-04-23 13:07:54'),
(544, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 13:07:57', '2023-04-23 13:07:57'),
(545, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:08:18', '2023-04-23 13:08:18'),
(546, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 13:08:28', '2023-04-23 13:08:28'),
(547, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Translations\",\"icon\":\"icon-globe-americas\",\"uri\":\"translations\",\"roles\":[null],\"permission\":null,\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"_method\":\"PUT\"}', '2023-04-23 13:08:44', '2023-04-23 13:08:44'),
(548, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:08:45', '2023-04-23 13:08:45'),
(549, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:08:48', '2023-04-23 13:08:48'),
(550, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 13:08:51', '2023-04-23 13:08:51'),
(551, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:09:03', '2023-04-23 13:09:03'),
(552, 1, 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:09:16', '2023-04-23 13:09:16'),
(553, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:09:16', '2023-04-23 13:09:16'),
(554, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 13:09:19', '2023-04-23 13:09:19'),
(555, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 13:09:24', '2023-04-23 13:09:24'),
(556, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2023-04-23 13:09:50', '2023-04-23 13:09:50'),
(557, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2023-04-23 13:10:19', '2023-04-23 13:10:19'),
(558, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2023-04-23 13:10:22', '2023-04-23 13:10:22'),
(559, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2023-04-23 13:10:52', '2023-04-23 13:10:52'),
(560, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 13:10:58', '2023-04-23 13:10:58'),
(561, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 13:12:00', '2023-04-23 13:12:00'),
(562, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 13:50:03', '2023-04-23 13:50:03'),
(563, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 13:50:05', '2023-04-23 13:50:05'),
(564, 1, 'admin/translations/view/_json', 'GET', '127.0.0.1', '[]', '2023-04-23 13:50:10', '2023-04-23 13:50:10'),
(565, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 13:50:14', '2023-04-23 13:50:14'),
(566, 1, 'admin/translations/find', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:50:16', '2023-04-23 13:50:16'),
(567, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-23 13:50:18', '2023-04-23 13:50:18'),
(568, 1, 'admin/translations/view/_json', 'GET', '127.0.0.1', '[]', '2023-04-23 13:50:21', '2023-04-23 13:50:21'),
(569, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Resume\",\"value\":\"\\u0420\\u0435\\u0437\\u044e\\u043c\\u0435\",\"pk\":\"30\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:50:33', '2023-04-23 13:50:33'),
(570, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|More project\",\"value\":\"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\",\"pk\":\"28\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:50:47', '2023-04-23 13:50:47'),
(571, 1, 'admin/translations/delete/_json/Hvosting', 'POST', '127.0.0.1', '{\"id\":\"Hvosting\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:50:59', '2023-04-23 13:50:59'),
(572, 1, 'admin/translations/publish/_json', 'POST', '127.0.0.1', '{\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 13:51:12', '2023-04-23 13:51:12'),
(573, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:21:44', '2023-04-23 14:21:44'),
(574, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:22:22', '2023-04-23 14:22:22'),
(575, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:23:08', '2023-04-23 14:23:08'),
(576, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:24:24', '2023-04-23 14:24:24'),
(577, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:25:37', '2023-04-23 14:25:37'),
(578, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:27:37', '2023-04-23 14:27:37'),
(579, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:33:30', '2023-04-23 14:33:30'),
(580, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:34:29', '2023-04-23 14:34:29'),
(581, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:35:07', '2023-04-23 14:35:07'),
(582, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:40:40', '2023-04-23 14:40:40'),
(583, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:45:55', '2023-04-23 14:45:55'),
(584, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:46:42', '2023-04-23 14:46:42'),
(585, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 14:46:45', '2023-04-23 14:46:45'),
(586, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2023-04-23 16:09:40', '2023-04-23 16:09:40'),
(587, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:10:05', '2023-04-23 16:10:05'),
(588, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"skills\",\"model_name\":\"App\\\\Models\\\\Skills\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SkillsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"tag\",\"type\":\"string\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"label\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"img\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:14:17', '2023-04-23 16:14:17'),
(589, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:14:21', '2023-04-23 16:14:21'),
(590, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2023-04-23 16:18:31', '2023-04-23 16:18:31'),
(591, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 16:18:43', '2023-04-23 16:18:43'),
(592, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Skills\",\"icon\":\"icon-clipboard-list\",\"uri\":\"skills\",\"roles\":[null],\"permission\":null,\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:19:31', '2023-04-23 16:19:31'),
(593, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 16:19:32', '2023-04-23 16:19:32'),
(594, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 16:19:35', '2023-04-23 16:19:35'),
(595, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"17\\\"}]\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:19:47', '2023-04-23 16:19:47'),
(596, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 16:19:48', '2023-04-23 16:19:48'),
(597, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 16:19:52', '2023-04-23 16:19:52'),
(598, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 16:19:54', '2023-04-23 16:19:54'),
(599, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:19:56', '2023-04-23 16:19:56'),
(600, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 16:20:04', '2023-04-23 16:20:04'),
(601, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 16:22:50', '2023-04-23 16:22:50'),
(602, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"php\",\"label\":\"PHP\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:23:37', '2023-04-23 16:23:37'),
(603, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:23:37', '2023-04-23 16:23:37'),
(604, 1, 'admin/skills/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 16:24:20', '2023-04-23 16:24:20'),
(605, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:24:25', '2023-04-23 16:24:25'),
(606, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:25:59', '2023-04-23 16:25:59'),
(607, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:27:53', '2023-04-23 16:27:53'),
(608, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:28:26', '2023-04-23 16:28:26'),
(609, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:28:46', '2023-04-23 16:28:46'),
(610, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:29:05', '2023-04-23 16:29:05'),
(611, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:29:27', '2023-04-23 16:29:27'),
(612, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:29:48', '2023-04-23 16:29:48'),
(613, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:30:12', '2023-04-23 16:30:12'),
(614, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:39:12', '2023-04-23 16:39:12'),
(615, 1, 'admin/skills/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 16:39:15', '2023-04-23 16:39:15'),
(616, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:39:18', '2023-04-23 16:39:18'),
(617, 1, 'admin/skills/1', 'GET', '127.0.0.1', '[]', '2023-04-23 16:39:19', '2023-04-23 16:39:19'),
(618, 1, 'admin/skills/1', 'GET', '127.0.0.1', '[]', '2023-04-23 16:40:12', '2023-04-23 16:40:12'),
(619, 1, 'admin/skills/1', 'GET', '127.0.0.1', '[]', '2023-04-23 16:40:42', '2023-04-23 16:40:42'),
(620, 1, 'admin/skills/1', 'GET', '127.0.0.1', '[]', '2023-04-23 16:41:58', '2023-04-23 16:41:58'),
(621, 1, 'admin/skills/1', 'GET', '127.0.0.1', '[]', '2023-04-23 16:42:15', '2023-04-23 16:42:15'),
(622, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:42:21', '2023-04-23 16:42:21'),
(623, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:43:03', '2023-04-23 16:43:03'),
(624, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 16:43:13', '2023-04-23 16:43:13'),
(625, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:43:16', '2023-04-23 16:43:16'),
(626, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2023-04-23 16:44:57', '2023-04-23 16:44:57'),
(627, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 16:45:02', '2023-04-23 16:45:02'),
(628, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:45:09', '2023-04-23 16:45:09'),
(629, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"skills\",\"model_name\":\"App\\\\Models\\\\Skills\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SkillsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tag\",\"type\":\"string\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"parent_id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"order\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:47:19', '2023-04-23 16:47:19'),
(630, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:47:20', '2023-04-23 16:47:20'),
(631, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"skills\",\"model_name\":\"App\\\\Models\\\\Skills\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SkillsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tag\",\"type\":\"string\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"parent_id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"order\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:48:27', '2023-04-23 16:48:27'),
(632, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:48:28', '2023-04-23 16:48:28'),
(633, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 16:48:31', '2023-04-23 16:48:31'),
(634, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:49:34', '2023-04-23 16:49:34'),
(635, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:51:13', '2023-04-23 16:51:13'),
(636, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 16:51:17', '2023-04-23 16:51:17'),
(637, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"title\":\"php\",\"tag\":\"PHP\",\"parent_id\":\"0\",\"order\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:51:37', '2023-04-23 16:51:37'),
(638, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:51:37', '2023-04-23 16:51:37'),
(639, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Skills\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchEdit\",\"_key\":\"1\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:51:52', '2023-04-23 16:51:52'),
(640, 1, 'admin/skills/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 16:51:54', '2023-04-23 16:51:54'),
(641, 1, 'admin/skills/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 16:51:54', '2023-04-23 16:51:54'),
(642, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 16:52:04', '2023-04-23 16:52:04'),
(643, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:57:33', '2023-04-23 16:57:33'),
(644, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"skills\",\"model_name\":\"App\\\\Models\\\\Skills\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SkillsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"2\":{\"name\":\"image\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"0\":{\"name\":\"tag\",\"type\":\"string\",\"key\":\"unique\",\"default\":null,\"comment\":null},\"1\":{\"name\":\"label\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"order\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 16:59:38', '2023-04-23 16:59:38'),
(645, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:59:39', '2023-04-23 16:59:39'),
(646, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 16:59:59', '2023-04-23 16:59:59'),
(647, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-23 17:00:02', '2023-04-23 17:00:02'),
(648, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:00:05', '2023-04-23 17:00:05'),
(649, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:00:07', '2023-04-23 17:00:07'),
(650, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:01:06', '2023-04-23 17:01:06'),
(651, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"php\",\"label\":\"PHP\",\"order\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:01:57', '2023-04-23 17:01:57'),
(652, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:01:57', '2023-04-23 17:01:57'),
(653, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:02:28', '2023-04-23 17:02:28'),
(654, 1, 'admin/skills/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"1\"}', '2023-04-23 17:02:36', '2023-04-23 17:02:36'),
(655, 1, 'admin/skills/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"0\"}', '2023-04-23 17:02:39', '2023-04-23 17:02:39'),
(656, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:03:01', '2023-04-23 17:03:01'),
(657, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:04:27', '2023-04-23 17:04:27'),
(658, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"tag\":\"php\"}', '2023-04-23 17:04:39', '2023-04-23 17:04:39'),
(659, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"tag\":\"123\"}', '2023-04-23 17:04:42', '2023-04-23 17:04:42'),
(660, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:04:44', '2023-04-23 17:04:44'),
(661, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:05:12', '2023-04-23 17:05:12'),
(662, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:05:58', '2023-04-23 17:05:58'),
(663, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:06:02', '2023-04-23 17:06:02'),
(664, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:06:22', '2023-04-23 17:06:22'),
(665, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:06:25', '2023-04-23 17:06:25'),
(666, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:06:34', '2023-04-23 17:06:34'),
(667, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:08:02', '2023-04-23 17:08:02'),
(668, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_scope_\":\"new\"}', '2023-04-23 17:08:12', '2023-04-23 17:08:12'),
(669, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:08:15', '2023-04-23 17:08:15'),
(670, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:12:54', '2023-04-23 17:12:54'),
(671, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"desc\"}}', '2023-04-23 17:13:03', '2023-04-23 17:13:03'),
(672, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"asc\"}}', '2023-04-23 17:13:05', '2023-04-23 17:13:05'),
(673, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:18:05', '2023-04-23 17:18:05'),
(674, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"phpmyadmin\",\"label\":\"phpMyAdmin\",\"order\":\"1\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:18:46', '2023-04-23 17:18:46'),
(675, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:18:47', '2023-04-23 17:18:47'),
(676, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"desc\"}}', '2023-04-23 17:18:51', '2023-04-23 17:18:51'),
(677, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:19:18', '2023-04-23 17:19:18'),
(678, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"MySQL\",\"label\":\"MySQL\",\"order\":\"2\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:20:07', '2023-04-23 17:20:07'),
(679, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:20:08', '2023-04-23 17:20:08'),
(680, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:20:36', '2023-04-23 17:20:36'),
(681, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:20:58', '2023-04-23 17:20:58'),
(682, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"laravel\",\"label\":\"laravel\",\"order\":\"3\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:21:15', '2023-04-23 17:21:15'),
(683, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:21:15', '2023-04-23 17:21:15'),
(684, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:21:49', '2023-04-23 17:21:49'),
(685, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"html-and-css\",\"label\":\"HTML & CSS\",\"order\":\"5\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:22:21', '2023-04-23 17:22:21'),
(686, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:22:22', '2023-04-23 17:22:22'),
(687, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:22:36', '2023-04-23 17:22:36'),
(688, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"js\",\"label\":\"Java Script\",\"order\":\"6\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:22:58', '2023-04-23 17:22:58'),
(689, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:22:58', '2023-04-23 17:22:58'),
(690, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:23:14', '2023-04-23 17:23:14'),
(691, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"jq\",\"label\":\"JQuery\",\"order\":\"7\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:23:40', '2023-04-23 17:23:40'),
(692, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:23:40', '2023-04-23 17:23:40'),
(693, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:23:42', '2023-04-23 17:23:42'),
(694, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"bootstrap\",\"label\":\"Bootstrap\",\"order\":\"8\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:24:03', '2023-04-23 17:24:03'),
(695, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:24:03', '2023-04-23 17:24:03'),
(696, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"4\"}', '2023-04-23 17:24:34', '2023-04-23 17:24:34'),
(697, 1, 'admin/skills/6', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"5\"}', '2023-04-23 17:24:41', '2023-04-23 17:24:41'),
(698, 1, 'admin/skills/7', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"6\"}', '2023-04-23 17:24:44', '2023-04-23 17:24:44'),
(699, 1, 'admin/skills/8', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"7\"}', '2023-04-23 17:24:46', '2023-04-23 17:24:46'),
(700, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:25:31', '2023-04-23 17:25:31'),
(701, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"vue\",\"label\":\"Vue.js\",\"order\":\"8\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:25:44', '2023-04-23 17:25:44'),
(702, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:25:45', '2023-04-23 17:25:45'),
(703, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:25:49', '2023-04-23 17:25:49'),
(704, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"git\",\"label\":\"Git\",\"order\":\"9\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:26:16', '2023-04-23 17:26:16'),
(705, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:26:16', '2023-04-23 17:26:16'),
(706, 1, 'admin/skills/4', 'GET', '127.0.0.1', '[]', '2023-04-23 17:26:24', '2023-04-23 17:26:24'),
(707, 1, 'admin/skills/4', 'GET', '127.0.0.1', '[]', '2023-04-23 17:26:39', '2023-04-23 17:26:39');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(708, 1, 'admin/skills/4', 'GET', '127.0.0.1', '[]', '2023-04-23 17:26:51', '2023-04-23 17:26:51'),
(709, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:26:58', '2023-04-23 17:26:58'),
(710, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2023-04-23 17:27:06', '2023-04-23 17:27:06'),
(711, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_columns_\":\"label,order,tag\"}', '2023-04-23 17:27:56', '2023-04-23 17:27:56'),
(712, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:02', '2023-04-23 17:28:02'),
(713, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:19', '2023-04-23 17:28:19'),
(714, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:22', '2023-04-23 17:28:22'),
(715, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:26', '2023-04-23 17:28:26'),
(716, 1, 'admin/auth/menu/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:28:30', '2023-04-23 17:28:30'),
(717, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:31', '2023-04-23 17:28:31'),
(718, 1, 'admin/auth/menu/19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:28:33', '2023-04-23 17:28:33'),
(719, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:34', '2023-04-23 17:28:34'),
(720, 1, 'admin/auth/menu/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:28:37', '2023-04-23 17:28:37'),
(721, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:37', '2023-04-23 17:28:37'),
(722, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:28:40', '2023-04-23 17:28:40'),
(723, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:41', '2023-04-23 17:28:41'),
(724, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:44', '2023-04-23 17:28:44'),
(725, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-23 17:28:46', '2023-04-23 17:28:46'),
(726, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 17:43:09', '2023-04-23 17:43:09'),
(727, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"projects\",\"model_name\":\"App\\\\Models\\\\Projects\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"titule_image\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"title\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"tags\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"short_description\",\"type\":\"text\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"description\",\"type\":\"text\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"images\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"order\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:46:36', '2023-04-23 17:46:36'),
(728, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-23 17:46:39', '2023-04-23 17:46:39'),
(729, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:46:57', '2023-04-23 17:46:57'),
(730, 1, 'admin/auth/menu/21/edit', 'GET', '127.0.0.1', '[]', '2023-04-23 17:47:08', '2023-04-23 17:47:08'),
(731, 1, 'admin/auth/menu/21', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Projects\",\"icon\":\"icon-book-open\",\"uri\":\"projects\",\"roles\":[null],\"permission\":null,\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"_method\":\"PUT\"}', '2023-04-23 17:47:37', '2023-04-23 17:47:37'),
(732, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:47:38', '2023-04-23 17:47:38'),
(733, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:47:42', '2023-04-23 17:47:42'),
(734, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 17:47:57', '2023-04-23 17:47:57'),
(735, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:47:57', '2023-04-23 17:47:57'),
(736, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-23 17:48:02', '2023-04-23 17:48:02'),
(737, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-23 17:48:06', '2023-04-23 17:48:06'),
(738, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:48:08', '2023-04-23 17:48:08'),
(739, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:51:36', '2023-04-23 17:51:36'),
(740, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:52:02', '2023-04-23 17:52:02'),
(741, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:57:27', '2023-04-23 17:57:27'),
(742, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 17:59:02', '2023-04-23 17:59:02'),
(743, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"title\":\"Capital HLD\",\"tags\":[\"php\",\"laravel\",\"phpmyadmin\",\"mysql\",\"js\",\"jq\",\"html-and-css\",\"vue\",\"git\",null],\"search_terms\":null,\"short_description\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;...<\\/p>\",\"description\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;, \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043d\\u0430 \\u0446\\u044c\\u043e\\u043c\\u0443 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0454 2 \\u043c\\u043e\\u0432\\u0438: \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 \\u0456&nbsp;\\u209a\\u043e\\u0441\\u0456\\u0439\\u0441\\u044c\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"order\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 18:00:45', '2023-04-23 18:00:45'),
(744, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 18:00:46', '2023-04-23 18:00:46'),
(745, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 18:03:22', '2023-04-23 18:03:22'),
(746, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"title\":\"Capital HLD\",\"tags\":[\"php\",\"mysql\",\"laravel\",\"phpmyadmin\",\"vue\",\"js\",\"html-and-css\",\"git\",null],\"search_terms\":null,\"short_description\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;, \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043d\\u0430 \\u0446\\u044c\\u043e\\u043c\\u0443 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0454 2 \\u043c\\u043e\\u0432\\u0438: \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 \\u0456&nbsp;\\u209a\\u043e\\u0441\\u0456\\u0439\\u0441\\u044c\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"description\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;...<\\/p>\",\"order\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 18:04:40', '2023-04-23 18:04:40'),
(747, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 18:04:41', '2023-04-23 18:04:41'),
(748, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"title\":\"Capital HLD\",\"tags\":[\"git\",\"html-and-css\",\"js\",\"laravel\",\"mysql\",\"php\",\"phpmyadmin\",\"vue\",null],\"search_terms\":null,\"short_description\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;, \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043d\\u0430 \\u0446\\u044c\\u043e\\u043c\\u0443 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0454 2 \\u043c\\u043e\\u0432\\u0438: \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 \\u0456&nbsp;\\u209a\\u043e\\u0441\\u0456\\u0439\\u0441\\u044c\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"description\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;...<\\/p>\",\"order\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 18:14:17', '2023-04-23 18:14:17'),
(749, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 18:14:18', '2023-04-23 18:14:18'),
(750, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"title\":\"Capital HLD\",\"tags\":[\"git\",\"html-and-css\",\"js\",\"laravel\",\"mysql\",\"php\",\"phpmyadmin\",\"vue\",null],\"search_terms\":null,\"short_description\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;, \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043d\\u0430 \\u0446\\u044c\\u043e\\u043c\\u0443 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0454 2 \\u043c\\u043e\\u0432\\u0438: \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 \\u0456&nbsp;\\u209a\\u043e\\u0441\\u0456\\u0439\\u0441\\u044c\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"description\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;...<\\/p>\",\"order\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 18:16:48', '2023-04-23 18:16:48'),
(751, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-23 18:18:37', '2023-04-23 18:18:37'),
(752, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 18:18:40', '2023-04-23 18:18:40'),
(753, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"titule_image_file_del_\":\"new\\/demo.png,\",\"title\":\"sdfgsdfg\",\"tags\":[\"html-and-css\",\"js\",\"jq\",\"git\",\"bootstrap\",\"mysql\",\"php\",null],\"search_terms\":null,\"short_description\":\"<p>sdfgdsfg<\\/p>\",\"description\":\"<p>dsfgdsfg<\\/p>\",\"order\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\"}', '2023-04-23 18:19:25', '2023-04-23 18:19:25'),
(754, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 18:19:26', '2023-04-23 18:19:26'),
(755, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-23 18:20:22', '2023-04-23 18:20:22'),
(756, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"title\":\"sdgsdfg\",\"tags\":[\"html-and-css\",\"js\",\"jq\",\"laravel\",\"git\",\"mysql\",\"php\",\"phpmyadmin\",\"bootstrap\",\"vue\",null],\"search_terms\":null,\"short_description\":\"<p>sdfgsdfg<\\/p>\",\"description\":\"<p>sdfgsdfg<\\/p>\",\"order\":\"0\",\"_token\":\"BWIAKDW3PXdhGG8ls9P1KBA4tPgcvAd4A3heDM7F\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/projects\"}', '2023-04-23 18:20:41', '2023-04-23 18:20:41'),
(757, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-23 18:20:41', '2023-04-23 18:20:41'),
(758, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 06:01:48', '2023-04-24 06:01:48'),
(759, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 06:02:06', '2023-04-24 06:02:06'),
(760, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 06:02:18', '2023-04-24 06:02:18'),
(761, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"projects\",\"model_name\":\"App\\\\Models\\\\Project\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"tags\",\"type\":\"json\",\"key\":\"index\",\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:10:34', '2023-04-24 06:10:34'),
(762, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 06:10:35', '2023-04-24 06:10:35'),
(763, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"projects\",\"model_name\":\"App\\\\Models\\\\Project\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"tags\",\"type\":\"json\",\"key\":\"index\",\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:11:02', '2023-04-24 06:11:02'),
(764, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 06:11:03', '2023-04-24 06:11:03'),
(765, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 06:11:26', '2023-04-24 06:11:26'),
(766, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 06:11:29', '2023-04-24 06:11:29'),
(767, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:11:32', '2023-04-24 06:11:32'),
(768, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:13:25', '2023-04-24 06:13:25'),
(769, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"tags\":[\"10\",\"5\",\"6\",\"7\",null],\"search_terms\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:13:29', '2023-04-24 06:13:29'),
(770, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:13:30', '2023-04-24 06:13:30'),
(771, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"tags\":[\"10\",\"5\",\"6\",\"7\",null],\"search_terms\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:14:39', '2023-04-24 06:14:39'),
(772, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:14:40', '2023-04-24 06:14:40'),
(773, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:16:24', '2023-04-24 06:16:24'),
(774, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"tags\":[\"10\",\"5\",\"6\",\"7\",null],\"search_terms\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:16:30', '2023-04-24 06:16:30'),
(775, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:16:31', '2023-04-24 06:16:31'),
(776, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:16:54', '2023-04-24 06:16:54'),
(777, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"tags\":[\"5\",\"6\",\"7\",null],\"search_terms\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:16:59', '2023-04-24 06:16:59'),
(778, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 06:17:02', '2023-04-24 06:17:02'),
(779, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:17:04', '2023-04-24 06:17:04'),
(780, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:17:29', '2023-04-24 06:17:29'),
(781, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"tags\":[\"10\",\"5\",\"6\",null],\"search_terms\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:17:33', '2023-04-24 06:17:33'),
(782, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:17:33', '2023-04-24 06:17:33'),
(783, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"tags\":[\"10\",\"5\",\"6\",null],\"search_terms\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:18:16', '2023-04-24 06:18:16'),
(784, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:18:17', '2023-04-24 06:18:17'),
(785, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:19:38', '2023-04-24 06:19:38'),
(786, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"tags\":[\"5\",\"10\",\"6\",\"7\",null],\"search_terms\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:19:43', '2023-04-24 06:19:43'),
(787, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 06:21:56', '2023-04-24 06:21:56'),
(788, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 06:21:58', '2023-04-24 06:21:58'),
(789, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"tags\":[\"1\",\"8\",\"5\",\"2\",null],\"search_terms\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:22:09', '2023-04-24 06:22:09'),
(790, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 06:24:24', '2023-04-24 06:24:24'),
(791, 1, 'admin/auth/menu/22', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:24:29', '2023-04-24 06:24:29'),
(792, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 06:24:30', '2023-04-24 06:24:30'),
(793, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 06:24:32', '2023-04-24 06:24:32'),
(794, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 06:24:32', '2023-04-24 06:24:32'),
(795, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 06:24:35', '2023-04-24 06:24:35'),
(796, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-04-24 07:47:54', '2023-04-24 07:47:54'),
(797, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 07:47:57', '2023-04-24 07:47:57'),
(798, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 07:48:01', '2023-04-24 07:48:01'),
(799, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"projects\",\"model_name\":\"App\\\\Models\\\\Project\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":{\"0\":{\"name\":\"titule_img\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"order\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":null},\"2\":{\"name\":\"name_en\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"name_uk\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"short_desc_en\",\"type\":\"text\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"short_desc_uk\",\"type\":\"text\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"desc_en\",\"type\":\"text\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"desc_uk\",\"type\":\"text\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 07:51:00', '2023-04-24 07:51:00'),
(800, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 07:51:00', '2023-04-24 07:51:00'),
(801, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 07:51:29', '2023-04-24 07:51:29'),
(802, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 07:51:32', '2023-04-24 07:51:32'),
(803, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 07:51:35', '2023-04-24 07:51:35'),
(804, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 07:51:37', '2023-04-24 07:51:37'),
(805, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 07:54:49', '2023-04-24 07:54:49'),
(806, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 07:55:02', '2023-04-24 07:55:02'),
(807, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 07:55:58', '2023-04-24 07:55:58'),
(808, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:29:05', '2023-04-24 08:29:05'),
(809, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"1\",\"name_en\":\"fghfgj\",\"name_uk\":\"fghjfghj\",\"skills\":[\"10\",\"8\",\"5\",\"6\",null],\"search_terms\":null,\"short_desc_en\":\"ghjfghj\",\"short_desc_uk\":\"fghjfgh\",\"desc_en\":\"gfhjfghj\",\"desc_uk\":\"fghjfghj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:29:30', '2023-04-24 08:29:30'),
(810, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:29:30', '2023-04-24 08:29:30'),
(811, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:31:45', '2023-04-24 08:31:45'),
(812, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"dfhfdh\",\"name_uk\":\"dfhgdfgh\",\"short_desc_en\":\"dfghdfgh\",\"short_desc_uk\":\"dfghdf\",\"desc_en\":\"ghdfghdf\",\"desc_uk\":\"hgdfgh\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:32:02', '2023-04-24 08:32:02'),
(813, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:32:02', '2023-04-24 08:32:02'),
(814, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:35:04', '2023-04-24 08:35:04'),
(815, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fghfgj\",\"name_uk\":\"fghjfghj\",\"short_desc_en\":\"fghjfh\",\"short_desc_uk\":\"gfghjfg\",\"desc_en\":\"hjfghj\",\"desc_uk\":\"fghjfghj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:35:21', '2023-04-24 08:35:21'),
(816, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:35:22', '2023-04-24 08:35:22'),
(817, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fghfgj\",\"name_uk\":\"fghjfghj\",\"short_desc_en\":\"fghjfh\",\"short_desc_uk\":\"gfghjfg\",\"desc_en\":\"hjfghj\",\"desc_uk\":\"fghjfghj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:36:15', '2023-04-24 08:36:15'),
(818, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:36:16', '2023-04-24 08:36:16'),
(819, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fghfgj\",\"name_uk\":\"fghjfghj\",\"short_desc_en\":\"fghjfh\",\"short_desc_uk\":\"gfghjfg\",\"desc_en\":\"hjfghj\",\"desc_uk\":\"fghjfghj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:37:25', '2023-04-24 08:37:25'),
(820, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:37:26', '2023-04-24 08:37:26'),
(821, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:42:39', '2023-04-24 08:42:39'),
(822, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"sfdgsdf\",\"name_uk\":\"gdsfgsdf\",\"short_desc_en\":\"gsdfgsdfg\",\"short_desc_uk\":\"sdfgsdfg\",\"desc_en\":\"sdfgsfd\",\"desc_uk\":\"dfghfdgh\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:42:55', '2023-04-24 08:42:55'),
(823, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:42:56', '2023-04-24 08:42:56'),
(824, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:45:44', '2023-04-24 08:45:44'),
(825, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"dfhd\",\"name_uk\":\"fgdfgh\",\"short_desc_en\":\"fdghdgh\",\"short_desc_uk\":\"dfghdg\",\"desc_en\":\"hdfgh\",\"desc_uk\":\"fghjfgj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:46:00', '2023-04-24 08:46:00'),
(826, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:46:01', '2023-04-24 08:46:01'),
(827, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:46:39', '2023-04-24 08:46:39'),
(828, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fghfg\",\"name_uk\":\"hfghj\",\"short_desc_en\":\"jfghjfg\",\"short_desc_uk\":\"fghjfhg\",\"desc_en\":\"hjfghjf\",\"desc_uk\":\"fghjfhj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:46:57', '2023-04-24 08:46:57'),
(829, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:46:58', '2023-04-24 08:46:58'),
(830, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fghfg\",\"name_uk\":\"hfghj\",\"short_desc_en\":\"jfghjfg\",\"short_desc_uk\":\"fghjfhg\",\"desc_en\":\"hjfghjf\",\"desc_uk\":\"fghjfhj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:48:58', '2023-04-24 08:48:58'),
(831, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:48:59', '2023-04-24 08:48:59'),
(832, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:49:03', '2023-04-24 08:49:03'),
(833, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fdg\",\"name_uk\":\"fghj\",\"short_desc_en\":\"fghj\",\"short_desc_uk\":\"fghj\",\"desc_en\":\"fghj\",\"desc_uk\":\"fghj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:49:21', '2023-04-24 08:49:21'),
(834, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:49:22', '2023-04-24 08:49:22'),
(835, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:51:06', '2023-04-24 08:51:06'),
(836, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:51:26', '2023-04-24 08:51:26'),
(837, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:51:34', '2023-04-24 08:51:34'),
(838, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:51:44', '2023-04-24 08:51:44'),
(839, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:51:52', '2023-04-24 08:51:52'),
(840, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:52:22', '2023-04-24 08:52:22'),
(841, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"ghjfhj\",\"name_uk\":\"fghjfhj\",\"skills\":[\"10\",\"8\",\"5\",\"6\",null],\"search_terms\":null,\"short_desc_en\":\"fghjfgj\",\"short_desc_uk\":\"ghjfhj\",\"desc_en\":\"gfhjfghj\",\"desc_uk\":\"ghjghj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:52:44', '2023-04-24 08:52:44'),
(842, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:52:45', '2023-04-24 08:52:45'),
(843, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:53:34', '2023-04-24 08:53:34'),
(844, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"dfghdgfh\",\"name_uk\":\"dfghdfgh\",\"skills\":[\"6\",\"7\",\"4\",\"3\",null],\"search_terms\":null,\"short_desc_en\":\"dfghgfh\",\"short_desc_uk\":\"dfghdfgh\",\"desc_en\":\"dfhgfdgh\",\"desc_uk\":\"dfgghd\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:54:00', '2023-04-24 08:54:00'),
(845, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:54:01', '2023-04-24 08:54:01'),
(846, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:55:44', '2023-04-24 08:55:44'),
(847, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fgjfghj\",\"name_uk\":\"fghjfhj\",\"skills\":[\"10\",\"8\",\"5\",\"6\",null],\"search_terms\":null,\"short_desc_en\":\"fghjfghj\",\"short_desc_uk\":\"hfgjfghj\",\"desc_en\":\"fghjfghj\",\"desc_uk\":\"fghjghj\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:55:59', '2023-04-24 08:55:59'),
(848, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:56:00', '2023-04-24 08:56:00'),
(849, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 08:57:14', '2023-04-24 08:57:14'),
(850, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fdghdfgh\",\"name_uk\":\"dfgh\",\"skills\":[\"10\",\"8\",\"5\",\"6\",null],\"search_terms\":null,\"short_desc_en\":\"dfghdfg\",\"short_desc_uk\":\"hdfghdf\",\"desc_en\":\"ghdfgh\",\"desc_uk\":\"dfghdfgh\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 08:57:36', '2023-04-24 08:57:36'),
(851, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 08:57:36', '2023-04-24 08:57:36'),
(852, 1, 'admin/projects/4/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 08:58:28', '2023-04-24 08:58:28'),
(853, 1, 'admin/projects/4', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fdghdfgh\",\"name_uk\":\"dfgh\",\"skills\":[\"8\",\"10\",\"5\",null],\"search_terms\":null,\"short_desc_en\":\"dfghdfg\",\"short_desc_uk\":\"hdfghdf\",\"desc_en\":\"ghdfgh\",\"desc_uk\":\"dfghdfgh\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 08:59:09', '2023-04-24 08:59:09'),
(854, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 08:59:09', '2023-04-24 08:59:09'),
(855, 1, 'admin/projects/4/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 08:59:39', '2023-04-24 08:59:39'),
(856, 1, 'admin/projects/4/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 09:00:05', '2023-04-24 09:00:05'),
(857, 1, 'admin/projects/4', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"fdghdfgh\",\"name_uk\":\"dfgh\",\"skills\":[\"8\",\"10\",\"5\",null],\"search_terms\":null,\"short_desc_en\":\"dfghdfg\",\"short_desc_uk\":\"hdfghdf\",\"desc_en\":\"ghdfgh\",\"desc_uk\":\"dfghdfgh\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 09:00:08', '2023-04-24 09:00:08'),
(858, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:00:08', '2023-04-24 09:00:08'),
(859, 1, 'admin/projects/4', 'GET', '127.0.0.1', '[]', '2023-04-24 09:00:42', '2023-04-24 09:00:42'),
(860, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:01:46', '2023-04-24 09:01:46'),
(861, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:04:53', '2023-04-24 09:04:53'),
(862, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:05:39', '2023-04-24 09:05:39'),
(863, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:06:16', '2023-04-24 09:06:16'),
(864, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:08:01', '2023-04-24 09:08:01'),
(865, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:09:32', '2023-04-24 09:09:32'),
(866, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:10:45', '2023-04-24 09:10:45'),
(867, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:11:50', '2023-04-24 09:11:50'),
(868, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:13:44', '2023-04-24 09:13:44'),
(869, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:25:13', '2023-04-24 09:25:13'),
(870, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:25:49', '2023-04-24 09:25:49'),
(871, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:27:16', '2023-04-24 09:27:16'),
(872, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:27:42', '2023-04-24 09:27:42'),
(873, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:28:23', '2023-04-24 09:28:23'),
(874, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:30:00', '2023-04-24 09:30:00'),
(875, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:30:12', '2023-04-24 09:30:12'),
(876, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:32:11', '2023-04-24 09:32:11'),
(877, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:32:30', '2023-04-24 09:32:30'),
(878, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:33:11', '2023-04-24 09:33:11'),
(879, 1, 'admin/projects/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 09:33:46', '2023-04-24 09:33:46'),
(880, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:33:47', '2023-04-24 09:33:47'),
(881, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 09:34:45', '2023-04-24 09:34:45'),
(882, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 09:35:13', '2023-04-24 09:35:13'),
(883, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-24 09:35:18', '2023-04-24 09:35:18'),
(884, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$06oSoR83QiTABoMYv1GiBO\\/41OteiskyPGJCYnMHmxiZdT4c2IY.G\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 09:35:43', '2023-04-24 09:35:43'),
(885, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-24 09:35:44', '2023-04-24 09:35:44'),
(886, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 09:35:49', '2023-04-24 09:35:49'),
(887, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 09:35:52', '2023-04-24 09:35:52'),
(888, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 09:36:11', '2023-04-24 09:36:11'),
(889, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:36:14', '2023-04-24 09:36:14'),
(890, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 09:37:24', '2023-04-24 09:37:24'),
(891, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 09:40:13', '2023-04-24 09:40:13'),
(892, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"0\",\"name_en\":\"Capital HLD\",\"name_uk\":\"Capital HLD\",\"skills\":[\"1\",\"4\",\"3\",\"2\",\"6\",\"7\",\"9\",\"5\",\"10\",null],\"search_terms\":null,\"short_desc_en\":\"<p>The trading exchange, where there is trading of crypto, physical assets, and the game &quot;binary option&quot;...<\\/p>\",\"short_desc_uk\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;...<\\/p>\",\"desc_en\":\"<p>The trading exchange, where there is trading of crypto, physical assets, and the game &quot;binary option&quot;, also on this site there are 2 languages: Ukrainian and \\u209aosian.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"desc_uk\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;, \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043d\\u0430 \\u0446\\u044c\\u043e\\u043c\\u0443 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0454 2 \\u043c\\u043e\\u0432\\u0438: \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 \\u0456&nbsp;\\u209a\\u043e\\u0441\\u0456\\u0439\\u0441\\u044c\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 09:42:52', '2023-04-24 09:42:52'),
(893, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:42:52', '2023-04-24 09:42:52'),
(894, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"desc_uk,id,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:43:20', '2023-04-24 09:43:20'),
(895, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:43:27', '2023-04-24 09:43:27'),
(896, 1, 'admin/projects/1', 'GET', '127.0.0.1', '[]', '2023-04-24 09:43:29', '2023-04-24 09:43:29'),
(897, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:43:36', '2023-04-24 09:43:36'),
(898, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:47:04', '2023-04-24 09:47:04'),
(899, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,is_view_main,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:47:16', '2023-04-24 09:47:16'),
(900, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,is_view_main,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:47:33', '2023-04-24 09:47:33'),
(901, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"boolean,id,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:47:39', '2023-04-24 09:47:39'),
(902, 1, 'admin/projects/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 09:47:41', '2023-04-24 09:47:41'),
(903, 1, 'admin/projects/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 09:48:08', '2023-04-24 09:48:08'),
(904, 1, 'admin/projects/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"is_view_main\":\"on\",\"is_view_main_cb\":\"on\",\"name_en\":\"Capital HLD\",\"name_uk\":\"Capital HLD\",\"skills\":[\"10\",\"5\",\"6\",\"7\",\"4\",\"3\",\"1\",\"2\",\"9\",null],\"search_terms\":null,\"short_desc_en\":\"<p>The trading exchange, where there is trading of crypto, physical assets, and the game &quot;binary option&quot;...<\\/p>\",\"short_desc_uk\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;...<\\/p>\",\"desc_en\":\"<p>The trading exchange, where there is trading of crypto, physical assets, and the game &quot;binary option&quot;, also on this site there are 2 languages: Ukrainian and \\u209aosian.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"desc_uk\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;, \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043d\\u0430 \\u0446\\u044c\\u043e\\u043c\\u0443 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0454 2 \\u043c\\u043e\\u0432\\u0438: \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 \\u0456&nbsp;\\u209a\\u043e\\u0441\\u0456\\u0439\\u0441\\u044c\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 09:48:21', '2023-04-24 09:48:21'),
(905, 1, 'admin/projects/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 09:48:23', '2023-04-24 09:48:23'),
(906, 1, 'admin/projects/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"is_view_main\":\"on\",\"is_view_main_cb\":\"on\",\"name_en\":\"Capital HLD\",\"name_uk\":\"Capital HLD\",\"skills\":[\"10\",\"5\",\"6\",\"7\",\"4\",\"3\",\"1\",\"2\",\"9\",null],\"search_terms\":null,\"short_desc_en\":\"<p>The trading exchange, where there is trading of crypto, physical assets, and the game &quot;binary option&quot;...<\\/p>\",\"short_desc_uk\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;...<\\/p>\",\"desc_en\":\"<p>The trading exchange, where there is trading of crypto, physical assets, and the game &quot;binary option&quot;, also on this site there are 2 languages: Ukrainian and \\u209aosian.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"desc_uk\":\"<p>\\u0422\\u0440\\u0435\\u0439\\u0434\\u0438\\u043d\\u0433 \\u0431\\u0456\\u0440\\u0436\\u0430, \\u043d\\u0430 \\u044f\\u043a\\u0456\\u0439 \\u0454 \\u0442\\u043e\\u0440\\u0433\\u0456\\u0432\\u043b\\u044f \\u043a\\u0440\\u0438\\u043f\\u0442\\u043e\\u044e, \\u0444\\u0456\\u0437-\\u0430\\u043a\\u0442\\u0438\\u0432\\u0430\\u043c\\u0438, \\u0442\\u0430 \\u0433\\u0440\\u0430 &quot;\\u0431\\u0456\\u043d\\u0430\\u0440\\u043d\\u0438\\u0439 \\u043e\\u043f\\u0446\\u0456\\u043e\\u043d&quot;, \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043d\\u0430 \\u0446\\u044c\\u043e\\u043c\\u0443 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0454 2 \\u043c\\u043e\\u0432\\u0438: \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 \\u0456&nbsp;\\u209a\\u043e\\u0441\\u0456\\u0439\\u0441\\u044c\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.capital-hld.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.capital-hld.com\\/<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 09:48:54', '2023-04-24 09:48:54'),
(907, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:48:55', '2023-04-24 09:48:55'),
(908, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:49:24', '2023-04-24 09:49:24'),
(909, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:49:36', '2023-04-24 09:49:36'),
(910, 1, 'admin/projects/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_view_main\":\"off\",\"after-save\":\"exit\"}', '2023-04-24 09:49:40', '2023-04-24 09:49:40'),
(911, 1, 'admin/projects/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_view_main\":\"on\",\"after-save\":\"exit\"}', '2023-04-24 09:49:41', '2023-04-24 09:49:41'),
(912, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,is_view_main,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:49:56', '2023-04-24 09:49:56'),
(913, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,is_view_main,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:49:58', '2023-04-24 09:49:58'),
(914, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,is_view_main,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:50:18', '2023-04-24 09:50:18'),
(915, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,is_view_main,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:50:32', '2023-04-24 09:50:32'),
(916, 1, 'admin/projects', 'GET', '127.0.0.1', '{\"_columns_\":\"id,is_view_main,name_en,name_uk,order,skills,titule_img\"}', '2023-04-24 09:50:51', '2023-04-24 09:50:51'),
(917, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 09:51:13', '2023-04-24 09:51:13');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(918, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"1\",\"is_view_main\":\"on\",\"is_view_main_cb\":\"on\",\"name_en\":\"E-STOKEN (Anti waste)\",\"name_uk\":\"E-STOKEN (\\u041f\\u0440\\u043e\\u0442\\u0438 \\u0432\\u0456\\u0434\\u0445\\u043e\\u0434\\u0456\\u0432)\",\"skills\":[\"1\",\"4\",\"3\",\"2\",\"5\",\"6\",\"7\",\"9\",\"10\",null],\"search_terms\":null,\"short_desc_en\":\"<p>The site is focused on selling\\/buying products at a discount...<\\/p>\",\"short_desc_uk\":\"<p>\\u0421a\\u0439\\u0442 \\u044f\\u043a\\u0438\\u0439 \\u043e\\u0440\\u0456\\u0454\\u043d\\u0442\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0443\\/\\u043a\\u0443\\u043f\\u0456\\u0432\\u043b\\u044e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0456\\u0457 \\u0437 \\u0443\\u0446\\u0456\\u043d\\u043a\\u043e\\u044e...<\\/p>\",\"desc_en\":\"<p>The site is focused on selling\\/buying products at a discount. The site has 3 types of users, chat, product filters, and various sorting. The site is also available in 5 languages: Ukrainian, German, Polish, French, English.<\\/p>\\r\\n\\r\\n<p>Technology stack:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/anti-waste.webgentest.top\\/uk\\\" target=\\\"_blank\\\">https:\\/\\/anti-waste.webgentest.top\\/uk<\\/a><\\/p>\",\"desc_uk\":\"<p>\\u0421a\\u0439\\u0442 \\u044f\\u043a\\u0438\\u0439 \\u043e\\u0440\\u0456\\u0454\\u043d\\u0442\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0443\\/\\u043a\\u0443\\u043f\\u0456\\u0432\\u043b\\u044e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0456\\u0457 \\u0437 \\u0443\\u0446\\u0456\\u043d\\u043a\\u043e\\u044e. \\u041d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0454 3 \\u0442\\u0438\\u043f\\u0438 \\u044e\\u0437\\u0435\\u0440\\u0456\\u0432, \\u0447\\u0430\\u0442, \\u0444\\u0456\\u043b\\u044c\\u0442\\u0440\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0456\\u0432, \\u0442\\u0430 \\u0440\\u0456\\u0437\\u043d\\u043e\\u043c\\u0430\\u043d\\u0456\\u0442\\u043d\\u0456 \\u0441\\u043e\\u0440\\u0442\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f. \\u0422\\u0430\\u043a\\u043e\\u0436 \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e 5 \\u043c\\u043e\\u0432: \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430, \\u043d\\u0456\\u043c\\u0435\\u0446\\u044c\\u043a\\u0430, \\u043f\\u043e\\u043b\\u044c\\u0441\\u044c\\u043a\\u0430, \\u0444\\u0440\\u0430\\u043d\\u0446\\u0443\\u0437\\u044c\\u043a\\u0430, \\u0430\\u043d\\u0433\\u043b\\u0456\\u0439\\u0441\\u044c\\u043a\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 8<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong>&nbsp;+&nbsp;<strong>Vue.js 3<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/anti-waste.webgentest.top\\/uk\\\" target=\\\"_blank\\\">https:\\/\\/anti-waste.webgentest.top\\/uk<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 09:54:33', '2023-04-24 09:54:33'),
(919, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 09:54:33', '2023-04-24 09:54:33'),
(920, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 09:56:12', '2023-04-24 09:56:12'),
(921, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-24 09:56:16', '2023-04-24 09:56:16'),
(922, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"yii2\",\"label\":\"Yii2\",\"order\":\"10\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 09:56:49', '2023-04-24 09:56:49'),
(923, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 09:56:50', '2023-04-24 09:56:50'),
(924, 1, 'admin/skills/11', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"4\"}', '2023-04-24 09:58:03', '2023-04-24 09:58:03'),
(925, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"5\"}', '2023-04-24 09:58:13', '2023-04-24 09:58:13'),
(926, 1, 'admin/skills/6', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"6\"}', '2023-04-24 09:58:17', '2023-04-24 09:58:17'),
(927, 1, 'admin/skills/7', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"7\"}', '2023-04-24 09:58:20', '2023-04-24 09:58:20'),
(928, 1, 'admin/skills/8', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"8\"}', '2023-04-24 09:58:23', '2023-04-24 09:58:23'),
(929, 1, 'admin/skills/9', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"9\"}', '2023-04-24 09:58:27', '2023-04-24 09:58:27'),
(930, 1, 'admin/skills/10', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"10\"}', '2023-04-24 09:58:32', '2023-04-24 09:58:32'),
(931, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"desc\"}}', '2023-04-24 09:58:46', '2023-04-24 09:58:46'),
(932, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"asc\"}}', '2023-04-24 09:58:50', '2023-04-24 09:58:50'),
(933, 1, 'admin/skills/create', 'GET', '127.0.0.1', '[]', '2023-04-24 09:59:33', '2023-04-24 09:59:33'),
(934, 1, 'admin/skills', 'POST', '127.0.0.1', '{\"tag\":\"python\",\"label\":\"Python\",\"order\":\"1\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:00:06', '2023-04-24 10:00:06'),
(935, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 10:00:07', '2023-04-24 10:00:07'),
(936, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"desc\"}}', '2023-04-24 10:00:13', '2023-04-24 10:00:13'),
(937, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"asc\"}}', '2023-04-24 10:00:15', '2023-04-24 10:00:15'),
(938, 1, 'admin/skills/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"2\"}', '2023-04-24 10:00:22', '2023-04-24 10:00:22'),
(939, 1, 'admin/skills/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"3\"}', '2023-04-24 10:00:32', '2023-04-24 10:00:32'),
(940, 1, 'admin/skills/4', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"4\"}', '2023-04-24 10:00:35', '2023-04-24 10:00:35'),
(941, 1, 'admin/skills/11', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"5\"}', '2023-04-24 10:00:38', '2023-04-24 10:00:38'),
(942, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"6\"}', '2023-04-24 10:00:41', '2023-04-24 10:00:41'),
(943, 1, 'admin/skills/6', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"7\"}', '2023-04-24 10:00:44', '2023-04-24 10:00:44'),
(944, 1, 'admin/skills/7', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"8\"}', '2023-04-24 10:00:48', '2023-04-24 10:00:48'),
(945, 1, 'admin/skills/8', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"9\"}', '2023-04-24 10:00:51', '2023-04-24 10:00:51'),
(946, 1, 'admin/skills/9', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"10\"}', '2023-04-24 10:00:58', '2023-04-24 10:00:58'),
(947, 1, 'admin/skills/10', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"order\":\"11\"}', '2023-04-24 10:01:07', '2023-04-24 10:01:07'),
(948, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"order\",\"type\":\"asc\"}}', '2023-04-24 10:01:14', '2023-04-24 10:01:14'),
(949, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:01:50', '2023-04-24 10:01:50'),
(950, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 10:03:35', '2023-04-24 10:03:35'),
(951, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"2\",\"is_view_main\":null,\"name_en\":\"Banderol\",\"name_uk\":\"\\u0411\\u0430\\u043d\\u0434\\u0435\\u0440\\u041e\\u041b\\u042c\",\"skills\":[\"1\",\"4\",\"3\",\"2\",\"9\",\"7\",\"6\",\"5\",\"10\",null],\"search_terms\":null,\"short_desc_en\":\"<p>A charity site that should simplify the logistics of humanitarian aid to the front...<\\/p>\",\"short_desc_uk\":\"<p>\\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0456\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442, \\u044f\\u043a\\u0438\\u0439 \\u043f\\u043e\\u0432\\u0438\\u043d\\u0435\\u043d \\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0442\\u0438 \\u043b\\u043e\\u0433\\u0456\\u0441\\u0442\\u0438\\u043a\\u0443 \\u0433\\u0443\\u043c\\u0430\\u043d\\u0456\\u0442\\u0430\\u0440\\u043d\\u043e\\u0457 \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0438 \\u043d\\u0430 \\u0444\\u0440\\u043e\\u043d\\u0442...<\\/p>\",\"desc_en\":\"<p>A charity site that should simplify the logistics of humanitarian aid to the front.<\\/p>\\r\\n\\r\\n<p>It was invented by my family and implemented by me. The site also has two themes.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong><\\/p>\",\"desc_uk\":\"<p>\\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0456\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442, \\u044f\\u043a\\u0438\\u0439 \\u043f\\u043e\\u0432\\u0438\\u043d\\u0435\\u043d \\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0442\\u0438 \\u043b\\u043e\\u0433\\u0456\\u0441\\u0442\\u0438\\u043a\\u0443 \\u0433\\u0443\\u043c\\u0430\\u043d\\u0456\\u0442\\u0430\\u0440\\u043d\\u043e\\u0457 \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0438 \\u043d\\u0430 \\u0444\\u0440\\u043e\\u043d\\u0442.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u0438\\u0434\\u0443\\u043c\\u0430\\u043d\\u0438\\u0439 \\u0431\\u0443\\u0432 \\u043c\\u043e\\u0454\\u044e \\u0440\\u043e\\u0434\\u0438\\u043d\\u043e\\u044e, \\u0430 \\u0440\\u0435\\u0430\\u043b\\u0456\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043c\\u043d\\u043e\\u044e. \\u041d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0442\\u0430\\u043a\\u043e\\u0436 \\u0454 \\u0434\\u0432\\u0456 \\u0442\\u0435\\u043c\\u0438.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:06:50', '2023-04-24 10:06:50'),
(952, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:06:51', '2023-04-24 10:06:51'),
(953, 1, 'admin/projects/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_view_main\":\"on\",\"after-save\":\"exit\"}', '2023-04-24 10:06:56', '2023-04-24 10:06:56'),
(954, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:12:51', '2023-04-24 10:12:51'),
(955, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:12:59', '2023-04-24 10:12:59'),
(956, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:13:39', '2023-04-24 10:13:39'),
(957, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:13:47', '2023-04-24 10:13:47'),
(958, 1, 'admin/_grid-sortable_', 'POST', '127.0.0.1', '{\"_model\":\"App\\\\Models\\\\Project\",\"_sort\":[{\"key\":\"2\",\"sort\":\"1\"},{\"key\":\"3\",\"sort\":\"2\"},{\"key\":\"1\",\"sort\":\"0\"}],\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:13:57', '2023-04-24 10:13:57'),
(959, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:13:57', '2023-04-24 10:13:57'),
(960, 1, 'admin/_grid-sortable_', 'POST', '127.0.0.1', '{\"_model\":\"App\\\\Models\\\\Project\",\"_sort\":[{\"key\":\"1\",\"sort\":\"2\"},{\"key\":\"2\",\"sort\":\"0\"},{\"key\":\"3\",\"sort\":\"1\"}],\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:14:02', '2023-04-24 10:14:02'),
(961, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:14:03', '2023-04-24 10:14:03'),
(962, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:14:43', '2023-04-24 10:14:43'),
(963, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:15:52', '2023-04-24 10:15:52'),
(964, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 10:15:55', '2023-04-24 10:15:55'),
(965, 1, 'admin/_grid-sortable_', 'POST', '127.0.0.1', '{\"_model\":\"App\\\\Models\\\\Skills\",\"_sort\":[{\"key\":\"1\",\"sort\":\"0\"},{\"key\":\"2\",\"sort\":\"2\"},{\"key\":\"12\",\"sort\":\"1\"},{\"key\":\"3\",\"sort\":\"3\"},{\"key\":\"4\",\"sort\":\"4\"},{\"key\":\"11\",\"sort\":\"5\"},{\"key\":\"5\",\"sort\":\"6\"},{\"key\":\"6\",\"sort\":\"7\"},{\"key\":\"7\",\"sort\":\"8\"},{\"key\":\"8\",\"sort\":\"9\"},{\"key\":\"9\",\"sort\":\"10\"},{\"key\":\"10\",\"sort\":\"11\"}],\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:16:03', '2023-04-24 10:16:03'),
(966, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 10:16:04', '2023-04-24 10:16:04'),
(967, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 10:16:07', '2023-04-24 10:16:07'),
(968, 1, 'admin/_grid-sortable_', 'POST', '127.0.0.1', '{\"_model\":\"App\\\\Models\\\\Skills\",\"_sort\":[{\"key\":\"1\",\"sort\":\"0\"},{\"key\":\"12\",\"sort\":\"2\"},{\"key\":\"2\",\"sort\":\"1\"},{\"key\":\"3\",\"sort\":\"3\"},{\"key\":\"4\",\"sort\":\"4\"},{\"key\":\"11\",\"sort\":\"5\"},{\"key\":\"5\",\"sort\":\"6\"},{\"key\":\"6\",\"sort\":\"7\"},{\"key\":\"7\",\"sort\":\"8\"},{\"key\":\"8\",\"sort\":\"9\"},{\"key\":\"9\",\"sort\":\"10\"},{\"key\":\"10\",\"sort\":\"11\"}],\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:16:12', '2023-04-24 10:16:12'),
(969, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-24 10:16:13', '2023-04-24 10:16:13'),
(970, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:16:21', '2023-04-24 10:16:21'),
(971, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 10:16:34', '2023-04-24 10:16:34'),
(972, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"3\",\"is_view_main\":\"on\",\"is_view_main_cb\":\"on\",\"name_en\":\"Hvosting\",\"name_uk\":\"Hvosting\",\"skills\":[\"1\",\"11\",\"3\",\"2\",\"6\",\"7\",\"5\",\"10\",null],\"search_terms\":null,\"short_desc_en\":\"<p>HVOSTING.ua is one of the most famous hosting companies in Ukraine...<\\/p>\",\"short_desc_uk\":\"<p>HVOSTING.ua &mdash; \\u043e\\u0434\\u043d\\u0430 \\u0437 \\u043d\\u0430\\u0439\\u0432\\u0456\\u0434\\u043e\\u043c\\u0456\\u0448\\u0438\\u0445 \\u0445\\u043e\\u0441\\u0442\\u0438\\u043d\\u0433\\u043e\\u0432\\u0438\\u0445 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u0439 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438...<\\/p>\",\"desc_en\":\"<p>HVOSTING.ua is one of the most famous hosting companies in Ukraine.<\\/p>\\r\\n\\r\\n<p>Unfortunately, until the Orcs invaded the territory of independent Ukraine, I managed to make only the admin panel for the site, and my colleagues did the design and layout.<\\/p>\\r\\n\\r\\n<p>Technology stack:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\",\"desc_uk\":\"<p>HVOSTING.ua &mdash; \\u043e\\u0434\\u043d\\u0430 \\u0437 \\u043d\\u0430\\u0439\\u0432\\u0456\\u0434\\u043e\\u043c\\u0456\\u0448\\u0438\\u0445 \\u0445\\u043e\\u0441\\u0442\\u0438\\u043d\\u0433\\u043e\\u0432\\u0438\\u0445 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u0439 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438.<\\/p>\\r\\n\\r\\n<p>\\u041d\\u0430 \\u0436\\u0430\\u043b\\u044c, \\u0434\\u043e\\u043a\\u0438 \\u043d\\u0430 \\u0442\\u0435\\u0440\\u0438\\u0442\\u043e\\u0440\\u0456\\u044e \\u043d\\u0435\\u0437\\u0430\\u043b\\u0435\\u0436\\u043d\\u043e\\u0457 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438 \\u043d\\u0435 \\u043f\\u043e\\u043f\\u0435\\u0440\\u043b\\u0438\\u0441\\u044f \\u043e\\u0440\\u043a\\u0438, \\u044f \\u0432\\u0441\\u0442\\u0438\\u0433 \\u0437\\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 \\u0442\\u0456\\u043b\\u044c\\u043a\\u0438 \\u0430\\u0434\\u043c\\u0456\\u043d \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0434\\u043b\\u044f \\u0441\\u0430\\u0439\\u0442\\u0443, \\u0430 \\u043a\\u043e\\u043b\\u0435\\u0433\\u0438 \\u043f\\u043e \\u0440\\u043e\\u0431\\u043e\\u0442\\u0456 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d, \\u0442\\u0430 \\u0432\\u0435\\u0440\\u0441\\u0442\\u043a\\u0443.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:18:52', '2023-04-24 10:18:52'),
(973, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:18:53', '2023-04-24 10:18:53'),
(974, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 10:19:00', '2023-04-24 10:19:00'),
(975, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"4\",\"is_view_main\":\"on\",\"is_view_main_cb\":\"on\",\"name_en\":\"Atari Motors\",\"name_uk\":\"Atari Motors\",\"skills\":[\"1\",\"11\",\"3\",\"2\",\"5\",\"6\",\"7\",\"10\",null],\"search_terms\":null,\"short_desc_en\":\"<p>The landing page is made in two languages: the main Ukrainian...<\\/p>\",\"short_desc_uk\":\"<p>\\u041b\\u0435\\u043d\\u0434\\u0456\\u043d\\u0433 \\u0437\\u0440\\u043e\\u0431\\u043b\\u0435\\u043d\\u043e \\u0434\\u0432\\u043e\\u043c\\u0430 \\u043c\\u043e\\u0432\\u0430\\u043c\\u0438: \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u0430 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430...<\\/p>\",\"desc_en\":\"<p>The landing page is made in two languages: the main Ukrainian, and a translated version is available for searches in&nbsp;\\u209aussian.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/cars.atari-motors.com.ua\\/\\\" target=\\\"_blank\\\">https:\\/\\/cars.atari-motors.com.ua\\/<\\/a><\\/p>\",\"desc_uk\":\"<p>\\u041b\\u0435\\u043d\\u0434\\u0456\\u043d\\u0433 \\u0437\\u0440\\u043e\\u0431\\u043b\\u0435\\u043d\\u043e \\u0434\\u0432\\u043e\\u043c\\u0430 \\u043c\\u043e\\u0432\\u0430\\u043c\\u0438: \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u0430 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430, \\u0430 \\u0434\\u043b\\u044f \\u043f\\u043e\\u0448\\u0443\\u043a\\u043e\\u0432\\u0438\\u0445 \\u0437\\u0430\\u043f\\u0438\\u0442\\u0456\\u0432&nbsp;\\u209a\\u043e\\u0441\\u0456\\u0439\\u0441\\u044c\\u043a\\u043e\\u044e \\u043c\\u043e\\u0432\\u043e\\u044e \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u0430 \\u043f\\u0435\\u0440\\u0435\\u043a\\u043b\\u0430\\u0434\\u0435\\u043d\\u0430 \\u0432\\u0435\\u0440\\u0441\\u0456\\u044f.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>\\ufeff\\ufeff\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/cars.atari-motors.com.ua\\/\\\" target=\\\"_blank\\\">https:\\/\\/cars.atari-motors.com.ua\\/<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:20:56', '2023-04-24 10:20:56'),
(976, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:20:56', '2023-04-24 10:20:56'),
(977, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 10:21:22', '2023-04-24 10:21:22'),
(978, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"5\",\"is_view_main\":\"on\",\"is_view_main_cb\":\"on\",\"name_en\":\"Department of Innovative Development of the Luhansk RSA\",\"name_uk\":\"\\u0414\\u0435\\u043f\\u0430\\u0440\\u0442\\u0430\\u043c\\u0435\\u043d\\u0442 \\u0456\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0456\\u0439\\u043d\\u043e\\u0433\\u043e \\u0440\\u043e\\u0437\\u0432\\u0438\\u0442\\u043a\\u0443 \\u041b\\u0443\\u0433\\u0430\\u043d\\u0441\\u044c\\u043a\\u043e\\u0457 \\u041e\\u0414\\u0410\",\"skills\":[\"1\",\"11\",\"3\",\"2\",\"5\",\"6\",\"7\",\"10\",null],\"search_terms\":null,\"short_desc_en\":\"<p>i-Lug.gov.ua is a separate portal for the Department of International Technical Assistance...<\\/p>\",\"short_desc_uk\":\"<p>i-Lug.gov.ua &mdash; \\u0446\\u0435 \\u043e\\u043a\\u0440\\u0435\\u043c\\u0438\\u0439 \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b \\u0434\\u043b\\u044f \\u0414\\u0435\\u043f\\u0430\\u0440\\u0442\\u0430\\u043c\\u0435\\u043d\\u0442\\u0443 \\u043c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u043e\\u0457 \\u0442\\u0435\\u0445\\u043d\\u0456\\u0447\\u043d\\u043e\\u0457 \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0438...<\\/p>\",\"desc_en\":\"<p>i-Lug.gov.ua is a separate portal for the Department of International Technical Assistance, Innovative Development and External Relations of the Luhansk Regional State Administration in Severodonetsk.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/i-lug.gov.ua\\/\\\" target=\\\"_blank\\\">https:\\/\\/i-lug.gov.ua\\/<\\/a><\\/p>\",\"desc_uk\":\"<p>i-Lug.gov.ua &mdash; \\u0446\\u0435 \\u043e\\u043a\\u0440\\u0435\\u043c\\u0438\\u0439 \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b \\u0434\\u043b\\u044f \\u0414\\u0435\\u043f\\u0430\\u0440\\u0442\\u0430\\u043c\\u0435\\u043d\\u0442\\u0443 \\u043c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u043e\\u0457 \\u0442\\u0435\\u0445\\u043d\\u0456\\u0447\\u043d\\u043e\\u0457 \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0438, \\u0456\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0456\\u0439\\u043d\\u043e\\u0433\\u043e \\u0440\\u043e\\u0437\\u0432\\u0438\\u0442\\u043a\\u0443 \\u0442\\u0430 \\u0437\\u043e\\u0432\\u043d\\u0456\\u0448\\u043d\\u0456\\u0445 \\u0437\\u043d\\u043e\\u0441\\u0438\\u043d \\u041b\\u0443\\u0433\\u0430\\u043d\\u0441\\u044c\\u043a\\u043e\\u0457 \\u043e\\u0431\\u043b\\u0430\\u0441\\u043d\\u043e\\u0457 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0432\\u043d\\u043e\\u0457 \\u0430\\u0434\\u043c\\u0456\\u043d\\u0456\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u0457 \\u0443 \\u0421\\u0454\\u0432\\u0454\\u0440\\u043e\\u0434\\u043e\\u043d\\u0435\\u0446\\u044c\\u043a\\u0443.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/i-lug.gov.ua\\/\\\" target=\\\"_blank\\\">https:\\/\\/i-lug.gov.ua\\/<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:23:29', '2023-04-24 10:23:29'),
(979, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:23:29', '2023-04-24 10:23:29'),
(980, 1, 'admin/projects/create', 'GET', '127.0.0.1', '[]', '2023-04-24 10:23:41', '2023-04-24 10:23:41'),
(981, 1, 'admin/projects', 'POST', '127.0.0.1', '{\"order\":\"6\",\"is_view_main\":null,\"name_en\":\"Soboleva International Legal Bureau\",\"name_uk\":\"\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457\",\"skills\":[\"1\",\"11\",\"3\",\"2\",\"5\",\"6\",\"7\",\"10\",null],\"search_terms\":null,\"short_desc_en\":\"<p>Soboleva International Law Office is a family law company from Dnipro...<\\/p>\",\"short_desc_uk\":\"<p>\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457 &ndash; \\u0441\\u0456\\u043c\\u0435\\u0439\\u043d\\u0430 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u044f \\u0437 \\u0414\\u043d\\u0456\\u043f\\u0440\\u0430, \\u044f\\u043a\\u0430 \\u0441\\u043f\\u0435\\u0446\\u0456\\u0430\\u043b\\u0456\\u0437\\u0443\\u0454\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0430\\u0432\\u0456.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.sobolevalaw.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.sobolevalaw.com<\\/a><\\/p>\",\"desc_en\":\"<p>Soboleva International Law Office is a family law company from Dnipro, specializing in international law.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/www.sobolevalaw.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.sobolevalaw.com<\\/a><\\/p>\",\"desc_uk\":\"<p>\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457 &ndash; \\u0441\\u0456\\u043c\\u0435\\u0439\\u043d\\u0430 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u044f \\u0437 \\u0414\\u043d\\u0456\\u043f\\u0440\\u0430, \\u044f\\u043a\\u0430 \\u0441\\u043f\\u0435\\u0446\\u0456\\u0430\\u043b\\u0456\\u0437\\u0443\\u0454\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0430\\u0432\\u0456.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.sobolevalaw.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.sobolevalaw.com<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 10:25:46', '2023-04-24 10:25:46'),
(982, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:25:46', '2023-04-24 10:25:46'),
(983, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:33:28', '2023-04-24 10:33:28'),
(984, 1, 'admin/projects/7/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 10:36:40', '2023-04-24 10:36:40'),
(985, 1, 'admin/projects/7', 'PUT', '127.0.0.1', '{\"order\":\"6\",\"is_view_main\":\"0\",\"name_en\":\"Soboleva International Legal Bureau\",\"name_uk\":\"\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457\",\"skills\":[\"10\",\"5\",\"6\",\"7\",\"3\",\"1\",\"2\",\"11\",null],\"search_terms\":null,\"short_desc_en\":\"<p>Soboleva International Law Office is a family law company from Dnipro...<\\/p>\",\"short_desc_uk\":\"<p>\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457 &ndash; \\u0441\\u0456\\u043c\\u0435\\u0439\\u043d\\u0430 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u044f \\u0437 \\u0414\\u043d\\u0456\\u043f\\u0440\\u0430, \\u044f\\u043a\\u0430 \\u0441\\u043f\\u0435\\u0446\\u0456\\u0430\\u043b\\u0456\\u0437\\u0443\\u0454\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0430\\u0432\\u0456.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.sobolevalaw.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.sobolevalaw.com<\\/a><\\/p>\",\"desc_en\":\"<p>Soboleva International Law Office is a family law company from Dnipro, specializing in international law.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/www.sobolevalaw.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.sobolevalaw.com<\\/a><\\/p>\",\"desc_uk\":\"<p>\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457 &ndash; \\u0441\\u0456\\u043c\\u0435\\u0439\\u043d\\u0430 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u044f \\u0437 \\u0414\\u043d\\u0456\\u043f\\u0440\\u0430, \\u044f\\u043a\\u0430 \\u0441\\u043f\\u0435\\u0446\\u0456\\u0430\\u043b\\u0456\\u0437\\u0443\\u0454\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0430\\u0432\\u0456.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.sobolevalaw.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.sobolevalaw.com<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 10:36:47', '2023-04-24 10:36:47'),
(986, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 10:36:47', '2023-04-24 10:36:47'),
(987, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 12:44:48', '2023-04-24 12:44:48'),
(988, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 12:44:52', '2023-04-24 12:44:52'),
(989, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 12:44:56', '2023-04-24 12:44:56'),
(990, 1, 'admin/projects/7/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 12:45:01', '2023-04-24 12:45:01'),
(991, 1, 'admin/projects/7', 'PUT', '127.0.0.1', '{\"order\":\"6\",\"is_view_main\":\"0\",\"name_en\":\"Soboleva International Legal Bureau\",\"name_uk\":\"\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457\",\"skills\":[\"10\",\"5\",\"6\",\"7\",\"3\",\"1\",\"2\",\"11\",null],\"search_terms\":null,\"short_desc_en\":\"<p>Soboleva International Law Office is a family law company from Dnipro...<\\/p>\",\"short_desc_uk\":\"<p>\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457 &ndash; \\u0441\\u0456\\u043c\\u0435\\u0439\\u043d\\u0430 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u044f \\u0437 \\u0414\\u043d\\u0456\\u043f\\u0440\\u0430...<\\/p>\",\"desc_en\":\"<p>Soboleva International Law Office is a family law company from Dnipro, specializing in international law.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>Current website:&nbsp;<a href=\\\"https:\\/\\/www.sobolevalaw.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.sobolevalaw.com<\\/a><\\/p>\",\"desc_uk\":\"<p>\\u041c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u0435 \\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0435 \\u0411\\u044e\\u0440\\u043e \\u0421\\u043e\\u0431\\u043e\\u043b\\u0454\\u0432\\u043e\\u0457 &ndash; \\u0441\\u0456\\u043c\\u0435\\u0439\\u043d\\u0430 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u044f \\u0437 \\u0414\\u043d\\u0456\\u043f\\u0440\\u0430, \\u044f\\u043a\\u0430 \\u0441\\u043f\\u0435\\u0446\\u0456\\u0430\\u043b\\u0456\\u0437\\u0443\\u0454\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043c\\u0456\\u0436\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0430\\u0432\\u0456.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Yii2<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0414\\u0456\\u044e\\u0447\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442:&nbsp;<a href=\\\"https:\\/\\/www.sobolevalaw.com\\/\\\" target=\\\"_blank\\\">https:\\/\\/www.sobolevalaw.com<\\/a><\\/p>\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 12:45:20', '2023-04-24 12:45:20'),
(992, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 12:45:20', '2023-04-24 12:45:20'),
(993, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 14:01:39', '2023-04-24 14:01:39'),
(994, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 14:02:47', '2023-04-24 14:02:47'),
(995, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 14:03:02', '2023-04-24 14:03:02'),
(996, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 14:03:51', '2023-04-24 14:03:51'),
(997, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 14:04:29', '2023-04-24 14:04:29'),
(998, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 14:24:32', '2023-04-24 14:24:32'),
(999, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-04-24 14:25:00', '2023-04-24 14:25:00'),
(1000, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-04-24 14:25:03', '2023-04-24 14:25:03'),
(1001, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 14:25:06', '2023-04-24 14:25:06'),
(1002, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-04-24 14:25:13', '2023-04-24 14:25:13'),
(1003, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-04-24 14:25:15', '2023-04-24 14:25:15'),
(1004, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 14:25:22', '2023-04-24 14:25:22'),
(1005, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 14:25:35', '2023-04-24 14:25:35'),
(1006, 1, 'admin/projects/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_view_main\":\"off\",\"after-save\":\"exit\"}', '2023-04-24 14:25:50', '2023-04-24 14:25:50'),
(1007, 1, 'admin/projects/2', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_view_main\":\"on\",\"after-save\":\"exit\"}', '2023-04-24 14:25:56', '2023-04-24 14:25:56'),
(1008, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-04-24 14:25:57', '2023-04-24 14:25:57'),
(1009, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 14:27:57', '2023-04-24 14:27:57'),
(1010, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 14:28:25', '2023-04-24 14:28:25'),
(1011, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"experiences\",\"model_name\":\"App\\\\Models\\\\Eexperience\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ExperienceController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"company_name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"position\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"text\",\"type\":\"text\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 14:31:24', '2023-04-24 14:31:24'),
(1012, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 14:31:26', '2023-04-24 14:31:26'),
(1013, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 14:31:41', '2023-04-24 14:31:41'),
(1014, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 14:31:46', '2023-04-24 14:31:46'),
(1015, 1, 'admin/auth/menu/23/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 14:32:02', '2023-04-24 14:32:02'),
(1016, 1, 'admin/auth/menu/23', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Eexperiences\",\"icon\":\"icon-code-branch\",\"uri\":\"eexperiences\",\"roles\":[null],\"permission\":null,\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 14:33:28', '2023-04-24 14:33:28'),
(1017, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 14:33:28', '2023-04-24 14:33:28'),
(1018, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"23\\\"}]\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 14:33:33', '2023-04-24 14:33:33'),
(1019, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 14:33:34', '2023-04-24 14:33:34'),
(1020, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"23\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 14:33:41', '2023-04-24 14:33:41'),
(1021, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 14:33:42', '2023-04-24 14:33:42'),
(1022, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 14:33:45', '2023-04-24 14:33:45'),
(1023, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 14:33:49', '2023-04-24 14:33:49'),
(1024, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:33:52', '2023-04-24 14:33:52'),
(1025, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:36:50', '2023-04-24 14:36:50'),
(1026, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:40:49', '2023-04-24 14:40:49'),
(1027, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:44:26', '2023-04-24 14:44:26'),
(1028, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:47:00', '2023-04-24 14:47:00'),
(1029, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:47:29', '2023-04-24 14:47:29'),
(1030, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:47:45', '2023-04-24 14:47:45'),
(1031, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:48:45', '2023-04-24 14:48:45'),
(1032, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:49:03', '2023-04-24 14:49:03'),
(1033, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:49:59', '2023-04-24 14:49:59'),
(1034, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:50:25', '2023-04-24 14:50:25'),
(1035, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:51:05', '2023-04-24 14:51:05'),
(1036, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-24 14:51:21', '2023-04-24 14:51:21'),
(1037, 1, 'admin/eexperiences', 'POST', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"WebGenerator\",\"company_name_uk\":\"WebGenerator\",\"position_en\":\"PHP developer (Laravel)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Laravel)\",\"text_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. <strong>Tempora eaque<\\/strong> fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"text_uk\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur<strong> adipisicing elit<\\/strong>. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"date_from\":\"2023-04-10\",\"date_to\":\"2023-04-14\",\"is_today\":\"on\",\"is_today_cb\":\"on\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\"}', '2023-04-24 14:53:04', '2023-04-24 14:53:04'),
(1038, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 14:53:04', '2023-04-24 14:53:04'),
(1039, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 14:53:08', '2023-04-24 14:53:08'),
(1040, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"WebGenerator\",\"company_name_uk\":\"WebGenerator\",\"position_en\":\"PHP developer (Laravel)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Laravel)\",\"text_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. <strong>Tempora eaque<\\/strong> fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"text_uk\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur<strong> adipisicing elit<\\/strong>. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"date_from\":\"2023-04-10\",\"date_to\":\"2023-04-14\",\"is_today\":\"off\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 14:53:12', '2023-04-24 14:53:12'),
(1041, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 14:53:12', '2023-04-24 14:53:12'),
(1042, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 14:53:20', '2023-04-24 14:53:20'),
(1043, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 14:53:35', '2023-04-24 14:53:35'),
(1044, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 14:54:09', '2023-04-24 14:54:09'),
(1045, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 14:54:26', '2023-04-24 14:54:26'),
(1046, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 14:54:48', '2023-04-24 14:54:48'),
(1047, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 14:58:10', '2023-04-24 14:58:10'),
(1048, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 15:06:50', '2023-04-24 15:06:50'),
(1049, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 15:06:54', '2023-04-24 15:06:54'),
(1050, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"_edit_inline\":true,\"after-save\":\"exit\",\"date_to\":\"2023-05-06\"}', '2023-04-24 15:07:10', '2023-04-24 15:07:10'),
(1051, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 15:07:50', '2023-04-24 15:07:50');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1052, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"WebGenerator\",\"company_name_uk\":\"WebGenerator\",\"position_en\":\"PHP developer (Laravel)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Laravel)\",\"text_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. <strong>Tempora eaque<\\/strong> fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"text_uk\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur<strong> adipisicing elit<\\/strong>. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"date_from\":\"2023-04-10\",\"date_to\":\"2023-05-06\",\"is_today\":\"on\",\"is_today_cb\":\"on\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 15:07:54', '2023-04-24 15:07:54'),
(1053, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 15:07:54', '2023-04-24 15:07:54'),
(1054, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 15:09:26', '2023-04-24 15:09:26'),
(1055, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"WebGenerator\",\"company_name_uk\":\"WebGenerator\",\"position_en\":\"PHP developer (Laravel)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Laravel)\",\"text_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. <strong>Tempora eaque<\\/strong> fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"text_uk\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur<strong> adipisicing elit<\\/strong>. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"date_from\":\"2023-04-10\",\"date_to\":\"2023-05-06\",\"is_today\":\"off\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 15:09:30', '2023-04-24 15:09:30'),
(1056, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 15:09:31', '2023-04-24 15:09:31'),
(1057, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 15:10:27', '2023-04-24 15:10:27'),
(1058, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"WebGenerator\",\"company_name_uk\":\"WebGenerator\",\"position_en\":\"PHP developer (Laravel)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Laravel)\",\"text_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. <strong>Tempora eaque<\\/strong> fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"text_uk\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur<strong> adipisicing elit<\\/strong>. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"date_from\":\"2023-04-10\",\"date_to\":\"2023-05-06\",\"is_today\":\"on\",\"is_today_cb\":\"on\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 15:10:30', '2023-04-24 15:10:30'),
(1059, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 15:10:31', '2023-04-24 15:10:31'),
(1060, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 15:10:37', '2023-04-24 15:10:37'),
(1061, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"WebGenerator\",\"company_name_uk\":\"WebGenerator\",\"position_en\":\"PHP developer (Laravel)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Laravel)\",\"text_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. <strong>Tempora eaque<\\/strong> fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"text_uk\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur<strong> adipisicing elit<\\/strong>. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!<\\/p>\",\"date_from\":\"2023-04-10\",\"date_to\":\"2023-05-06\",\"is_today\":\"off\",\"_token\":\"1MFIeYJI6PcuemN02vdCanPt1122T9PtFdvw72g8\",\"_method\":\"PUT\"}', '2023-04-24 15:10:40', '2023-04-24 15:10:40'),
(1062, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 15:10:40', '2023-04-24 15:10:40'),
(1063, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 15:16:30', '2023-04-24 15:16:30'),
(1064, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-24 15:16:34', '2023-04-24 15:16:34'),
(1065, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 15:16:35', '2023-04-24 15:16:35'),
(1066, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-24 15:17:32', '2023-04-24 15:17:32'),
(1067, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 17:44:48', '2023-04-24 17:44:48'),
(1068, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 17:44:54', '2023-04-24 17:44:54'),
(1069, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"requests\",\"model_name\":\"App\\\\Models\\\\Request\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\RequestController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"contact\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"text\",\"type\":\"text\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 17:47:01', '2023-04-24 17:47:01'),
(1070, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-04-24 17:47:01', '2023-04-24 17:47:01'),
(1071, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 17:47:23', '2023-04-24 17:47:23'),
(1072, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"23\\\"},{\\\"id\\\":\\\"24\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 17:47:31', '2023-04-24 17:47:31'),
(1073, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 17:47:31', '2023-04-24 17:47:31'),
(1074, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2023-04-24 17:47:33', '2023-04-24 17:47:33'),
(1075, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Requests\",\"icon\":\"icon-comment-dots\",\"uri\":\"requests\",\"roles\":[null],\"permission\":null,\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\",\"_method\":\"PUT\"}', '2023-04-24 17:48:08', '2023-04-24 17:48:08'),
(1076, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 17:48:09', '2023-04-24 17:48:09'),
(1077, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-04-24 17:48:14', '2023-04-24 17:48:14'),
(1078, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 17:48:17', '2023-04-24 17:48:17'),
(1079, 1, 'admin/requests/create', 'GET', '127.0.0.1', '[]', '2023-04-24 17:48:31', '2023-04-24 17:48:31'),
(1080, 1, 'admin/requests', 'POST', '127.0.0.1', '{\"name\":\"hjkghjk\",\"email\":null,\"contact\":null,\"text\":null,\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 17:48:43', '2023-04-24 17:48:43'),
(1081, 1, 'admin/requests/create', 'GET', '127.0.0.1', '[]', '2023-04-24 17:48:44', '2023-04-24 17:48:44'),
(1082, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 17:48:46', '2023-04-24 17:48:46'),
(1083, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 18:20:22', '2023-04-24 18:20:22'),
(1084, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:20:30', '2023-04-24 18:20:30'),
(1085, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:21:00', '2023-04-24 18:21:00'),
(1086, 1, 'admin/requests/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 18:21:10', '2023-04-24 18:21:10'),
(1087, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:21:10', '2023-04-24 18:21:10'),
(1088, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Request\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"1,2\",\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 18:21:16', '2023-04-24 18:21:16'),
(1089, 1, 'admin/requests/1,2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 18:21:16', '2023-04-24 18:21:16'),
(1090, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:21:17', '2023-04-24 18:21:17'),
(1091, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:21:17', '2023-04-24 18:21:17'),
(1092, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 18:24:50', '2023-04-24 18:24:50'),
(1093, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-24 18:24:56', '2023-04-24 18:24:56'),
(1094, 1, 'admin/translations/view/_json', 'GET', '127.0.0.1', '[]', '2023-04-24 18:24:59', '2023-04-24 18:24:59'),
(1095, 1, 'admin/translations/add/_json', 'POST', '127.0.0.1', '{\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\",\"keys\":null}', '2023-04-24 18:25:02', '2023-04-24 18:25:02'),
(1096, 1, 'admin/translations/view/_json', 'GET', '127.0.0.1', '[]', '2023-04-24 18:25:02', '2023-04-24 18:25:02'),
(1097, 1, 'admin/translations/add/_json', 'POST', '127.0.0.1', '{\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\",\"keys\":\"Thank you! Your review has been sent!\"}', '2023-04-24 18:25:15', '2023-04-24 18:25:15'),
(1098, 1, 'admin/translations/view/_json', 'GET', '127.0.0.1', '[]', '2023-04-24 18:25:15', '2023-04-24 18:25:15'),
(1099, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Thank you! Your review has been sent!\",\"value\":\"\\u0414\\u044f\\u043a\\u0443\\u044e! \\u0412\\u0430\\u0448 \\u0437\\u0430\\u043f\\u0438\\u0442 \\u043d\\u0430\\u0434\\u0456\\u0441\\u043b\\u0430\\u043d\\u043e!\",\"pk\":\"31\",\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 18:25:59', '2023-04-24 18:25:59'),
(1100, 1, 'admin/translations/publish/_json', 'POST', '127.0.0.1', '{\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 18:26:06', '2023-04-24 18:26:06'),
(1101, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:31:30', '2023-04-24 18:31:30'),
(1102, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:31:39', '2023-04-24 18:31:39'),
(1103, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:31:49', '2023-04-24 18:31:49'),
(1104, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:32:07', '2023-04-24 18:32:07'),
(1105, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:37:52', '2023-04-24 18:37:52'),
(1106, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:38:37', '2023-04-24 18:38:37'),
(1107, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:39:08', '2023-04-24 18:39:08'),
(1108, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:39:20', '2023-04-24 18:39:20'),
(1109, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:39:31', '2023-04-24 18:39:31'),
(1110, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:39:49', '2023-04-24 18:39:49'),
(1111, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:40:33', '2023-04-24 18:40:33'),
(1112, 1, 'admin/requests/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_processed\":\"on\",\"after-save\":\"exit\"}', '2023-04-24 18:40:39', '2023-04-24 18:40:39'),
(1113, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:40:41', '2023-04-24 18:40:41'),
(1114, 1, 'admin/requests/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_processed\":\"off\",\"after-save\":\"exit\"}', '2023-04-24 18:40:44', '2023-04-24 18:40:44'),
(1115, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:40:45', '2023-04-24 18:40:45'),
(1116, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:41:42', '2023-04-24 18:41:42'),
(1117, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-24 18:46:24', '2023-04-24 18:46:24'),
(1118, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:46:29', '2023-04-24 18:46:29'),
(1119, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:46:50', '2023-04-24 18:46:50'),
(1120, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:47:08', '2023-04-24 18:47:08'),
(1121, 1, 'admin/requests/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"x2npqwYWEj5pFtQFUZlouVV8BaX5e8FxOhojSQIS\"}', '2023-04-24 18:47:22', '2023-04-24 18:47:22'),
(1122, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-24 18:47:22', '2023-04-24 18:47:22'),
(1123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 06:17:34', '2023-04-25 06:17:34'),
(1124, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-25 06:17:37', '2023-04-25 06:17:37'),
(1125, 1, 'admin/projects/3/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 06:17:43', '2023-04-25 06:17:43'),
(1126, 1, 'admin/projects/3', 'PUT', '127.0.0.1', '{\"order\":\"2\",\"is_view_main\":\"1\",\"is_view_main_cb\":\"on\",\"name_en\":\"Banderol\",\"name_uk\":\"\\u0411\\u0430\\u043d\\u0434\\u0435\\u0440\\u041e\\u041b\\u042c\",\"skills\":[\"10\",\"5\",\"6\",\"7\",\"4\",\"3\",\"1\",\"2\",null],\"search_terms\":null,\"short_desc_en\":\"<p>A charity site that should simplify the logistics of humanitarian aid to the front...<\\/p>\",\"short_desc_uk\":\"<p>\\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0456\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442, \\u044f\\u043a\\u0438\\u0439 \\u043f\\u043e\\u0432\\u0438\\u043d\\u0435\\u043d \\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0442\\u0438 \\u043b\\u043e\\u0433\\u0456\\u0441\\u0442\\u0438\\u043a\\u0443 \\u0433\\u0443\\u043c\\u0430\\u043d\\u0456\\u0442\\u0430\\u0440\\u043d\\u043e\\u0457 \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0438 \\u043d\\u0430 \\u0444\\u0440\\u043e\\u043d\\u0442...<\\/p>\",\"desc_en\":\"<p>A charity site that should simplify the logistics of humanitarian aid to the front.<\\/p>\\r\\n\\r\\n<p>It was invented by my family and implemented by me. The site also has two themes.<\\/p>\\r\\n\\r\\n<p>Stack technology:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong><\\/p>\",\"desc_uk\":\"<p>\\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0456\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442, \\u044f\\u043a\\u0438\\u0439 \\u043f\\u043e\\u0432\\u0438\\u043d\\u0435\\u043d \\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0442\\u0438 \\u043b\\u043e\\u0433\\u0456\\u0441\\u0442\\u0438\\u043a\\u0443 \\u0433\\u0443\\u043c\\u0430\\u043d\\u0456\\u0442\\u0430\\u0440\\u043d\\u043e\\u0457 \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0438 \\u043d\\u0430 \\u0444\\u0440\\u043e\\u043d\\u0442.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u0438\\u0434\\u0443\\u043c\\u0430\\u043d\\u0438\\u0439 \\u0431\\u0443\\u0432 \\u043c\\u043e\\u0454\\u044e \\u0440\\u043e\\u0434\\u0438\\u043d\\u043e\\u044e, \\u0430 \\u0440\\u0435\\u0430\\u043b\\u0456\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043c\\u043d\\u043e\\u044e. \\u041d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0456 \\u0442\\u0430\\u043a\\u043e\\u0436 \\u0454 \\u0434\\u0432\\u0456 \\u0442\\u0435\\u043c\\u0438.<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0442\\u0435\\u043a \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0456\\u0439:&nbsp;<strong>PHP 7.4<\\/strong>&nbsp;+&nbsp;<strong>Laravel 8<\\/strong><\\/p>\",\"_token\":\"7dom75jmpsbd5FMWbZHEXhEC5gvLSl3w4cifRSxW\",\"_method\":\"PUT\"}', '2023-04-25 06:17:48', '2023-04-25 06:17:48'),
(1127, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-25 06:17:49', '2023-04-25 06:17:49'),
(1128, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 06:21:47', '2023-04-25 06:21:47'),
(1129, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 06:21:51', '2023-04-25 06:21:51'),
(1130, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 06:23:29', '2023-04-25 06:23:29'),
(1131, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 06:23:33', '2023-04-25 06:23:33'),
(1132, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"Zina Design\",\"company_name_uk\":\"\\u0417\\u0456\\u043d\\u0430 \\u0414\\u0438\\u0437\\u0430\\u0439\\u043d\",\"position_en\":\"PHP developer (Yii2)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Yii2)\",\"text_en\":\"<p>From this moment my career begins. I got a job in this studio first as an intern (because I had no experience, that is, a trainee), and after 2 weeks, they told me that I was good at doing the work and promoted me to the position of Junior PHP Developer. =) During my time working in this studio, I managed to make the back-end for 3 projects (Hvosting, Atari Motors and Soboleva) from scratch and fix the code on the state project (i-lug.gov.ua).<\\/p>\\r\\n\\r\\n<p>I am sure that I would have successfully continued to work, but due to the fact that the damned Russians began a full-scale invasion, a month later the studio fired almost all employees, because the clients disappeared and there was no possibility and sense to keep many developers...<\\/p>\",\"text_uk\":\"<p>\\u0417 \\u0446\\u044c\\u043e\\u0433\\u043e \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442\\u0443 \\u043f\\u043e\\u0447\\u0438\\u043d\\u0430\\u0454\\u0442\\u044c\\u0441\\u044f \\u043c\\u043e\\u044f \\u043a\\u0430\\u0440&#39;\\u0454\\u0440\\u0430. \\u0412 \\u0446\\u044e \\u0441\\u0442\\u0443\\u0434\\u0456\\u044e \\u044f \\u0432\\u043b\\u0430\\u0448\\u0442\\u0443\\u0432\\u0430\\u0432\\u0441\\u044f \\u0441\\u043f\\u043e\\u0447\\u0430\\u0442\\u043a\\u0443 \\u044f\\u043a \\u0441\\u0442\\u0430\\u0436\\u0435\\u0440 (\\u0431\\u043e \\u0431\\u0443\\u0432 \\u0432\\u0456\\u0434\\u043f\\u043e\\u0432\\u0456\\u0434\\u043d\\u043e \\u0431\\u0435\\u0437 \\u0434\\u043e\\u0441\\u0432\\u0456\\u0434\\u0443, \\u0442\\u043e\\u0431\\u0442\\u043e trainee), \\u0430 \\u0432\\u0436\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 2 \\u0442\\u0438\\u0436\\u043d\\u0456, \\u043c\\u0435\\u043d\\u0456 \\u0441\\u043a\\u0430\\u0437\\u0430\\u043b\\u0438, \\u0449\\u043e \\u0443 \\u043c\\u0435\\u043d\\u0435 \\u0434\\u043e\\u0431\\u0440\\u0435 \\u0432\\u0438\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c \\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0443 \\u0456 \\u043f\\u0456\\u0434\\u0432\\u0438\\u0449\\u0438\\u043b\\u0438 \\u043c\\u0435\\u043d\\u0435 \\u0434\\u043e \\u043f\\u043e\\u0441\\u0430\\u0434\\u0438 Junior PHP Developer. =) \\u0417\\u0430 \\u0447\\u0430\\u0441 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0438 \\u0432 \\u0446\\u0456\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0456\\u0457, \\u044f \\u0432\\u0441\\u0442\\u0438\\u0433 \\u0437\\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 back-end \\u0434\\u043b\\u044f 3 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456\\u0432 (Hvosting, Atari Motors \\u0442\\u0430 Soboleva) \\u0437 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u043d\\u0443\\u043b\\u044f \\u0456 \\u043f\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u0438 \\u043a\\u043e\\u0434 \\u043d\\u0430 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0432\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456 (i-lug.gov.ua).<\\/p>\\r\\n\\r\\n<p>\\u042f \\u0432\\u043f\\u0435\\u0432\\u043d\\u0435\\u043d\\u0438\\u0439, \\u0449\\u043e \\u044f \\u0431 \\u0443\\u0441\\u043f\\u0456\\u0448\\u043d\\u043e \\u043f\\u0440\\u043e\\u0434\\u043e\\u0432\\u0436\\u0443\\u0432\\u0430\\u0432 \\u043f\\u0440\\u0430\\u0446\\u044e\\u0432\\u0430\\u0442\\u0438, \\u0430\\u043b\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0442\\u0435, \\u0449\\u043e \\u043a\\u043b\\u044f\\u0442\\u0430 \\u0440\\u0443\\u0441\\u043d\\u044f \\u0440\\u043e\\u0437\\u043f\\u043e\\u0447\\u0430\\u043b\\u0430 \\u043f\\u043e\\u0432\\u043d\\u043e\\u043c\\u0430\\u0441\\u0448\\u0442\\u0430\\u0431\\u043d\\u0435 \\u0432\\u0442\\u043e\\u0440\\u0433\\u043d\\u0435\\u043d\\u043d\\u044f, \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043c\\u0456\\u0441\\u044f\\u0446\\u044c \\u0441\\u0442\\u0443\\u0434\\u0456\\u044f \\u0437\\u0432\\u0456\\u043b\\u044c\\u043d\\u0438\\u043b\\u0430 \\u043c\\u0430\\u0439\\u0436\\u0435 \\u0432\\u0441\\u0438\\u0445 \\u0441\\u043f\\u0456\\u0432\\u0440\\u043e\\u0431\\u0456\\u0442\\u043d\\u0438\\u043a\\u0456, \\u0431\\u043e \\u0437\\u043d\\u0438\\u043a\\u043b\\u0438 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0438 \\u0456 \\u043d\\u0435 \\u0431\\u0443\\u043b\\u043e \\u043c\\u043e\\u0436\\u043b\\u0438\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0456 \\u0441\\u0435\\u043d\\u0441\\u0443 \\u0442\\u0440\\u0438\\u043c\\u0430\\u0442\\u0438 \\u0431\\u0430\\u0433\\u0430\\u0442\\u043e\\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a\\u0456\\u0432...<\\/p>\",\"date_from\":\"2021-10-18\",\"date_to\":\"2022-03-10\",\"is_today\":\"0\",\"_token\":\"7dom75jmpsbd5FMWbZHEXhEC5gvLSl3w4cifRSxW\",\"_method\":\"PUT\"}', '2023-04-25 06:38:59', '2023-04-25 06:38:59'),
(1133, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 06:38:59', '2023-04-25 06:38:59'),
(1134, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 06:42:00', '2023-04-25 06:42:00'),
(1135, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"Zina Design\",\"company_name_uk\":\"\\u0417\\u0456\\u043d\\u0430 \\u0414\\u0438\\u0437\\u0430\\u0439\\u043d\",\"position_en\":\"PHP developer (Yii2)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Yii2)\",\"text_en\":\"<p>From this moment my career begins. I got a job in this studio first as an intern (because I had no experience, that is, a trainee), and after 2 weeks, they told me that I was good at doing the work and promoted me to the position of Junior PHP Developer. =) During my time working in this studio, I managed to make the back-end for 3 projects (Hvosting, Atari Motors and Soboleva) from scratch and fix the code on the state project (i-lug.gov.ua).<\\/p>\\r\\n\\r\\n<p>I am sure that I would have successfully continued to work, but due to the fact that the damned Russians began a full-scale invasion, a month later the studio fired almost all employees, because the clients disappeared and there was no possibility and sense to keep many developers...<\\/p>\",\"text_uk\":\"<p>\\u0417 \\u0446\\u044c\\u043e\\u0433\\u043e \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442\\u0443 \\u043f\\u043e\\u0447\\u0438\\u043d\\u0430\\u0454\\u0442\\u044c\\u0441\\u044f \\u043c\\u043e\\u044f \\u043a\\u0430\\u0440&#39;\\u0454\\u0440\\u0430. \\u0412 \\u0446\\u044e \\u0441\\u0442\\u0443\\u0434\\u0456\\u044e \\u044f \\u0432\\u043b\\u0430\\u0448\\u0442\\u0443\\u0432\\u0430\\u0432\\u0441\\u044f \\u0441\\u043f\\u043e\\u0447\\u0430\\u0442\\u043a\\u0443 \\u044f\\u043a \\u0441\\u0442\\u0430\\u0436\\u0435\\u0440 (\\u0431\\u043e \\u0431\\u0443\\u0432 \\u0432\\u0456\\u0434\\u043f\\u043e\\u0432\\u0456\\u0434\\u043d\\u043e \\u0431\\u0435\\u0437 \\u0434\\u043e\\u0441\\u0432\\u0456\\u0434\\u0443, \\u0442\\u043e\\u0431\\u0442\\u043e trainee), \\u0430 \\u0432\\u0436\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 2 \\u0442\\u0438\\u0436\\u043d\\u0456, \\u043c\\u0435\\u043d\\u0456 \\u0441\\u043a\\u0430\\u0437\\u0430\\u043b\\u0438, \\u0449\\u043e \\u0443 \\u043c\\u0435\\u043d\\u0435 \\u0434\\u043e\\u0431\\u0440\\u0435 \\u0432\\u0438\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c \\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0443 \\u0456 \\u043f\\u0456\\u0434\\u0432\\u0438\\u0449\\u0438\\u043b\\u0438 \\u043c\\u0435\\u043d\\u0435 \\u0434\\u043e \\u043f\\u043e\\u0441\\u0430\\u0434\\u0438 Junior PHP Developer. =) \\u0417\\u0430 \\u0447\\u0430\\u0441 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0438 \\u0432 \\u0446\\u0456\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0456\\u0457, \\u044f \\u0432\\u0441\\u0442\\u0438\\u0433 \\u0437\\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 back-end \\u0434\\u043b\\u044f 3 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456\\u0432 (Hvosting, Atari Motors \\u0442\\u0430 Soboleva) \\u0437 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u043d\\u0443\\u043b\\u044f \\u0456 \\u043f\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u0438 \\u043a\\u043e\\u0434 \\u043d\\u0430 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0432\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456 (<a href=\\\"https:\\/\\/i-lug.gov.ua\\\">i-lug.gov.ua<\\/a>).<\\/p>\\r\\n\\r\\n<p>\\u042f \\u0432\\u043f\\u0435\\u0432\\u043d\\u0435\\u043d\\u0438\\u0439, \\u0449\\u043e \\u044f \\u0431 \\u0443\\u0441\\u043f\\u0456\\u0448\\u043d\\u043e \\u043f\\u0440\\u043e\\u0434\\u043e\\u0432\\u0436\\u0443\\u0432\\u0430\\u0432 \\u043f\\u0440\\u0430\\u0446\\u044e\\u0432\\u0430\\u0442\\u0438, \\u0430\\u043b\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0442\\u0435, \\u0449\\u043e \\u043a\\u043b\\u044f\\u0442\\u0430 \\u0440\\u0443\\u0441\\u043d\\u044f \\u0440\\u043e\\u0437\\u043f\\u043e\\u0447\\u0430\\u043b\\u0430 \\u043f\\u043e\\u0432\\u043d\\u043e\\u043c\\u0430\\u0441\\u0448\\u0442\\u0430\\u0431\\u043d\\u0435 \\u0432\\u0442\\u043e\\u0440\\u0433\\u043d\\u0435\\u043d\\u043d\\u044f, \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043c\\u0456\\u0441\\u044f\\u0446\\u044c \\u0441\\u0442\\u0443\\u0434\\u0456\\u044f \\u0437\\u0432\\u0456\\u043b\\u044c\\u043d\\u0438\\u043b\\u0430 \\u043c\\u0430\\u0439\\u0436\\u0435 \\u0432\\u0441\\u0438\\u0445 \\u0441\\u043f\\u0456\\u0432\\u0440\\u043e\\u0431\\u0456\\u0442\\u043d\\u0438\\u043a\\u0456, \\u0431\\u043e \\u0437\\u043d\\u0438\\u043a\\u043b\\u0438 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0438 \\u0456 \\u043d\\u0435 \\u0431\\u0443\\u043b\\u043e \\u043c\\u043e\\u0436\\u043b\\u0438\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0456 \\u0441\\u0435\\u043d\\u0441\\u0443 \\u0442\\u0440\\u0438\\u043c\\u0430\\u0442\\u0438 \\u0431\\u0430\\u0433\\u0430\\u0442\\u043e\\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a\\u0456\\u0432...<\\/p>\",\"date_from\":\"2021-10-18\",\"date_to\":\"2022-03-10\",\"is_today\":\"0\",\"_token\":\"7dom75jmpsbd5FMWbZHEXhEC5gvLSl3w4cifRSxW\",\"_method\":\"PUT\"}', '2023-04-25 06:42:24', '2023-04-25 06:42:24'),
(1136, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 06:42:24', '2023-04-25 06:42:24'),
(1137, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 06:44:21', '2023-04-25 06:44:21'),
(1138, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"Zina Design\",\"company_name_uk\":\"\\u0417\\u0456\\u043d\\u0430 \\u0414\\u0438\\u0437\\u0430\\u0439\\u043d\",\"position_en\":\"PHP developer (Yii2)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Yii2)\",\"text_en\":\"<p>From this moment my career begins. I got a job in this studio first as an intern (because I had no experience, that is, a trainee), and after 2 weeks, they told me that I was good at doing the work and promoted me to the position of Junior PHP Developer. =) During my time working in this studio, I managed to make the back-end for 3 projects (Hvosting, Atari Motors and Soboleva) from scratch and fix the code on the state project (i-lug.gov.ua).<\\/p>\\r\\n\\r\\n<p>I am sure that I would have successfully continued to work, but due to the fact that the damned Russians began a full-scale invasion, a month later the studio fired almost all employees, because the clients disappeared and there was no possibility and sense to keep many developers...<\\/p>\",\"text_uk\":\"<p>\\u0417 \\u0446\\u044c\\u043e\\u0433\\u043e \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442\\u0443 \\u043f\\u043e\\u0447\\u0438\\u043d\\u0430\\u0454\\u0442\\u044c\\u0441\\u044f \\u043c\\u043e\\u044f \\u043a\\u0430\\u0440&#39;\\u0454\\u0440\\u0430. \\u0412 \\u0446\\u044e \\u0441\\u0442\\u0443\\u0434\\u0456\\u044e \\u044f \\u0432\\u043b\\u0430\\u0448\\u0442\\u0443\\u0432\\u0430\\u0432\\u0441\\u044f \\u0441\\u043f\\u043e\\u0447\\u0430\\u0442\\u043a\\u0443 \\u044f\\u043a \\u0441\\u0442\\u0430\\u0436\\u0435\\u0440 (\\u0431\\u043e \\u0431\\u0443\\u0432 \\u0432\\u0456\\u0434\\u043f\\u043e\\u0432\\u0456\\u0434\\u043d\\u043e \\u0431\\u0435\\u0437 \\u0434\\u043e\\u0441\\u0432\\u0456\\u0434\\u0443, \\u0442\\u043e\\u0431\\u0442\\u043e trainee), \\u0430 \\u0432\\u0436\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 2 \\u0442\\u0438\\u0436\\u043d\\u0456, \\u043c\\u0435\\u043d\\u0456 \\u0441\\u043a\\u0430\\u0437\\u0430\\u043b\\u0438, \\u0449\\u043e \\u0443 \\u043c\\u0435\\u043d\\u0435 \\u0434\\u043e\\u0431\\u0440\\u0435 \\u0432\\u0438\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c \\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0443 \\u0456 \\u043f\\u0456\\u0434\\u0432\\u0438\\u0449\\u0438\\u043b\\u0438 \\u043c\\u0435\\u043d\\u0435 \\u0434\\u043e \\u043f\\u043e\\u0441\\u0430\\u0434\\u0438 Junior PHP Developer. =) \\u0417\\u0430 \\u0447\\u0430\\u0441 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0438 \\u0432 \\u0446\\u0456\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0456\\u0457, \\u044f \\u0432\\u0441\\u0442\\u0438\\u0433 \\u0437\\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 back-end \\u0434\\u043b\\u044f 3 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456\\u0432 (Hvosting, Atari Motors \\u0442\\u0430 Soboleva) \\u0437 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u043d\\u0443\\u043b\\u044f \\u0456 \\u043f\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u0438 \\u043a\\u043e\\u0434 \\u043d\\u0430 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0432\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456 (<a href=\\\"\\/project\\/i-lug\\\" target=\\\"_blank\\\">i-lug.gov.ua<\\/a>).<\\/p>\\r\\n\\r\\n<p>\\u042f \\u0432\\u043f\\u0435\\u0432\\u043d\\u0435\\u043d\\u0438\\u0439, \\u0449\\u043e \\u044f \\u0431 \\u0443\\u0441\\u043f\\u0456\\u0448\\u043d\\u043e \\u043f\\u0440\\u043e\\u0434\\u043e\\u0432\\u0436\\u0443\\u0432\\u0430\\u0432 \\u043f\\u0440\\u0430\\u0446\\u044e\\u0432\\u0430\\u0442\\u0438, \\u0430\\u043b\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0442\\u0435, \\u0449\\u043e \\u043a\\u043b\\u044f\\u0442\\u0430 \\u0440\\u0443\\u0441\\u043d\\u044f \\u0440\\u043e\\u0437\\u043f\\u043e\\u0447\\u0430\\u043b\\u0430 \\u043f\\u043e\\u0432\\u043d\\u043e\\u043c\\u0430\\u0441\\u0448\\u0442\\u0430\\u0431\\u043d\\u0435 \\u0432\\u0442\\u043e\\u0440\\u0433\\u043d\\u0435\\u043d\\u043d\\u044f, \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043c\\u0456\\u0441\\u044f\\u0446\\u044c \\u0441\\u0442\\u0443\\u0434\\u0456\\u044f \\u0437\\u0432\\u0456\\u043b\\u044c\\u043d\\u0438\\u043b\\u0430 \\u043c\\u0430\\u0439\\u0436\\u0435 \\u0432\\u0441\\u0438\\u0445 \\u0441\\u043f\\u0456\\u0432\\u0440\\u043e\\u0431\\u0456\\u0442\\u043d\\u0438\\u043a\\u0456, \\u0431\\u043e \\u0437\\u043d\\u0438\\u043a\\u043b\\u0438 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0438 \\u0456 \\u043d\\u0435 \\u0431\\u0443\\u043b\\u043e \\u043c\\u043e\\u0436\\u043b\\u0438\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0456 \\u0441\\u0435\\u043d\\u0441\\u0443 \\u0442\\u0440\\u0438\\u043c\\u0430\\u0442\\u0438 \\u0431\\u0430\\u0433\\u0430\\u0442\\u043e\\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a\\u0456\\u0432...<\\/p>\",\"date_from\":\"2021-10-18\",\"date_to\":\"2022-03-10\",\"is_today\":\"0\",\"_token\":\"7dom75jmpsbd5FMWbZHEXhEC5gvLSl3w4cifRSxW\",\"_method\":\"PUT\"}', '2023-04-25 06:45:18', '2023-04-25 06:45:18'),
(1139, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 06:45:19', '2023-04-25 06:45:19'),
(1140, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 06:45:47', '2023-04-25 06:45:47'),
(1141, 1, 'admin/eexperiences/1', 'PUT', '127.0.0.1', '{\"order\":\"0\",\"company_name_en\":\"Zina Design\",\"company_name_uk\":\"\\u0417\\u0456\\u043d\\u0430 \\u0414\\u0438\\u0437\\u0430\\u0439\\u043d\",\"position_en\":\"PHP developer (Yii2)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Yii2)\",\"text_en\":\"<p>From this moment my career begins. I got a job in this studio first as an intern (because I had no experience, that is, a trainee), and after 2 weeks, they told me that I was good at doing the work and promoted me to the position of Junior PHP Developer. =) During my time working in this studio, I managed to make the back-end for 3 projects (<a href=\\\"\\/project\\/hvosting\\\" target=\\\"_blank\\\">Hvosting<\\/a>, <a href=\\\"\\/project\\/atari-motors\\\" target=\\\"_blank\\\">Atari Motors<\\/a> and <a href=\\\"\\/project\\/soboleva-international-legal-bureau\\\" target=\\\"_blank\\\">Soboleva<\\/a>) from scratch and fix the code on the state project (<a href=\\\"\\/project\\/i-lug\\\" target=\\\"_blank\\\">i-lug.gov.ua<\\/a>).<\\/p>\\r\\n\\r\\n<p>I am sure that I would have successfully continued to work, but due to the fact that the damned Russians began a full-scale invasion, a month later the studio fired almost all employees, because the clients disappeared and there was no possibility and sense to keep many developers...<\\/p>\",\"text_uk\":\"<p>\\u0417 \\u0446\\u044c\\u043e\\u0433\\u043e \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442\\u0443 \\u043f\\u043e\\u0447\\u0438\\u043d\\u0430\\u0454\\u0442\\u044c\\u0441\\u044f \\u043c\\u043e\\u044f \\u043a\\u0430\\u0440&#39;\\u0454\\u0440\\u0430. \\u0412 \\u0446\\u044e \\u0441\\u0442\\u0443\\u0434\\u0456\\u044e \\u044f \\u0432\\u043b\\u0430\\u0448\\u0442\\u0443\\u0432\\u0430\\u0432\\u0441\\u044f \\u0441\\u043f\\u043e\\u0447\\u0430\\u0442\\u043a\\u0443 \\u044f\\u043a \\u0441\\u0442\\u0430\\u0436\\u0435\\u0440 (\\u0431\\u043e \\u0431\\u0443\\u0432 \\u0432\\u0456\\u0434\\u043f\\u043e\\u0432\\u0456\\u0434\\u043d\\u043e \\u0431\\u0435\\u0437 \\u0434\\u043e\\u0441\\u0432\\u0456\\u0434\\u0443, \\u0442\\u043e\\u0431\\u0442\\u043e trainee), \\u0430 \\u0432\\u0436\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 2 \\u0442\\u0438\\u0436\\u043d\\u0456, \\u043c\\u0435\\u043d\\u0456 \\u0441\\u043a\\u0430\\u0437\\u0430\\u043b\\u0438, \\u0449\\u043e \\u0443 \\u043c\\u0435\\u043d\\u0435 \\u0434\\u043e\\u0431\\u0440\\u0435 \\u0432\\u0438\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c \\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0443 \\u0456 \\u043f\\u0456\\u0434\\u0432\\u0438\\u0449\\u0438\\u043b\\u0438 \\u043c\\u0435\\u043d\\u0435 \\u0434\\u043e \\u043f\\u043e\\u0441\\u0430\\u0434\\u0438 Junior PHP Developer. =) \\u0417\\u0430 \\u0447\\u0430\\u0441 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0438 \\u0432 \\u0446\\u0456\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0456\\u0457, \\u044f \\u0432\\u0441\\u0442\\u0438\\u0433 \\u0437\\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 back-end \\u0434\\u043b\\u044f 3 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456\\u0432 (<a href=\\\"\\/project\\/hvosting\\\" target=\\\"_blank\\\">Hvosting<\\/a>, <a href=\\\"\\/project\\/atari-motors\\\" target=\\\"_blank\\\">Atari Motors<\\/a> \\u0442\\u0430 <a href=\\\"\\/project\\/soboleva-international-legal-bureau\\\" target=\\\"_blank\\\">Soboleva<\\/a>) \\u0437 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u043d\\u0443\\u043b\\u044f \\u0456 \\u043f\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u0438 \\u043a\\u043e\\u0434 \\u043d\\u0430 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0432\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456 (<a href=\\\"\\/project\\/i-lug\\\" target=\\\"_blank\\\">i-lug.gov.ua<\\/a>).<\\/p>\\r\\n\\r\\n<p>\\u042f \\u0432\\u043f\\u0435\\u0432\\u043d\\u0435\\u043d\\u0438\\u0439, \\u0449\\u043e \\u044f \\u0431 \\u0443\\u0441\\u043f\\u0456\\u0448\\u043d\\u043e \\u043f\\u0440\\u043e\\u0434\\u043e\\u0432\\u0436\\u0443\\u0432\\u0430\\u0432 \\u043f\\u0440\\u0430\\u0446\\u044e\\u0432\\u0430\\u0442\\u0438, \\u0430\\u043b\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0442\\u0435, \\u0449\\u043e \\u043a\\u043b\\u044f\\u0442\\u0430 \\u0440\\u0443\\u0441\\u043d\\u044f \\u0440\\u043e\\u0437\\u043f\\u043e\\u0447\\u0430\\u043b\\u0430 \\u043f\\u043e\\u0432\\u043d\\u043e\\u043c\\u0430\\u0441\\u0448\\u0442\\u0430\\u0431\\u043d\\u0435 \\u0432\\u0442\\u043e\\u0440\\u0433\\u043d\\u0435\\u043d\\u043d\\u044f, \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043c\\u0456\\u0441\\u044f\\u0446\\u044c \\u0441\\u0442\\u0443\\u0434\\u0456\\u044f \\u0437\\u0432\\u0456\\u043b\\u044c\\u043d\\u0438\\u043b\\u0430 \\u043c\\u0430\\u0439\\u0436\\u0435 \\u0432\\u0441\\u0438\\u0445 \\u0441\\u043f\\u0456\\u0432\\u0440\\u043e\\u0431\\u0456\\u0442\\u043d\\u0438\\u043a\\u0456, \\u0431\\u043e \\u0437\\u043d\\u0438\\u043a\\u043b\\u0438 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0438 \\u0456 \\u043d\\u0435 \\u0431\\u0443\\u043b\\u043e \\u043c\\u043e\\u0436\\u043b\\u0438\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0456 \\u0441\\u0435\\u043d\\u0441\\u0443 \\u0442\\u0440\\u0438\\u043c\\u0430\\u0442\\u0438 \\u0431\\u0430\\u0433\\u0430\\u0442\\u043e\\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a\\u0456\\u0432...<\\/p>\",\"date_from\":\"2021-10-18\",\"date_to\":\"2022-03-10\",\"is_today\":\"0\",\"_token\":\"7dom75jmpsbd5FMWbZHEXhEC5gvLSl3w4cifRSxW\",\"_method\":\"PUT\"}', '2023-04-25 06:47:52', '2023-04-25 06:47:52'),
(1142, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 06:47:52', '2023-04-25 06:47:52'),
(1143, 1, 'admin/eexperiences/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 06:48:05', '2023-04-25 06:48:05'),
(1144, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 06:48:17', '2023-04-25 06:48:17'),
(1145, 1, 'admin/eexperiences/create', 'GET', '127.0.0.1', '[]', '2023-04-25 06:49:43', '2023-04-25 06:49:43');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1146, 1, 'admin/eexperiences', 'POST', '127.0.0.1', '{\"order\":\"1\",\"company_name_en\":\"WebGenerator\",\"company_name_uk\":\"WebGenerator\",\"position_en\":\"PHP developer (Laravel)\",\"position_uk\":\"PHP \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a (Laravel)\",\"text_en\":\"<p>Before finding a new job, I want to do something to help the country and develop a charitable project (<a href=\\\"\\/project\\/banderol\\\" target=\\\"_blank\\\">Banderol<\\/a>), in the development of which I involved the whole family, and I myself worked on it as a full-stack developer. This project was supposed to simplify the logistics of humanitarian aid at the front, but it was very difficult to promote it (perhaps because I have no experience in &quot;spinning&quot; projects), so I made the decision to stop supporting this project. This was the first project I tried Laravel on.<\\/p>\\r\\n\\r\\n<p>Later, after getting to know each other (through colleagues from a previous job), I got in touch with the WebGenerator development team, who offered me to work with them. I gladly agreed, but the conditions in this company are more like working with friends on a freelance basis (that is, when there are no projects, there is nothing left but to wait for new ones. How long to wait? But who knows...). As part of this team, I worked as a Back-end developer for about 8 months, managing to close 2 projects, but already more difficult ones than in the previous company <a href=\\\"\\/project\\/capital-hld\\\" target=\\\"_blank\\\">HLD Capital<\\/a> and <a href=\\\"\\/project\\/e-stoken\\\">E-STOKEN<\\/a>).<\\/p>\\r\\n\\r\\n<p>It was because of the instability of the projects that I decided to change my job, so I am now looking for a new job. =)<\\/p>\",\"text_uk\":\"<p>\\u041f\\u0435\\u0440\\u0435\\u0434 \\u0442\\u0438\\u043c, \\u044f\\u043a \\u0437\\u043d\\u0430\\u0439\\u0442\\u0438 \\u043d\\u043e\\u0432\\u0443 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0443, \\u044f \\u0445\\u043e\\u0442\\u0456\\u0432 \\u0447\\u0438\\u043c\\u043e\\u0441\\u044c \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0442\\u0438 \\u043a\\u0440\\u0430\\u0457\\u043d\\u0456 \\u0456 \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u0438\\u0432 \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0456\\u0439\\u043d\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 (<a href=\\\"\\/project\\/banderol\\\" target=\\\"_blank\\\">Banderol<\\/a>), \\u0434\\u043e \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043a\\u0438 \\u044f\\u043a\\u043e\\u0433\\u043e, \\u044f \\u0437\\u0430\\u043b\\u0443\\u0447\\u0438\\u0432 \\u0432\\u0441\\u044e \\u0440\\u043e\\u0434\\u0438\\u043d\\u0443, \\u0430 \\u0441\\u0430\\u043c \\u043f\\u0440\\u0430\\u0446\\u044e\\u0432\\u0430\\u0432 \\u043d\\u0430\\u0434 \\u043d\\u0438\\u043c \\u044f\\u043a Full-stack developer. \\u0426\\u0435\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u043f\\u043e\\u0432\\u0438\\u043d\\u0435\\u043d \\u0431\\u0443\\u0432 \\u0441\\u043f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0442\\u0438 \\u043b\\u043e\\u0433\\u0456\\u0441\\u0442\\u0438\\u043a\\u0443 \\u0433\\u0443\\u043c\\u043e\\u043d\\u0456\\u0442\\u0430\\u0440\\u043d\\u043e\\u0457 \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0438 \\u043d\\u0430 \\u0444\\u0440\\u043e\\u043d\\u0442, \\u0430\\u043b\\u0435 \\u0439\\u043e\\u0433\\u043e \\u0431\\u0443\\u043b\\u043e \\u0434\\u0443\\u0436\\u0435 \\u0432\\u0430\\u0436\\u043a\\u043e \\u0440\\u043e\\u0437\\u043f\\u0456\\u0430\\u0440\\u0438\\u0442\\u0438 (\\u043c\\u043e\\u0436\\u043b\\u0438\\u0432\\u043e \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0442\\u0435, \\u0449\\u043e \\u0443 \\u043c\\u0435\\u043d\\u0435 \\u043d\\u0435\\u043c\\u0430\\u0454 \\u0434\\u043e\\u0441\\u0432\\u0456\\u0434\\u0443 \\u0443 &quot;\\u0440\\u043e\\u0437\\u043a\\u0440\\u0443\\u0442\\u0446\\u0456&quot; \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456\\u0432), \\u0442\\u043e\\u043c\\u0443 \\u044f \\u043f\\u0440\\u0438\\u0439\\u043d\\u044f\\u0432 \\u0440\\u0456\\u0448\\u0435\\u043d\\u043d\\u044f, \\u043f\\u0440\\u0438\\u043f\\u0438\\u043d\\u0438\\u0442\\u0438 \\u043f\\u0456\\u0434\\u0442\\u0440\\u0438\\u043c\\u043a\\u0443 \\u0446\\u044c\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443. \\u0426\\u0435 \\u0456 \\u0431\\u0443\\u0432 \\u043f\\u0435\\u0440\\u0448\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442,&nbsp; \\u043d\\u0430 \\u044f\\u043a\\u043e\\u043c\\u0443 \\u044f \\u0441\\u043f\\u0440\\u043e\\u0431\\u0443\\u0432\\u0430 Laravel.<\\/p>\\r\\n\\r\\n<p>\\u0414\\u0430\\u043b\\u0456 \\u043f\\u043e \\u0437\\u043d\\u0430\\u0439\\u043e\\u043c\\u0441\\u0442\\u0432\\u0443 (\\u0447\\u0435\\u0440\\u0435\\u0437 \\u043a\\u043e\\u043b\\u0435\\u0433 \\u043f\\u043e \\u043f\\u043e\\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u0456\\u0439 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0456), \\u044f \\u0432\\u0438\\u0439\\u0448\\u043e\\u0432 \\u043d\\u0430 \\u0437\\u0432&#39;\\u044f\\u0437\\u043e\\u043a \\u0437 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u043e\\u044e \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a\\u0456\\u0432 WebGenerator, \\u044f\\u043a\\u0456 \\u0437\\u0430\\u043f\\u0440\\u043e\\u043f\\u043e\\u043d\\u0443\\u0432\\u0430\\u043b\\u0438 \\u043c\\u0435\\u043d\\u0456 \\u043f\\u0440\\u0430\\u0446\\u044e\\u0432\\u0430\\u0442\\u0438 \\u0437 \\u043d\\u0438\\u043c\\u0438. \\u042f \\u0437 \\u0440\\u0430\\u0434\\u0456\\u0441\\u0442\\u044e \\u043f\\u043e\\u0433\\u043e\\u0434\\u0438\\u0432\\u0441\\u044f, \\u0430\\u043b\\u0435 \\u0443\\u043c\\u043e\\u0432\\u0438 \\u0432 \\u0446\\u0456\\u0439 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u0457, \\u0431\\u0456\\u043b\\u044c\\u0448\\u0435 \\u043d\\u0430\\u0433\\u0430\\u0434\\u0443\\u044e\\u0442\\u044c \\u0440\\u043e\\u0431\\u043e\\u0442\\u0443 \\u0437 \\u0434\\u0440\\u0443\\u0437\\u044f\\u043c\\u0438 \\u043d\\u0430 \\u0444\\u0440\\u0456\\u043b\\u0430\\u043d\\u0441\\u0456 (\\u0442\\u043e\\u0431\\u0442\\u043e, \\u043a\\u043e\\u043b\\u0438 \\u043d\\u0435\\u043c\\u0430\\u0454 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456\\u0432, \\u043d\\u0435 \\u0437\\u0430\\u043b\\u0438\\u0448\\u0430\\u0454\\u0442\\u044c\\u0441\\u044f \\u043d\\u0456\\u0447\\u043e\\u0433\\u043e, \\u043e\\u043a\\u0440\\u0456\\u043c \\u0447\\u0435\\u043a\\u0430\\u0442\\u0438 \\u043d\\u043e\\u0432\\u0438\\u0445. \\u0421\\u043a\\u0456\\u043b\\u044c\\u043a\\u0438 \\u0447\\u0435\\u043a\\u0430\\u0442\\u0438? \\u0422\\u0430 \\u0445\\u0442\\u043e \\u0439\\u043e\\u0433\\u043e \\u0437\\u043d\\u0430\\u0454...). \\u0412 \\u0441\\u043a\\u043b\\u0430\\u0434\\u0456 \\u0446\\u0456\\u0454\\u0457 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0438, \\u044f \\u043f\\u0440\\u043e\\u043f\\u0440\\u0430\\u0446\\u044e\\u0432\\u0430\\u0432 Back-end \\u0440\\u043e\\u0437\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a\\u043e\\u043c \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0437\\u043d\\u043e 8 \\u043c\\u0456\\u0441\\u044f\\u0446\\u0456\\u0432, \\u0432\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0432\\u0448\\u0438 \\u0437\\u0430\\u043a\\u0440\\u0438\\u0442\\u0438 2 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438, \\u0430\\u043b\\u0435 \\u0432\\u0436\\u0435 \\u0431\\u0456\\u043b\\u044c\\u0448 \\u0432\\u0430\\u0436\\u043a\\u0438\\u0445, \\u043d\\u0456\\u0436 \\u0446\\u0435 \\u0431\\u0443\\u043b\\u043e \\u0432 \\u043f\\u043e\\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u0456\\u0439 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u0457 (<a href=\\\"\\/project\\/capital-hld\\\" target=\\\"_blank\\\">HLD Capital<\\/a>&nbsp;\\u0442\\u0430 <a href=\\\"\\/project\\/e-stoken\\\">E-STOKEN<\\/a>).<\\/p>\\r\\n\\r\\n<p>\\u0421\\u0430\\u043c\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u041d\\u0415\\u0441\\u0442\\u0430\\u0431\\u0456\\u043b\\u044c\\u043d\\u0456\\u0441\\u0442\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0456\\u0432, \\u044f \\u0456 \\u0432\\u0438\\u0440\\u0456\\u0448\\u0438\\u0432 \\u0437\\u043c\\u0456\\u043d\\u0438\\u0442\\u0438 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0443, \\u0442\\u043e\\u043c\\u0443 \\u044f \\u0437\\u0430\\u0440\\u0430\\u0437 \\u0456 \\u0432 \\u043f\\u043e\\u0448\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u043e\\u0457 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0438. =)<\\/p>\",\"date_from\":\"2022-05-01\",\"date_to\":\"2023-01-01\",\"is_today\":null,\"_token\":\"7dom75jmpsbd5FMWbZHEXhEC5gvLSl3w4cifRSxW\"}', '2023-04-25 07:09:11', '2023-04-25 07:09:11'),
(1147, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 07:09:11', '2023-04-25 07:09:11'),
(1148, 1, 'admin/_grid-sortable_', 'POST', '127.0.0.1', '{\"_model\":\"App\\\\Models\\\\Eexperience\",\"_sort\":[{\"key\":\"2\",\"sort\":\"1\"},{\"key\":\"1\",\"sort\":\"0\"}],\"_token\":\"7dom75jmpsbd5FMWbZHEXhEC5gvLSl3w4cifRSxW\"}', '2023-04-25 07:09:35', '2023-04-25 07:09:35'),
(1149, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 07:09:35', '2023-04-25 07:09:35'),
(1150, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:20', '2023-04-25 07:14:20'),
(1151, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:27', '2023-04-25 07:14:27'),
(1152, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:31', '2023-04-25 07:14:31'),
(1153, 1, 'admin/requests', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:32', '2023-04-25 07:14:32'),
(1154, 1, 'admin/eexperiences', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:34', '2023-04-25 07:14:34'),
(1155, 1, 'admin/projects', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:36', '2023-04-25 07:14:36'),
(1156, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:38', '2023-04-25 07:14:38'),
(1157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:40', '2023-04-25 07:14:40'),
(1158, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-25 07:14:48', '2023-04-25 07:14:48'),
(1159, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rostik\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"123\",\"_token\":\"7dom75jmpsbd5FMWbZHEXhEC5gvLSl3w4cifRSxW\",\"_method\":\"PUT\"}', '2023-04-25 07:16:30', '2023-04-25 07:16:30'),
(1160, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-25 07:16:30', '2023-04-25 07:16:30'),
(1161, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2023-04-25 07:16:40', '2023-04-25 07:16:40'),
(1162, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 07:16:48', '2023-04-25 07:16:48'),
(1163, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 07:17:00', '2023-04-25 07:17:00'),
(1164, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2023-04-25 07:17:14', '2023-04-25 07:17:14'),
(1165, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 14:45:10', '2023-04-25 14:45:10'),
(1166, 1, 'admin/translations', 'GET', '127.0.0.1', '[]', '2023-04-25 14:45:20', '2023-04-25 14:45:20'),
(1167, 1, 'admin/translations/view/_json', 'GET', '127.0.0.1', '[]', '2023-04-25 14:45:23', '2023-04-25 14:45:23'),
(1168, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Contact Me\",\"value\":\"\\u0417\\u0432\'\\u044f\\u0437\\u0430\\u0442\\u0438\\u0441\\u044f \\u0437\\u0456 \\u043c\\u043d\\u043e\\u044e\",\"pk\":\"15\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\"}', '2023-04-25 14:45:36', '2023-04-25 14:45:36'),
(1169, 1, 'admin/translations/publish/_json', 'POST', '127.0.0.1', '{\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\"}', '2023-04-25 14:45:40', '2023-04-25 14:45:40'),
(1170, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Portfilo\",\"value\":\"\\u0417\\u0430\\u043a\\u0456\\u043d\\u0447\\u0435\\u043d\\u0456 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\",\"pk\":\"17\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\"}', '2023-04-25 15:03:24', '2023-04-25 15:03:24'),
(1171, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"uk|Portfolio\",\"value\":\"\\u0417\\u0430\\u043a\\u0456\\u043d\\u0447\\u0435\\u043d\\u0456 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\",\"pk\":\"3\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\"}', '2023-04-25 15:03:30', '2023-04-25 15:03:30'),
(1172, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"en|Portfilo\",\"value\":\"Completed projects\",\"pk\":\"26\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\"}', '2023-04-25 15:03:48', '2023-04-25 15:03:48'),
(1173, 1, 'admin/translations/edit/_json', 'POST', '127.0.0.1', '{\"name\":\"en|Portfolio\",\"value\":\"Completed projects\",\"pk\":\"0\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\"}', '2023-04-25 15:03:50', '2023-04-25 15:03:50'),
(1174, 1, 'admin/translations/publish/_json', 'POST', '127.0.0.1', '{\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\"}', '2023-04-25 15:05:58', '2023-04-25 15:05:58'),
(1175, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 16:40:54', '2023-04-25 16:40:54'),
(1176, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:40:59', '2023-04-25 16:40:59'),
(1177, 1, 'admin/skills/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:03', '2023-04-25 16:41:03'),
(1178, 1, 'admin/skills/1', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/php_1.svg,\",\"tag\":\"php\",\"label\":\"PHP\",\"order\":\"0\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:41:15', '2023-04-25 16:41:15'),
(1179, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:15', '2023-04-25 16:41:15'),
(1180, 1, 'admin/skills/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:20', '2023-04-25 16:41:20'),
(1181, 1, 'admin/skills/1', 'PUT', '127.0.0.1', '{\"tag\":\"php\",\"label\":\"PHP\",\"order\":\"0\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:41:27', '2023-04-25 16:41:27'),
(1182, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:27', '2023-04-25 16:41:27'),
(1183, 1, 'admin/skills/12/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:30', '2023-04-25 16:41:30'),
(1184, 1, 'admin/skills/12', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/python.png,\",\"tag\":\"python\",\"label\":\"Python\",\"order\":\"1\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:41:41', '2023-04-25 16:41:41'),
(1185, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:41', '2023-04-25 16:41:41'),
(1186, 1, 'admin/skills/12/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:44', '2023-04-25 16:41:44'),
(1187, 1, 'admin/skills/12', 'PUT', '127.0.0.1', '{\"tag\":\"python\",\"label\":\"Python\",\"order\":\"1\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:41:48', '2023-04-25 16:41:48'),
(1188, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:49', '2023-04-25 16:41:49'),
(1189, 1, 'admin/skills/2/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:41:52', '2023-04-25 16:41:52'),
(1190, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:42:11', '2023-04-25 16:42:11'),
(1191, 1, 'admin/skills/2/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:44:42', '2023-04-25 16:44:42'),
(1192, 1, 'admin/skills/2', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/pma.png,\",\"tag\":\"phpmyadmin\",\"label\":\"phpMyAdmin\",\"order\":\"2\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:44:51', '2023-04-25 16:44:51'),
(1193, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:44:52', '2023-04-25 16:44:52'),
(1194, 1, 'admin/skills/2/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:44:54', '2023-04-25 16:44:54'),
(1195, 1, 'admin/skills/2', 'PUT', '127.0.0.1', '{\"tag\":\"phpmyadmin\",\"label\":\"phpMyAdmin\",\"order\":\"2\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:45:00', '2023-04-25 16:45:00'),
(1196, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:00', '2023-04-25 16:45:00'),
(1197, 1, 'admin/skills/3/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:04', '2023-04-25 16:45:04'),
(1198, 1, 'admin/skills/3', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/mysql.png,\",\"tag\":\"mysql\",\"label\":\"MySQL\",\"order\":\"3\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:45:14', '2023-04-25 16:45:14'),
(1199, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:14', '2023-04-25 16:45:14'),
(1200, 1, 'admin/skills/3/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:17', '2023-04-25 16:45:17'),
(1201, 1, 'admin/skills/3', 'PUT', '127.0.0.1', '{\"tag\":\"mysql\",\"label\":\"MySQL\",\"order\":\"3\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:45:22', '2023-04-25 16:45:22'),
(1202, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:23', '2023-04-25 16:45:23'),
(1203, 1, 'admin/skills/4/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:26', '2023-04-25 16:45:26'),
(1204, 1, 'admin/skills/4', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/laravel.png,\",\"tag\":\"laravel\",\"label\":\"laravel\",\"order\":\"4\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:45:35', '2023-04-25 16:45:35'),
(1205, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:35', '2023-04-25 16:45:35'),
(1206, 1, 'admin/skills/4/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:39', '2023-04-25 16:45:39'),
(1207, 1, 'admin/skills/4', 'PUT', '127.0.0.1', '{\"tag\":\"laravel\",\"label\":\"laravel\",\"order\":\"4\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:45:43', '2023-04-25 16:45:43'),
(1208, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:43', '2023-04-25 16:45:43'),
(1209, 1, 'admin/skills/11/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:46', '2023-04-25 16:45:46'),
(1210, 1, 'admin/skills/11', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/yii3_sign.png,\",\"tag\":\"yii2\",\"label\":\"Yii2\",\"order\":\"5\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:45:55', '2023-04-25 16:45:55'),
(1211, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:55', '2023-04-25 16:45:55'),
(1212, 1, 'admin/skills/11/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:45:58', '2023-04-25 16:45:58'),
(1213, 1, 'admin/skills/11', 'PUT', '127.0.0.1', '{\"tag\":\"yii2\",\"label\":\"Yii2\",\"order\":\"5\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:46:03', '2023-04-25 16:46:03'),
(1214, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:03', '2023-04-25 16:46:03'),
(1215, 1, 'admin/skills/5/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:08', '2023-04-25 16:46:08'),
(1216, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/markup.png,\",\"tag\":\"html-and-css\",\"label\":\"HTML & CSS\",\"order\":\"6\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:46:17', '2023-04-25 16:46:17'),
(1217, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:17', '2023-04-25 16:46:17'),
(1218, 1, 'admin/skills/5/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:22', '2023-04-25 16:46:22'),
(1219, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"tag\":\"html-and-css\",\"label\":\"HTML & CSS\",\"order\":\"6\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:46:27', '2023-04-25 16:46:27'),
(1220, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:28', '2023-04-25 16:46:28'),
(1221, 1, 'admin/skills/5/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:32', '2023-04-25 16:46:32'),
(1222, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/markup.png,\",\"tag\":\"html-and-css\",\"label\":\"HTML & CSS\",\"order\":\"6\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:46:39', '2023-04-25 16:46:39'),
(1223, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:39', '2023-04-25 16:46:39'),
(1224, 1, 'admin/skills/5/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:43', '2023-04-25 16:46:43'),
(1225, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"tag\":\"html-and-css\",\"label\":\"HTML & CSS\",\"order\":\"6\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:46:49', '2023-04-25 16:46:49'),
(1226, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:46:49', '2023-04-25 16:46:49'),
(1227, 1, 'admin/skills/5/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:48:23', '2023-04-25 16:48:23'),
(1228, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/markup.png,\",\"tag\":\"html-and-css\",\"label\":\"HTML & CSS\",\"order\":\"6\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:48:30', '2023-04-25 16:48:30'),
(1229, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:48:31', '2023-04-25 16:48:31'),
(1230, 1, 'admin/skills/5/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:48:34', '2023-04-25 16:48:34'),
(1231, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"tag\":\"html-and-css\",\"label\":\"HTML & CSS\",\"order\":\"6\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:48:40', '2023-04-25 16:48:40'),
(1232, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:48:41', '2023-04-25 16:48:41'),
(1233, 1, 'admin/skills/6/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:48:45', '2023-04-25 16:48:45'),
(1234, 1, 'admin/skills/6', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/js.png,\",\"tag\":\"js\",\"label\":\"Java Script\",\"order\":\"7\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:49:11', '2023-04-25 16:49:11'),
(1235, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:12', '2023-04-25 16:49:12'),
(1236, 1, 'admin/skills/6/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:14', '2023-04-25 16:49:14'),
(1237, 1, 'admin/skills/6', 'PUT', '127.0.0.1', '{\"tag\":\"js\",\"label\":\"Java Script\",\"order\":\"7\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:49:20', '2023-04-25 16:49:20'),
(1238, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:20', '2023-04-25 16:49:20'),
(1239, 1, 'admin/skills/7/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:28', '2023-04-25 16:49:28'),
(1240, 1, 'admin/skills/7', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/jq.svg,\",\"tag\":\"jq\",\"label\":\"JQuery\",\"order\":\"8\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:49:36', '2023-04-25 16:49:36'),
(1241, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:37', '2023-04-25 16:49:37'),
(1242, 1, 'admin/skills/7/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:40', '2023-04-25 16:49:40'),
(1243, 1, 'admin/skills/7', 'PUT', '127.0.0.1', '{\"tag\":\"jq\",\"label\":\"JQuery\",\"order\":\"8\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:49:44', '2023-04-25 16:49:44'),
(1244, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:45', '2023-04-25 16:49:45'),
(1245, 1, 'admin/skills/8/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:49', '2023-04-25 16:49:49'),
(1246, 1, 'admin/skills/8', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/botstrap.png,\",\"tag\":\"bootstrap\",\"label\":\"Bootstrap\",\"order\":\"9\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:49:55', '2023-04-25 16:49:55'),
(1247, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:56', '2023-04-25 16:49:56'),
(1248, 1, 'admin/skills/8/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:49:59', '2023-04-25 16:49:59'),
(1249, 1, 'admin/skills/8', 'PUT', '127.0.0.1', '{\"tag\":\"bootstrap\",\"label\":\"Bootstrap\",\"order\":\"9\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:50:04', '2023-04-25 16:50:04'),
(1250, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:04', '2023-04-25 16:50:04'),
(1251, 1, 'admin/skills/9/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:08', '2023-04-25 16:50:08'),
(1252, 1, 'admin/skills/9', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/vue.png,\",\"tag\":\"vue\",\"label\":\"Vue.js\",\"order\":\"10\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:50:15', '2023-04-25 16:50:15'),
(1253, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:15', '2023-04-25 16:50:15'),
(1254, 1, 'admin/skills/9/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:19', '2023-04-25 16:50:19'),
(1255, 1, 'admin/skills/9', 'PUT', '127.0.0.1', '{\"tag\":\"vue\",\"label\":\"Vue.js\",\"order\":\"10\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:50:25', '2023-04-25 16:50:25'),
(1256, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:25', '2023-04-25 16:50:25'),
(1257, 1, 'admin/skills/10/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:28', '2023-04-25 16:50:28'),
(1258, 1, 'admin/skills/10', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/git.png,\",\"tag\":\"git\",\"label\":\"Git\",\"order\":\"11\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:50:43', '2023-04-25 16:50:43'),
(1259, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:43', '2023-04-25 16:50:43'),
(1260, 1, 'admin/skills/10/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:46', '2023-04-25 16:50:46'),
(1261, 1, 'admin/skills/10', 'PUT', '127.0.0.1', '{\"tag\":\"git\",\"label\":\"Git\",\"order\":\"11\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:50:53', '2023-04-25 16:50:53'),
(1262, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:50:53', '2023-04-25 16:50:53'),
(1263, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-25 16:54:28', '2023-04-25 16:54:28'),
(1264, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:54:32', '2023-04-25 16:54:32'),
(1265, 1, 'admin/skills/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:54:35', '2023-04-25 16:54:35'),
(1266, 1, 'admin/skills/1', 'PUT', '127.0.0.1', '{\"image_file_del_\":\"images\\/php_PNG27.png,\",\"tag\":\"php\",\"label\":\"PHP\",\"order\":\"0\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:54:43', '2023-04-25 16:54:43'),
(1267, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:54:44', '2023-04-25 16:54:44'),
(1268, 1, 'admin/skills/1/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:54:46', '2023-04-25 16:54:46'),
(1269, 1, 'admin/skills/1', 'PUT', '127.0.0.1', '{\"tag\":\"php\",\"label\":\"PHP\",\"order\":\"0\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:54:51', '2023-04-25 16:54:51'),
(1270, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:54:52', '2023-04-25 16:54:52'),
(1271, 1, 'admin/skills/5/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:54:57', '2023-04-25 16:54:57'),
(1272, 1, 'admin/skills/5', 'PUT', '127.0.0.1', '{\"tag\":\"html-and-css\",\"label\":\"HTML & CSS\",\"order\":\"6\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:55:02', '2023-04-25 16:55:02'),
(1273, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:03', '2023-04-25 16:55:03'),
(1274, 1, 'admin/skills/5/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:07', '2023-04-25 16:55:07'),
(1275, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:09', '2023-04-25 16:55:09'),
(1276, 1, 'admin/skills/6/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:12', '2023-04-25 16:55:12'),
(1277, 1, 'admin/skills/6', 'PUT', '127.0.0.1', '{\"tag\":\"js\",\"label\":\"Java Script\",\"order\":\"7\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:55:17', '2023-04-25 16:55:17'),
(1278, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:18', '2023-04-25 16:55:18'),
(1279, 1, 'admin/skills/6/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:20', '2023-04-25 16:55:20'),
(1280, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:22', '2023-04-25 16:55:22'),
(1281, 1, 'admin/skills/8/edit', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:26', '2023-04-25 16:55:26'),
(1282, 1, 'admin/skills/8', 'PUT', '127.0.0.1', '{\"tag\":\"bootstrap\",\"label\":\"Bootstrap\",\"order\":\"9\",\"_token\":\"YqX0iZZZNlkpavLQWaee1zsdYBz8Sz0LabU9IPf5\",\"_method\":\"PUT\"}', '2023-04-25 16:55:31', '2023-04-25 16:55:31'),
(1283, 1, 'admin/skills', 'GET', '127.0.0.1', '[]', '2023-04-25 16:55:31', '2023-04-25 16:55:31');

-- --------------------------------------------------------

--
-- Структура таблиці `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2023-04-22 08:49:23', '2023-04-22 08:49:23'),
(7, 'Page designer', 'ext.page-designer', '', '/page-designer*', '2023-04-22 13:18:50', '2023-04-22 13:18:50');

-- --------------------------------------------------------

--
-- Структура таблиці `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-04-22 08:40:01', '2023-04-22 08:40:01');

-- --------------------------------------------------------

--
-- Структура таблиці `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$BlaK2M1OHhrFjwlYGBPnsO./wuaLwNwBHdEH3NFFeArDCEeslHYd2', 'Rostik', 'images/photo_2023-04-13_19-59-38.jpg', 'HgmJ9i8gJcvSEvOgpCNiTDpVCqI6HqlVXppGsK9zRQtC1uumVvB5dSZGcbQQ', '2023-04-22 08:40:01', '2023-04-25 07:16:30');

-- --------------------------------------------------------

--
-- Структура таблиці `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name_uk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_uk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_uk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date DEFAULT NULL,
  `is_today` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `experiences`
--

INSERT INTO `experiences` (`id`, `company_name_en`, `company_name_uk`, `position_en`, `position_uk`, `text_en`, `text_uk`, `date_from`, `date_to`, `is_today`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Zina Design', 'Зіна Дизайн', 'PHP developer (Yii2)', 'PHP розробник (Yii2)', '<p>From this moment my career begins. I got a job in this studio first as an intern (because I had no experience, that is, a trainee), and after 2 weeks, they told me that I was good at doing the work and promoted me to the position of Junior PHP Developer. =) During my time working in this studio, I managed to make the back-end for 3 projects (<a href=\"/project/hvosting\" target=\"_blank\">Hvosting</a>, <a href=\"/project/atari-motors\" target=\"_blank\">Atari Motors</a> and <a href=\"/project/soboleva-international-legal-bureau\" target=\"_blank\">Soboleva</a>) from scratch and fix the code on the state project (<a href=\"/project/i-lug\" target=\"_blank\">i-lug.gov.ua</a>).</p>\r\n\r\n<p>I am sure that I would have successfully continued to work, but due to the fact that the damned Russians began a full-scale invasion, a month later the studio fired almost all employees, because the clients disappeared and there was no possibility and sense to keep many developers...</p>', '<p>З цього моменту починається моя кар&#39;єра. В цю студію я влаштувався спочатку як стажер (бо був відповідно без досвіду, тобто trainee), а вже через 2 тижні, мені сказали, що у мене добре виходить робити роботу і підвищили мене до посади Junior PHP Developer. =) За час роботи в цій студії, я встиг зробити back-end для 3 проектів (<a href=\"/project/hvosting\" target=\"_blank\">Hvosting</a>, <a href=\"/project/atari-motors\" target=\"_blank\">Atari Motors</a> та <a href=\"/project/soboleva-international-legal-bureau\" target=\"_blank\">Soboleva</a>) з самого нуля і підправити код на державному проекті (<a href=\"/project/i-lug\" target=\"_blank\">i-lug.gov.ua</a>).</p>\r\n\r\n<p>Я впевнений, що я б успішно продовжував працювати, але через те, що клята русня розпочала повномасштабне вторгнення, через місяць студія звільнила майже всих співробітникі, бо зникли клієнти і не було можливости і сенсу тримати багаторозробників...</p>', '2021-10-18', '2022-03-10', 0, 1, '2023-04-24 14:53:04', '2023-04-25 07:09:35'),
(2, 'WebGenerator', 'WebGenerator', 'PHP developer (Laravel)', 'PHP розробник (Laravel)', '<p>Before finding a new job, I want to do something to help the country and develop a charitable project (<a href=\"/project/banderol\" target=\"_blank\">Banderol</a>), in the development of which I involved the whole family, and I myself worked on it as a full-stack developer. This project was supposed to simplify the logistics of humanitarian aid at the front, but it was very difficult to promote it (perhaps because I have no experience in &quot;spinning&quot; projects), so I made the decision to stop supporting this project. This was the first project I tried Laravel on.</p>\r\n\r\n<p>Later, after getting to know each other (through colleagues from a previous job), I got in touch with the WebGenerator development team, who offered me to work with them. I gladly agreed, but the conditions in this company are more like working with friends on a freelance basis (that is, when there are no projects, there is nothing left but to wait for new ones. How long to wait? But who knows...). As part of this team, I worked as a Back-end developer for about 8 months, managing to close 2 projects, but already more difficult ones than in the previous company <a href=\"/project/capital-hld\" target=\"_blank\">HLD Capital</a> and <a href=\"/project/e-stoken\">E-STOKEN</a>).</p>\r\n\r\n<p>It was because of the instability of the projects that I decided to change my job, so I am now looking for a new job. =)</p>', '<p>Перед тим, як знайти нову роботу, я хотів чимось допомогти країні і розробив благодійний проект (<a href=\"/project/banderol\" target=\"_blank\">Banderol</a>), до розробки якого, я залучив всю родину, а сам працював над ним як Full-stack developer. Цей проект повинен був спростити логістику гумонітарної допомоги на фронт, але його було дуже важко розпіарити (можливо через те, що у мене немає досвіду у &quot;розкрутці&quot; проектів), тому я прийняв рішення, припинити підтримку цього проекту. Це і був перший проект,&nbsp; на якому я спробува Laravel.</p>\r\n\r\n<p>Далі по знайомству (через колег по попередній роботі), я вийшов на зв&#39;язок з командою розробників WebGenerator, які запропонували мені працювати з ними. Я з радістю погодився, але умови в цій компанії, більше нагадують роботу з друзями на фрілансі (тобто, коли немає проектів, не залишається нічого, окрім чекати нових. Скільки чекати? Та хто його знає...). В складі цієї команди, я пропрацював Back-end розробником приблизно 8 місяців, встигнувши закрити 2 проекти, але вже більш важких, ніж це було в попередній компанії (<a href=\"/project/capital-hld\" target=\"_blank\">HLD Capital</a>&nbsp;та <a href=\"/project/e-stoken\">E-STOKEN</a>).</p>\r\n\r\n<p>Саме через НЕстабільність проектів, я і вирішив змінити роботу, тому я зараз і в пошуках нової роботи. =)</p>', '2022-05-01', '2023-01-01', 0, 0, '2023-04-25 07:09:11', '2023-04-25 07:09:35');

-- --------------------------------------------------------

--
-- Структура таблиці `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп даних таблиці `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'uk', '_json', 'Завантаження', NULL, '2023-04-23 12:34:45', '2023-04-23 12:34:45'),
(2, 0, 'uk', '_json', 'About me', 'Про мене', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(3, 0, 'uk', '_json', 'Portfolio', 'Закінчені проекти', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(4, 0, 'uk', '_json', 'Contact', 'Контакти', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(5, 0, 'uk', '_json', 'Download', 'Завантажити', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(6, 0, 'uk', '_json', 'Search', 'Пошук', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(7, 0, 'uk', '_json', 'Projects', 'Проекти', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(8, 0, 'uk', '_json', 'Tags', 'Теги', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(9, 0, 'uk', '_json', 'Language', 'Мова', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(10, 0, 'uk', '_json', 'See More', 'Детальніше', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(11, 0, 'uk', '_json', 'Description', 'Опис', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(12, 0, 'uk', '_json', 'Images', 'Картинки', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(13, 0, 'uk', '_json', 'Projects witch tag', 'Проекти з тегом', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(14, 0, 'uk', '_json', 'I\'M', 'Я', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(15, 0, 'uk', '_json', 'Contact Me', 'Зв\'язатися зі мною', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(16, 0, 'uk', '_json', 'My skills', 'Мої навички', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(17, 0, 'uk', '_json', 'Portfilo', 'Закінчені проекти', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(18, 0, 'uk', '_json', 'View More', 'Дивитися більше', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(19, 0, 'uk', '_json', 'Experience', 'Досвід', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(20, 0, 'uk', '_json', 'Name', 'Ім\'я', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(21, 0, 'uk', '_json', 'Email', NULL, '2023-04-23 12:46:28', '2023-04-23 12:46:28'),
(22, 0, 'uk', '_json', 'Phone', 'Номер телефону', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(23, 0, 'uk', '_json', 'or', 'або', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(24, 0, 'uk', '_json', 'Send', 'Відправити', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(25, 0, 'uk', '_json', 'My Contacts', 'Мої контакти', '2023-04-23 12:46:28', '2023-04-25 15:05:58'),
(26, 0, 'en', '_json', 'Portfilo', 'Completed projects', '2023-04-23 12:52:57', '2023-04-25 15:05:58'),
(27, 0, 'en', '_json', 'Завантаження', 'Loading', '2023-04-23 12:54:29', '2023-04-25 15:05:58'),
(28, 0, 'uk', '_json', 'More project', 'Проекти', '2023-04-23 13:50:18', '2023-04-25 15:05:58'),
(30, 0, 'uk', '_json', 'Resume', 'Резюме', '2023-04-23 13:50:18', '2023-04-25 15:05:58'),
(31, 0, 'uk', '_json', 'Thank you! Your review has been sent!', 'Дякую! Ваш запит надіслано!', '2023-04-24 18:25:15', '2023-04-25 15:05:58'),
(32, 0, 'en', '_json', 'Portfolio', 'Completed projects', '2023-04-25 15:03:50', '2023-04-25 15:05:58');

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(7, '2023_04_22_120234_create_about_me_table', 3),
(8, '2022_02_17_184159_create_page_designer_table', 4),
(9, '2022_05_10_121145_create_page_designer_images_table', 4),
(10, '2022_05_10_121254_create_page_designer_video_table', 4),
(11, '2022_05_10_121346_create_page_designer_text_table', 4),
(12, '2022_05_10_121503_create_page_designer_inline_gallery_table', 4),
(13, '2022_05_10_121739_create_page_designer_embed_table', 4),
(17, '2023_04_22_205654_create_about_mes_table', 5),
(18, '2014_04_02_193005_create_translations_table', 6),
(20, '2023_04_23_142433_edit_users', 7),
(22, '2023_04_23_173058_edit_about', 8),
(23, '2023_04_23_191417_create_skills_table', 9),
(24, '2023_04_23_194827_create_skills_table', 10),
(25, '2023_04_23_195939_create_skills_table', 11),
(26, '2023_04_23_204636_create_projects_table', 12),
(27, '2023_04_24_091102_create_projects_table', 13),
(29, '2023_04_24_105100_create_projects_table', 14),
(32, '2023_04_24_110019_create_project_skills_table', 15),
(33, '2023_04_24_124428_edit_projects_table', 16),
(34, '2023_04_24_132956_added_slug_to_projects', 17),
(35, '2023_04_24_165546_edit_about_mes_table', 18),
(40, '2023_04_24_173124_create_experiences_table', 19),
(42, '2023_04_24_204701_create_requests_table', 20);

-- --------------------------------------------------------

--
-- Структура таблиці `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `titule_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc_uk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_uk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`images`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_view_main` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `projects`
--

INSERT INTO `projects` (`id`, `titule_img`, `order`, `name_en`, `name_uk`, `short_desc_en`, `short_desc_uk`, `desc_en`, `desc_uk`, `images`, `created_at`, `updated_at`, `is_view_main`, `slug`) VALUES
(1, 'images/demo.png', 0, 'Capital HLD', 'Capital HLD', '<p>The trading exchange, where there is trading of crypto, physical assets, and the game &quot;binary option&quot;...</p>', '<p>Трейдинг біржа, на якій є торгівля криптою, фіз-активами, та гра &quot;бінарний опціон&quot;...</p>', '<p>The trading exchange, where there is trading of crypto, physical assets, and the game &quot;binary option&quot;, also on this site there are 2 languages: Ukrainian and ₚosian.</p>\r\n\r\n<p>Stack technology:&nbsp;<strong>PHP 8</strong>&nbsp;+&nbsp;<strong>Laravel 8</strong>&nbsp;+&nbsp;<strong>Vue.js 3</strong></p>\r\n\r\n<p>Current website:&nbsp;<a href=\"https://www.capital-hld.com/\" target=\"_blank\">https://www.capital-hld.com/</a></p>', '<p>Трейдинг біржа, на якій є торгівля криптою, фіз-активами, та гра &quot;бінарний опціон&quot;, також на цьому сайті є 2 мови: українська і&nbsp;ₚосійська.</p>\r\n\r\n<p>Стек технологій:&nbsp;<strong>PHP 8</strong>&nbsp;+&nbsp;<strong>Laravel 8</strong>&nbsp;+&nbsp;<strong>Vue.js 3</strong></p>\r\n\r\n<p>Діючий сайт:&nbsp;<a href=\"https://www.capital-hld.com/\" target=\"_blank\">https://www.capital-hld.com/</a></p>', '[\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_22.48.32.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_22.50.10.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_22.50.50.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_22.52.10.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_22.52.52.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_22.53.41.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_22.54.29.png\"]', '2023-04-24 09:42:52', '2023-04-24 10:14:02', 1, 'capital-hld'),
(2, 'images/demo_1.png', 1, 'E-STOKEN (Anti waste)', 'E-STOKEN (Проти відходів)', '<p>The site is focused on selling/buying products at a discount...</p>', '<p>Сaйт який орієнтований на продажу/купівлю продукції з уцінкою...</p>', '<p>The site is focused on selling/buying products at a discount. The site has 3 types of users, chat, product filters, and various sorting. The site is also available in 5 languages: Ukrainian, German, Polish, French, English.</p>\r\n\r\n<p>Technology stack:&nbsp;<strong>PHP 8</strong>&nbsp;+&nbsp;<strong>Laravel 8</strong>&nbsp;+&nbsp;<strong>Vue.js 3</strong></p>\r\n\r\n<p>Current website:&nbsp;<a href=\"https://anti-waste.webgentest.top/uk\" target=\"_blank\">https://anti-waste.webgentest.top/uk</a></p>', '<p>Сaйт який орієнтований на продажу/купівлю продукції з уцінкою. На сайті є 3 типи юзерів, чат, фільтри товарів, та різноманітні сортування. Також на сайті доступно 5 мов: українська, німецька, польська, французька, англійська.</p>\r\n\r\n<p>Стек технологій:&nbsp;<strong>PHP 8</strong>&nbsp;+&nbsp;<strong>Laravel 8</strong>&nbsp;+&nbsp;<strong>Vue.js 3</strong></p>\r\n\r\n<p>Діючий сайт:&nbsp;<a href=\"https://anti-waste.webgentest.top/uk\" target=\"_blank\">https://anti-waste.webgentest.top/uk</a></p>', '[\"images\\/Add product.png\",\"images\\/Add user.png\",\"images\\/Cart is full.png\",\"images\\/Chat (open).png\",\"images\\/Chats.png\",\"images\\/Company settings.png\",\"images\\/Dashboard (overview).png\",\"images\\/List of products.png\",\"images\\/Login.png\",\"images\\/Main page (unauthorized user).png\",\"images\\/Main page (unauthorized).png\",\"images\\/Page of product ( to sell ).png\",\"images\\/Product management.png\",\"images\\/Profile settings.png\",\"images\\/Register as a buyer 3.png\",\"images\\/Register as a buyer 4.png\",\"images\\/Requests (for suppliers).png\",\"images\\/Supplier page.png\",\"images\\/User managment.png\"]', '2023-04-24 09:54:33', '2023-04-24 14:25:56', 1, 'e-stoken'),
(3, 'images/demo_2.png', 2, 'Banderol', 'БандерОЛЬ', '<p>A charity site that should simplify the logistics of humanitarian aid to the front...</p>', '<p>Благодійний сайт, який повинен спростити логістику гуманітарної допомоги на фронт...</p>', '<p>A charity site that should simplify the logistics of humanitarian aid to the front.</p>\r\n\r\n<p>It was invented by my family and implemented by me. The site also has two themes.</p>\r\n\r\n<p>Stack technology:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Laravel 8</strong></p>', '<p>Благодійний сайт, який повинен спростити логістику гуманітарної допомоги на фронт.</p>\r\n\r\n<p>Придуманий був моєю родиною, а реалізований мною. На сайті також є дві теми.</p>\r\n\r\n<p>Стек технологій:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Laravel 8</strong></p>', '[\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.32.49.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.34.08.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.34.40.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.35.48.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.36.38.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.37.01.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.37.20.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.37.47.png\",\"images\\/\\u0421\\u043a\\u0440\\u0438\\u043d\\u0448\\u043e\\u0442 30.12.22_21.38.13.png\"]', '2023-04-24 10:06:51', '2023-04-24 10:14:02', 1, 'banderol'),
(4, 'images/demo_3.png', 3, 'Hvosting', 'Hvosting', '<p>HVOSTING.ua is one of the most famous hosting companies in Ukraine...</p>', '<p>HVOSTING.ua &mdash; одна з найвідоміших хостингових компаній України...</p>', '<p>HVOSTING.ua is one of the most famous hosting companies in Ukraine.</p>\r\n\r\n<p>Unfortunately, until the Orcs invaded the territory of independent Ukraine, I managed to make only the admin panel for the site, and my colleagues did the design and layout.</p>\r\n\r\n<p>Technology stack:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Yii2</strong></p>', '<p>HVOSTING.ua &mdash; одна з найвідоміших хостингових компаній України.</p>\r\n\r\n<p>На жаль, доки на територію незалежної України не поперлися орки, я встиг зробити тільки адмін панель для сайту, а колеги по роботі дизайн, та верстку.</p>\r\n\r\n<p>Стек технологій:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Yii2</strong></p>', '[\"images\\/hvosting-actions.webp\",\"images\\/hvosting-domains-1.webp\",\"images\\/hvosting-home.webp\"]', '2023-04-24 10:18:53', '2023-04-24 10:18:53', 1, 'hvosting'),
(5, 'images/demo_4.png', 4, 'Atari Motors', 'Atari Motors', '<p>The landing page is made in two languages: the main Ukrainian...</p>', '<p>Лендінг зроблено двома мовами: основна українська...</p>', '<p>The landing page is made in two languages: the main Ukrainian, and a translated version is available for searches in&nbsp;ₚussian.</p>\r\n\r\n<p>Stack technology:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Yii2</strong></p>\r\n\r\n<p>Current website:&nbsp;<a href=\"https://cars.atari-motors.com.ua/\" target=\"_blank\">https://cars.atari-motors.com.ua/</a></p>', '<p>Лендінг зроблено двома мовами: основна українська, а для пошукових запитів&nbsp;ₚосійською мовою доступна перекладена версія.</p>\r\n\r\n<p>Стек технологій:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Yii2</strong></p>\r\n\r\n<p>﻿﻿Діючий сайт:&nbsp;<a href=\"https://cars.atari-motors.com.ua/\" target=\"_blank\">https://cars.atari-motors.com.ua/</a></p>', '[\"images\\/atari-motors-01.webp\",\"images\\/atari-motors-06.webp\",\"images\\/atari-motors-catalog.webp\"]', '2023-04-24 10:20:56', '2023-04-24 10:20:56', 1, 'atari-motors'),
(6, 'images/demo_5.png', 5, 'Department of Innovative Development of the Luhansk RSA', 'Департамент інноваційного розвитку Луганської ОДА', '<p>i-Lug.gov.ua is a separate portal for the Department of International Technical Assistance...</p>', '<p>i-Lug.gov.ua &mdash; це окремий портал для Департаменту міжнародної технічної допомоги...</p>', '<p>i-Lug.gov.ua is a separate portal for the Department of International Technical Assistance, Innovative Development and External Relations of the Luhansk Regional State Administration in Severodonetsk.</p>\r\n\r\n<p>Stack technology:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Yii2</strong></p>\r\n\r\n<p>Current website:&nbsp;<a href=\"https://i-lug.gov.ua/\" target=\"_blank\">https://i-lug.gov.ua/</a></p>', '<p>i-Lug.gov.ua &mdash; це окремий портал для Департаменту міжнародної технічної допомоги, інноваційного розвитку та зовнішніх зносин Луганської обласної державної адміністрації у Сєвєродонецьку.</p>\r\n\r\n<p>Стек технологій:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Yii2</strong></p>\r\n\r\n<p>Діючий сайт:&nbsp;<a href=\"https://i-lug.gov.ua/\" target=\"_blank\">https://i-lug.gov.ua/</a></p>', '[\"images\\/i-lug-about-us.webp\",\"images\\/i-lug-e-democracy.webp\",\"images\\/i-lug-home-01.webp\",\"images\\/i-lug-why-luhansk.webp\"]', '2023-04-24 10:23:29', '2023-04-24 10:23:29', 1, 'i-lug'),
(7, 'images/demo_6.png', 6, 'Soboleva International Legal Bureau', 'Міжнародне Юридичне Бюро Соболєвої', '<p>Soboleva International Law Office is a family law company from Dnipro...</p>', '<p>Міжнародне Юридичне Бюро Соболєвої &ndash; сімейна юридична компанія з Дніпра...</p>', '<p>Soboleva International Law Office is a family law company from Dnipro, specializing in international law.</p>\r\n\r\n<p>Stack technology:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Yii2</strong></p>\r\n\r\n<p>Current website:&nbsp;<a href=\"https://www.sobolevalaw.com/\" target=\"_blank\">https://www.sobolevalaw.com</a></p>', '<p>Міжнародне Юридичне Бюро Соболєвої &ndash; сімейна юридична компанія з Дніпра, яка спеціалізується на міжнародному праві.</p>\r\n\r\n<p>Стек технологій:&nbsp;<strong>PHP 7.4</strong>&nbsp;+&nbsp;<strong>Yii2</strong></p>\r\n\r\n<p>Діючий сайт:&nbsp;<a href=\"https://www.sobolevalaw.com/\" target=\"_blank\">https://www.sobolevalaw.com</a></p>', '[\"images\\/sobolevalaw-about.webp\",\"images\\/sobolevalaw-home-01.webp\",\"images\\/sobolevalaw-projects-01.webp\"]', '2023-04-24 10:25:46', '2023-04-24 12:45:20', 0, 'soboleva-international-legal-bureau');

-- --------------------------------------------------------

--
-- Структура таблиці `project_skills`
--

CREATE TABLE `project_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `skills_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `project_skills`
--

INSERT INTO `project_skills` (`id`, `project_id`, `skills_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 1, 3, NULL, NULL),
(8, 1, 2, NULL, NULL),
(9, 1, 6, NULL, NULL),
(10, 1, 7, NULL, NULL),
(11, 1, 9, NULL, NULL),
(12, 1, 5, NULL, NULL),
(13, 1, 10, NULL, NULL),
(14, 2, 1, NULL, NULL),
(15, 2, 4, NULL, NULL),
(16, 2, 3, NULL, NULL),
(17, 2, 2, NULL, NULL),
(18, 2, 5, NULL, NULL),
(19, 2, 6, NULL, NULL),
(20, 2, 7, NULL, NULL),
(21, 2, 9, NULL, NULL),
(22, 2, 10, NULL, NULL),
(23, 3, 1, NULL, NULL),
(24, 3, 4, NULL, NULL),
(25, 3, 3, NULL, NULL),
(26, 3, 2, NULL, NULL),
(28, 3, 7, NULL, NULL),
(29, 3, 6, NULL, NULL),
(30, 3, 5, NULL, NULL),
(31, 3, 10, NULL, NULL),
(32, 4, 1, NULL, NULL),
(33, 4, 11, NULL, NULL),
(34, 4, 3, NULL, NULL),
(35, 4, 2, NULL, NULL),
(36, 4, 6, NULL, NULL),
(37, 4, 7, NULL, NULL),
(38, 4, 5, NULL, NULL),
(39, 4, 10, NULL, NULL),
(40, 5, 1, NULL, NULL),
(41, 5, 11, NULL, NULL),
(42, 5, 3, NULL, NULL),
(43, 5, 2, NULL, NULL),
(44, 5, 5, NULL, NULL),
(45, 5, 6, NULL, NULL),
(46, 5, 7, NULL, NULL),
(47, 5, 10, NULL, NULL),
(48, 6, 1, NULL, NULL),
(49, 6, 11, NULL, NULL),
(50, 6, 3, NULL, NULL),
(51, 6, 2, NULL, NULL),
(52, 6, 5, NULL, NULL),
(53, 6, 6, NULL, NULL),
(54, 6, 7, NULL, NULL),
(55, 6, 10, NULL, NULL),
(56, 7, 1, NULL, NULL),
(57, 7, 11, NULL, NULL),
(58, 7, 3, NULL, NULL),
(59, 7, 2, NULL, NULL),
(60, 7, 5, NULL, NULL),
(61, 7, 6, NULL, NULL),
(62, 7, 7, NULL, NULL),
(63, 7, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `skills`
--

INSERT INTO `skills` (`id`, `image`, `tag`, `label`, `order`, `created_at`, `updated_at`) VALUES
(1, 'images/php_PNG2sdfg7.png', 'php', 'PHP', 0, '2023-04-23 17:01:57', '2023-04-25 16:54:51'),
(2, 'images/PhpMyAdmin_logo.svg.png', 'phpmyadmin', 'phpMyAdmin', 2, '2023-04-23 17:18:47', '2023-04-25 16:45:00'),
(3, 'images/mysql_PNG14.png', 'mysql', 'MySQL', 3, '2023-04-23 17:20:08', '2023-04-25 16:45:22'),
(4, 'images/laravel.png', 'laravel', 'laravel', 4, '2023-04-23 17:21:15', '2023-04-25 16:45:43'),
(5, 'images/markufghps.png', 'html-and-css', 'HTML & CSS', 6, '2023-04-23 17:22:21', '2023-04-25 16:55:02'),
(6, 'images/javascript-logo-transparefghjjnt-logo-javascript-images-3.png', 'js', 'Java Script', 7, '2023-04-23 17:22:58', '2023-04-25 16:55:17'),
(7, 'images/jquery-badge.png', 'jq', 'JQuery', 8, '2023-04-23 17:23:40', '2023-04-25 16:49:44'),
(8, 'images/bootstrasdfp-4.png', 'bootstrap', 'Bootstrap', 9, '2023-04-23 17:24:03', '2023-04-25 16:55:31'),
(9, 'images/vuejs.png', 'vue', 'Vue.js', 10, '2023-04-23 17:25:44', '2023-04-25 16:50:25'),
(10, 'images/git.png', 'git', 'Git', 11, '2023-04-23 17:26:16', '2023-04-25 16:50:53'),
(11, 'images/yii-php-framework-icon.png', 'yii2', 'Yii2', 5, '2023-04-24 09:56:50', '2023-04-25 16:46:03'),
(12, 'images/11639606208juafml5qemwitdwegpwemoqzfeu9b0wkf4o8zoymniu5jyxm0cvol1okiqa6hrobxg99pkw0b1aah28htwczuinanbdniwshbkcp.png', 'python', 'Python', 1, '2023-04-24 10:00:06', '2023-04-25 16:41:48');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'rkhorolskij@gmail.com', '2023-04-22 09:59:03', '$2y$10$06oSoR83QiTABoMYv1GiBO/41OteiskyPGJCYnMHmxiZdT4c2IY.G', NULL, '2023-04-22 09:59:13', '2023-04-22 09:59:13');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `about_mes`
--
ALTER TABLE `about_mes`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Індекси таблиці `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Індекси таблиці `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Індекси таблиці `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Індекси таблиці `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Індекси таблиці `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Індекси таблиці `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Індекси таблиці `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Індекси таблиці `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Індекси таблиці `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Індекси таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Індекси таблиці `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `project_skills`
--
ALTER TABLE `project_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_skills_project_id_foreign` (`project_id`),
  ADD KEY `project_skills_skills_id_foreign` (`skills_id`);

--
-- Індекси таблиці `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skills_tag_unique` (`tag`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `about_mes`
--
ALTER TABLE `about_mes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблиці `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1284;

--
-- AUTO_INCREMENT для таблиці `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `project_skills`
--
ALTER TABLE `project_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблиці `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `project_skills`
--
ALTER TABLE `project_skills`
  ADD CONSTRAINT `project_skills_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_skills_skills_id_foreign` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
