-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Авг 07 2024 г., 09:46
-- Версия сервера: 10.6.18-MariaDB-cll-lve
-- Версия PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `elektro8_navbat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

CREATE TABLE `account` (
  `Id` int(11) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Token` longtext NOT NULL,
  `Time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `account_temp`
--

CREATE TABLE `account_temp` (
  `Id` int(11) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `account_temp`
--

INSERT INTO `account_temp` (`Id`, `Phone`, `Number`) VALUES
(40, '998998907641', 5955),
(41, '998998907641', 7683),
(47, ' 998998572757', 2023),
(48, ' 998998572757', 9776),
(55, '998909979180', 2245),
(56, ' 998998572757', 6373),
(57, ' 998998572757', 4535),
(58, ' 998998572757', 5546),
(59, ' 998998572757', 9722),
(60, ' 998998572757', 5092),
(61, ' 998998572757', 1881),
(62, ' 998998572757', 7775),
(63, ' 998998572757', 4491),
(64, ' 998998572757', 7534),
(65, ' 998998572757', 5889),
(66, ' 998998572757', 4306),
(67, ' 998998572757', 2891),
(68, ' 998998572757', 7614),
(69, ' 998998572757', 1783),
(70, ' 998998572757', 6754),
(71, ' 998998572757', 4650),
(73, ' 998998572757', 9607),
(74, ' 998998572757', 4032),
(83, '998909979180', 8297),
(107, '998909979180', 1490),
(108, '998998907641', 4932),
(109, '998998907641', 2731),
(110, '998998907641', 3881),
(112, '998909979180', 3159),
(113, '998909979180', 5448),
(115, '998909979180', 4593),
(116, '998909979180', 8604),
(117, '998998907641', 1318),
(138, '998909979180', 1850),
(142, '998998907641', 8533),
(143, '998998907641', 7445),
(144, '998998907641', 8575),
(145, '998998907641', 1110),
(146, '998998907641', 5410);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$FFJsHOOf7dfBuvoxHcjq2W$jg3mswHwtju7D5SbNz8i8IWUBiPLofJ58q5LGT4OszA=', '2022-10-31 09:19:51.440270', 1, 'admin', 'Jahongir', 'Maxmmadiyev', '', 1, 1, '2022-10-25 10:27:32.592677');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `ChatId` bigint(20) NOT NULL,
  `NameUser` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `chatbot`
--

INSERT INTO `chatbot` (`id`, `ChatId`, `NameUser`, `Phone`, `FirstName`, `LastName`) VALUES
(1, 702471868, 'jr20000124', '+998998572757', 'Jahangir', 'Maxmmadiyev'),
(3, 889023794, 'jahongir_mansurov', '+998998907641', 'Жахонгир', 'Мансуров'),
(4, 104287533, 'farkhad_t', '+998909979180', 'Фарход', 'Умаров'),
(6, 1280841020, NULL, '+998999243174', 'gjfkg', 'jhjth'),
(7, 5597656243, NULL, '998901151914', 'Jahongir', 'Maxammadiyev'),
(8, 1180068880, 'None', '998909885316', 'Камила', 'Умарова'),
(9, 479810807, 'Islom960', '79039625151', 'Исломбек', 'Ёкубов'),
(10, 444343374, 'None', '31687831184', 'Mamur', 'Bozorov'),
(11, 606140090, 'Kardiolog744', '998331045552', 'Iskandar', 'Yaxyoyev'),
(12, 1201249356, 'None', '998912510292', 'Azizbek', 'Fattoyev'),
(13, 561721066, 'None', '998916651778', '40 286 TBA', 'Oripov'),
(14, 1351091964, 'acad1', '998914197373', 'Asadbek', 'Qurbondurdiyev');

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-24 06:16:57.342397'),
(2, 'auth', '0001_initial', '2022-10-24 06:17:14.225903'),
(3, 'admin', '0001_initial', '2022-10-24 06:17:17.649081'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-24 06:17:17.748061'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-24 06:17:17.869102'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-24 06:17:20.167291'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-24 06:17:21.765542'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-24 06:17:23.498037'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-24 06:17:23.625043'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-24 06:17:24.833138'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-24 06:17:24.875142'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-24 06:17:24.948144'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-24 06:17:26.749580'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-24 06:17:28.509712'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-24 06:17:30.048149'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-24 06:17:30.124157'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-24 06:17:31.898350'),
(18, 'sessions', '0001_initial', '2022-10-24 06:17:32.912402');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2gk1nnfcnzeo22091px4ryhlwqk9rozb', '.eJxVjDsOwjAQBe_iGlnrH7Ep6XMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVFKHH63QjTI9cd8B3rrcnU6rrMJHdFHrTLsXF-Xg_376BgL996gpSYAUlp8EabbJGdYwpAZENwNvmAlgC1NX5IiGoiRawGZDhDYPH-APpwOGo:1onH9x:DYQ1fH4R8C4bmX8zTAyRoknhSAoyA0YYYvwkWqpQiYk', '2022-11-08 10:27:49.002203'),
('7d5ay1chczys0s7gfxxup6fqscsvet0h', '.eJxVjDEOwjAMRe-SGUVxYlqHkZ0zVHZiaAElUtNOiLtDpQ6w_vfef5mB12Uc1qbzMGVzMsEcfjfh9NCygXzncqs21bLMk9hNsTtt9lKzPs-7-3cwchu_taOI6EiiQIKMCnikjiAQIYrEjhykXh2pd533pBx6huCBBK69RDTvD6fSNlY:1opRKf:bTsfdaCmPY9BvJhzxqHOnxQcCYp9vL81cdfFgwyHBxs', '2022-11-14 09:43:49.316691'),
('x5fg5013ph2nct4jd6chnnmh4q8g8q4c', '.eJxVjDEOwjAMRe-SGUVxYlqHkZ0zVHZiaAElUtNOiLtDpQ6w_vfef5mB12Uc1qbzMGVzMsEcfjfh9NCygXzncqs21bLMk9hNsTtt9lKzPs-7-3cwchu_taOI6EiiQIKMCnikjiAQIYrEjhykXh2pd533pBx6huCBBK69RDTvD6fSNlY:1opQy6:qeOWDQwlc9xIBaqVcqUbrD0c14inTOyOXlGcTGhB4wQ', '2022-11-14 09:20:30.809712');

-- --------------------------------------------------------

--
-- Структура таблицы `en`
--

CREATE TABLE `en` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `en`
--

INSERT INTO `en` (`Id`, `OrgId`, `OrgName`, `ServiceId`, `ServiceName`, `GroupId`) VALUES
(36, 19, 'Beeline', 8, 'ACCOUNT DETAILS', 8),
(37, 19, 'Beeline', 7, 'BALANCE REPLENISHMENT', 7),
(38, 19, 'Beeline', 5, 'BUZTON', 5),
(39, 19, 'Beeline', 6, 'NUMBER PURCHASE', 6),
(40, 19, 'Beeline', 11, 'OTHER', 11),
(41, 19, 'Beeline', 10, 'RE-REGISTRATION', 10),
(42, 19, 'Beeline', 9, 'SIM CARD RESTORATION', 9),
(43, 19, 'Beeline', 3, 'STATUS ZONE', 3),
(44, 19, 'Beeline', 1, 'Payment', 1),
(45, 19, 'Beeline', 2, 'Service', 2),
(46, 10, 'Ipak Yo\'li Banki', 15, 'DEPOSIT', 15),
(47, 10, 'Ipak Yo\'li Banki', 17, 'DEPOSIT BOX', 17),
(48, 10, 'Ipak Yo\'li Banki', 16, 'REFERENCE TO EMBASY', 16),
(49, 10, 'Ipak Yo\'li Banki', 14, 'SWIFT TRANSFERS', 14),
(50, 10, 'Ipak Yo\'li Banki', 13, 'MONEY TRANSFERS', 13),
(51, 10, 'Ipak Yo\'li Banki', 5, 'VISA/CUP CARDS', 5),
(52, 10, 'Ipak Yo\'li Banki', 9, 'UZCARD CARDS', 9),
(53, 10, 'Ipak Yo\'li Banki', 18, 'CONVERSION EUR/USD', 18),
(54, 10, 'Ipak Yo\'li Banki', 19, 'EXCHANGE OFFICE', 19),
(55, 10, 'Ipak Yo\'li Banki', 26, 'KASSA', 26),
(56, 10, 'Ipak Yo\'li Banki', 22, 'LOAN REPAYMENT (PERSON)', 22),
(57, 10, 'Ipak Yo\'li Banki', 38, 'RETAIL CREDITS', 38),
(58, 10, 'Ipak Yo\'li Banki', 25, 'ONE TIME PAYMENTS', 25),
(59, 10, 'Ipak Yo\'li Banki', 24, 'UTILITY BILLS', 24),
(60, 10, 'Ipak Yo\'li Banki', 41, 'PLASTIC CARDS', 41),
(61, 10, 'Ipak Yo\'li Banki', 6, 'ISSUE A CARD VISA/CUP', 6),
(62, 10, 'Ipak Yo\'li Banki', 20, 'HUMO CARDS', 20),
(63, 10, 'Ipak Yo\'li Banki', 46, 'PAYMENT OF CONTRACTS', 46),
(64, 10, 'Ipak Yo\'li Banki', 7, 'REFILL VISA/CUP', 7),
(65, 10, 'Ipak Yo\'li Banki', 12, 'REFILL UZCARD', 12),
(66, 10, 'Ipak Yo\'li Banki', 10, 'REGISTRATION  UZCARD', 10),
(67, 10, 'Ipak Yo\'li Banki', 34, 'ACCOUNTATION', 34),
(68, 10, 'Ipak Yo\'li Banki', 32, 'CURRENCY CASH', 32),
(69, 10, 'Ipak Yo\'li Banki', 31, 'DEPOSIT CASH', 31),
(70, 10, 'Ipak Yo\'li Banki', 33, 'HEAD OF CASH DESK', 33),
(71, 10, 'Ipak Yo\'li Banki', 29, 'RECEIPT CASH DESK', 29),
(72, 10, 'Ipak Yo\'li Banki', 30, 'WITHDRAW CASH DESK', 30),
(73, 10, 'Ipak Yo\'li Banki', 21, 'LOAN REPAYMENT', 21),
(74, 10, 'Ipak Yo\'li Banki', 11, 'ISSUANCE OF UZCARD', 11),
(75, 10, 'Ipak Yo\'li Banki', 39, 'MUNIS PAYMENTS', 39),
(76, 10, 'Ipak Yo\'li Banki', 8, 'WITHDRAW FROM VISA/CUP', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `en_list_branches`
--

CREATE TABLE `en_list_branches` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `BranchName` varchar(255) NOT NULL,
  `BranchAddress` varchar(255) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `Api` varchar(255) NOT NULL,
  `BranchOpeningTime` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `en_list_branches`
--

INSERT INTO `en_list_branches` (`Id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `Api`, `BranchOpeningTime`, `Color`, `Background`) VALUES
(20, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(21, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(22, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(23, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(24, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(25, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(26, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(27, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(28, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(29, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(30, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(31, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(32, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(33, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(34, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(35, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(36, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(37, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(38, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(39, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(40, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(41, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(42, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(43, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(44, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":2,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":3,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":4,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":5,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":6,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(45, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(46, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(47, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(48, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(49, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(50, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":2,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":3,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":4,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":5,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":6,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(51, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(52, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(53, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(54, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(55, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":2,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":3,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":4,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":5,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":6,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(56, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743');

-- --------------------------------------------------------

--
-- Структура таблицы `en_search`
--

CREATE TABLE `en_search` (
  `id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `BranchName` varchar(255) NOT NULL,
  `BranchAddress` varchar(255) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `Api` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `en_search`
--

INSERT INTO `en_search` (`id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `ServiceId`, `ServiceName`, `GroupId`, `Api`, `Color`, `Background`) VALUES
(217, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(218, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(219, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(220, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(221, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(222, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(223, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(224, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(225, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(226, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(227, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(228, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(229, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(230, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(231, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(232, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(233, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', 1, 'Payment', 1, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(234, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', 2, 'Service', 2, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(235, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(236, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(237, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(238, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(239, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(240, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(241, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(242, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(243, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(244, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(245, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(246, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(247, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(248, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(249, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 1, 'Payment', 1, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(250, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 2, 'Service', 2, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(251, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(252, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(253, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(254, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(255, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(256, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(257, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(258, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(259, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(260, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(261, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(262, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(263, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(264, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(265, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(266, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(267, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(268, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(269, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(270, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(271, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(272, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(273, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(274, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(275, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(276, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(277, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(278, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(279, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(280, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(281, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(282, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(283, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(284, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(285, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(286, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(287, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(288, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(289, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(290, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(291, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(292, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(293, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(294, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(295, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(296, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(297, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(298, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(299, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(300, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(301, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(302, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(303, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(304, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(305, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(306, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(307, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(308, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(309, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(310, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(311, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(312, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(313, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(314, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(315, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(316, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(317, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(318, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(319, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(320, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(321, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(322, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(323, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(324, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(325, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(326, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(327, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(328, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(329, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(330, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(331, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(332, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(333, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(334, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(335, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(336, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(337, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(338, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(339, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(340, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(341, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(342, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(343, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(344, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(345, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(346, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 6, 'NUMBER PURCHASE', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(347, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(348, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(349, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 9, 'SIM CARD RESTORATION', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(350, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 8, 'ACCOUNT DETAILS', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(351, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(352, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 7, 'BALANCE REPLENISHMENT', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(353, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 3, 'STATUS ZONE', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(354, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(355, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 11, 'OTHER', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(356, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 10, 'RE-REGISTRATION', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(357, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(358, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 17, 'DEPOSIT BOX', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(359, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(360, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(361, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(362, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(363, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(364, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 18, 'CONVERSION EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(365, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(366, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(367, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(368, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 22, 'LOAN REPAYMENT (PERSON)', 22, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(369, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 41, 'PLASTIC CARDS', 41, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(370, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 25, 'ONE TIME PAYMENTS', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(371, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(372, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(373, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 38, 'RETAIL CREDITS', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(374, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 17, 'DEPOSIT BOX', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(375, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 24, 'UTILITY BILLS', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(376, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(377, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 46, 'PAYMENT OF CONTRACTS', 46, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(378, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(379, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(380, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 7, 'REFILL VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(381, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 6, 'ISSUE A CARD VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(382, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(383, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(384, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 12, 'REFILL UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(385, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(386, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(387, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 10, 'REGISTRATION  UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(388, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 34, 'ACCOUNTATION', 34, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(389, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 18, 'CONVERSION EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(390, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 32, 'CURRENCY CASH', 32, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(391, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(392, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 17, 'DEPOSIT BOX', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(393, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 33, 'HEAD OF CASH DESK', 33, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(394, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(395, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 31, 'DEPOSIT CASH', 31, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(396, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(397, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 29, 'RECEIPT CASH DESK', 29, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(398, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(399, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 30, 'WITHDRAW CASH DESK', 30, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(400, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(401, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(402, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 17, 'DEPOSIT BOX', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(403, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(404, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 21, 'LOAN REPAYMENT', 21, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(405, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(406, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(407, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(408, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(409, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(410, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(411, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(412, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(413, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(414, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(415, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(416, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(417, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(418, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 18, 'CONVERSION EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(419, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(420, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 17, 'DEPOSIT BOX', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(421, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(422, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(423, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 11, 'ISSUANCE OF UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(424, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 6, 'ISSUE A CARD VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(425, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(426, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 39, 'MUNIS PAYMENTS', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(427, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(428, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 10, 'REGISTRATION  UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(429, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(430, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 12, 'REFILL UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(431, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 7, 'REFILL VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(432, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(433, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 8, 'WITHDRAW FROM VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(434, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(435, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(436, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(437, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(438, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(439, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(440, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 39, 'MUNIS PAYMENTS', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(441, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(442, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 24, 'UTILITY BILLS', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(443, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(444, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(445, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(446, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(447, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(448, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(449, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(450, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(451, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 18, 'CONVERSION EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(452, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(453, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(454, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(455, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(456, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(457, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(458, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(459, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(460, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(461, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(462, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 18, 'CONVERSION EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(463, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(464, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(465, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 24, 'UTILITY BILLS', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(466, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(467, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(468, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(469, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(470, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(471, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 25, 'ONE TIME PAYMENTS', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(472, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(473, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(474, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(475, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 32, 'CURRENCY CASH', 32, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(476, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 18, 'CONVERSION EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(477, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(478, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(479, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 31, 'DEPOSIT CASH', 31, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(480, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(481, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 6, 'ISSUE A CARD VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(482, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 11, 'ISSUANCE OF UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(483, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 39, 'MUNIS PAYMENTS', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(484, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(485, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 29, 'RECEIPT CASH DESK', 29, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(486, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 12, 'REFILL UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(487, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 7, 'REFILL VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(488, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 10, 'REGISTRATION  UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(489, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 38, 'RETAIL CREDITS', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743');
INSERT INTO `en_search` (`id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `ServiceId`, `ServiceName`, `GroupId`, `Api`, `Color`, `Background`) VALUES
(490, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 8, 'WITHDRAW FROM VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(491, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 30, 'WITHDRAW CASH DESK', 30, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(492, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(493, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 17, 'DEPOSIT BOX', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(494, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(495, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(496, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(497, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 25, 'ONE TIME PAYMENTS', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(498, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(499, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(500, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(501, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 47, 'CORPORATE BUSINESS DEPARTMENT', 47, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(502, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(503, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(504, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(505, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 6, 'ISSUE A CARD VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(506, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 11, 'ISSUANCE OF UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(507, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(508, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 25, 'ONE TIME PAYMENTS', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(509, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 7, 'REFILL VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(510, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(511, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 12, 'REFILL UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(512, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 10, 'REGISTRATION  UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(513, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 8, 'WITHDRAW FROM VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(514, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(515, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 34, 'ACCOUNTATION', 34, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(516, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 24, 'UTILITY BILLS', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(517, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 44, 'RETAIL CASHDESK', 44, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(518, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(519, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(520, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(521, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(522, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(523, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(524, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 40, 'MICROCREDITING', 40, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(525, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 38, 'RETAIL CREDITS', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(526, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(527, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 6, 'ISSUE A CARD VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(528, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(529, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(530, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(531, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 11, 'ISSUANCE OF UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(532, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 25, 'ONE TIME PAYMENTS', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(533, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(534, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 38, 'RETAIL CREDITS', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(535, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(536, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(537, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 10, 'REGISTRATION  UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(538, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(539, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 8, 'WITHDRAW FROM VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(540, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 18, 'CONVERSION EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(541, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 11, 'ISSUANCE OF UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(542, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(543, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(544, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 18, 'CONVERSION EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(545, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 6, 'ISSUE A CARD VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(546, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 10, 'REGISTRATION  UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(547, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 19, 'EXCHANGE OFFICE', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(548, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(549, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(550, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 7, 'REFILL VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(551, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 12, 'REFILL UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(552, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 12, 'REFILL UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(553, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 38, 'RETAIL CREDITS', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(554, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 7, 'REFILL VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(555, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(556, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 8, 'WITHDRAW FROM VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(557, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 24, 'UTILITY BILLS', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(558, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(559, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(560, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(561, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(562, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(563, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 24, 'UTILITY BILLS', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(564, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 20, 'HUMO CARDS', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(565, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 15, 'DEPOSIT', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(566, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(567, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 13, 'MONEY TRANSFERS', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(568, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 14, 'SWIFT TRANSFERS', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(569, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 16, 'REFERENCE TO EMBASY', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(570, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 9, 'UZCARD CARDS', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(571, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 5, 'VISA/CUP CARDS', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743');

-- --------------------------------------------------------

--
-- Структура таблицы `en_service`
--

CREATE TABLE `en_service` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `en_service`
--

INSERT INTO `en_service` (`Id`, `OrgId`, `OrgName`, `ServiceId`, `ServiceName`, `GroupId`) VALUES
(36, 19, 'Beeline', 8, 'ACCOUNT DETAILS', 8),
(37, 19, 'Beeline', 7, 'BALANCE REPLENISHMENT', 7),
(38, 19, 'Beeline', 5, 'BUZTON', 5),
(39, 19, 'Beeline', 6, 'NUMBER PURCHASE', 6),
(40, 19, 'Beeline', 11, 'OTHER', 11),
(41, 19, 'Beeline', 10, 'RE-REGISTRATION', 10),
(42, 19, 'Beeline', 9, 'SIM CARD RESTORATION', 9),
(43, 19, 'Beeline', 3, 'STATUS ZONE', 3),
(44, 19, 'Beeline', 1, 'Payment', 1),
(45, 19, 'Beeline', 2, 'Service', 2),
(46, 10, 'Ipak Yo\'li Banki', 15, 'DEPOSIT', 15),
(47, 10, 'Ipak Yo\'li Banki', 13, 'MONEY TRANSFERS', 13),
(48, 10, 'Ipak Yo\'li Banki', 17, 'DEPOSIT BOX', 17),
(49, 10, 'Ipak Yo\'li Banki', 16, 'REFERENCE TO EMBASY', 16),
(50, 10, 'Ipak Yo\'li Banki', 14, 'SWIFT TRANSFERS', 14),
(51, 10, 'Ipak Yo\'li Banki', 9, 'UZCARD CARDS', 9),
(52, 10, 'Ipak Yo\'li Banki', 18, 'CONVERSION EUR/USD', 18),
(53, 10, 'Ipak Yo\'li Banki', 5, 'VISA/CUP CARDS', 5),
(54, 10, 'Ipak Yo\'li Banki', 26, 'KASSA', 26),
(55, 10, 'Ipak Yo\'li Banki', 19, 'EXCHANGE OFFICE', 19),
(56, 10, 'Ipak Yo\'li Banki', 22, 'LOAN REPAYMENT (PERSON)', 22),
(57, 10, 'Ipak Yo\'li Banki', 41, 'PLASTIC CARDS', 41),
(58, 10, 'Ipak Yo\'li Banki', 38, 'RETAIL CREDITS', 38),
(59, 10, 'Ipak Yo\'li Banki', 25, 'ONE TIME PAYMENTS', 25),
(60, 10, 'Ipak Yo\'li Banki', 24, 'UTILITY BILLS', 24),
(61, 10, 'Ipak Yo\'li Banki', 20, 'HUMO CARDS', 20),
(62, 10, 'Ipak Yo\'li Banki', 6, 'ISSUE A CARD VISA/CUP', 6),
(63, 10, 'Ipak Yo\'li Banki', 46, 'PAYMENT OF CONTRACTS', 46),
(64, 10, 'Ipak Yo\'li Banki', 12, 'REFILL UZCARD', 12),
(65, 10, 'Ipak Yo\'li Banki', 7, 'REFILL VISA/CUP', 7),
(66, 10, 'Ipak Yo\'li Banki', 10, 'REGISTRATION  UZCARD', 10),
(67, 10, 'Ipak Yo\'li Banki', 34, 'ACCOUNTATION', 34),
(68, 10, 'Ipak Yo\'li Banki', 31, 'DEPOSIT CASH', 31),
(69, 10, 'Ipak Yo\'li Banki', 32, 'CURRENCY CASH', 32),
(70, 10, 'Ipak Yo\'li Banki', 33, 'HEAD OF CASH DESK', 33),
(71, 10, 'Ipak Yo\'li Banki', 30, 'WITHDRAW CASH DESK', 30),
(72, 10, 'Ipak Yo\'li Banki', 29, 'RECEIPT CASH DESK', 29),
(73, 10, 'Ipak Yo\'li Banki', 11, 'ISSUANCE OF UZCARD', 11),
(74, 10, 'Ipak Yo\'li Banki', 21, 'LOAN REPAYMENT', 21),
(75, 10, 'Ipak Yo\'li Banki', 39, 'MUNIS PAYMENTS', 39),
(76, 10, 'Ipak Yo\'li Banki', 8, 'WITHDRAW FROM VISA/CUP', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `Id` bigint(20) NOT NULL,
  `OrgId` bigint(20) DEFAULT NULL,
  `OrgName` varchar(255) DEFAULT NULL,
  `BranchId` bigint(20) DEFAULT NULL,
  `Branch` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `ServiceId` bigint(20) DEFAULT NULL,
  `Service` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Dates` date DEFAULT NULL,
  `Time` varchar(255) DEFAULT NULL,
  `Ticket` varchar(255) DEFAULT NULL,
  `TicketId` bigint(20) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `BookingDate` varchar(255) DEFAULT NULL,
  `BookingTime` varchar(255) DEFAULT NULL,
  `BookingId` bigint(20) DEFAULT NULL,
  `BookingCode` bigint(20) DEFAULT NULL,
  `ClientId` varchar(255) DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`Id`, `OrgId`, `OrgName`, `BranchId`, `Branch`, `Adress`, `ServiceId`, `Service`, `Phone`, `Type`, `Dates`, `Time`, `Ticket`, `TicketId`, `FullName`, `BookingDate`, `BookingTime`, `BookingId`, `BookingCode`, `ClientId`, `Language`) VALUES
(1, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', 15, 'ВКЛАДЫ', '998998907641', 'eTicket', '2022-11-29', '10:11:58', '178', 61084, 'Null', '0', '0', 0, 0, '0', 'ru'),
(2, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', 18, 'КОНВЕРСИЯ EUR/USD', '998998907641', 'eTicket', '2022-11-29', '10:14:58', '126', 71481, 'Null', '0', '0', 0, 0, '0', 'ru'),
(3, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', 14, 'ПЕРЕВОДЫ SWIFT', '998998572757', 'eTicket', '2022-11-29', '10:15:11', '189', 155436, 'Null', '0', '0', 0, 0, '0', 'ru'),
(4, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', 34, 'БУХГАЛТЕРИЯ', '+998998572757', 'booking', '2022-11-29', '10:36:29', '1', 1, 'MaxmmadiyevJahangir', '2022-11-29', '15:37:25', 8567, 307313923, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(5, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 7, 'ПОПОЛНЕНИЕ VISA/CUP', '+998998572757', 'booking', '2022-11-30', '04:17:19', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '09:16:45', 8580, 303527515, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(6, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', 16, 'СПРАВКА В ПОСОЛЬСТВО', '+998998572757', 'eTicket', '2022-11-30', '04:17:31', '071', 262280, 'Null', '0', '0', 0, 0, '0', 'ru'),
(7, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 7, 'ПОПОЛНЕНИЕ VISA/CUP', '+998998572757', 'eTicket', '2022-11-30', '04:18:14', '056', 49771, 'Null', '0', '0', 0, 0, '0', 'ru'),
(8, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', '+998999243174', 'booking', '2022-11-30', '04:20:18', '1', 1, 'jhjthgjfkg', '2022-11-30', '09:16:45', 8581, 300520749, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(9, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', 9, 'КАРТЫ UZCARD', '+998998572757', 'booking', '2022-11-30', '04:38:29', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '09:40:20', 8582, 301501457, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(10, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'booking', '2022-11-30', '04:44:48', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '09:44:06', 8583, 305516431, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(11, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', 29, 'ПРИХОДНАЯ КАССА', '+998999243174', 'eTicket', '2022-11-30', '04:45:39', '081', 470879, 'Null', '0', '0', 0, 0, '0', 'ru'),
(12, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 6, 'ОФОРМЛЕНИЕ VISA/CUP', '+998999243174', 'booking', '2022-11-30', '04:46:18', '1', 1, 'jhjthgjfkg', '2022-11-30', '09:44:06', 8584, 309524310, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(13, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', '+998999243174', 'booking', '2022-11-30', '04:55:29', '1', 1, 'jhjthgjfkg', '2022-11-30', '09:44:06', 8586, 301506027, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(14, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', '+998998907641', 'booking', '2022-11-30', '05:00:44', '1', 1, 'МансуровЖахонгир', '2022-11-30', '09:16:45', 8587, 302628104, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(15, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', '+998998572757', 'booking', '2022-11-30', '06:07:31', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '09:44:06', 8589, 301517437, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(16, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', 9, 'КАРТЫ UZCARD', '+998998572757', 'booking', '2022-11-30', '07:12:58', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '09:44:06', 8599, 302425636, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(17, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 7, 'ПОПОЛНЕНИЕ VISA/CUP', '+998998572757', 'booking', '2022-11-30', '09:20:35', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '09:44:06', 8613, 301627117, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(18, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'booking', '2022-11-30', '09:27:24', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '09:16:45', 8614, 306311930, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(19, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', '998998572757', 'eTicket', '2022-11-30', '09:36:30', '228', 293100, 'Null', '0', '0', 0, 0, '0', 'ru'),
(20, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', 20, 'КАРТЫ HUMO', '998998572757', 'eTicket', '2022-11-30', '09:39:19', '215', 262526, 'Null', '0', '0', 0, 0, '0', 'ru'),
(21, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 12, 'ПОПОЛНЕНИЕ UZCARD', '+998998572757', 'eTicket', '2022-11-30', '09:51:00', '114', 49829, 'Null', '0', '0', 0, 0, '0', 'ru'),
(22, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', 9, 'КАРТЫ UZCARD', '+998998572757', 'booking', '2022-11-30', '09:52:02', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '14:50:33', 8615, 305426639, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(23, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'eTicket', '2022-11-30', '09:52:25', '201', 97238, 'Null', '0', '0', 0, 0, '0', 'ru'),
(24, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 26, 'КАССА', '+998998572757', 'booking', '2022-11-30', '09:54:19', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '14:50:33', 8616, 300424908, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(25, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 9, 'КАРТЫ UZCARD', '+998998572757', 'eTicket', '2022-11-30', '09:56:22', '150', 54062, 'Null', '0', '0', 0, 0, '0', 'ru'),
(26, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 26, 'КАССА', '+998909979180', 'booking', '2022-11-30', '09:56:47', '1', 1, 'УмаровФарход', '2022-11-30', '14:50:33', 8617, 302320907, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(27, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', 20, 'КАРТЫ HUMO', '+998909979180', 'eTicket', '2022-11-30', '09:57:34', '243', 293124, 'Null', '0', '0', 0, 0, '0', 'ru'),
(28, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', '+998998572757', 'eTicket', '2022-11-30', '09:57:38', '350', 61528, 'Null', '0', '0', 0, 0, '0', 'ru'),
(29, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998909979180', 'booking', '2022-11-30', '09:58:45', '1', 1, 'УмаровФарход', '2022-11-30', '14:50:33', 8619, 306308552, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(30, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 16, 'СПРАВКА В ПОСОЛЬСТВО', '+998998572757', 'eTicket', '2022-11-30', '10:02:16', '118', 49833, 'Null', '0', '0', 0, 0, '0', 'ru'),
(31, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 26, 'КАССА', '+998998572757', 'booking', '2022-11-30', '10:03:55', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '14:50:33', 8620, 307427302, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(32, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 15, 'ВКЛАДЫ', '998909979180', 'booking', '2022-11-30', '10:05:58', '1', 1, 'УмаровФарход', '20221201', '09:00:00', 8621, 305318559, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(33, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 7, 'ПОПОЛНЕНИЕ VISA/CUP', '+998998572757', 'eTicket', '2022-11-30', '10:46:58', '135', 49850, 'Null', '0', '0', 0, 0, '0', 'ru'),
(34, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 26, 'КАССА', '+998998572757', 'booking', '2022-11-30', '10:47:31', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '15:46:08', 8623, 301621007, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(35, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', '+998998572757', 'eTicket', '2022-11-30', '10:49:02', '162', 54074, 'Null', '0', '0', 0, 0, '0', 'ru'),
(36, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', '+998998572757', 'eTicket', '2022-11-30', '10:49:33', '163', 54075, 'Null', '0', '0', 0, 0, '0', 'ru'),
(37, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 26, 'КАССА', '+998998572757', 'eTicket', '2022-11-30', '10:51:27', '164', 54076, 'Null', '0', '0', 0, 0, '0', 'ru'),
(38, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 7, 'ПОПОЛНЕНИЕ VISA/CUP', '+998999243174', 'eTicket', '2022-11-30', '10:54:55', '140', 49855, 'Null', '0', '0', 0, 0, '0', 'ru'),
(39, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', '+998999243174', 'booking', '2022-11-30', '10:55:18', '1', 1, 'jhjthgjfkg', '2022-11-30', '15:46:08', 8624, 300423909, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(40, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', '998909885316', 'booking', '2022-11-30', '11:41:47', '1', 1, 'УмароваКамила', '2022-11-30', '15:46:08', 8625, 302402022, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(41, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', '+998999243174', 'eTicket', '2022-11-30', '11:43:27', '165', 54077, 'Null', '0', '0', 0, 0, '0', 'ru'),
(42, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 15, 'ВКЛАДЫ', '998909885316', 'booking', '2022-11-30', '11:43:52', '1', 1, 'УмароваКамила', '20221201', '09:00:00', 8626, 309315552, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(43, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', 5, 'КАРТЫ VISA/CUP', '+998998572757', 'eTicket', '2022-11-30', '11:52:31', '245', 97282, 'Null', '0', '0', 0, 0, '0', 'ru'),
(44, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 7, 'ПОПОЛНЕНИЕ VISA/CUP', '+998998572757', 'booking', '2022-11-30', '11:58:00', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '15:46:08', 8627, 305420112, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(45, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', 9, 'КАРТЫ UZCARD', '+998909979180', 'booking', '2022-11-30', '12:06:29', '1', 1, 'УмаровФарход', '2022-11-30', '15:46:08', 8628, 302300520, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(46, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', 9, 'КАРТЫ UZCARD', '998909885316', 'booking', '2022-11-30', '12:13:05', '1', 1, 'УмароваКамила', '20221201', '09:00:00', 8629, 301302530, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(47, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 7, 'ПОПОЛНЕНИЕ VISA/CUP', '+998998907641', 'booking', '2022-11-30', '12:40:22', '1', 1, 'МансуровЖахонгир', '2022-11-30', '15:46:08', 8630, 306421712, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(48, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', 26, 'КАССА', '+998909979180', 'booking', '2022-11-30', '18:08:01', '1', 1, 'УмаровФарход', '2022-11-30', '15:46:08', 8636, 308305567, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(49, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', '+998998572757', 'booking', '2022-12-01', '05:50:57', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '15:46:08', 8641, 306629049, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(50, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'eTicket', '2022-12-01', '05:51:09', '086', 92396, 'Null', '0', '0', 0, 0, '0', 'ru'),
(51, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', 14, 'ПЕРЕВОДЫ SWIFT', '998998572757', 'eTicket', '2022-12-01', '09:45:48', '176', 35214, 'Null', '0', '0', 0, 0, '0', 'ru'),
(52, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', 5, 'КАРТЫ VISA/CUP', '998909979180', 'booking', '2022-12-01', '16:42:00', '1', 1, 'УмаровФарход', '20221202', '09:00:00', 8662, 306313630, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(53, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 40, 'МИКРОКРЕДИТОВАНИЕ', '+998909979180', 'booking', '2022-12-01', '16:45:26', '1', 1, 'УмаровФарход', '2022-11-30', '15:46:08', 8663, 304622406, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(54, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', 14, 'ПЕРЕВОДЫ SWIFT', '998998572757', 'eTicket', '2022-12-02', '10:57:51', '229', 139915, 'Null', '0', '0', 0, 0, '0', 'ru'),
(55, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 14, 'ПЕРЕВОДЫ SWIFT', '+998909979180', 'eTicket', '2022-12-02', '13:01:40', '398', 234043, 'Null', '0', '0', 0, 0, '0', 'ru'),
(56, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 16, 'СПРАВКА В ПОСОЛЬСТВО', '+998998572757', 'eTicket', '2022-12-05', '04:51:04', '054', 50006, 'Null', '0', '0', 0, 0, '0', 'ru'),
(57, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', 18, 'КОНВЕРСИЯ СКВ (EUR/USD)', '+998998572757', 'booking', '2022-12-09', '16:41:28', '1', 1, 'MaxmmadiyevJahangir', '2022-11-30', '15:46:08', 8704, 301513429, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(58, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 15, 'ВКЛАДЫ', '998909979180', 'booking', '2023-01-08', '04:57:08', '1', 1, 'УмаровФарход', '20230109', '09:00:00', 9190, 1017950, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(59, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'booking', '2023-01-11', '12:29:20', '1', 1, 'MaxmmadiyevJahangir', '2023-01-11', '17:32:51', 9214, 6303123, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(60, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'eTicket', '2023-01-11', '12:42:28', '783', 275791, 'Null', '0', '0', 0, 0, '0', 'ru'),
(61, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', 15, 'ВКЛАДЫ', '+998998572757', 'eTicket', '2023-01-12', '04:27:33', '064', 104139, 'Null', '0', '0', 0, 0, '0', 'ru'),
(62, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', 5, 'КАРТЫ VISA/CUP', '998998572757', 'booking', '2023-01-12', '10:00:24', '1', 1, 'MaxmmadiyevJahangir', '20230126', '09:20:00', 9222, 2207692, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(63, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', 5, 'КАРТЫ VISA/CUP', '998998572757', 'eTicket', '2023-01-12', '10:01:07', '237', 260019, 'Null', '0', '0', 0, 0, '0', 'ru'),
(64, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'eTicket', '2023-01-12', '10:03:23', '127', 39828, 'Null', '0', '0', 0, 0, '0', 'ru'),
(65, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'booking', '2023-01-13', '04:39:50', '1', 1, 'MaxmmadiyevJahangir', '2023-01-13', '09:34:50', 9237, 4305080, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(66, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', '+998998572757', 'eTicket', '2023-01-13', '04:41:11', '065', 94173, 'Null', '0', '0', 0, 0, '0', 'ru'),
(67, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', 5, 'КАРТЫ VISA/CUP', '998998572757', 'booking', '2023-01-17', '06:25:41', '1', 1, 'MaxmmadiyevJahangir', '20230126', '09:40:00', 9256, 201692, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(68, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', 5, 'КАРТЫ VISA/CUP', '998998572757', 'eTicket', '2023-01-17', '06:26:06', '157', 260967, 'Null', '0', '0', 0, 0, '0', 'ru'),
(69, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 15, 'ВКЛАДЫ', '998909979180', 'booking', '2023-01-17', '07:21:35', '1', 1, 'УмаровФарход', '20230118', '09:00:00', 9257, 2113850, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(70, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', 9, 'КАРТЫ UZCARD/HUMO', '+998998572757', 'booking', '2023-01-18', '09:16:48', '1', 1, 'MaxmmadiyevJahangir', '2023-01-18', '14:20:59', 9265, 4227639, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(71, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', 16, 'СПРАВКА В ПОСОЛЬСТВО', '+998998572757', 'eTicket', '2023-01-18', '09:17:41', '219', 309112, 'Null', '0', '0', 0, 0, '0', 'ru'),
(72, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'eTicket', '2023-01-18', '09:20:29', '077', 94324, 'Null', '0', '0', 0, 0, '0', 'ru'),
(73, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', 15, 'ВКЛАДЫ', '+998998572757', 'booking', '2023-01-18', '09:27:48', '1', 1, 'MaxmmadiyevJahangir', '2023-01-18', '14:26:31', 9266, 7209615, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(74, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', 19, 'ОБМЕННЫЙ ПУНКТ', '+998998572757', 'eTicket', '2023-01-18', '09:28:12', '165', 67192, 'Null', '0', '0', 0, 0, '0', 'ru'),
(75, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', '+998998572757', 'booking', '2023-01-18', '10:33:51', '1', 1, 'MaxmmadiyevJahangir', '2023-01-18', '14:26:31', 9267, 6213539, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(76, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', 15, 'ВКЛАДЫ', '+998998572757', 'booking', '2023-01-18', '15:20:56', '1', 1, 'MaxmmadiyevJahangir', '2023-01-18', '14:26:31', 9268, 6325032, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(77, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 5, 'КАРТЫ VISA/CUP/MC', '+998998572757', 'booking', '2023-01-22', '07:51:44', '1', 1, 'MaxmmadiyevJahangir', '2023-01-18', '14:26:31', 9276, 6314151, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'ru'),
(78, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 15, 'ВКЛАДЫ', '998909979180', 'booking', '2023-02-14', '05:28:45', '1', 1, 'УмаровФарход', '20230214', '15:40:00', 9418, 1411557, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(79, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', 15, 'ВКЛАДЫ', '998998572757', 'booking', '2023-02-14', '08:08:01', '1', 1, 'MaxmmadiyevJahangir', '20230216', '10:00:00', 9421, 419745, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(80, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 9, 'КАРТЫ UZCARD', '998998572757', 'booking', '2023-03-30', '10:01:04', '1', 1, 'MaxmmadiyevJahangir', '20230331', '09:40:00', 9658, 9912050, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(81, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 15, 'ВКЛАДЫ', '998909979180', 'booking', '2023-05-17', '03:54:30', '1', 1, 'УмаровФарход', '20230517', '14:00:00', 9864, 101313757, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(82, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 15, 'ВКЛАДЫ', '998909979180', 'booking', '2023-06-14', '19:00:08', '1', 1, 'УмаровФарход', '20230615', '09:40:00', 9970, 109615658, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(83, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 16, 'ELCHIXONAGA MALUMOTNOMA', '998909979180', 'booking', '2023-07-15', '08:06:43', '1', 1, 'УмаровФарход', '20230717', '09:00:00', 10160, 107916850, 'MUcQym3MtdV3SzngDAAacg!!', 'uz'),
(84, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', 15, 'ВКЛАДЫ', '998909979180', 'eTicket', '2023-08-04', '05:24:59', '114', 95273, 'Null', '0', '0', 0, 0, '0', 'ru'),
(85, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 15, 'ВКЛАДЫ', '998909979180', 'booking', '2023-08-15', '06:12:33', '1', 1, 'УмаровФарход', '20230815', '16:40:00', 10304, 202214752, 'MUcQym3MtdV3SzngDAAacg!!', 'ru'),
(86, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', 5, 'КАРТЫ VISA/CUP', '998909979180', 'eTicket', '2023-08-15', '06:13:28', '088', 14791, 'Null', '0', '0', 0, 0, '0', 'ru'),
(87, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', '998909979180', 'eTicket', '2023-08-25', '04:05:43', '058', 101709, 'Null', '0', '0', 0, 0, '0', 'ru'),
(88, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', 5, 'КАРТЫ VISA/CUP', '998909979180', 'eTicket', '2023-12-08', '19:34:58', '050', 310252, 'Null', '0', '0', 0, 0, '0', 'ru'),
(89, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', 9, 'КАРТЫ UZCARD', '998909979180', 'eTicket', '2023-12-08', '19:35:51', '050', 206804, 'Null', '0', '0', 0, 0, '0', 'ru'),
(90, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', 9, 'КАРТЫ UZCARD', '998998907641', 'eTicket', '2024-01-04', '05:53:29', '147', 116984, 'Null', '0', '0', 0, 0, '0', 'ru'),
(91, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', 5, 'КАРТЫ HUMO', '998998907641', 'eTicket', '2024-01-04', '05:54:04', '116', 162077, 'Null', '0', '0', 0, 0, '0', 'ru'),
(92, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', 15, 'ВКЛАДЫ', '998998907641', 'eTicket', '2024-02-19', '10:52:11', 'A243', 451407, 'Null', '0', '0', 0, 0, '0', 'ru'),
(93, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', 16, 'ELCHIXONAGA MALUMOTNOMA', '998909979180', 'eTicket', '2024-07-25', '17:56:15', '137', 46255, 'Null', '0', '0', 0, 0, '0', 'uz');

-- --------------------------------------------------------

--
-- Структура таблицы `org`
--

CREATE TABLE `org` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `ApiLink` varchar(255) NOT NULL,
  `TypeApi` varchar(255) NOT NULL,
  `Background` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `org`
--

INSERT INTO `org` (`Id`, `Name`, `FullName`, `Link`, `ApiLink`, `TypeApi`, `Background`, `Color`, `Image`) VALUES
(10, 'Ipak Yo\'li Banki', 'Ipak Yo\'li Banki', 'ipakyulibank.uz', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', 'Onlinet', '#007743', '#fff', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACWCAYAAAA8AXHiAAAgAElEQVR4nO19B3wc5Zn+M317lXbVuyxLtmzZuGEMtjHGEHpPgAQuIXAJBO6fSjp3l8ulXC7tEkIKJAQILaEaYoqNe5W7JVuS1cuqbd+dnf7/zezKTRB8dzk8Nnp+v7W8n3ZXszPPvN/7Pd9bMIUpTGEKZw0IMx7oT9a9MGnsTMFts2PD4QP/8djqX38BhAQ0Lf+L0+O/ISFLpjlGfO7Hk4bONGjTHZHOdoKaNHamQBE0eJo4CloBFAHQhFGPJiKhiaY5RjPClMRKkcyksTMFjmAQI1kW+jFJGUAi1RqJRIFsHvLvnDRy5mFKYomEMmnsTEE/FpFQKKgaQNAASUEGAx6qaY7RjDAlsShNnjR2pkDqNFJkDbKa9UhpEjJBQiJI0xyjGWFKYplrTUFkH4SWfapqUDUZqjZlsf4Wpm6794MGyBNnidT05yZaWpgXprRYigmsgaYBNE2DpigYRNLJpU9/YoZojUURkfUVoj49mlKxOeMwJbFs1Jm3CTRJYiyZwIgowk6RCSgkkJEAuzu2pLAcLEGA0DTwqnrGzf4rk0bOPExJLBfLTRr7oOGwWNDa1wXQLDQKfsg8EAvjYzWN7hXTZyNAs2isqEV/KgbyDFutV/C1SWNnGuacCqFNGvsgoWmaISYUeQP0rt6uW1d37roDnAoU5OFPezdft+bAgY5/Xnrpr6aXVSVHYxEw5JTXdSrMKTecYRmLJEkoouTsHOh9cPXqp78GoR8oCwIUBzS/HggL1A/3lpTObJzW8EW/0zUmyuaRR8wCUxIrn7FOGvsg4bY7sO7wwVv/+NLvv4Z0P1BeBigyoO8PllcCo9343VPfuyNCMyO3XXDxQ6OJWPqMHrAJYUpibexomTT2QSLP7iz+932bPwkiBtRUArK+T4islqVkgPISQDyKv+x4+y4qI7w4xie2nNEDNiFMSayfvPbspLEPFlQTEG9EngNQZUPLguFHEdnnvAJYKECIerf2d5b1i/wUsU6BOZX3RHzS0AcKlWDgUFgwDKAox3VkffGnEIAe2MBwxnC/lKGhmiiExiQwJ7GmNUwaOm1MiKuaoZKDomgoipT1kU5zq4hjmFEhMjiG9EAQVgugTZAr99kkC2QUwGlFvr+QHxVO18XSDEHVzVoQEwVAzQmsE4elPz+zC+K/G0xJrO+sunbS2OlAhQaaIGEnSRAUBZUCIuk08lxeFHm8UGQVkiqDoWjYWAvi6QQESQJxyoZyoc1z4BcbX33r5T/9y20ozgMc+YCYIybHAbIIRBPIm1u/+5sLl+8aSURPer/ODYZhoCkqFEUGSZAgSAKyqkJVVHSODqIoPwir1QpClEFr2WMnORYE+d+XWx/CI5PGzjRMSazSwtJJY6cDXX+yUhSCDAvWykK2EDgyPIoydyEKGA4ZQobb4kCcT6BteAAXTJ+DCsoG3d6wuZOhT8IuIE7buB+9vOXNZTj4TjGm0YDDkyVWJg30tgOl89IPLLrkOw2lFT1lYsaQKCasDUFTGB8dBc0ysHndyPAZKJKEPLsLQorHgYGjqCgqQbAgCDKegkUloaoK6Dw3KIY1vsfZDlMSixcyk8ZOB/oF0SgKSUUBA8WIdFFUBQNDIezv6UXarmFGoByHQ534xs638btL7kSZzwuGZRBNJRFTRDTVTccMzg+Pw7nnp7d8/o4HfOXfQdc7i2ARsqcrIQCNlx96YPk13w+63S/EBB6xZALjyTgoijK4ZacY9HR0Iq+sAPlBN6LRNBLJOPItTuN4dOuUEQWkeB5kJgNFI6CqKqi0Hk8oTxHrbIB+kfQLbrfaQFpUY4pyWGy4IFCEsbExtB/Yj5qyMhzu70UPB3TEx9DN+kE5WFRVVr79xuf/+eilz/z4v7D+2SuMmPe6C7Y/e9P9/xhWhL3JNA+Cl7FnuBssTRsWTSUAn0yAkBVQDK0z2/DOGII0Qm3OBdKcDj60YTOqphkkc7mcsFgscDgdqA0WYk3rfjz8ylPwZDTERkeAeKz7gfKGx0FasitCf3Ddq5379w6NR7CsbAbae3vQNjwIp9UOlqKNB0Mzunx/LITrw4ipeKwTIKsK8qw25Hv9sDMcmCSPoY4OSGMpB+w2wOEA4rzj8V0bwUhAhbuABEnAfo74RX9PTBErB93HsXMW+F3eUivNLmYJykawNBSbBWma5IwgP+NskUQV5QChaogqSd3qLfJw9o84OIvNbbEZ0+6Z3kQ3A855H+tvQQ8oZBkGfrcH5ZLs2hDqvfmP29/8+CJnntyVGL9rWOa7KIcDSVajjG0dzcgHI0ZVDTa7FZX+PLU/Fb3zD0f23HyFxF8zmklvPC+vEAG7D/zf+LsfBnyoieW02LCz9SCe2fI2SKvttu0jHb/E7jXYdvH1+45CJKKqhEKSAKkzSs0JmSSIKqcbq4/sQ280ij8c3E4gNuZdzbA+xIZRRer+WhBjk/7ahwsfyqlQUVU4WSsCNndNvs/vmDN3AbYryXno2gwUOwCHK+6z2ASL7oTLii7mE8fUcQ0otNjx1pED+PETPwaGB3gUlAEOW/LCylmo9xXoconFzrKVAZdHV/GhfAj9rw8VsfSpz8KwqA6WWN8Y7vnl9X95+FeE3135yK3/iHuWXpoGwQO0apDJJqmgVRXy8Y2cY9D9MVitQF6RvmdIQVWMLaPaYBEcPh9Sdqtt42D3v/x43et/zIhSld/hzL7nQ4QPxVQ4oWXp2zqDkfE5z+56+9vY/udrwMuRA01zKF1tj/EJFaxuliQ9G4fgSY2QCc1IpJh89xG5jZuJR/ZHPwQ4aBlOi1VekxqejfXPNO4Id9V+57LbHypye9eQJKkrWZM+7VzEh4JYLM1gMB7B9pEW99sDff/Us/HJa0ClgaIZ/QUWjs9Agqbqar8lm4lDaFCI917bqRP/akZIjWoEaxEa6VI0BBUNNknOwGkPwc024pWnFz7jCn5/UU3DkeWl9V12ip30eeciJt+M5xB0S6WLlYX+fP1qFm7sbld7IiEPHDbAUwqoNMGoeu68nDU5Gg09cwJZl+q9eHUCTrZaFj0JAwQcGqkW6Aqs2wd4gAPhkKvaHXRNLyyD3WYz9hXPdd3rnLVY+oVz2GxIjUf8P97w3B8wHt49t7DiW+2hvggoK6CIAE1AI4iJpMGcLSLxP4xdIdTsRKo/CFH/QF2iYAiQgcI4lZH4lza8ibQk3Umq2l4Ly+49l8l1ThJLd9L9Djs0gnb907OP/knbtHYlll3V83E4soF7BpcmjLWWI9Tf9yKHJ/wwVcNih4f63eFdOHxkr874T0OVXVddcPGdTqu1OZFIm7VM2f8K59xUqDvHDqsNg6NjDVf/8gd/0dY+vRJ+BgjmDSiKmvvGxyc6QiNyP0/k1t/3QhOKShx2MAQK3ICHjGFg38xP/+lXf4zGExd47Y5zclo8p4ila5gWggYhaK7HN7754Njrj6xA0AH482GXVVLTyyMRMowoBYNcTM5o6z//17mBGqn7ZoTx0FxEbgtay07LtRQDMCxgc6URyAe2/qn+nj/95+Njyfhiv9trbIQT51C6vimnQkE+vWp5mhHpSxjalIXlQFAk/KwNSkzwbxsdKoGbBVwuQFLBaNCOOdq6N6TRxyvJHHv8/UCdIKjq/7qOOWCqBj29rSQP2P9O1TP506++oLByl14VonbmTFhYBooyFY/1f4LpwfLT+liKICCoMjpGBnCkqx0DQjLPD+uDi4Plf5kRLGgdpq3LDfeJAKQP2BrQuZh7GJnd2bVm1pUjVSM/kbUDbg6hZIxpHR2knZImVkyrg/UcsVqmJFaRyztp7N1AkhSSsoADQ90YDo8zz3S3PIz21qULHvi3Zz2cJalPTgZ0q/Yu7/9AkCutZRCLMvaTctOwZhRxc3g86cZgSUZKpC92Oxx7rJwlklR5ZCQRmqaetY69OUtFqqeXsk6qKiRFgpOz6YkLn0bz2htRGDhoc9rTkGRTfbeTqgYYlixLGJJh1M1d7eqh4f4vtVs1NFRUXlvq9Ao1ekUbI87r7NwKOqvlBt1tcnBWfTpc+dSG5/4ZqR4gOFekJc1YHYIQAIIzfCp9I5jQLZhGfLBrFk2vh0vApebyEVVCNs66kK23FaNIcpsY0ZMpxWce/+HVN931hbvL6hb83Gdxwmazm6JW2P8EplwVciTz3g+KAU3Shjae7/QgmRFKP//cr3+FkX15KCoyHHVKMyYcIusta8c2YbLSwt/fUX8/GKtVDShVcneDIXFlJY9xqETA7QQKivugxPHcC09+m+czC1mWgaBKkBX5fR9mhCktVut4/6SxCehTg42xIM9ix+sHt1t+1bzxh9jxWhUqqgE+ZSSsEhNLfZP5Jypxqg6bfeLRSKRlDcmSSqBlp/+zq5/65f7GeZcEaGckRgpnpZ9lSmKNpmOTxiag59+5OQcK7E7s6Wu7fvfqX92CAg/AWIBkYpLUaSa8RyI+QerTtL5lqWdcV5cAO16Y+9PX5n3tU+df8RBDUamzMeTGlFOhXsjsvR4UScFltSKZEcse/uuffwBlVC/fCAjSWSv36uH0tD416nFdLgdgA373/O/v7ezpbiA1AkKaRyaZfs+HGWFKi+XzeCaNTUCvDSpKsudf1z77ENo2Fhu1q9SJUtmEoZhqGkGyKqEZcoMxi5hXcGQBtZsG0owe9Kw7+BpgdQBCyprmFG/nwf1gC3xgHTao6tkjnJqSWDf84FuTxgxQFGqcXnTIYiPG2j6OYB5A27P1q453szCWfVaVULPqurlBaUBa17fYnDevq+76DeF3IZWJs8xYDHa9nBLB4mwKEjTlmf/64ssnjemZxn1jo/jts78GWMYJD0HD4cwKjkbFluMO7lm3IXJiWJcRvSMDHo8a6hmQQh2hmxbNqN1CkdSAdhaVpDQlsT4yb8mkMd23iibiKHbnYYyUtF88+6OsN6w77dlNQz3l79jrzyJ395RdxdxtQXIEWDr029bNdw9Xeq+8cckln7OxXPxs6YhhSndXkqRJD14U9L1B67KZ8+pXLlgC6CW7pXOstduEqdWrBxq+FqOOO2Xt9289c1tazJR6bDbYWHbSw4wwpcV6o7X5pOdENsTYwsjqp0RRnrZ0xYrHs4GeZ/+GrTKhbemLDSKnlhhOuqbJqkaiIH8Y65+nVm9b+4nzauY9pCgqfzb4WqYkVl1B8UnP9UIbA/GI/4tvPf+tS0qq1wq7N0eQTgAu7mz0qE6CHsJcoRLoNlKCchER+jqE0fQAMhlgRThJ7Q9bX/mM01nysJW2dIuKbHrJ1JTEKvMFTnimwcZawUuZOrRvz9dmNw1ua9lHQeQB0nHWl1ZkJ4TTU7LJ9P8wmpEuRMGTp2LgiFMUM5fcOHve7ymSlNUTok5/MulTzzxMSaz29PCx/+uBfFoK9pf3b7kT6UEErPZwhIqR79oc6SzSeSbh2NfRcvVTdU6RgMoAtBOgQ/h167ZPf3bpyufzXe6oLJunWei7wZTEypzQCJM2psHw9Fd3rLkJDl8mKJORUZo5HkJ3riYaUSqp6gVJJVaGzGi6roXDu+b/de/uiz12x4sZSTL18tCUV6VzLGT81P1YK8tYhmOxKzDSZkF+MS9qGisS51oSiJb9shPRF8cC/HLjCkGAsgFCmHji4LabfnTFzW+6LNaEbOI9RFMS67z8auMnS5CIi7z9u7vWX2V0hCBZup3TAlZNZbPbNccLyuIDDrP6e0EXTGyYEEdzepz+U6ZUSmcYl6GNMdkKWCI42Lf7Uq/9Tm+ZLz8hyO+xrW0CmJJYBY5saLKutmfGQvXYs6kJeriyaqzINZv6IahtduINo2lZxdfuBDoO+TYd2r886HA/KUiSaaV4UxLrxd2bjJ8WmrWOpaJXID5MI5BnFNjXSUUY5ZHPdWYRhKLfR4p6vMOAnkKmZfDY/i03ff+We15y2K1Rs2b0mJJYy+Y0gaEohBNx5yefeu0jsLLZKUIPIdGPmQB1zhdgyuVbnGSZ9UWNw4IDPUcu4mxWR74vL2rWlnamJFZhnt/oHqESWh6iw9PBULnuW8YcSEi68/5hLEmsJ5HZOCDa52zt7jgvE48NiIpsyhNhSmL1tHaBpRiqJzoyF/ERFlZ7NpyElrWAqgkjGnGObRK+D7Tc6lAls82hEsN4q3X7FV6r4y1JkVN/+81nBqYk1toDzbBQtG00k1qBVBxwFwB82pgXyOx9++EzV8REvQnCKGjy4pED5z1x++c4l8ORemLSi888TOmp3H71bVh+0Srrs10tC0BTx+Ot3k1t/zBA/96GZJXTuvR2d+NDDS6HoyjozjPlCTClxQr48pCBWoLkeC04Fuf+CvA0MVEpR29rJ/KWTV3tdQHHaIsZw89MSay3W3aRg7FINWSeActM+v2HHrrsIPFo7uuqLrA76JzOaiqYklj7eg7RoVSiFGLSqLqXtVgf0mnwRBh2SZ8KaSA+Bqso1HKchTEjsUzpY9EqGEKWa5EKnxRuPIUcjPYrCvaFBmcqcd6UIaSmJFa5r4A7Eh6fmd3/m1gDTvlZx0ECnBV94ZFySZFPrzTPBwxTEktVVUt7OFQEOjdTazgWozSFXNwZretZ4QKZpINmPCWmJNYre7blI5UIGv2XDUz5WJNAk0B4lLhk/hJT6g2mJNas6po8REftWVGQPB6b9KGGdkKimJr1PWUeQ+PDPjOeFVMSa8nMOU7Ex084uilrdRy5wDMjj1LDcHzMPeklJoApiTUUDnNGgQzqf13J+ByEdrzEF0liMB1/70IXZxCm1LEi0YTDMPXEB18kzfQ4lkupGlevPR7LN+Mhm5JYST5lz1aFnfSrKZwIksahdMKUFsuUU+GImLRl29sQp+TaTSEbh0ZkbYLuKfARpxlPiimJFc6kHccq8E8Ko/wQ49iqMLda1p+LCasZT4gpiZURRe54E6UpTMaEA6/3s5BNuUtvyquXkmT2Qxt79Z44oYMicYI1VxRT+snmNAuqktMZpqbASTi2KMwltaqqKTUZUxJLlCXaMPNTy8KTcXKJNr0aHSCL3KTXmQCmJFZSvwuJiaDIKS3rXXGsguHUVHja4GX5uHmfmg3fB+a86czpvGtqrkzRFKv+Jgzn3ZyFQUxJrPTU3HfWw5TEsqsqcSzOfYpiZyVMSSyLqhHHGstPEes4TiwnORFRq5qzst+UvD2F/xOYklh6I7WsjjWF94VJ8wCmrt4U/k8wRayzHSb1Qc0pkOqni9RO6NIwBQPHWqLksqJN3OTevBZrajX4/jBxqJopiaWR5JSZOsthztoNJzYLn0qvPysx5byf7Zjysf6bODVacgqTYeIqh+YM9DuxYZGBKXK9O7Qp5/2/A3bKpTrrYUpiMdo50Dr1g8BEFWUTYsp5fx+okyvHalMn7f1hTrnBiIzMlZ7+wG9I9SR5QzuVWBo065kSJk9MpjB5KoApiaV8gDv2E5OuduxCnZwdNJF0nH0y6e1nBhPEImHaSceURyVrGvl/ETajTVptTuDUW19vxqzlaHa6ZuGDZl1OaqCmfKzThqzlIkgnevWdfNHe9woafcIIaEYKmWZ0dwILAllBX29Jp54Qgan/ljgeBp39HaFCJRVCA0nqHzTRWt5Y3muMMUXnGnES1LGKg/oh623J3q2DFK2qcBhJpqp24lyWJEAIBE7Z+Hu3O+Dd/wuSNGU2hVn9UO1YdchTpkU1e4n/5m2qGX3CjMS7CZrl3kscV1y1XP0Diphw0LPjuU9WT/BnqBMdGgJ697ETCH/cJyP/ButlENkAxmzhr3e7YXJ/7/gl0Y7VyCSPE5/M/WaCn1NT4elDVlUaTO7k6THd+kUgjfZMRISAVSY1xjh07QTnSM2lQhEgeJKkBeMNujVhjWtv0QikCL1+BksZF49SAFUgQDMIgoDV5iAhSIDRDZcg0oRudkgwCg2HxGiQmOzfIxV6KyMClAQQOsVlgzZ6L8EkKSNGSkhQEjMK+VgvKasKLUoz2gBn19uVcFCIbJysJqNJhBzQc071r6TSOQsr66nzhEZotP6ds710mKx1NPhNZA2oXspI1aZS7E8bAs9BFGG0O6Fz/KCNaYdgoJIWfaYhc/6FXk5Sf+jPacO8aA5CE60EZGNc7+JAEcjTVEme8Mv1C8VaAIsDO7s68PA7q/F4V5sMXyBXi47SWJAaremNETVQhKYan21AzV74iWNiyGyqO0EoGUpDjJYRpRQKNEjj9zSQT1NqH5/UMD4IKPp7acCiAIyKoKqKLhBwU1TWEJPZcVAaLJoxV8vGVTKynqnsDaR/L44BFFHvimYx4yU0ZXr2R2tmHXp668vXIJOCUetdP9lSGlDsNJXiXZl0ikB0CLCKWYtkTA0SkB4F4uMWThJYLp20IBIG6LhhGXano+4FnAykhm2IhgDaCbhLbM1trWzzkd1AMsIZFzAaBlIxR0ZUuJjMg1UpHFZiXqSGAD4DRGOsl2IwEk4B43qrQM0OLgNIDCsnRUgZCbJCkYinrYiMARGgNxpy1+WXsb3T6oCBo06E+wFqBNAEdAlx+6goIpZJ5hvfiYjr9RiAZJRMyGkGybAbkSEqe5PlrDJHZi1bRED10ov2HMXmSefwTMOUxLrjolWPre87ctHQkf31sFgZY9qRMiQ0ixaweGM2lyoirz4Jlyvb/4PQsh42W8jBXRLjFU1xcPYU8qapcDrSIJ3kYk9QneHg0OuKRUP+OhmqVYVqHfvS+auE+1Zdjn9d80zit3/+pQJ/mdbozI9RVrtaqGnwsxaU25z8VnclD5ti9bpLwnWeALgYg4GUA+MU4nPsgXiR1SHNteajivXrFkVazuUNrXPXClBCTDwljf7kto8JTwYKcd3vf5DaPNDBw1KogLBxhXYfX8LKcNMWvsVTmQZEDXrTVEex4uOcUr63MDEar0yDolWwmj4t6jmXKiRNRk3D4X++8Kp/vx2/nHQOzzRMSSyWZTse+/g/Xv38W+uWxSTBIkPBmCwzVlDKhaX129P+1NDgwsRnZJuVtBKEIhIgZA3akCDZmwoKh9x2+5Gq4qqnrOffPDiHpGIO1kotqK7e7iMlTPcWP/yoI9DskRhlnmrvrskv7PH4g7hn6ZVP/fZwaw8cjHbp9HkdpRZb/5GREApLgri9dPbzoVmXRqMk6byxatY6xsahLFCGVCoNW1p5vMru2xm2YT/r5BAjVcz2BjN3Nsz7ocJwr2/IpLjrps1qicWjffkF5fjM7It+yIfDq0XWLrvA2m6snbehOxPF+ZL80zc42yZV1ZS0QhKNvkJhQX7ZUaph8SNP+4t215Ck2sVqxAEC5HwRaiFrF+648JINibGhoUkn0AQwJbEGhwYQTkQi0VTshTRDI0ypiFMq9JqIO8Z6IEsiohzxhEgpYHS/liAgaYDAqBgWE9g83I0BIXLQyaoHw7r7Q0t4J9KHpJrBQtaxSyCxK8qoGGRUbO3cjZ2bEmiiXHtnO+x7bQyFRDqJXS178U5/BzrlNPwa1RvhyEd5AjjCjyEla+giZbTbM6gXpb2KQu09LAhoFSQMKwruS0XA8JmtMUbbqruxo1oGD2x6Ee2ZGAbGB7YlOXqbrPvdkLEvPoQ3+DFMA70/TRP7M5oGgVLRryaxeawPR8VoS4bWWkYIFUloqNSABAkk5BRaBjpRYnNMOn9mwN9ctp8pfPuZR6CqGkK6j+J34wijgYdiaFFHkklQFIk6uxO6T61CA01MLIw0CJKILTyPGs6CKs4CnlChKz1j6TR4VTUWZZWsBSJU9EOCj6AwnhLgEjL4iD0AFiQGklEIGR55gQKsRwrNYhIX2H2GN9cppFFGsyigrRgUUhiFhAhJwCmrqGcdcFA03klGMEaRuIC1wkmSOJJKoIC1oktvQ0ySqHG6Db1LgYz2dAqU3miCpVDF2aFqmuGn693pN6dTqLFaUElzyECDXSGht6EYg4L9PI+bXT40lU/DJ5uWm+4amtJi2S1WJpHhL3q7q62hM+qQ4HVbwDCk4bCqWf1nODXRY1tXe3Iioa7YIyt8dmR4dBjaT27PUc0JnDyVG8/+7mgu/JlTFNXGD2Y4gtDiqkySigpifIhspjUWikhsToVyf05FD0nBRdGI60628fcJjGoaOkkeNoJAWpGMe3YDkcy+R1XQQfDZFaWmYiDDZ1d4umag5nSwNIkeMnmKbqehQ8hkj1fvgsanVbdGqDzHUWImZRnjbD2qqr6QTWwyF0xJrLQkWqMZ/rOd0ZHrQQpAqE8Xt7IkMSSEU9r5ntbeInFcyddJJUnZi6rLEQQFgVCx5ZgCniOe/ntjB4CaJGbGjZcq2c3yiffQJNL6a/Vx+YSaCrpCT5PH1Z1Tj5cgTh7TX6+vcpUTxvQbw2JFTFIBWQIyCeyslY9eWFr35hSxThOheJSPi8JPUVG9zuXxa/FNb0UxNKCC40hYbFkNyuPL3e04/vN0oBNTyABDA4YMgbxCDS6vrgmRoHF8Ts3+q0GBknt23G2gWSCTBMLDuYHctk5+QVanio4Ack6vMvY8dW2KA1z+bNvdiUIex4vUHpfh9eOLx2E0ASUIEhqdfV18TENDE2n4CF1dKvgk1c75wulUKn6mr9e7wZTEmhGokNKyuCFNkBs0tw3RectAZSQkKQ3jsoRZBYV44cXHAbsH8OVl7+D3gy7EZzJZ69cwG/9w2bUYGQ9j9XA/cGg34PYAVtvJJNWObQMeh/454yEE6ppw56W3YNdwLwZkESqhof3gLtRXzcAV027GwVA/eqUMJEXCdLsX0/IL8aMta4DoaPa4dat2YvVj5D57ZBBXX3QVqn0B7BvuwyipGf5WFW1FkScPo6k4Bipm6FYd19bPRl2w9H2++JmBKYk1t3wGIcsSle/xy5KLQnHNAnex3SOPQUpt6DqMz6y6Bm6rA4PRcbzxxl+AgpK/bbX0CxaNAHkB3H7p3ZhdVYvPLLocPSMDWLB7G97JK8C60QGg+xDgDbz3Z+nTXGQUqKzH6lvvx7yGRkhrheMAAByASURBVHJX+2G6Q82IXeNDeNRC4cfLbsKqWfPR2tXl2JsaT/J8GhcEyrm6wnJ5dnGl8omnfgqkY4DtlIYSOsnGh7F8yeX4zR0PIOD1ETta9rP9Fk2Ip5LEMn8VzcdT2uHImCp77SopCvYLK6cLqqKbRvPBlMRq7+kgeVk8f11vyw1JO5VaZC/oPJyWte5MosBTWfZCHsm2PnbrvYgBuIWmsebtlwGP/118FwoQeWB4ACipwH996j7cPmcFhhHHuo690zvaO2dOLyr98/KG2dqNfZ249+U/AoNdMKbGd/Pb9M/KL8Fzy2+Cn2Cxp7mZem7XxgceH2ybN7265vVvX33j40wS6rp163E4NnzVS10tywWeZ4g5F2wcGBt++vyyaenvrLwZ31j7AiCkoe9THoMkYlbtHPzkklsQC40g1D9gfX3r+s82U6nCOJ9207UL/tBQXrujdbDr029sOLiwsbhszE9z/2Vj2e5Jx2kCmJJYR48eVSUC0ub02K0D2zbmd5bOvnxGklY3cMKtnuGj180vr/pkik8fcDucuHvRCqxp3Q+ERwzn9hghdFIlwoAnD5+7/T5MLy3HLXOWoG3kKCiLxfbE6he+sm3vnsv/6f4vbt+0f1tficePexavwCNvPA8MD2anRov9uPXSLUoqirvnXIwq1oVN+3fBQ7OKvyA4FNr91xtDm169eeW0qpG6ktmvHTi4Bet2bOlfM959Gxwu28qy2jUOhpF6hvqxqqYRv9+3BR2dBwGn9/gG+/gwvnDxHUj1DqErlYCdZpW+dIx/Zc+rn0egaPAj9pLfECQl7OpuvWI4Nn6ZhSC+Mlg2nLZzpux4AlPujF95z+1w53mGiwp89dt3vRkcKy2/9+HrP9XRW+Xr3PaL73yjTZAzrx1sXvPynm1o7mjBdG8euseGgWQCsNmyH5KKAQ4Xnr/ny/jCpTehKliAsfA4CqxuDIyPlH/p6V/+Z+zovrz8mU3bC2z2Q5F0AkUeD2aVVsMTLEaH7mAP9gLWnAAp8IZvdL6vBIIsIsKnMRqLaiVllfs9FWXSnm0vrlh7+PDie677xEuLGpqiI+lE7/Ta6ZnFFVU7bBrxC0GWlLQsYSQZByFJ2Dea25BmLMDIEHDBhbh09izIHit4twUZN6v45tTtXt288a7zFy15aklF3WPrWw7MdHNs3coFi78RT6WfqC8oTtlYDk/++reTzuGZhjlLReY7YfXZObuoqOBs6sPX364uXXg+GCCAmU2xqy5ctm15UxNWzZ2L8+rr0VBTjS9efzsq58wH+roA3SGnGHzvio+jqbgar+/dhub2I+gJhdA2OIBYJG6/45qPPYd5549uat5x4xUNszArP4hCiw0LSirwpUuuwn+svBYIlgC9nTlr6MA9FU2wKwR29bTjSKgP7dERrFn9IqrH07u/+/DL30dkvHLB97/y9IH4kNNZlIcqq31vBWPZDUWxRdNppHgew9EwlpTX4XPnX56VTfq7YJszH49c/1GQFQF0eUkM5rPoy2dhs1ntIDi6yZE34KsupgpsjhtLrY4XwrHom2PxmHHxKJP2HDLlVKjvz2iUBkGDBJJwJ8P8Zx5Z/Rf3CzveueeTt3zqm2VO97Mr5i2CrGT9Vl19t7EWLJo1C08GS8BpFGYES7Bi5jzs6u4CrYuLsmxEg44nw75wNGq5cdrC++KpRNcL77z29Y7+gTkBj3+PIGVXl+FUCouq6vDrm+/CuiMH0ReNIl8k4fcEEBF5WG3H+3uTLhcZj6XzLhY8/3X/gz9q/tm3P/fs535re/D+VTd8/Wioy5LHOXwF/nxSUo/72LwmYkn1NKQVAXsb47hj5Soj/Cw5FoH9hMxmTSEJeOyJhw8039rZ03fRPYsu+6Xd7XorLEsoKSqBJANhPgUzwpTE0vRwYJJQFYLgQZKWpCCepylCz2Vl1UKsu396S99oYd3MxiFVmbhYBJICjzyvD//2iXvgFBmkZRHRdBLVldXZz9RUsAyDlra22XvbDt+QH/AfDVaUjyATs/9159aP/vCu+/f0R0ZyYci6a6Vi0fQG3HD+Uqzftxev7diJiIUGaXWddKwsQ2FsYCx/06YtlRfddOlzP7vy2icOvv3Xr2Wuv+2FxXMX7O461LJYyqQZ9ZTFwMD4CBYHS7CsuAgSSUMWBbCnWB9GV4Q5awYjofo1b74831NS2jIzkfdWtS8fnNOG2Ej0vVewZximJFZCP8mUQqiqyoDmEt6g75GbGxbupA9u3/X5//q3186rafDeCOJWVTv5pEqqgqP9PQh19IGmj381nVQcZ0VBYSF1sKe9aeOh3YuLfe4r4pxcAopLPRnqXnxvOMR0DAxKnEzixHTZLm4IB3u6MZyO6VEzJ/09Xde0s6yqWRl0pcaClaMR7PyHL391/tGjK+7/+Xf+9ORnv/mLYEFhx+hQSCTpk0+1HiE/DgJ87xCYiAXOoBukHjSoTWizAKXHR4+EvXctu+w7/JW3RJ/82fd/9Uxxxci3lq/82WFJxYXBalgZU3aVMyexpruDIClKiYp8Ghwt96fD/V0DvRgOj25AVSWa92+5SrdSYk7CIYjsdo1ukTKShNbWFlhsx0mgb1WTFI3Q+Ii/NL+AnDu78SsvvvHawNLFS3dcfNXttrU733zgBy8/fdVMb9lfgpwXgnaC4Kpq8HBWXN14niF6nwiWotEbjyCcScZ6hUQkPTSMefXz+h/98g9v+eRnr11/22+++5/3rrrh/3mC7leFnNpOEQTimRQSioAy1gUnxWIsGkOZ1w8/54KSe52++0nYrXFoMlGWlzf4iQuv/WNP875Vm9546qfuq286lCerb5s5sdCUnl99fgkqPflMR6ivFEOD3gXVM+emJdHW3nv0OjQ3o7Rx0ZaMJMJis8Fqt4PjLMgkBYSHRtDRchg2lwO0hT324CxWUBRF7T7cem84k15+60dueHPZ/Atarl9xWett85e+gNQY9+KaP3/OSVksLMeAoeljD1lTURcswtVzFuHSGXNwWeNcLK2bifMrp2HptJloKCpl2kIDlwkEVip8mnynsx3T3b6Nl330rgexYx3xi5Y901JOC0YoFWMMMEjIaKifievOvwxepwuyKBlh7eWcB/WWAEpIF4rgQBnlQnw84Uc8Yv3Nzs1XDhztsN44b+H98PmGv/D4w0/G+fTlLENbNJNWmzGn3HD1VcTw2GjT5vbDd3bKJNfgDBamY7EZ7eOjV4+z1m03NMz6Zk155cjGjVvQ3d2N7r5+lOcXQeUFpKNxkBkFepyxhWJgt1igL8kBXLRxqPsnLWOhwGxn3rayvGCvSIpkb1/vsrfDoyuhkcFFFQ3hgNO9Rw9BYGhKJyOsFhaRZAItvV3oGBrA/p5OWGgadrsdvCSgZaDvtp8f2Pl5IZOZfXHNjCN2WTks0QRWzF+8d1C1zptLO/uqLe61Nl7W7LyMsYEhXHLeIlxWNA1tw4OIRKMATSGdSaFrfBAFbi/09AiZAL2t5cDd60ZHFsQFsXZFoGqvp6ykednSy/e9tnHjDTxBXTwvWBpiQBx++fEnTedomXIqjEXCBC9Jow7S9qC7aoZ2qPWgLd9ip1OktuFTl16x7sihA6nN23aiee8BiOkkYONwYdN8EHYb6hrqwYdjIBkaSjqD1NC4nk9ICLI22qPK94kZOdLV3ZUK2ByEPU6CyiQP1Dnzbz6iMTZBEsOl+X5yKBJBKsMbS3kLy6JjvB9tfX3G//WVY1d4FDcuXIIldTOJ9a37OyHJd/aqhL59PFRZVkbubD+szvTnp+5Zctknu4602Xw2D1wFLgz29eFoJIFkKoWwkY2kGNM4Q1HoGB2AKKbRnRzH9Q0LUeoPUOl4ahd8gX8A4OWTyZ5qooK8dPqcN9+8+KorXty7YyYnK51uzvYuWwRnHqYkVlyRVEFVOlmO7awgNFAagbpAAYptLA52dkCWVbR2dMLn8SCl21wLazjSiqJAoyn4yorAMDT6u3txJDKEmWVViA0OtJzn8rTc0DQfsiDi4GAv7PpMomp7V3hK9tYzbqQzGby4fycKrS4UOj2QZAWSHmCox1/ZbGBpBl6rDQOJOF460Iy20JA2HIlsvqFsGjiaQmuoD2NCGgPdvegNDcFalD/QHx8H6bajqng6RkdHofdDJU6ZvvSVqJVl4WAZbBnqgUpSqGAcQmUgsPF7+V48uGcLGJZBpLcfP2vdi0w6vWteQdGuuMDj1AWMWWBKH2s8Fkc4mYTNakWVLw+aIiPfYiPrAwVEeGwUdpsNLrsNkqLQ+nR1ElTNII4iyobc0CsnIAUdWqC8EB+fswhLqqbBYmMxoKWwLRnCWDqFGa4gPdddTKRFES91tqEvEtatFa37V6qmQNJUI3ZGrynBKzJd4PZgJJXCjza9ja7RUWpGsBDV+QHm6FgIa47sN9LWjh7poCKpBJISD4HPgKOY6RzD2CmSyt4EABycBT6bs9TF2RoJgrDoq9pylxf7w8N46eAu5Dld5OVVjfh243wjnCZFE9TrWzfBzVlQ6gtgPJEgBmMRUzpZprRYPpeLTIvC/KGunus2EBlxsUYKJMs9b2Wto4Si3r2lp8O+ML982M0wxIGugbzGafW7Am7vK93JhCEz2DiLYbHcNkcgaHPPUUisqaytRCXnQjjDg1S0pqFQ6GPbU2mqzFs6JBLao4TfKaW6Ru7qPdo+nyqo2JLn9jxGp1Myy7BIJhOIaxQ4goaVY/NaBnrueTo9FliSXzAww5v/lo3ldmgcV6gRxE0H+3rn5uera+fNrH+sqKoSiYHQ0p7B/psPdbUTuw7uTyVS6a6gP/+XRQA2tB/C6r3Nn6sJBK5u8uZd4eM4S+fgwEc3iGn6KsqR1kA8GZYznefnlyLGp6GJYimhaf+wdaBHtasKdd70ObssFsvryKXZmgmmtFiFHr9W7PVH4lqqNt229ZvewmBNeXllpMCXl2mcPkPt79r3jb2x4Y/Ora3dV1FW6nq0Zcdzv3z1uX8vzcuHIAh4+2Azdne2cW8d3PnAb3a983ORzxTtONqKA6EeuKwOBD15Y2lJnolD277gDQRqL2qYy3udLktLZPQ+v8t73ZL6xhYLzYgeqw1uqxUBqwsVDi/KHB7UuvKTNofDipa3Prsp0XX3dG9eZlqwFOfPXzjKctz1Y6R267XLVoRvvfIq9dXdm7/SOtD1H4IkHD7QffS5goLg+o7R3nsf/vMfX3q6eZPjtZEuDKjRwPqje+tK/HnOi6bPirSK6ZVo2/pgaUmh1edyx/SJrriwGE210zGnZnps+YIFnt7WLQ8NsMpNTQ0zxhY2NJqy/ZcpieUiOM1jc7VVzKn/LVhCXjRj1gtBX/5IkTcvPX/m7OfhdgvRdHzQbrFuWL74ou+V1de1/Pbxn39+x0B3bfvIIKpsbhB8xv+7/Ttuie99u3bfQNflFqcbR8U0woqApqKK/hkFJS/B40CgqmRtZXlpZrS9e+5cZ96eR+//8kVul2tdRsjI+pSlK/A0RcFutcBq4WCj2STptP4bfN5X0d9W+Fy80zmiCBjpG+SsKtV2W/3sLypu7oUXt6xf8fSrL30vlopvDzpcP6c0Yl1JMPjqV+/81GefWrf66n/66/Nfv6GsBg8uv3LzeRXT1zb3dQkum2NweX3Da7CxmFtV+1x1fuF4gd2NmVXTMK2qGtXlFZFVy5b9GBwil9XVb6uvqNpRXVxqSifLlFPhYSZhrOp8VocC1i5wGiGsadmJLd2HMSzxJKyeRI3dmXQX5iMxODi8sLD4zV5Sa0pSsFvsViwIVGM4GafuvXDl739hkT79cPOWW175zNd+Nzg2gqcPbMfDm94GEjEgUIJAwL9vIDzsSo6OrfrkpR/5d1+wePee5l0I2h3H6nQZPpGqglBVY+uo1ONNfPH2z3/9P/7w00uf62u5r6agbPOWHVsXz6mYtl/z2X5+MNSH76/+y1fgcomOstLfbsuMYYHPDSIj487lV6//6uY33xhuOfRA0+VXPWZNiC9WzV5yRIDW/9TB7YikUjycBcpdG1/VFu/ZBkGRsaiyFg4uGxLUq6Qy4JxiKWPnt7UdYjVNnQr0O10MsQIYSoEqCDY98yYtClz7+CCe2LkWsNr1rGdqxGZxVFVXYt2W9dc9t/b1zxQsu/KlIrevlY8lsXtsyEPxfMHS0prvbh6eMb531+YfHw2FLggUFm0OJBO4tnYmmuORZN/QYe0rG1/51ifsJT2zLz5/baCxcvdoJgW/3wspkgRhY419S1VfHaYFaIwCSdLgL7Cjurx4f2XDwl93dbbdt8V9oHe+y5WYU1n7wp86tsuPtO2uQqh9lnfBxXtm1k0fjPIpbBjuxerYQaxOHMUwobZAjF8KjpgmjGRe9dhdo+fPmI27Xn4Ub8ZGLUas/NF95BYjmUNB81gn4HTBELho1g5ZISVZ5o6MDhCSYkpemXMq5DTaeJB60Qa9VBZBkhbWCgSDgM8vwcLwXWODs9Zv3foP+0IDnyyrqH55aaDgAUESBRUkDkRGZz68bd29e7s7iTlW1yEQGvej5q2fcecFMbNiGr5z+Ufx8cZ5AjQ+Hd239ZqfvfXnr3apcVcZ64Xb5UBpQxVcRfmgUwqotAxPwI+y+TNQOrMOZU11KCsvg1vl8Oht9/0rHK5961/745dZjokWu3wtvSPDwOE9AaSjtllu73C9vyCzuLQGW+OjONiyGX9+/RlAX9rSLKLjUa6ksgxerxs/3/km1ghRwGYhjRJbeiKqnnxBM1gxYzHu9tQBDg/gsOuVSgi9ZDnNsGCy4q/pYEqLRYu6GK2BkrNpWAqyy32Ienkf0CAYbqYz2NbR271/Syp6+MppDQcODYeSF8bToGWNkHm+sXt8fGldoPhuWiTykIpn+rr2NBKjIW5oqEegfD60j/cWgLHRdaWNVx557Od3fUdTfuERydYYqe2VbDbMSJGoYlzGVMRoDBSnFYIlmxrIqtkaqWWBwEhtQcHe9nDhjKOctvM3RzZrKZZG+bzloZ7tm5P94Xjg8PCQdSSdjN+aV4my25egOq8Y31r3on+o/QgYkhaqSosgJRS83vwGICQBuzNbHieeIPR9kaKqebi4pBZUS5cRvgwtW7bIpkG2aNAUU8qjJiWWSpF6oyYQmiaB4uCw2SQ1HTVy6cBYCLAO+mA62esY6Gv+Ws087CN4fLZ6LuyxNEZUye3OKM7LpzV+OZSIt51fWa19/NZP2/74zGNf2Lp318rautpXRScFidZIpEXuitqG3vnf/ME9T6x5re2LD3/vyX+8/dMXNQ/2jfsJH6bV+JERFIAXwYclhCwiREEyNpJ18IoEr0IRwcomMWFjk0Iqhc8vuQJVRSV9n079sHX7/oMX9vsLAqyC4Uq7C1edvwwLuXw8+OqfZsPhTf+183D3nsEeiCDQzfNGoEy5xok9GRErl18DNsZjtj3fSHIlKHIWJLkDJJkASWkMw6oKS0NQzblXaMqp0KmwcFE22IIFGsZD9EAywVTKFtxeswgriqenwY/aER51LrUFsNBfisscxZjuLYCX4ZDS5Es2HtpXWm5zPrckULaPEZX9c7xlj8Ljy/zrznV3NxbUwDkOhEUphVg/hqOZeTdPWxK76SNXfwnDQw2/2rvzsaaiMpsuvGo5591ht2NzZwvWbtkOZjAOvncMYvcowkNj2JGOacNCxFI6rmhLLcWo0iwosLqUr3/sjm+CzzCh0dH7KpxucAyLde+8gy//9elbxlsPrbj34uv+5fqmC9oay6ajSLPgc9YSfD84C1WCpiI2jpUz52SuKKs3IjgcNnvTK4Ntz3x79tK8f5q9bFy3bDuVuJsVFN7Jm7PZuCk3oa+5/XZCkpX5b3ce/Hbnge01KYl2L/AV7/Kx1gQpK5/Z1bJlJeB23lE9exdNUr1OMBAYEj2jocsffO35Zzqi4fLLSmo2VPoCg22hfsRjiQWbo6GbcWB3Y32wZsyrWiIv7d50z1jXgRkEkcfODZatX7xw7vbhjMp1rXn+k7s528qrCqv3BKyOoZSQQbHbj7Vdh6D7T4v8pYgm4mBUAsPh8Sve6d33eYR6ndWyR5tbVNnMC0JKcdvAuR19KkWEdne1X8uJUtXsGY22oz3dq3688c2v3X/pVb+/5cJLvzurpEqYWzENGI2BS0sosvtqNrfsub9vtL9SVCmG4UWGYpg5L+7d8fPt6ej0Ly+94s1w/8AN7+zfflVXOl2w3Ft81KqR7a8/+xfTSQ6mtKOPr32LFBVlTkei/wK7Jg8zImmdVzNrk8in+4aS4SsPxAdcXotfmWPP7wzanJsCLi9cTie5s/vIgscObL+ktKRk5EJX4QEXy22NZXgyKqbmDqvp+vb4iH2OvWh8TvH0lm0DB2e0RLq8NbbSzKW1C992lvv6Q0rc8uL69R8dHh6v/viC5S/MKi7fXeDKw/O71+Gmt54wlvs/arwYF5fORCgVpUeT4RUtJF/Zn4yri1Sn0FReuybP5wvl+/zoEKJ4K9SGUHvneVw4deH+jraCmppq8UAktPvBT9z16sqqRvkbrz6Bt7pb8VDDxahzF2A8k5y2q6f1vDZWtuSJBEqsjgjJ0NTOUG/Z7MZZR+YHK45u2t08P0xlFC2RsNYFK3pZmll/08WrTKe8m5JYz6zfQOjbybSLkOrdbghxGTJnpX69cbX6wOJVxDCRVgnOhWqFY8PJiPiFDX/GTbVNxD3zVxF/7Nijevx+zIGd3dXfJq7taiXum7eSTNhUZZyQYRsXyRpfOdMrDQsjYgjVlir0joTp29b9Xn7kxjuwonIWXtywHh+dv5zZMXBEenj7GrTHx7FvrM9YoTU4/Six2nF9+WxieXE9M+QkxXE5g6KYSs4uqSR+37JBeflwM1iOw1+TY3iobiEKeZr96n9+t/jW625IHHVhbFDOoCFQgD8cPgiEQ1hV2QgLw+LBeZczdpqROp2AJZYh3Co4QZHUEKmI85ua4BNobD5wkCos9SlidByiQur598rSeQtN58Kbklg/ee05pAQeLxzeC7vLBptCGmLlG6FeXF1cibgqgSJpeEkaMZHHm30tgDMPdxbXoi0ZA8cwyCcZ9Caj2JYI4+ZgBZJQkNIU2BTAwVgRVwQkVQEBxoHeVALNva2YWToN9f4ABiIRVHvzcSgSwu6BI4DNDehyh74y1SvJiHHUe4ox0+FHmFCQUVU4FQJBmwtvjfZgIDqcre8ATS/CBj/BYfdgH6p9PgzqsTWx8Wysul6HQq/lIKYBWcCKglo4aQYRUgWraEbZJt3Pi0OB2+mESwXCySjSHIMEL2BVfhWsNI2Hbrt70jk80zAlsf79lcfZaCq14vsb3pgJj10GCEkvjkCxHKFIfDYZ1agaoxhFN7ycDRE9TFniNVDs8TruFA07RSMlZbJlrvX68UZZSTUrNhK5rt0kiSLWikExk63/qZNCEYyfXtYCVVH1wDsDeilumtCQ1gvL6jUjJkpi6ytFRTEIqJc40m8EioBeEsmoqu1kOSR0uUDVCB9JEUnCqKZ8DLoQGxeE463ijl2ZXPEIVdGg6oVLFAoaRUJUmI+Vzup2MdyLj9z7oDDpJJ5hmLOMkSBY4pnMPcgkroGcO0RVj7dKn/zC3MmPSCdU8VFOcDf0WrYnvv7d0ub1zBgVGJRP+GyDMLpuJiGiW5OTbj8N4qmfd+LHZiTEJ7pqnBArleCPvyeMbGa1eGJppWPf6V3udS3HND0ePiNnS4DzInrlzBEPqb2Vre09hSlMYQpT+B8AwP8HFdPLDS5W+kcAAAAASUVORK5CYII='),
(16, 'RIUITM', 'Respublika Ixtisoslashtirilgan Urologiya Ilmiy-amaliy Tibbiyot Markazi', 'rscu.uz', 'http://213.230.71.197:8702/OnlinetBookingServiceRest', 'Onlinet', '#04a5dd', '#fff', 'data:image/png;base64,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');
INSERT INTO `org` (`Id`, `Name`, `FullName`, `Link`, `ApiLink`, `TypeApi`, `Background`, `Color`, `Image`) VALUES
(19, 'Beeline', 'Beeline', 'beeline.uz', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', 'Onlinet', '#f2c94c', '#000000', 'data:image/png;base64,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');

-- --------------------------------------------------------

--
-- Структура таблицы `ru`
--

CREATE TABLE `ru` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `ru`
--

INSERT INTO `ru` (`Id`, `OrgId`, `OrgName`, `ServiceId`, `ServiceName`, `GroupId`) VALUES
(36, 19, 'Beeline', 5, 'БУЗТОН', 5),
(37, 19, 'Beeline', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8),
(38, 19, 'Beeline', 11, 'ДРУГОЕ', 11),
(39, 19, 'Beeline', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9),
(40, 19, 'Beeline', 7, 'ОПЛАТА БАЛАНСА', 7),
(41, 19, 'Beeline', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10),
(42, 19, 'Beeline', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6),
(43, 19, 'Beeline', 3, 'СТАТУС ЗОНА', 3),
(44, 19, 'Beeline', 2, 'Обслуживание', 2),
(45, 19, 'Beeline', 1, 'Оплата', 1),
(46, 10, 'Ipak Yo\'li Banki', 15, 'ВКЛАДЫ', 15),
(47, 10, 'Ipak Yo\'li Banki', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13),
(48, 10, 'Ipak Yo\'li Banki', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', 17),
(49, 10, 'Ipak Yo\'li Banki', 9, 'КАРТЫ UZCARD', 9),
(50, 10, 'Ipak Yo\'li Banki', 5, 'КАРТЫ VISA/CUP', 5),
(51, 10, 'Ipak Yo\'li Banki', 14, 'ПЕРЕВОДЫ SWIFT', 14),
(52, 10, 'Ipak Yo\'li Banki', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16),
(53, 10, 'Ipak Yo\'li Banki', 24, 'КОММУНАЛЬНЫЕ ПЛАТЕЖИ', 24),
(54, 10, 'Ipak Yo\'li Banki', 26, 'КАССА', 26),
(55, 10, 'Ipak Yo\'li Banki', 18, 'КОНВЕРСИЯ EUR/USD', 18),
(56, 10, 'Ipak Yo\'li Banki', 19, 'ОБМЕННЫЙ ПУНКТ', 19),
(57, 10, 'Ipak Yo\'li Banki', 25, 'РАЗОВЫЕ ОПЛАТЫ', 25),
(58, 10, 'Ipak Yo\'li Banki', 22, 'ПОГАШЕНИЕ КРЕДИТОВ (ФИЗ. ЛИЦО)', 22),
(59, 10, 'Ipak Yo\'li Banki', 41, 'ПЛАСТИКОВЫЕ КАРТЫ', 41),
(60, 10, 'Ipak Yo\'li Banki', 20, 'КАРТЫ HUMO', 20),
(61, 10, 'Ipak Yo\'li Banki', 46, 'ОПЛАТА ДОГОВОРОВ', 46),
(62, 10, 'Ipak Yo\'li Banki', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', 38),
(63, 10, 'Ipak Yo\'li Banki', 10, 'ОФОРМЛЕНИЕ UZCARD', 10),
(64, 10, 'Ipak Yo\'li Banki', 6, 'ОФОРМЛЕНИЕ VISA/CUP', 6),
(65, 10, 'Ipak Yo\'li Banki', 12, 'ПОПОЛНЕНИЕ UZCARD', 12),
(66, 10, 'Ipak Yo\'li Banki', 21, 'ПОГАШЕНИЕ КРЕДИТОВ', 21),
(67, 10, 'Ipak Yo\'li Banki', 7, 'ПОПОЛНЕНИЕ VISA/CUP', 7),
(68, 10, 'Ipak Yo\'li Banki', 34, 'БУХГАЛТЕРИЯ', 34),
(69, 10, 'Ipak Yo\'li Banki', 11, 'ВЫДАЧА UZCARD', 11),
(70, 10, 'Ipak Yo\'li Banki', 31, 'СБЕРЕГАТЕЛЬНАЯ КАССА', 31),
(71, 10, 'Ipak Yo\'li Banki', 32, 'ВАЛЮТНАЯ КАССА', 32),
(72, 10, 'Ipak Yo\'li Banki', 39, 'ПЛАТЕЖИ МУНИС', 39),
(73, 10, 'Ipak Yo\'li Banki', 30, 'РАСХОДНАЯ КАССА', 30),
(74, 10, 'Ipak Yo\'li Banki', 33, 'ЗАВЕДУЮЩИЙ КАССЫ', 33),
(75, 10, 'Ipak Yo\'li Banki', 29, 'ПРИХОДНАЯ КАССА', 29),
(76, 10, 'Ipak Yo\'li Banki', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', 8),
(77, 10, 'Ipak Yo\'li Banki', 40, 'МИКРОКРЕДИТОВАНИЕ', 40),
(78, 10, 'Ipak Yo\'li Banki', 47, 'ОТДЕЛ КОРПОРАТИВНОГО БИЗНЕСА', 47),
(79, 10, 'Ipak Yo\'li Banki', 44, 'РОЗНИЧНАЯ КАССА', 44);

-- --------------------------------------------------------

--
-- Структура таблицы `ru_list_branches`
--

CREATE TABLE `ru_list_branches` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `BranchName` varchar(255) NOT NULL,
  `BranchAddress` varchar(255) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `Api` varchar(255) NOT NULL,
  `BranchOpeningTime` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `ru_list_branches`
--

INSERT INTO `ru_list_branches` (`Id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `Api`, `BranchOpeningTime`, `Color`, `Background`) VALUES
(20, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(21, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(22, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(23, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(24, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(25, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(26, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(27, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(28, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(29, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(30, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(31, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(32, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(33, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(34, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(35, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(36, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(37, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(38, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(39, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(40, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(41, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(42, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(43, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":2,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":3,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":4,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":5,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":6,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(44, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(45, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(46, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(47, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(48, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":2,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":3,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":4,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":5,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":6,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(49, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(50, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(51, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(52, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(53, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":2,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":3,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":4,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":5,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":6,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(54, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(55, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(56, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743');

-- --------------------------------------------------------

--
-- Структура таблицы `ru_search`
--

CREATE TABLE `ru_search` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `BranchName` varchar(255) NOT NULL,
  `BranchAddress` varchar(255) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `Api` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `ru_search`
--

INSERT INTO `ru_search` (`Id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `ServiceId`, `ServiceName`, `GroupId`, `Api`, `Color`, `Background`) VALUES
(217, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(218, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(219, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(220, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(221, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(222, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(223, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(224, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(225, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(226, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(227, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(228, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(229, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(230, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(231, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(232, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(233, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', 2, 'Обслуживание', 2, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(234, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', 1, 'Оплата', 1, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(235, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(236, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(237, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(238, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(239, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(240, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(241, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(242, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(243, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(244, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(245, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(246, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(247, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(248, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(249, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(250, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(251, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(252, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(253, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(254, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(255, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(256, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(257, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(258, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(259, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(260, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(261, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 1, 'Оплата', 1, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(262, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(263, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(264, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(265, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 2, 'Обслуживание', 2, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(266, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(267, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(268, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(269, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(270, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(271, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(272, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(273, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(274, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(275, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(276, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(277, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(278, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(279, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(280, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(281, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(282, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(283, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(284, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(285, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(286, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(287, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(288, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(289, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(290, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(291, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(292, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(293, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(294, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(295, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(296, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(297, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(298, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(299, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(300, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(301, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(302, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(303, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(304, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(305, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(306, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(307, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(308, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(309, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(310, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(311, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(312, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(313, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(314, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(315, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(316, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(317, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(318, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(319, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(320, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(321, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(322, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(323, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(324, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(325, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(326, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(327, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(328, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(329, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(330, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(331, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(332, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(333, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(334, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(335, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(336, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(337, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(338, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(339, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(340, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(341, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(342, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(343, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(344, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(345, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(346, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(347, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(348, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(349, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 5, 'БУЗТОН', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(350, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(351, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 11, 'ДРУГОЕ', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(352, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(353, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 7, 'ОПЛАТА БАЛАНСА', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(354, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(355, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(356, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 3, 'СТАТУС ЗОНА', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(357, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(358, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(359, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(360, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(361, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(362, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(363, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(364, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(365, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(366, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 24, 'КОММУНАЛЬНЫЕ ПЛАТЕЖИ', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(367, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 18, 'КОНВЕРСИЯ EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(368, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 26, 'КАССА', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(369, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 41, 'ПЛАСТИКОВЫЕ КАРТЫ', 41, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(370, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(371, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(372, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 22, 'ПОГАШЕНИЕ КРЕДИТОВ (ФИЗ. ЛИЦО)', 22, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(373, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(374, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 25, 'РАЗОВЫЕ ОПЛАТЫ', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(375, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(376, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(377, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(378, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(379, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 46, 'ОПЛАТА ДОГОВОРОВ', 46, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(380, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(381, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(382, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(383, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 10, 'ОФОРМЛЕНИЕ UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(384, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 6, 'ОФОРМЛЕНИЕ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(385, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 7, 'ПОПОЛНЕНИЕ VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(386, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 12, 'ПОПОЛНЕНИЕ UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(387, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(388, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(389, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(390, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(391, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(392, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(393, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(394, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(395, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(396, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(397, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 21, 'ПОГАШЕНИЕ КРЕДИТОВ', 21, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(398, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(399, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(400, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(401, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(402, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(403, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(404, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 34, 'БУХГАЛТЕРИЯ', 34, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(405, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(406, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 33, 'ЗАВЕДУЮЩИЙ КАССЫ', 33, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(407, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(408, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(409, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(410, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(411, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 32, 'ВАЛЮТНАЯ КАССА', 32, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(412, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 18, 'КОНВЕРСИЯ EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(413, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(414, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 30, 'РАСХОДНАЯ КАССА', 30, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(415, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(416, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(417, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 31, 'СБЕРЕГАТЕЛЬНАЯ КАССА', 31, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(418, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(419, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 29, 'ПРИХОДНАЯ КАССА', 29, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(420, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 11, 'ВЫДАЧА UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(421, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(422, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 18, 'КОНВЕРСИЯ EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(423, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(424, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 10, 'ОФОРМЛЕНИЕ UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(425, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 6, 'ОФОРМЛЕНИЕ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(426, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(427, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 39, 'ПЛАТЕЖИ МУНИС', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(428, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(429, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 12, 'ПОПОЛНЕНИЕ UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(430, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(431, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 7, 'ПОПОЛНЕНИЕ VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(432, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(433, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(434, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(435, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(436, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(437, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(438, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(439, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 24, 'КОММУНАЛЬНЫЕ ПЛАТЕЖИ', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(440, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 39, 'ПЛАТЕЖИ МУНИС', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(441, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(442, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(443, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(444, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(445, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(446, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(447, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(448, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(449, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(450, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 26, 'КАССА', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(451, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(452, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 24, 'КОММУНАЛЬНЫЕ ПЛАТЕЖИ', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(453, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(454, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(455, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 18, 'КОНВЕРСИЯ EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(456, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(457, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(458, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(459, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(460, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(461, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(462, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(463, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(464, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(465, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 26, 'КАССА', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(466, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(467, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 25, 'РАЗОВЫЕ ОПЛАТЫ', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(468, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(469, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(470, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(471, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(472, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(473, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(474, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 25, 'РАЗОВЫЕ ОПЛАТЫ', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(475, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(476, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(477, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(478, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(479, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(480, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(481, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 18, 'КОНВЕРСИЯ EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(482, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(483, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(484, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(485, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 34, 'БУХГАЛТЕРИЯ', 34, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(486, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(487, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(488, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(489, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 26, 'КАССА', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743');
INSERT INTO `ru_search` (`Id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `ServiceId`, `ServiceName`, `GroupId`, `Api`, `Color`, `Background`) VALUES
(490, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(491, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 32, 'ВАЛЮТНАЯ КАССА', 32, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(492, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 40, 'МИКРОКРЕДИТОВАНИЕ', 40, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(493, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(494, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(495, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 11, 'ВЫДАЧА UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(496, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(497, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 18, 'КОНВЕРСИЯ EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(498, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 6, 'ОФОРМЛЕНИЕ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(499, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 10, 'ОФОРМЛЕНИЕ UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(500, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 39, 'ПЛАТЕЖИ МУНИС', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(501, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 7, 'ПОПОЛНЕНИЕ VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(502, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 12, 'ПОПОЛНЕНИЕ UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(503, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 29, 'ПРИХОДНАЯ КАССА', 29, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(504, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 31, 'СБЕРЕГАТЕЛЬНАЯ КАССА', 31, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(505, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 30, 'РАСХОДНАЯ КАССА', 30, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(506, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(507, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(508, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(509, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 11, 'ВЫДАЧА UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(510, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(511, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(512, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 24, 'КОММУНАЛЬНЫЕ ПЛАТЕЖИ', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(513, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 47, 'ОТДЕЛ КОРПОРАТИВНОГО БИЗНЕСА', 47, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(514, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 10, 'ОФОРМЛЕНИЕ UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(515, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(516, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 6, 'ОФОРМЛЕНИЕ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(517, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 7, 'ПОПОЛНЕНИЕ VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(518, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(519, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 12, 'ПОПОЛНЕНИЕ UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(520, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(521, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 25, 'РАЗОВЫЕ ОПЛАТЫ', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(522, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(523, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(524, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(525, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 44, 'РОЗНИЧНАЯ КАССА', 44, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(526, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(527, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(528, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(529, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(530, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(531, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(532, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(533, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(534, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(535, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(536, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(537, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 11, 'ВЫДАЧА UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(538, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(539, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(540, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 18, 'КОНВЕРСИЯ EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(541, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 10, 'ОФОРМЛЕНИЕ UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(542, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(543, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(544, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 12, 'ПОПОЛНЕНИЕ UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(545, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 6, 'ОФОРМЛЕНИЕ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(546, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 7, 'ПОПОЛНЕНИЕ VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(547, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(548, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(549, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(550, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 11, 'ВЫДАЧА UZCARD', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(551, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(552, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 24, 'КОММУНАЛЬНЫЕ ПЛАТЕЖИ', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(553, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(554, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 20, 'КАРТЫ HUMO', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(555, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 10, 'ОФОРМЛЕНИЕ UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(556, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 6, 'ОФОРМЛЕНИЕ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(557, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 14, 'ПЕРЕВОДЫ SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(558, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 12, 'ПОПОЛНЕНИЕ UZCARD', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(559, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 7, 'ПОПОЛНЕНИЕ VISA/CUP', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(560, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 25, 'РАЗОВЫЕ ОПЛАТЫ', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(561, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(562, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(563, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(564, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 15, 'ВКЛАДЫ', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(565, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(566, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 5, 'КАРТЫ VISA/CUP', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(567, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 9, 'КАРТЫ UZCARD', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(568, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 26, 'КАССА', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(569, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 18, 'КОНВЕРСИЯ EUR/USD', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(570, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 24, 'КОММУНАЛЬНЫЕ ПЛАТЕЖИ', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(571, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 19, 'ОБМЕННЫЙ ПУНКТ', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743');

-- --------------------------------------------------------

--
-- Структура таблицы `ru_service`
--

CREATE TABLE `ru_service` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `ru_service`
--

INSERT INTO `ru_service` (`Id`, `OrgId`, `OrgName`, `ServiceId`, `ServiceName`, `GroupId`) VALUES
(36, 19, 'Beeline', 5, 'БУЗТОН', 5),
(37, 19, 'Beeline', 8, 'ДЕТАЛИЗАЦИЯ СЧЕТА', 8),
(38, 19, 'Beeline', 11, 'ДРУГОЕ', 11),
(39, 19, 'Beeline', 9, 'ЗАМЕНА СИМ-КАРТЫ', 9),
(40, 19, 'Beeline', 7, 'ОПЛАТА БАЛАНСА', 7),
(41, 19, 'Beeline', 10, 'ПЕРЕОФОРМЛЕНИЕ НОМЕРА', 10),
(42, 19, 'Beeline', 6, 'ПОДКЛЮЧЕНИЕ НОМЕРА', 6),
(43, 19, 'Beeline', 3, 'СТАТУС ЗОНА', 3),
(44, 19, 'Beeline', 2, 'Обслуживание', 2),
(45, 19, 'Beeline', 1, 'Оплата', 1),
(46, 10, 'Ipak Yo\'li Banki', 15, 'ВКЛАДЫ', 15),
(47, 10, 'Ipak Yo\'li Banki', 9, 'КАРТЫ UZCARD', 9),
(48, 10, 'Ipak Yo\'li Banki', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', 13),
(49, 10, 'Ipak Yo\'li Banki', 17, 'ДЕПОЗИТНЫЕ ЯЧЕЙКИ', 17),
(50, 10, 'Ipak Yo\'li Banki', 24, 'КОММУНАЛЬНЫЕ ПЛАТЕЖИ', 24),
(51, 10, 'Ipak Yo\'li Banki', 5, 'КАРТЫ VISA/CUP', 5),
(52, 10, 'Ipak Yo\'li Banki', 16, 'СПРАВКА В ПОСОЛЬСТВО', 16),
(53, 10, 'Ipak Yo\'li Banki', 26, 'КАССА', 26),
(54, 10, 'Ipak Yo\'li Banki', 14, 'ПЕРЕВОДЫ SWIFT', 14),
(55, 10, 'Ipak Yo\'li Banki', 18, 'КОНВЕРСИЯ EUR/USD', 18),
(56, 10, 'Ipak Yo\'li Banki', 41, 'ПЛАСТИКОВЫЕ КАРТЫ', 41),
(57, 10, 'Ipak Yo\'li Banki', 22, 'ПОГАШЕНИЕ КРЕДИТОВ (ФИЗ. ЛИЦО)', 22),
(58, 10, 'Ipak Yo\'li Banki', 19, 'ОБМЕННЫЙ ПУНКТ', 19),
(59, 10, 'Ipak Yo\'li Banki', 25, 'РАЗОВЫЕ ОПЛАТЫ', 25),
(60, 10, 'Ipak Yo\'li Banki', 20, 'КАРТЫ HUMO', 20),
(61, 10, 'Ipak Yo\'li Banki', 46, 'ОПЛАТА ДОГОВОРОВ', 46),
(62, 10, 'Ipak Yo\'li Banki', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', 38),
(63, 10, 'Ipak Yo\'li Banki', 6, 'ОФОРМЛЕНИЕ VISA/CUP', 6),
(64, 10, 'Ipak Yo\'li Banki', 10, 'ОФОРМЛЕНИЕ UZCARD', 10),
(65, 10, 'Ipak Yo\'li Banki', 12, 'ПОПОЛНЕНИЕ UZCARD', 12),
(66, 10, 'Ipak Yo\'li Banki', 7, 'ПОПОЛНЕНИЕ VISA/CUP', 7),
(67, 10, 'Ipak Yo\'li Banki', 34, 'БУХГАЛТЕРИЯ', 34),
(68, 10, 'Ipak Yo\'li Banki', 21, 'ПОГАШЕНИЕ КРЕДИТОВ', 21),
(69, 10, 'Ipak Yo\'li Banki', 11, 'ВЫДАЧА UZCARD', 11),
(70, 10, 'Ipak Yo\'li Banki', 29, 'ПРИХОДНАЯ КАССА', 29),
(71, 10, 'Ipak Yo\'li Banki', 32, 'ВАЛЮТНАЯ КАССА', 32),
(72, 10, 'Ipak Yo\'li Banki', 39, 'ПЛАТЕЖИ МУНИС', 39),
(73, 10, 'Ipak Yo\'li Banki', 30, 'РАСХОДНАЯ КАССА', 30),
(74, 10, 'Ipak Yo\'li Banki', 31, 'СБЕРЕГАТЕЛЬНАЯ КАССА', 31),
(75, 10, 'Ipak Yo\'li Banki', 33, 'ЗАВЕДУЮЩИЙ КАССЫ', 33),
(76, 10, 'Ipak Yo\'li Banki', 8, 'СНЯТИЕ С КАРТЫ VISA/CUP', 8),
(77, 10, 'Ipak Yo\'li Banki', 40, 'МИКРОКРЕДИТОВАНИЕ', 40),
(78, 10, 'Ipak Yo\'li Banki', 44, 'РОЗНИЧНАЯ КАССА', 44),
(79, 10, 'Ipak Yo\'li Banki', 47, 'ОТДЕЛ КОРПОРАТИВНОГО БИЗНЕСА', 47);

-- --------------------------------------------------------

--
-- Структура таблицы `tiket`
--

CREATE TABLE `tiket` (
  `Id` int(11) NOT NULL,
  `OrgId` bigint(20) DEFAULT NULL,
  `OrgName` varchar(255) DEFAULT NULL,
  `BranchId` bigint(20) DEFAULT NULL,
  `Branch` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `ServiceId` bigint(20) DEFAULT NULL,
  `Service` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Dates` date DEFAULT NULL,
  `Time` varchar(255) DEFAULT NULL,
  `Ticket` varchar(255) DEFAULT NULL,
  `TicketId` bigint(20) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `BookingDate` varchar(255) DEFAULT NULL,
  `BookingTime` varchar(255) DEFAULT NULL,
  `BookingId` bigint(20) DEFAULT NULL,
  `BookingCode` bigint(20) DEFAULT NULL,
  `ClientId` varchar(255) DEFAULT NULL,
  `DeviceId` varchar(255) DEFAULT NULL,
  `DeviceType` int(11) DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `tiket`
--

INSERT INTO `tiket` (`Id`, `OrgId`, `OrgName`, `BranchId`, `Branch`, `Adress`, `ServiceId`, `Service`, `Phone`, `Type`, `Dates`, `Time`, `Ticket`, `TicketId`, `FullName`, `BookingDate`, `BookingTime`, `BookingId`, `BookingCode`, `ClientId`, `DeviceId`, `DeviceType`, `Language`) VALUES
(12, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', 6, 'ОФОРМЛЕНИЕ VISA/CUP', '+998999243174', 'booking', '2022-11-30', '04:46:18', '1', 1, NULL, '2022-11-30', '09:44:06', 8584, 309524310, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'yYEb5ksUAuCCJbTNY8ExGG', 3, 'ru'),
(13, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', 13, 'ДЕНЕЖНЫЕ ПЕРЕВОДЫ', '+998999243174', 'booking', '2022-11-30', '04:55:29', '1', 1, NULL, '2022-11-30', '09:44:06', 8586, 301506027, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', '64Nfb1A0CvpmJBELSAGSq8', 3, 'ru'),
(39, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', '+998999243174', 'booking', '2022-11-30', '10:55:18', '1', 1, NULL, '2022-11-30', '15:46:08', 8624, 300423909, 'TNB6cqK59etfOprYdAj9TDLNXV63kmm1DT-ShP27qD4!', 'QasjdFgQR6UIExXzlLaLV1', 3, 'ru'),
(41, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', 38, 'РОЗНИЧНЫЕ КРЕДИТЫ', '+998999243174', 'eTicket', '2022-11-30', '11:43:27', '165', 54077, NULL, '0', '0', 0, 0, '0', 'YPVxp54K7egKDwY6ToCPG2', 3, 'ru'),
(92, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', 15, 'ВКЛАДЫ', '998998907641', 'eTicket', '2024-02-19', '10:52:11', 'A243', 451407, NULL, '0', '0', 0, 0, '0', '3VPiU6efzKdmLr9h0ofyZv', 3, 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', '9616199');

-- --------------------------------------------------------

--
-- Структура таблицы `uz`
--

CREATE TABLE `uz` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `uz`
--

INSERT INTO `uz` (`Id`, `OrgId`, `OrgName`, `ServiceId`, `ServiceName`, `GroupId`) VALUES
(36, 19, 'Beeline', 11, 'BOSHQA', 11),
(37, 19, 'Beeline', 5, 'BUZTON', 5),
(38, 19, 'Beeline', 7, 'HISOBNI TO\'LDIRISH', 7),
(39, 19, 'Beeline', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10),
(40, 19, 'Beeline', 6, 'RAQAM XARID QILISH', 6),
(41, 19, 'Beeline', 9, 'SIM-KARTANI TIKLASH', 9),
(42, 19, 'Beeline', 3, 'STATUS ZONA', 3),
(43, 19, 'Beeline', 1, 'To\'lovlar', 1),
(44, 19, 'Beeline', 8, 'XARAJATLAR DETALIZATSIYASI', 8),
(45, 19, 'Beeline', 2, 'Xizmat ko\'rsatish', 2),
(46, 10, 'Ipak Yo\'li Banki', 16, 'ELCHIXONAGA MALUMOTNOMA', 16),
(47, 10, 'Ipak Yo\'li Banki', 17, 'OMONAT QUTSI', 17),
(48, 10, 'Ipak Yo\'li Banki', 10, 'RASMIYLASHTIRISH UZCARD', 10),
(49, 10, 'Ipak Yo\'li Banki', 34, 'BUHGALTERIYA', 34),
(50, 10, 'Ipak Yo\'li Banki', 46, 'SHARTNOMA TO\'LOVLAR', 46),
(51, 10, 'Ipak Yo\'li Banki', 14, 'OTKAZMALARI SWIFT', 14),
(52, 10, 'Ipak Yo\'li Banki', 12, 'UZCARD TOLDIRISH', 12),
(53, 10, 'Ipak Yo\'li Banki', 7, 'VISA/CUP TOLDIRISH', 7),
(54, 10, 'Ipak Yo\'li Banki', 26, 'KASSA', 26),
(55, 10, 'Ipak Yo\'li Banki', 15, 'OMONATLAR', 15),
(56, 10, 'Ipak Yo\'li Banki', 6, 'РАСМИЙЛАШТИРИШ VISA/CUP', 6),
(57, 10, 'Ipak Yo\'li Banki', 13, 'PUL O\'TKAZMALARI', 13),
(58, 10, 'Ipak Yo\'li Banki', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19),
(59, 10, 'Ipak Yo\'li Banki', 5, 'VISA/CUP KARTASI', 5),
(60, 10, 'Ipak Yo\'li Banki', 25, 'BIR MARTALIK TOLOVLAR', 25),
(61, 10, 'Ipak Yo\'li Banki', 9, 'UZCARD KARTASI', 9),
(62, 10, 'Ipak Yo\'li Banki', 38, 'CHAKANA KREDITLAR', 38),
(63, 10, 'Ipak Yo\'li Banki', 18, 'EUR/USD KONVERSIYASI', 18),
(64, 10, 'Ipak Yo\'li Banki', 22, 'JISMONIY SHAXSLAR (JISMONIY SHAXS)', 22),
(65, 10, 'Ipak Yo\'li Banki', 20, 'HUMO KARTASI', 20),
(66, 10, 'Ipak Yo\'li Banki', 41, 'PLASTIK KARTA', 41),
(67, 10, 'Ipak Yo\'li Banki', 24, 'KOMMUNAL TO\'LOVLAR', 24),
(68, 10, 'Ipak Yo\'li Banki', 30, 'CHIQIM KASSASI', 30),
(69, 10, 'Ipak Yo\'li Banki', 32, 'HORIJIY VALYUTA KASSASI', 32),
(70, 10, 'Ipak Yo\'li Banki', 31, 'JAMG̛ARMA KASSASI', 31),
(71, 10, 'Ipak Yo\'li Banki', 33, 'KASSA MUDIRI', 33),
(72, 10, 'Ipak Yo\'li Banki', 29, 'KIRIM KASSASI', 29),
(73, 10, 'Ipak Yo\'li Banki', 21, 'KREDITLARNI QAYTARISH', 21),
(74, 10, 'Ipak Yo\'li Banki', 8, 'VISA/CUP NAQD PUL YECHISH', 8),
(75, 10, 'Ipak Yo\'li Banki', 11, 'UZCARD BERISH', 11),
(76, 10, 'Ipak Yo\'li Banki', 39, 'MUNIS TOLOVLARI', 39);

-- --------------------------------------------------------

--
-- Структура таблицы `uz_list_branches`
--

CREATE TABLE `uz_list_branches` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `BranchName` varchar(255) NOT NULL,
  `BranchAddress` varchar(255) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `Api` varchar(255) NOT NULL,
  `BranchOpeningTime` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `uz_list_branches`
--

INSERT INTO `uz_list_branches` (`Id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `Api`, `BranchOpeningTime`, `Color`, `Background`) VALUES
(20, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(21, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(22, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(23, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(24, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(25, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(26, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(27, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(28, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(29, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(30, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(31, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(32, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(33, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(34, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(35, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(36, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(37, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":2,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":3,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":4,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":5,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":6,\"OpenTime\":\"00:00 - 00:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#000000', '#f2c94c'),
(38, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(39, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(40, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(41, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(42, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:45 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(43, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:00 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(44, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":2,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":3,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":4,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":5,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":6,\"OpenTime\":\"07:00 - 16:30\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(45, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(46, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(47, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(48, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":2,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":3,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":4,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":5,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":6,\"OpenTime\":\"06:00 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(49, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(50, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":2,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":3,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":4,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":5,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":6,\"OpenTime\":\"08:30 - 17:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(51, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(52, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(53, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(54, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":2,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":3,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":4,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":5,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":6,\"OpenTime\":\"07:00 - 16:40\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(55, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743'),
(56, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '[{\"Day\":1,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":2,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":3,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":4,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":5,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":6,\"OpenTime\":\"07:00 - 18:00\"},{\"Day\":7,\"OpenTime\":\"00:00 - 00:00\"}]', '#fff', '#007743');

-- --------------------------------------------------------

--
-- Структура таблицы `uz_search`
--

CREATE TABLE `uz_search` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `BranchName` varchar(255) NOT NULL,
  `BranchAddress` varchar(255) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `Api` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `uz_search`
--

INSERT INTO `uz_search` (`Id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `ServiceId`, `ServiceName`, `GroupId`, `Api`, `Color`, `Background`) VALUES
(217, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(218, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(219, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(220, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(221, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(222, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(223, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(224, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(225, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 2, 'Xizmat ko\'rsatish', 2, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(226, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(227, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(228, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(229, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(230, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(231, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(232, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(233, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(234, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(235, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(236, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(237, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(238, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(239, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(240, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(241, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(242, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(243, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(244, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(245, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(246, 19, 'Beeline', 12, 'Карши - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(247, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(248, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(249, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(250, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(251, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(252, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(253, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(254, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(255, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(256, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(257, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(258, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(259, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(260, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(261, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(262, 19, 'Beeline', 5, 'Джизак - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(263, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(264, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(265, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(266, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(267, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(268, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(269, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(270, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(271, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(272, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(273, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(274, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(275, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(276, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(277, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(278, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(279, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(280, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(281, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(282, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(283, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(284, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(285, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(286, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(287, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(288, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(289, 19, 'Beeline', 4, 'Гулистан - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(290, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(291, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(292, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(293, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(294, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(295, 19, 'Beeline', 1, 'Головной офис', '', '0', '0', 1, 'To\'lovlar', 1, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(296, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(297, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(298, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(299, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(300, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(301, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(302, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(303, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(304, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(305, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(306, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(307, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(308, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(309, 19, 'Beeline', 10, 'Коканд - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(310, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(311, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(312, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(313, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(314, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(315, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(316, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(317, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(318, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(319, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(320, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(321, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(322, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(323, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(324, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(325, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(326, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(327, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(328, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(329, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(330, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(331, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(332, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(333, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(334, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(335, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(336, 19, 'Beeline', 2, 'Чиланзар - Офис продаж ', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(337, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', 2, 'Xizmat ko\'rsatish', 2, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(338, 19, 'Beeline', 13, 'Бухара - Офис', '', '0', '0', 1, 'To\'lovlar', 1, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(339, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(340, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(341, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(342, 19, 'Beeline', 6, 'Самарканд - Офис', '', '0', '0', 9, 'SIM-KARTANI TIKLASH', 9, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(343, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(344, 19, 'Beeline', 17, 'Ургенч - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(345, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(346, 19, 'Beeline', 7, 'Наманган - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(347, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(348, 19, 'Beeline', 11, 'Навои - Офис', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(349, 19, 'Beeline', 18, 'Нукус - Офис', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(350, 19, 'Beeline', 16, 'Термез	офис', '', '0', '0', 5, 'BUZTON', 5, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(351, 19, 'Beeline', 15, 'Денов - Офис продаж', '', '0', '0', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(352, 19, 'Beeline', 14, 'Гиждуван - Офис продаж', '', '0', '0', 7, 'HISOBNI TO\'LDIRISH', 7, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(353, 19, 'Beeline', 9, 'Андижан - Офис', '', '0', '0', 11, 'BOSHQA', 11, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(354, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 3, 'STATUS ZONA', 3, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(355, 19, 'Beeline', 8, 'Фергана - Офис', '', '0', '0', 6, 'RAQAM XARID QILISH', 6, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(356, 19, 'Beeline', 3, 'БИЙ - Офис продаж', '', '0', '0', 8, 'XARAJATLAR DETALIZATSIYASI', 8, ' https://navbat.beeline.uz/OnlinetBookingServiceRest', '#000000', '#f2c94c'),
(357, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 17, 'OMONAT QUTSI', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(358, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(359, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(360, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(361, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 24, 'KOMMUNAL TO\'LOVLAR', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(362, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(363, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 25, 'BIR MARTALIK TOLOVLAR', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(364, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(365, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(366, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(367, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 41, 'PLASTIK KARTA', 41, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(368, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(369, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(370, 10, 'Ipak Yo\'li Banki', 15, 'Андижанский филиал', '  - ул. Истиклол, 35 ', '40.761678', '72.359126', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(371, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 22, 'JISMONIY SHAXSLAR (JISMONIY SHAXS)', 22, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(372, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(373, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 18, 'EUR/USD KONVERSIYASI', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(374, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(375, 10, 'Ipak Yo\'li Banki', 14, 'Бухарский филиал', '  - ул. Бахауддина Накшбанди ', '39.770388', '64.445611', 38, 'CHAKANA KREDITLAR', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(376, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(377, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(378, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(379, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 17, 'OMONAT QUTSI', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(380, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(381, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(382, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(383, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 10, 'RASMIYLASHTIRISH UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(384, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 46, 'SHARTNOMA TO\'LOVLAR', 46, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(385, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 12, 'UZCARD TOLDIRISH', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(386, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 7, 'VISA/CUP TOLDIRISH', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(387, 10, 'Ipak Yo\'li Banki', 1, 'Головной офис ОПЕРУ', '  - ул. Абдула Кадыри 2 ', '41.322528', '69.280259', 6, 'РАСМИЙЛАШТИРИШ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(388, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(389, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 34, 'BUHGALTERIYA', 34, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(390, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 30, 'CHIQIM KASSASI', 30, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(391, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 18, 'EUR/USD KONVERSIYASI', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(392, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 32, 'HORIJIY VALYUTA KASSASI', 32, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(393, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 31, 'JAMG̛ARMA KASSASI', 31, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(394, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 33, 'KASSA MUDIRI', 33, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(395, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 29, 'KIRIM KASSASI', 29, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(396, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 17, 'OMONAT QUTSI', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(397, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(398, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(399, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(400, 10, 'Ipak Yo\'li Banki', 12, 'Каршинский филиал', '  - ул. Мустакиллик, 18 ', '38.839211', '65.801089', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(401, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(402, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(403, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(404, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(405, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(406, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(407, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(408, 10, 'Ipak Yo\'li Banki', 2, 'Мирзо Улугбекский филиал', '  - пл. Х. Алимджана 5 ', '41.314779', '69.293472', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(409, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(410, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(411, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 21, 'KREDITLARNI QAYTARISH', 21, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(412, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 17, 'OMONAT QUTSI', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(413, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(414, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(415, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(416, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(417, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(418, 10, 'Ipak Yo\'li Banki', 3, 'Мирабадский филиал', '  - ул. Мирабад 25 ', '41.297007', '69.26981', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(419, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(420, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(421, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(422, 10, 'Ipak Yo\'li Banki', 23, 'Наманганский филиал', '   - ул. А. Навои, 5/1 ', '40.995205', '71.646973', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(423, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(424, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 17, 'OMONAT QUTSI', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(425, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 39, 'MUNIS TOLOVLARI', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(426, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(427, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 18, 'EUR/USD KONVERSIYASI', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(428, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(429, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(430, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(431, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 8, 'VISA/CUP NAQD PUL YECHISH', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(432, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 12, 'UZCARD TOLDIRISH', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(433, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 11, 'UZCARD BERISH', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(434, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 7, 'VISA/CUP TOLDIRISH', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(435, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 10, 'RASMIYLASHTIRISH UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(436, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 6, 'РАСМИЙЛАШТИРИШ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(437, 10, 'Ipak Yo\'li Banki', 11, 'Навоийский филиал', '  - ул. Меморлар, 18 ', '40.117884', '65.376462', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(438, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(439, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 24, 'KOMMUNAL TO\'LOVLAR', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(440, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 39, 'MUNIS TOLOVLARI', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(441, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(442, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(443, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(444, 10, 'Ipak Yo\'li Banki', 10, 'Региональный филиал Умар', '  - ул. Дагбитская, 14 ', '39.669649', '66.970248', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(445, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(446, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(447, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(448, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(449, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(450, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(451, 10, 'Ipak Yo\'li Banki', 16, 'Ферганский филиал', '  - ул. Комус, д.26 ', '40.383776', '71.786064', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(452, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(453, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 18, 'EUR/USD KONVERSIYASI', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(454, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 24, 'KOMMUNAL TO\'LOVLAR', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(455, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(456, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(457, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(458, 10, 'Ipak Yo\'li Banki', 9, 'Филиал Сагбан', '  - ул. Сагбан, 1 ', '41.329196', '69.235042', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(459, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(460, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(461, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 18, 'EUR/USD KONVERSIYASI', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(462, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(463, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(464, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(465, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(466, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(467, 10, 'Ipak Yo\'li Banki', 7, 'Филиал Урикзар', '  - массив Урикзар, «Караван Базар» ', '41.286457', '69.150312', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(468, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(469, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 25, 'BIR MARTALIK TOLOVLAR', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(470, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(471, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(472, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(473, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(474, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(475, 10, 'Ipak Yo\'li Banki', 5, 'Чиланзарский филиал', '  - ул. Фархадская, 12а ', '41.275696', '69.2012', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(476, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(477, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 25, 'BIR MARTALIK TOLOVLAR', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(478, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(479, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(480, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 17, 'OMONAT QUTSI', 17, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(481, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(482, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(483, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(484, 10, 'Ipak Yo\'li Banki', 8, 'Шайхантахурский филиал', '  - ул. Навои, дом 25 ', '41.321094', '69.240707', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(485, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743');
INSERT INTO `uz_search` (`Id`, `OrgId`, `OrgName`, `BranchId`, `BranchName`, `BranchAddress`, `Latitude`, `Longitude`, `ServiceId`, `ServiceName`, `GroupId`, `Api`, `Color`, `Background`) VALUES
(486, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 32, 'HORIJIY VALYUTA KASSASI', 32, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(487, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 18, 'EUR/USD KONVERSIYASI', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(488, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 12, 'UZCARD TOLDIRISH', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(489, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 11, 'UZCARD BERISH', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(490, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(491, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 39, 'MUNIS TOLOVLARI', 39, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(492, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 31, 'JAMG̛ARMA KASSASI', 31, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(493, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(494, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 30, 'CHIQIM KASSASI', 30, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(495, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 10, 'RASMIYLASHTIRISH UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(496, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 38, 'CHAKANA KREDITLAR', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(497, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 6, 'РАСМИЙЛАШТИРИШ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(498, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(499, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 7, 'VISA/CUP TOLDIRISH', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(500, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 8, 'VISA/CUP NAQD PUL YECHISH', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(501, 10, 'Ipak Yo\'li Banki', 17, 'Шахрисабзский филиал', '  - ул. Пиллакашлик, 21 ', '39.075738', '66.82675', 29, 'KIRIM KASSASI', 29, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(502, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 44, 'CHAKANA KASSA', 44, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(503, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 38, 'CHAKANA KREDITLAR', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(504, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 25, 'BIR MARTALIK TOLOVLAR', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(505, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 24, 'KOMMUNAL TO\'LOVLAR', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(506, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(507, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(508, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 47, 'KORPORATİV BIZNES BO\'LIMI', 47, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(509, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(510, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(511, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 10, 'RASMIYLASHTIRISH UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(512, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 11, 'UZCARD BERISH', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(513, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(514, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 7, 'VISA/CUP TOLDIRISH', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(515, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 8, 'VISA/CUP NAQD PUL YECHISH', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(516, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 12, 'UZCARD TOLDIRISH', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(517, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(518, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(519, 10, 'Ipak Yo\'li Banki', 24, 'ЭЦ Марказ', '   - проспект Амира Темура, 47 ', '41.297443', '69.285703', 6, 'РАСМИЙЛАШТИРИШ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(520, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(521, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(522, 10, 'Ipak Yo\'li Banki', 13, 'ЭЦ Галаба', '  - ул. Галаба, 2 ', '40.993977', '71.616302', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(523, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(524, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 38, 'CHAKANA KREDITLAR', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(525, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 34, 'BUHGALTERIYA', 34, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(526, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 40, 'MIKROKREDITLASH', 40, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(527, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(528, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(529, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 25, 'BIR MARTALIK TOLOVLAR', 25, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(530, 10, 'Ipak Yo\'li Banki', 20, 'ЭЦ Ок Сарой', '  - ул. Буюк Ипак Йули, д.5 ', '39.073769', '66.835161', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(531, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(532, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 38, 'CHAKANA KREDITLAR', 38, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(533, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(534, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(535, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(536, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(537, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 24, 'KOMMUNAL TO\'LOVLAR', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(538, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(539, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 11, 'UZCARD BERISH', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(540, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(541, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(542, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(543, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(544, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 18, 'EUR/USD KONVERSIYASI', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(545, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 10, 'RASMIYLASHTIRISH UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(546, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 12, 'UZCARD TOLDIRISH', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(547, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 6, 'РАСМИЙЛАШТИРИШ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(548, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 10, 'RASMIYLASHTIRISH UZCARD', 10, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(549, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(550, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 11, 'UZCARD BERISH', 11, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(551, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 8, 'VISA/CUP NAQD PUL YECHISH', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(552, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 7, 'VISA/CUP TOLDIRISH', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(553, 10, 'Ipak Yo\'li Banki', 25, 'ЭЦ Хадра', '  - ул. Алишер Навои, 33 ', '41.321064', '69.249088', 12, 'UZCARD TOLDIRISH', 12, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(554, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 7, 'VISA/CUP TOLDIRISH', 7, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(555, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 6, 'РАСМИЙЛАШТИРИШ VISA/CUP', 6, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(556, 10, 'Ipak Yo\'li Banki', 21, 'ЭЦ Яшнобод', '   - ул. Паркентская', '41.31016', '69.334432', 8, 'VISA/CUP NAQD PUL YECHISH', 8, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(557, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(558, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 18, 'EUR/USD KONVERSIYASI', 18, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(559, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 26, 'KASSA', 26, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(560, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(561, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 24, 'KOMMUNAL TO\'LOVLAR', 24, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(562, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(563, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(564, 10, 'Ipak Yo\'li Banki', 6, 'Янгиюльский филиал', '  - ул. Самаркандская, д. 146 ', '41.119134', '69.058181', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(565, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 16, 'ELCHIXONAGA MALUMOTNOMA', 16, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(566, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 20, 'HUMO KARTASI', 20, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(567, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 15, 'OMONATLAR', 15, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(568, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 14, 'OTKAZMALARI SWIFT', 14, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(569, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 13, 'PUL O\'TKAZMALARI', 13, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(570, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 9, 'UZCARD KARTASI', 9, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743'),
(571, 10, 'Ipak Yo\'li Banki', 4, 'Яккасарайский филиал', '  - ул. Усмана Насыра, 65 ', '41.278773', '69.246809', 5, 'VISA/CUP KARTASI', 5, 'https://ipakyulibank.uz/OnlinetBookingServiceRest', '#fff', '#007743');

-- --------------------------------------------------------

--
-- Структура таблицы `uz_service`
--

CREATE TABLE `uz_service` (
  `Id` int(11) NOT NULL,
  `OrgId` int(11) NOT NULL,
  `OrgName` varchar(255) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `GroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `uz_service`
--

INSERT INTO `uz_service` (`Id`, `OrgId`, `OrgName`, `ServiceId`, `ServiceName`, `GroupId`) VALUES
(36, 19, 'Beeline', 11, 'BOSHQA', 11),
(37, 19, 'Beeline', 5, 'BUZTON', 5),
(38, 19, 'Beeline', 7, 'HISOBNI TO\'LDIRISH', 7),
(39, 19, 'Beeline', 10, 'RAQAM QAYTA RO\'YXATDAN O\'TKAZISH', 10),
(40, 19, 'Beeline', 6, 'RAQAM XARID QILISH', 6),
(41, 19, 'Beeline', 9, 'SIM-KARTANI TIKLASH', 9),
(42, 19, 'Beeline', 3, 'STATUS ZONA', 3),
(43, 19, 'Beeline', 1, 'To\'lovlar', 1),
(44, 19, 'Beeline', 8, 'XARAJATLAR DETALIZATSIYASI', 8),
(45, 19, 'Beeline', 2, 'Xizmat ko\'rsatish', 2),
(46, 10, 'Ipak Yo\'li Banki', 16, 'ELCHIXONAGA MALUMOTNOMA', 16),
(47, 10, 'Ipak Yo\'li Banki', 17, 'OMONAT QUTSI', 17),
(48, 10, 'Ipak Yo\'li Banki', 12, 'UZCARD TOLDIRISH', 12),
(49, 10, 'Ipak Yo\'li Banki', 14, 'OTKAZMALARI SWIFT', 14),
(50, 10, 'Ipak Yo\'li Banki', 9, 'UZCARD KARTASI', 9),
(51, 10, 'Ipak Yo\'li Banki', 22, 'JISMONIY SHAXSLAR (JISMONIY SHAXS)', 22),
(52, 10, 'Ipak Yo\'li Banki', 5, 'VISA/CUP KARTASI', 5),
(53, 10, 'Ipak Yo\'li Banki', 6, 'РАСМИЙЛАШТИРИШ VISA/CUP', 6),
(54, 10, 'Ipak Yo\'li Banki', 20, 'HUMO KARTASI', 20),
(55, 10, 'Ipak Yo\'li Banki', 46, 'SHARTNOMA TO\'LOVLAR', 46),
(56, 10, 'Ipak Yo\'li Banki', 13, 'PUL O\'TKAZMALARI', 13),
(57, 10, 'Ipak Yo\'li Banki', 7, 'VISA/CUP TOLDIRISH', 7),
(58, 10, 'Ipak Yo\'li Banki', 15, 'OMONATLAR', 15),
(59, 10, 'Ipak Yo\'li Banki', 25, 'BIR MARTALIK TOLOVLAR', 25),
(60, 10, 'Ipak Yo\'li Banki', 19, 'AYIRBOSHLASH SHAXOBCHASI', 19),
(61, 10, 'Ipak Yo\'li Banki', 38, 'CHAKANA KREDITLAR', 38),
(62, 10, 'Ipak Yo\'li Banki', 18, 'EUR/USD KONVERSIYASI', 18),
(63, 10, 'Ipak Yo\'li Banki', 26, 'KASSA', 26),
(64, 10, 'Ipak Yo\'li Banki', 24, 'KOMMUNAL TO\'LOVLAR', 24),
(65, 10, 'Ipak Yo\'li Banki', 41, 'PLASTIK KARTA', 41),
(66, 10, 'Ipak Yo\'li Banki', 10, 'RASMIYLASHTIRISH UZCARD', 10),
(67, 10, 'Ipak Yo\'li Banki', 34, 'BUHGALTERIYA', 34),
(68, 10, 'Ipak Yo\'li Banki', 32, 'HORIJIY VALYUTA KASSASI', 32),
(69, 10, 'Ipak Yo\'li Banki', 30, 'CHIQIM KASSASI', 30),
(70, 10, 'Ipak Yo\'li Banki', 31, 'JAMG̛ARMA KASSASI', 31),
(71, 10, 'Ipak Yo\'li Banki', 33, 'KASSA MUDIRI', 33),
(72, 10, 'Ipak Yo\'li Banki', 29, 'KIRIM KASSASI', 29),
(73, 10, 'Ipak Yo\'li Banki', 21, 'KREDITLARNI QAYTARISH', 21),
(74, 10, 'Ipak Yo\'li Banki', 39, 'MUNIS TOLOVLARI', 39),
(75, 10, 'Ipak Yo\'li Banki', 11, 'UZCARD BERISH', 11),
(76, 10, 'Ipak Yo\'li Banki', 8, 'VISA/CUP NAQD PUL YECHISH', 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `account_temp`
--
ALTER TABLE `account_temp`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `en`
--
ALTER TABLE `en`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `en_list_branches`
--
ALTER TABLE `en_list_branches`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `en_search`
--
ALTER TABLE `en_search`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `en_service`
--
ALTER TABLE `en_service`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `org`
--
ALTER TABLE `org`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `ru`
--
ALTER TABLE `ru`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `ru_list_branches`
--
ALTER TABLE `ru_list_branches`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `ru_search`
--
ALTER TABLE `ru_search`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `ru_service`
--
ALTER TABLE `ru_service`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uz`
--
ALTER TABLE `uz`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `uz_list_branches`
--
ALTER TABLE `uz_list_branches`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `uz_search`
--
ALTER TABLE `uz_search`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `uz_service`
--
ALTER TABLE `uz_service`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `account`
--
ALTER TABLE `account`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `account_temp`
--
ALTER TABLE `account_temp`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `en`
--
ALTER TABLE `en`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `en_list_branches`
--
ALTER TABLE `en_list_branches`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `en_search`
--
ALTER TABLE `en_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT для таблицы `en_service`
--
ALTER TABLE `en_service`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `org`
--
ALTER TABLE `org`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `ru`
--
ALTER TABLE `ru`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `ru_list_branches`
--
ALTER TABLE `ru_list_branches`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `ru_search`
--
ALTER TABLE `ru_search`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT для таблицы `ru_service`
--
ALTER TABLE `ru_service`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `tiket`
--
ALTER TABLE `tiket`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `uz`
--
ALTER TABLE `uz`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `uz_list_branches`
--
ALTER TABLE `uz_list_branches`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `uz_search`
--
ALTER TABLE `uz_search`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT для таблицы `uz_service`
--
ALTER TABLE `uz_service`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
