-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2021 a las 23:57:48
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
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
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Categoría', 7, 'add_category'),
(26, 'Can change Categoría', 7, 'change_category'),
(27, 'Can delete Categoría', 7, 'delete_category'),
(28, 'Can view Categoría', 7, 'view_category'),
(29, 'Can add Producto', 8, 'add_product'),
(30, 'Can change Producto', 8, 'change_product'),
(31, 'Can delete Producto', 8, 'delete_product'),
(32, 'Can view Producto', 8, 'view_product'),
(33, 'Can add Pedido', 9, 'add_order'),
(34, 'Can change Pedido', 9, 'change_order'),
(35, 'Can delete Pedido', 9, 'delete_order'),
(36, 'Can view Pedido', 9, 'view_order'),
(37, 'Can add Línea de pedido', 10, 'add_orderline'),
(38, 'Can change Línea de pedido', 10, 'change_orderline'),
(39, 'Can delete Línea de pedido', 10, 'delete_orderline'),
(40, 'Can view Línea de pedido', 10, 'view_orderline');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$216000$iVA8as4b1h71$VCAnyKdiD3ivx3lRAGw/o7kSlat3TGep7c9c/B5D31s=', '2021-04-19 15:20:12.526947', 1, 'administrador', '', '', 'xavier19531@hotmail.com', 1, 1, '2021-04-07 03:13:36.690991'),
(3, 'pbkdf2_sha256$216000$nAluJGH9STgL$zY+SXdAXRgNwo0/9b+WU7MVZibxLi9K7PATdTDhyxS4=', '2021-04-15 18:17:41.349626', 0, 'Cliente1', 'cliente1', '---------', '', 0, 1, '2021-04-12 22:20:32.951040'),
(4, 'pbkdf2_sha256$216000$YRiomqSvbJth$ztYsBSXIOA1iESmSLU183fSmsbMw/7OsMrf3AFnOU/4=', '2021-04-19 13:32:54.914455', 0, 'cliente2', 'xavier', '', 'alexanderpaladinessivisapa@gmail.com', 0, 1, '2021-04-19 12:10:46.842576');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `featured`) VALUES
(1, 'Informatica', 1),
(2, 'Telecomunicaciones', 0),
(3, 'Utiles', 1),
(4, 'Vestimenta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-07 03:14:34.825702', '1', 'Informatica', 1, '[{\"added\": {}}]', 7, 2),
(2, '2021-04-07 03:15:15.063638', '1', 'Iphone 10', 1, '[{\"added\": {}}]', 8, 2),
(3, '2021-04-07 15:48:00.220113', '1', 'Iphone 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2),
(4, '2021-04-07 15:48:40.260104', '2', 'airpods 10', 1, '[{\"added\": {}}]', 8, 2),
(5, '2021-04-07 15:49:22.091505', '3', 'Lapto Dell 10', 1, '[{\"added\": {}}]', 8, 2),
(6, '2021-04-07 15:50:05.852297', '4', 'Smartwatch 10', 1, '[{\"added\": {}}]', 8, 2),
(7, '2021-04-07 15:50:41.313929', '5', 'Smartphone 10', 1, '[{\"added\": {}}]', 8, 2),
(8, '2021-04-07 15:51:54.123738', '5', 'Smartphone 10', 3, '', 8, 2),
(9, '2021-04-07 15:52:23.285952', '2', 'airpods 10', 3, '', 8, 2),
(10, '2021-04-07 15:52:23.288931', '3', 'Lapto Dell 10', 3, '', 8, 2),
(11, '2021-04-07 15:52:23.290896', '4', 'Smartwatch 10', 3, '', 8, 2),
(12, '2021-04-07 15:53:50.496179', '6', 'Smartphone 10', 1, '[{\"added\": {}}]', 8, 2),
(13, '2021-04-07 15:54:36.704034', '7', 'Lapto Dell 10', 1, '[{\"added\": {}}]', 8, 2),
(14, '2021-04-07 15:55:29.463890', '8', 'Smartwatch 10', 1, '[{\"added\": {}}]', 8, 2),
(15, '2021-04-07 15:55:53.587456', '8', 'Smartwatch 10', 3, '', 8, 2),
(16, '2021-04-07 15:56:49.188970', '9', 'Celular 10', 1, '[{\"added\": {}}]', 8, 2),
(17, '2021-04-07 16:19:48.019505', '6', 'Smartphone 10', 3, '', 8, 2),
(18, '2021-04-07 16:19:48.023363', '7', 'Lapto Dell 10', 3, '', 8, 2),
(19, '2021-04-07 16:19:48.027272', '9', 'Celular 10', 3, '', 8, 2),
(20, '2021-04-07 16:21:00.662812', '1', 'Iphone 10', 3, '', 8, 2),
(21, '2021-04-07 16:22:03.232614', '10', 'Iphone 10', 1, '[{\"added\": {}}]', 8, 2),
(22, '2021-04-07 16:22:50.369072', '11', 'Smartwatch 10', 1, '[{\"added\": {}}]', 8, 2),
(23, '2021-04-07 16:23:57.940969', '12', 'Smartphone 10', 1, '[{\"added\": {}}]', 8, 2),
(24, '2021-04-07 16:25:10.356885', '13', 'Lapto Dell 10', 1, '[{\"added\": {}}]', 8, 2),
(25, '2021-04-15 16:37:14.359935', '12', 'Smartphone 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2),
(26, '2021-04-15 19:42:49.781075', '2', 'Telecominicaciones', 1, '[{\"added\": {}}]', 7, 2),
(27, '2021-04-15 19:43:05.748955', '2', 'Telecomunicaciones', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 2),
(28, '2021-04-19 12:53:50.124885', '1', 'administrador | 2021-04-07 03:15:47.721215+00:00', 2, '[{\"changed\": {\"fields\": [\"Comprado\"]}}]', 9, 2),
(29, '2021-04-19 12:54:30.946433', '1', 'administrador | 2021-04-07 03:15:47.721215+00:00', 2, '[{\"changed\": {\"fields\": [\"Comprado\"]}}]', 9, 2),
(30, '2021-04-19 12:55:48.525515', '1', 'administrador | 2021-04-07 03:15:47.721215+00:00 | Compra: ', 2, '[{\"changed\": {\"fields\": [\"Comprado\"]}}]', 9, 2),
(31, '2021-04-19 12:56:00.027928', '1', 'administrador | 2021-04-07 03:15:47.721215+00:00 | Compra: ', 2, '[]', 9, 2),
(32, '2021-04-19 12:56:56.777248', '1', 'administrador | 2021-04-07 03:15:47.721215+00:00 | Compra: True', 2, '[]', 9, 2),
(33, '2021-04-19 15:20:41.906270', '3', 'Utiles', 1, '[{\"added\": {}}]', 7, 2),
(34, '2021-04-19 15:21:10.256594', '14', 'lapiz 4', 1, '[{\"added\": {}}]', 8, 2),
(35, '2021-04-19 15:22:42.521128', '15', 'llavero 3', 1, '[{\"added\": {}}]', 8, 2),
(36, '2021-04-19 15:29:48.074103', '10', 'Iphone 10', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 2),
(37, '2021-04-19 15:30:50.278267', '4', 'Vestimenta', 1, '[{\"added\": {}}]', 7, 2),
(38, '2021-04-19 15:31:12.431128', '16', 'gorra 5', 1, '[{\"added\": {}}]', 8, 2),
(39, '2021-04-19 15:34:03.934001', '11', 'Smartwatch 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2),
(40, '2021-04-19 15:34:08.196420', '12', 'Smartphone 10', 2, '[]', 8, 2),
(41, '2021-04-19 15:34:17.042726', '13', 'Lapto Dell 10', 2, '[]', 8, 2),
(42, '2021-04-19 15:34:46.088223', '10', 'Iphone 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2),
(43, '2021-04-19 15:35:05.223647', '13', 'Lapto Dell 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'orders', 'order'),
(10, 'orders', 'orderline'),
(7, 'products', 'category'),
(8, 'products', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-07 03:07:59.226620'),
(2, 'auth', '0001_initial', '2021-04-07 03:07:59.328402'),
(3, 'admin', '0001_initial', '2021-04-07 03:07:59.677440'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-07 03:07:59.766606'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-07 03:07:59.777680'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-07 03:07:59.824498'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-07 03:07:59.869876'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-07 03:07:59.881557'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-07 03:07:59.888430'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-07 03:07:59.921335'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-07 03:07:59.925494'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-07 03:07:59.932310'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-07 03:07:59.945545'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-07 03:07:59.956465'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-07 03:07:59.969564'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-07 03:07:59.979633'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-07 03:07:59.991174'),
(18, 'products', '0001_initial', '2021-04-07 03:08:00.026829'),
(19, 'orders', '0001_initial', '2021-04-07 03:08:00.105475'),
(20, 'products', '0002_auto_20210115_1541', '2021-04-07 03:08:00.265573'),
(21, 'products', '0003_product_stock', '2021-04-07 03:08:00.280706'),
(22, 'products', '0004_auto_20210406_2139', '2021-04-07 03:08:00.312335'),
(23, 'sessions', '0001_initial', '2021-04-07 03:08:00.329831'),
(24, 'orders', '0002_auto_20210419_0753', '2021-04-19 12:53:31.228518'),
(25, 'products', '0005_auto_20210419_1029', '2021-04-19 15:29:24.156642');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('y3a8u44yejxn7w4ygr884ac76b75v6pj', '.eJxVjDsOwjAQBe_iGllk8TclPWeIdtc2DiBbipMqyt1JpBTQvpk3qxhwmfOwtDgNYxC9AHH53Qj5HcsBwgvLs0quZZ5GkociT9rko4b4uZ_uXyBjy_sbATyx46thr3UILoHBZBSRTpHQwS1ardACpYSd9QaV0x1ZBu8Yvd2jjNMs-nXbvkPxO8I:1lYWaD:jt11XZ-zzFztNYFWbukc24mYq_EQ54RUlIOPCMAabMo', '2021-05-03 16:17:09.485277');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orderlines`
--

CREATE TABLE `orderlines` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orderlines`
--

INSERT INTO `orderlines` (`id`, `quantity`, `created_at`, `order_id`, `product_id`, `user_id`) VALUES
(2, 1, '2021-04-07 16:27:46.565710', 2, 12, 2),
(3, 1, '2021-04-07 16:28:05.690606', 3, 12, 2),
(4, 2, '2021-04-13 03:07:39.096187', 4, 12, 3),
(5, 1, '2021-04-15 16:59:39.976644', 5, 12, 2),
(6, 1, '2021-04-19 12:10:52.896077', 6, 12, 4),
(7, 1, '2021-04-19 13:00:17.893581', 7, 11, 4),
(8, 1, '2021-04-19 13:20:43.616849', 8, 10, 4),
(9, 1, '2021-04-19 13:21:34.812455', 9, 10, 4),
(10, 1, '2021-04-19 13:23:00.356909', 10, 10, 4),
(11, 1, '2021-04-19 13:24:52.588095', 11, 11, 2),
(12, 1, '2021-04-19 13:32:58.879466', 12, 12, 4),
(13, 1, '2021-04-19 13:34:24.457075', 13, 12, 4),
(14, 1, '2021-04-19 13:35:26.514638', 14, 12, 4),
(15, 1, '2021-04-19 13:36:31.833724', 15, 12, 4),
(16, 1, '2021-04-19 13:47:53.479091', 16, 10, 4),
(17, 1, '2021-04-19 13:51:13.327662', 17, 11, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comprado` tinyint(1) NOT NULL,
  `pendiente` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `completed`, `created_at`, `user_id`, `comprado`, `pendiente`) VALUES
(1, 1, '2021-04-07 03:15:47.721215', 2, 1, 1),
(2, 1, '2021-04-07 16:27:46.562698', 2, 0, 1),
(3, 1, '2021-04-07 16:28:05.687686', 2, 0, 1),
(4, 1, '2021-04-13 03:07:39.090173', 3, 0, 1),
(5, 1, '2021-04-15 16:59:39.954704', 2, 0, 1),
(6, 1, '2021-04-19 12:10:52.889253', 4, 0, 1),
(7, 1, '2021-04-19 13:00:17.889648', 4, 0, 1),
(8, 1, '2021-04-19 13:20:43.613098', 4, 0, 1),
(9, 1, '2021-04-19 13:21:34.809384', 4, 0, 1),
(10, 1, '2021-04-19 13:23:00.353305', 4, 0, 1),
(11, 1, '2021-04-19 13:24:52.583010', 2, 0, 1),
(12, 1, '2021-04-19 13:32:58.877004', 4, 0, 1),
(13, 1, '2021-04-19 13:34:24.453438', 4, 0, 1),
(14, 1, '2021-04-19 13:35:26.511342', 4, 0, 1),
(15, 1, '2021-04-19 13:36:31.829722', 4, 0, 1),
(16, 1, '2021-04-19 13:47:53.475211', 4, 0, 1),
(17, 1, '2021-04-19 13:51:13.324558', 4, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `detail`, `price`, `available`, `category_id`, `stock`) VALUES
(10, 'Iphone', 'products/descarga.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '99.00', 1, 1, 10),
(11, 'Smartwatch', 'products/descargasm.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '90.00', 1, 1, 10),
(12, 'Smartphone', 'products/descarga.jfif', 'Lorem Ipsum is simply', '99.99', 1, 1, 10),
(13, 'Lapto Dell', 'products/lapto_dell.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.pe a', '99.99', 1, 1, 10),
(14, 'lapiz', 'products/lapiz.jfif', 'Lapiz de buena calidad', '0.30', 1, 3, 4),
(15, 'llavero', 'products/llavero.jfif', 'Llavero para la playa', '1.50', 1, 3, 3),
(16, 'gorra', 'products/gorra.jfif', 'gorra de paseo', '5.00', 1, 4, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `orderlines`
--
ALTER TABLE `orderlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderlines_order_id_1b9560cb_fk_orders_id` (`order_id`),
  ADD KEY `orderlines_product_id_ce0217ca_fk_products_id` (`product_id`),
  ADD KEY `orderlines_user_id_a554e876_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_7e2523fb_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_a7a3a156_fk_categories_id` (`category_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `orderlines`
--
ALTER TABLE `orderlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `orderlines`
--
ALTER TABLE `orderlines`
  ADD CONSTRAINT `orderlines_order_id_1b9560cb_fk_orders_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderlines_product_id_ce0217ca_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orderlines_user_id_a554e876_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_7e2523fb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_a7a3a156_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
