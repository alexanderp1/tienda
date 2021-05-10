-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2021 a las 02:21:15
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
(2, 'pbkdf2_sha256$216000$iVA8as4b1h71$VCAnyKdiD3ivx3lRAGw/o7kSlat3TGep7c9c/B5D31s=', '2021-05-09 23:42:42.566700', 1, 'administrador', '', '', 'xavier19531@hotmail.com', 1, 1, '2021-04-07 03:13:36.690991'),
(3, 'pbkdf2_sha256$216000$nAluJGH9STgL$zY+SXdAXRgNwo0/9b+WU7MVZibxLi9K7PATdTDhyxS4=', '2021-05-06 02:24:33.223026', 0, 'Cliente1', 'cliente1', '---------', '', 0, 1, '2021-04-12 22:20:32.951040'),
(4, 'pbkdf2_sha256$216000$YRiomqSvbJth$ztYsBSXIOA1iESmSLU183fSmsbMw/7OsMrf3AFnOU/4=', '2021-04-21 13:02:29.096916', 0, 'cliente2', 'xavier', '', 'alexanderpaladinessivisapa@gmail.com', 0, 1, '2021-04-19 12:10:46.842576');

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
(43, '2021-04-19 15:35:05.223647', '13', 'Lapto Dell 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2),
(44, '2021-05-04 22:10:27.473752', '12', 'Smartphone 10', 2, '[]', 8, 2),
(45, '2021-05-04 22:11:10.379874', '12', 'Smartphone 10', 2, '[]', 8, 2),
(46, '2021-05-04 22:11:56.047195', '12', 'Smartphone 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2),
(47, '2021-05-04 22:12:35.942503', '12', 'Smartphone 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2),
(48, '2021-05-04 22:13:04.921508', '12', 'Smartphone 10', 2, '[{\"changed\": {\"fields\": [\"Informacion del producto\"]}}]', 8, 2),
(49, '2021-05-05 02:36:05.299890', '27', 'administrador | 2021-05-05 02:34:29.119955+00:00 | Compra: True', 2, '[{\"changed\": {\"fields\": [\"Comprado\"]}}]', 9, 2),
(50, '2021-05-06 21:42:34.562862', '16', 'gorra 0', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(51, '2021-05-06 21:47:21.339250', '16', 'gorra 5', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(52, '2021-05-06 22:37:35.429989', '32', '2 de gorra administrador | 2021-05-06 22:37:06.093145+00:00 | Compra: False', 3, '', 10, 2),
(53, '2021-05-07 02:52:06.487843', '31', '2 de lapiz administrador | 2021-05-06 22:36:20.230696+00:00 | Compra: False', 3, '', 10, 2),
(54, '2021-05-07 02:52:06.491695', '33', '1 de gorra administrador | 2021-05-06 22:41:39.706213+00:00 | Compra: False', 3, '', 10, 2),
(55, '2021-05-07 02:52:06.495213', '34', '2 de gorra administrador | 2021-05-07 02:49:26.323120+00:00 | Compra: False', 3, '', 10, 2),
(56, '2021-05-07 02:52:06.498104', '35', '2 de gorra administrador | 2021-05-07 02:51:17.908789+00:00 | Compra: False', 3, '', 10, 2),
(57, '2021-05-09 18:01:49.202412', '16', 'gorra Stock: 4', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(58, '2021-05-09 18:01:59.854389', '15', 'llavero Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(59, '2021-05-09 18:02:06.635087', '14', 'lapiz Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(60, '2021-05-09 19:58:12.842416', '1', 'administrador | 2021-04-07 03:15:47.721215+00:00 | Compra: True', 3, '', 9, 2),
(61, '2021-05-09 19:58:12.843947', '2', 'administrador | 2021-04-07 16:27:46.562698+00:00 | Compra: False', 3, '', 9, 2),
(62, '2021-05-09 19:58:12.848003', '3', 'administrador | 2021-04-07 16:28:05.687686+00:00 | Compra: False', 3, '', 9, 2),
(63, '2021-05-09 19:58:12.851989', '4', 'Cliente1 | 2021-04-13 03:07:39.090173+00:00 | Compra: False', 3, '', 9, 2),
(64, '2021-05-09 19:58:12.851989', '5', 'administrador | 2021-04-15 16:59:39.954704+00:00 | Compra: False', 3, '', 9, 2),
(65, '2021-05-09 19:58:12.856293', '6', 'cliente2 | 2021-04-19 12:10:52.889253+00:00 | Compra: False', 3, '', 9, 2),
(66, '2021-05-09 19:58:12.860404', '7', 'cliente2 | 2021-04-19 13:00:17.889648+00:00 | Compra: False', 3, '', 9, 2),
(67, '2021-05-09 19:58:12.864451', '8', 'cliente2 | 2021-04-19 13:20:43.613098+00:00 | Compra: False', 3, '', 9, 2),
(68, '2021-05-09 19:58:12.868499', '9', 'cliente2 | 2021-04-19 13:21:34.809384+00:00 | Compra: False', 3, '', 9, 2),
(69, '2021-05-09 19:58:12.868499', '10', 'cliente2 | 2021-04-19 13:23:00.353305+00:00 | Compra: False', 3, '', 9, 2),
(70, '2021-05-09 19:58:12.872746', '11', 'administrador | 2021-04-19 13:24:52.583010+00:00 | Compra: False', 3, '', 9, 2),
(71, '2021-05-09 19:58:12.877503', '12', 'cliente2 | 2021-04-19 13:32:58.877004+00:00 | Compra: False', 3, '', 9, 2),
(72, '2021-05-09 19:58:12.877503', '13', 'cliente2 | 2021-04-19 13:34:24.453438+00:00 | Compra: False', 3, '', 9, 2),
(73, '2021-05-09 19:58:12.883046', '14', 'cliente2 | 2021-04-19 13:35:26.511342+00:00 | Compra: False', 3, '', 9, 2),
(74, '2021-05-09 19:58:12.883046', '15', 'cliente2 | 2021-04-19 13:36:31.829722+00:00 | Compra: False', 3, '', 9, 2),
(75, '2021-05-09 19:58:12.887051', '16', 'cliente2 | 2021-04-19 13:47:53.475211+00:00 | Compra: False', 3, '', 9, 2),
(76, '2021-05-09 19:58:12.891281', '17', 'cliente2 | 2021-04-19 13:51:13.324558+00:00 | Compra: False', 3, '', 9, 2),
(77, '2021-05-09 19:58:12.893873', '18', 'cliente2 | 2021-04-21 13:02:38.896117+00:00 | Compra: False', 3, '', 9, 2),
(78, '2021-05-09 19:58:12.897860', '19', 'Cliente1 | 2021-05-01 00:18:11.953742+00:00 | Compra: False', 3, '', 9, 2),
(79, '2021-05-09 19:58:12.900509', '20', 'Cliente1 | 2021-05-01 00:26:09.871935+00:00 | Compra: False', 3, '', 9, 2),
(80, '2021-05-09 19:58:12.903985', '21', 'administrador | 2021-05-02 02:32:18.404220+00:00 | Compra: False', 3, '', 9, 2),
(81, '2021-05-09 19:58:12.903985', '22', 'administrador | 2021-05-02 16:14:08.421583+00:00 | Compra: False', 3, '', 9, 2),
(82, '2021-05-09 19:58:12.903985', '23', 'administrador | 2021-05-04 15:48:31.758714+00:00 | Compra: False', 3, '', 9, 2),
(83, '2021-05-09 19:58:12.911125', '24', 'administrador | 2021-05-04 20:47:37.082100+00:00 | Compra: False', 3, '', 9, 2),
(84, '2021-05-09 19:58:12.916124', '25', 'administrador | 2021-05-05 02:12:11.748053+00:00 | Compra: False', 3, '', 9, 2),
(85, '2021-05-09 19:58:12.920261', '26', 'administrador | 2021-05-05 02:13:56.195182+00:00 | Compra: False', 3, '', 9, 2),
(86, '2021-05-09 19:58:12.920261', '27', 'administrador | 2021-05-05 02:34:29.119955+00:00 | Compra: True', 3, '', 9, 2),
(87, '2021-05-09 19:58:12.927235', '28', 'administrador | 2021-05-06 22:34:27.467668+00:00 | Compra: False', 3, '', 9, 2),
(88, '2021-05-09 19:58:12.927235', '29', 'administrador | 2021-05-06 22:36:20.230696+00:00 | Compra: False', 3, '', 9, 2),
(89, '2021-05-09 19:58:12.933036', '30', 'administrador | 2021-05-06 22:37:06.093145+00:00 | Compra: False', 3, '', 9, 2),
(90, '2021-05-09 19:58:12.933036', '31', 'administrador | 2021-05-06 22:41:39.706213+00:00 | Compra: False', 3, '', 9, 2),
(91, '2021-05-09 19:58:12.937042', '32', 'administrador | 2021-05-07 02:49:26.323120+00:00 | Compra: False', 3, '', 9, 2),
(92, '2021-05-09 19:58:12.942620', '33', 'administrador | 2021-05-07 02:51:17.908789+00:00 | Compra: False', 3, '', 9, 2),
(93, '2021-05-09 19:58:12.944357', '34', 'administrador | 2021-05-09 05:49:01.939060+00:00 | Compra: False', 3, '', 9, 2),
(94, '2021-05-09 19:58:12.949232', '35', 'administrador | 2021-05-09 05:54:51.169279+00:00 | Compra: False', 3, '', 9, 2),
(95, '2021-05-09 19:58:12.949232', '36', 'administrador | 2021-05-09 05:56:20.187030+00:00 | Compra: False', 3, '', 9, 2),
(96, '2021-05-09 19:58:12.953237', '37', 'administrador | 2021-05-09 05:58:20.184858+00:00 | Compra: False', 3, '', 9, 2),
(97, '2021-05-09 19:58:12.957606', '38', 'administrador | 2021-05-09 06:23:59.055867+00:00 | Compra: False', 3, '', 9, 2),
(98, '2021-05-09 19:58:12.960503', '39', 'administrador | 2021-05-09 14:09:19.348787+00:00 | Compra: False', 3, '', 9, 2),
(99, '2021-05-09 19:58:12.963066', '40', 'administrador | 2021-05-09 14:13:26.489332+00:00 | Compra: False', 3, '', 9, 2),
(100, '2021-05-09 19:58:12.965863', '41', 'administrador | 2021-05-09 14:57:36.408810+00:00 | Compra: False', 3, '', 9, 2),
(101, '2021-05-09 19:58:12.965863', '42', 'administrador | 2021-05-09 15:08:55.617870+00:00 | Compra: False', 3, '', 9, 2),
(102, '2021-05-09 19:58:12.969870', '43', 'administrador | 2021-05-09 15:34:12.923496+00:00 | Compra: False', 3, '', 9, 2),
(103, '2021-05-09 19:58:12.974224', '44', 'administrador | 2021-05-09 15:41:21.991463+00:00 | Compra: False', 3, '', 9, 2),
(104, '2021-05-09 19:58:12.977502', '45', 'administrador | 2021-05-09 15:41:42.163934+00:00 | Compra: False', 3, '', 9, 2),
(105, '2021-05-09 19:58:12.981612', '46', 'administrador | 2021-05-09 15:41:44.719966+00:00 | Compra: False', 3, '', 9, 2),
(106, '2021-05-09 19:58:12.983782', '47', 'administrador | 2021-05-09 17:34:20.261123+00:00 | Compra: False', 3, '', 9, 2),
(107, '2021-05-09 19:58:12.987804', '48', 'administrador | 2021-05-09 17:43:59.207642+00:00 | Compra: False', 3, '', 9, 2),
(108, '2021-05-09 19:58:12.987921', '49', 'administrador | 2021-05-09 17:44:47.672967+00:00 | Compra: False', 3, '', 9, 2),
(109, '2021-05-09 19:58:12.993858', '50', 'administrador | 2021-05-09 18:08:59.528338+00:00 | Compra: False', 3, '', 9, 2),
(110, '2021-05-09 19:58:12.994386', '51', 'administrador | 2021-05-09 18:47:27.851607+00:00 | Compra: False', 3, '', 9, 2),
(111, '2021-05-09 19:58:12.998647', '52', 'administrador | 2021-05-09 18:49:26.906036+00:00 | Compra: False', 3, '', 9, 2),
(112, '2021-05-09 19:58:13.002580', '53', 'administrador | 2021-05-09 18:54:15.642931+00:00 | Compra: False', 3, '', 9, 2),
(113, '2021-05-09 19:58:13.004133', '54', 'administrador | 2021-05-09 18:58:37.444021+00:00 | Compra: False', 3, '', 9, 2),
(114, '2021-05-09 19:58:13.008595', '55', 'administrador | 2021-05-09 19:00:38.394948+00:00 | Compra: False', 3, '', 9, 2),
(115, '2021-05-09 19:58:13.010636', '56', 'administrador | 2021-05-09 19:02:27.078756+00:00 | Compra: False', 3, '', 9, 2),
(116, '2021-05-09 19:58:13.014719', '57', 'administrador | 2021-05-09 19:02:34.469889+00:00 | Compra: False', 3, '', 9, 2),
(117, '2021-05-09 19:58:13.014719', '58', 'administrador | 2021-05-09 19:05:10.410201+00:00 | Compra: False', 3, '', 9, 2),
(118, '2021-05-09 19:58:13.018641', '59', 'administrador | 2021-05-09 19:09:38.016512+00:00 | Compra: False', 3, '', 9, 2),
(119, '2021-05-09 19:58:13.022895', '60', 'administrador | 2021-05-09 19:10:42.997119+00:00 | Compra: False', 3, '', 9, 2),
(120, '2021-05-09 19:58:13.027514', '61', 'administrador | 2021-05-09 19:12:39.498226+00:00 | Compra: False', 3, '', 9, 2),
(121, '2021-05-09 19:58:13.027514', '62', 'administrador | 2021-05-09 19:16:06.412774+00:00 | Compra: False', 3, '', 9, 2),
(122, '2021-05-09 19:58:13.031524', '63', 'administrador | 2021-05-09 19:19:09.252102+00:00 | Compra: False', 3, '', 9, 2),
(123, '2021-05-09 19:58:13.035523', '64', 'administrador | 2021-05-09 19:21:50.060303+00:00 | Compra: False', 3, '', 9, 2),
(124, '2021-05-09 19:58:13.039850', '65', 'administrador | 2021-05-09 19:29:46.837568+00:00 | Compra: False', 3, '', 9, 2),
(125, '2021-05-09 19:58:13.042861', '66', 'administrador | 2021-05-09 19:45:12.961491+00:00 | Compra: False', 3, '', 9, 2),
(126, '2021-05-09 19:58:13.044206', '67', 'administrador | 2021-05-09 19:46:22.359879+00:00 | Compra: False', 3, '', 9, 2),
(127, '2021-05-09 19:58:13.048401', '68', 'administrador | 2021-05-09 19:47:36.158682+00:00 | Compra: False', 3, '', 9, 2),
(128, '2021-05-09 19:58:13.050308', '69', 'administrador | 2021-05-09 19:49:54.499146+00:00 | Compra: False', 3, '', 9, 2),
(129, '2021-05-09 19:58:13.052811', '70', 'administrador | 2021-05-09 19:52:37.162478+00:00 | Compra: False', 3, '', 9, 2),
(130, '2021-05-09 19:58:41.605019', '16', 'gorra Stock: 4', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(131, '2021-05-09 20:39:52.228957', '16', 'gorra Stock: 5', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(132, '2021-05-09 20:39:57.316517', '15', 'llavero Stock: 5', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(133, '2021-05-09 20:40:02.770645', '14', 'lapiz Stock: 5', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(134, '2021-05-09 20:40:08.348538', '13', 'Lapto Dell Stock: 5', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(135, '2021-05-09 20:40:14.881792', '12', 'Smartphone Stock: 5', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(136, '2021-05-09 20:40:23.032549', '11', 'Smartwatch Stock: 5', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(137, '2021-05-09 20:40:31.749768', '10', 'Iphone Stock: 5', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(138, '2021-05-09 21:02:11.337467', '16', 'gorra Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(139, '2021-05-09 21:02:19.705021', '15', 'llavero Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(140, '2021-05-09 21:02:28.537738', '14', 'lapiz Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(141, '2021-05-09 21:02:35.269710', '13', 'Lapto Dell Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(142, '2021-05-09 21:02:41.901610', '12', 'Smartphone Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(143, '2021-05-09 21:02:49.071770', '11', 'Smartwatch Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(144, '2021-05-09 21:02:57.637904', '10', 'Iphone Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(145, '2021-05-09 21:43:53.351532', '16', 'gorra Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(146, '2021-05-09 21:44:00.391182', '15', 'llavero Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(147, '2021-05-09 21:44:08.618318', '14', 'lapiz Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(148, '2021-05-09 21:44:17.172074', '13', 'Lapto Dell Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(149, '2021-05-09 21:44:23.296364', '12', 'Smartphone Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(150, '2021-05-09 21:44:30.341799', '11', 'Smartwatch Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(151, '2021-05-09 21:44:37.033568', '10', 'Iphone Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(152, '2021-05-09 23:37:14.228145', '16', 'gorra Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(153, '2021-05-09 23:37:20.604258', '15', 'llavero Stock: 8', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(154, '2021-05-09 23:41:36.199471', '71', 'administrador | 2021-05-09 19:58:48.734141+00:00 | Compra: False', 3, '', 9, 2),
(155, '2021-05-09 23:41:36.206612', '72', 'administrador | 2021-05-09 20:23:07.861780+00:00 | Compra: False', 3, '', 9, 2),
(156, '2021-05-09 23:41:36.211658', '73', 'administrador | 2021-05-09 20:25:05.624317+00:00 | Compra: False', 3, '', 9, 2),
(157, '2021-05-09 23:41:36.215590', '74', 'administrador | 2021-05-09 20:38:39.424592+00:00 | Compra: False', 3, '', 9, 2),
(158, '2021-05-09 23:41:36.219579', '75', 'administrador | 2021-05-09 20:39:10.865083+00:00 | Compra: False', 3, '', 9, 2),
(159, '2021-05-09 23:41:36.226937', '76', 'administrador | 2021-05-09 20:42:14.264009+00:00 | Compra: False', 3, '', 9, 2),
(160, '2021-05-09 23:41:36.235463', '77', 'administrador | 2021-05-09 20:43:41.192746+00:00 | Compra: False', 3, '', 9, 2),
(161, '2021-05-09 23:41:36.238172', '78', 'administrador | 2021-05-09 20:45:48.280571+00:00 | Compra: False', 3, '', 9, 2),
(162, '2021-05-09 23:41:36.238172', '79', 'administrador | 2021-05-09 20:50:50.924305+00:00 | Compra: False', 3, '', 9, 2),
(163, '2021-05-09 23:41:36.242177', '80', 'administrador | 2021-05-09 20:52:35.350336+00:00 | Compra: False', 3, '', 9, 2),
(164, '2021-05-09 23:41:36.246399', '81', 'administrador | 2021-05-09 21:01:31.630261+00:00 | Compra: False', 3, '', 9, 2),
(165, '2021-05-09 23:41:36.251758', '82', 'administrador | 2021-05-09 21:03:06.662890+00:00 | Compra: False', 3, '', 9, 2),
(166, '2021-05-09 23:41:36.255753', '83', 'administrador | 2021-05-09 21:04:49.132023+00:00 | Compra: False', 3, '', 9, 2),
(167, '2021-05-09 23:41:36.255753', '84', 'administrador | 2021-05-09 21:06:13.389039+00:00 | Compra: False', 3, '', 9, 2),
(168, '2021-05-09 23:41:36.259671', '85', 'administrador | 2021-05-09 21:07:54.601491+00:00 | Compra: False', 3, '', 9, 2),
(169, '2021-05-09 23:41:36.263672', '86', 'administrador | 2021-05-09 21:09:22.453611+00:00 | Compra: False', 3, '', 9, 2),
(170, '2021-05-09 23:41:36.265521', '87', 'administrador | 2021-05-09 21:11:24.764440+00:00 | Compra: False', 3, '', 9, 2),
(171, '2021-05-09 23:41:36.269740', '88', 'administrador | 2021-05-09 21:15:20.811340+00:00 | Compra: False', 3, '', 9, 2),
(172, '2021-05-09 23:41:36.271274', '89', 'administrador | 2021-05-09 21:24:42.519934+00:00 | Compra: False', 3, '', 9, 2),
(173, '2021-05-09 23:41:36.272958', '90', 'administrador | 2021-05-09 21:29:49.466772+00:00 | Compra: False', 3, '', 9, 2),
(174, '2021-05-09 23:41:36.275610', '91', 'administrador | 2021-05-09 21:32:00.517132+00:00 | Compra: False', 3, '', 9, 2),
(175, '2021-05-09 23:41:36.279619', '92', 'administrador | 2021-05-09 21:33:31.239611+00:00 | Compra: False', 3, '', 9, 2),
(176, '2021-05-09 23:41:36.279619', '93', 'administrador | 2021-05-09 21:35:32.560742+00:00 | Compra: False', 3, '', 9, 2),
(177, '2021-05-09 23:41:36.283837', '94', 'administrador | 2021-05-09 21:36:53.148657+00:00 | Compra: False', 3, '', 9, 2),
(178, '2021-05-09 23:41:36.287754', '95', 'administrador | 2021-05-09 21:37:47.175077+00:00 | Compra: False', 3, '', 9, 2),
(179, '2021-05-09 23:41:36.289021', '96', 'administrador | 2021-05-09 21:41:06.456543+00:00 | Compra: False', 3, '', 9, 2),
(180, '2021-05-09 23:41:36.293174', '97', 'administrador | 2021-05-09 21:41:22.885507+00:00 | Compra: False', 3, '', 9, 2),
(181, '2021-05-09 23:41:36.293174', '98', 'administrador | 2021-05-09 21:42:30.958616+00:00 | Compra: False', 3, '', 9, 2),
(182, '2021-05-09 23:41:36.297172', '100', 'administrador | 2021-05-09 21:47:28.283206+00:00 | Compra: False', 3, '', 9, 2),
(183, '2021-05-09 23:41:36.297172', '101', 'administrador | 2021-05-09 21:48:55.436353+00:00 | Compra: False', 3, '', 9, 2),
(184, '2021-05-09 23:41:36.304689', '102', 'administrador | 2021-05-09 21:50:14.431435+00:00 | Compra: False', 3, '', 9, 2),
(185, '2021-05-09 23:41:36.307757', '103', 'administrador | 2021-05-09 22:03:21.586438+00:00 | Compra: False', 3, '', 9, 2),
(186, '2021-05-09 23:41:36.312376', '104', 'administrador | 2021-05-09 22:43:27.987610+00:00 | Compra: False', 3, '', 9, 2),
(187, '2021-05-09 23:41:36.312376', '105', 'administrador | 2021-05-09 22:45:05.225736+00:00 | Compra: False', 3, '', 9, 2),
(188, '2021-05-09 23:41:36.316623', '106', 'administrador | 2021-05-09 22:49:16.191045+00:00 | Compra: False', 3, '', 9, 2),
(189, '2021-05-09 23:41:36.322980', '108', 'administrador | 2021-05-09 22:54:33.359757+00:00 | Compra: False', 3, '', 9, 2),
(190, '2021-05-09 23:41:36.326135', '109', 'administrador | 2021-05-09 22:57:33.590538+00:00 | Compra: False', 3, '', 9, 2),
(191, '2021-05-09 23:41:36.330221', '110', 'administrador | 2021-05-09 22:57:55.871912+00:00 | Compra: False', 3, '', 9, 2),
(192, '2021-05-09 23:41:36.334521', '111', 'administrador | 2021-05-09 22:58:43.349321+00:00 | Compra: False', 3, '', 9, 2),
(193, '2021-05-09 23:41:36.338089', '112', 'administrador | 2021-05-09 22:59:09.599679+00:00 | Compra: False', 3, '', 9, 2),
(194, '2021-05-09 23:41:36.338089', '113', 'administrador | 2021-05-09 22:59:55.515805+00:00 | Compra: False', 3, '', 9, 2),
(195, '2021-05-09 23:41:36.342101', '114', 'administrador | 2021-05-09 23:00:23.191785+00:00 | Compra: False', 3, '', 9, 2),
(196, '2021-05-09 23:41:36.346151', '115', 'administrador | 2021-05-09 23:01:15.084978+00:00 | Compra: False', 3, '', 9, 2),
(197, '2021-05-09 23:41:36.350521', '116', 'administrador | 2021-05-09 23:02:41.353929+00:00 | Compra: False', 3, '', 9, 2),
(198, '2021-05-09 23:41:36.350521', '117', 'administrador | 2021-05-09 23:03:58.400503+00:00 | Compra: False', 3, '', 9, 2),
(199, '2021-05-09 23:41:36.355679', '118', 'administrador | 2021-05-09 23:04:03.047771+00:00 | Compra: False', 3, '', 9, 2),
(200, '2021-05-09 23:41:36.360346', '119', 'administrador | 2021-05-09 23:04:44.420431+00:00 | Compra: False', 3, '', 9, 2),
(201, '2021-05-09 23:41:36.360346', '120', 'administrador | 2021-05-09 23:05:24.521717+00:00 | Compra: False', 3, '', 9, 2),
(202, '2021-05-09 23:41:36.366116', '121', 'administrador | 2021-05-09 23:05:53.022250+00:00 | Compra: False', 3, '', 9, 2),
(203, '2021-05-09 23:41:36.366116', '122', 'administrador | 2021-05-09 23:10:49.915322+00:00 | Compra: False', 3, '', 9, 2),
(204, '2021-05-09 23:41:36.371636', '123', 'administrador | 2021-05-09 23:12:13.353393+00:00 | Compra: False', 3, '', 9, 2),
(205, '2021-05-09 23:41:36.375657', '124', 'administrador | 2021-05-09 23:13:17.149419+00:00 | Compra: False', 3, '', 9, 2),
(206, '2021-05-09 23:41:36.380925', '125', 'administrador | 2021-05-09 23:14:09.703863+00:00 | Compra: False', 3, '', 9, 2),
(207, '2021-05-09 23:41:36.380925', '126', 'administrador | 2021-05-09 23:14:41.283917+00:00 | Compra: False', 3, '', 9, 2),
(208, '2021-05-09 23:41:36.387951', '127', 'administrador | 2021-05-09 23:15:34.946682+00:00 | Compra: False', 3, '', 9, 2),
(209, '2021-05-09 23:41:36.390999', '128', 'administrador | 2021-05-09 23:16:33.485452+00:00 | Compra: False', 3, '', 9, 2),
(210, '2021-05-09 23:41:36.390999', '129', 'administrador | 2021-05-09 23:17:36.598779+00:00 | Compra: False', 3, '', 9, 2),
(211, '2021-05-09 23:41:36.395006', '130', 'administrador | 2021-05-09 23:18:15.693348+00:00 | Compra: False', 3, '', 9, 2),
(212, '2021-05-09 23:41:36.399355', '131', 'administrador | 2021-05-09 23:26:11.907269+00:00 | Compra: False', 3, '', 9, 2),
(213, '2021-05-09 23:41:36.399355', '132', 'administrador | 2021-05-09 23:27:39.313046+00:00 | Compra: False', 3, '', 9, 2),
(214, '2021-05-09 23:41:36.407161', '133', 'administrador | 2021-05-09 23:27:45.186402+00:00 | Compra: False', 3, '', 9, 2),
(215, '2021-05-09 23:41:36.407161', '134', 'administrador | 2021-05-09 23:28:39.251611+00:00 | Compra: False', 3, '', 9, 2),
(216, '2021-05-09 23:41:36.414044', '135', 'administrador | 2021-05-09 23:29:47.000985+00:00 | Compra: False', 3, '', 9, 2),
(217, '2021-05-09 23:41:36.415424', '136', 'administrador | 2021-05-09 23:30:24.791512+00:00 | Compra: False', 3, '', 9, 2),
(218, '2021-05-09 23:41:36.422005', '137', 'administrador | 2021-05-09 23:33:26.289019+00:00 | Compra: False', 3, '', 9, 2),
(219, '2021-05-09 23:41:36.423148', '138', 'administrador | 2021-05-09 23:34:41.135898+00:00 | Compra: False', 3, '', 9, 2),
(220, '2021-05-09 23:41:36.425722', '139', 'administrador | 2021-05-09 23:35:05.926253+00:00 | Compra: False', 3, '', 9, 2),
(221, '2021-05-09 23:41:36.429740', '140', 'administrador | 2021-05-09 23:35:50.732491+00:00 | Compra: False', 3, '', 9, 2),
(222, '2021-05-09 23:41:36.433843', '141', 'administrador | 2021-05-09 23:36:28.850151+00:00 | Compra: False', 3, '', 9, 2),
(223, '2021-05-09 23:41:36.437772', '142', 'administrador | 2021-05-09 23:36:46.920671+00:00 | Compra: False', 3, '', 9, 2),
(224, '2021-05-09 23:41:36.438901', '143', 'administrador | 2021-05-09 23:37:36.875656+00:00 | Compra: False', 3, '', 9, 2),
(225, '2021-05-09 23:41:36.442906', '144', 'administrador | 2021-05-09 23:38:30.586935+00:00 | Compra: False', 3, '', 9, 2),
(226, '2021-05-09 23:41:36.446914', '145', 'administrador | 2021-05-09 23:39:21.170659+00:00 | Compra: False', 3, '', 9, 2),
(227, '2021-05-09 23:41:36.451270', '146', 'administrador | 2021-05-09 23:39:35.456096+00:00 | Compra: False', 3, '', 9, 2),
(228, '2021-05-09 23:43:17.564384', '16', 'gorra Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(229, '2021-05-09 23:43:23.563622', '15', 'llavero Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(230, '2021-05-09 23:43:38.072098', '14', 'lapiz Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(231, '2021-05-09 23:43:48.967778', '13', 'Lapto Dell Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(232, '2021-05-09 23:44:02.167676', '12', 'Smartphone Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(233, '2021-05-09 23:44:09.185617', '11', 'Smartwatch Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2),
(234, '2021-05-09 23:44:28.455658', '10', 'Iphone Stock: 10', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 2);

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
('7a9o91xcctcppm6fwnh9yzm4261fjm1e', '.eJxVjDsOwjAQBe_iGllk8TclPWeIdtc2DiBbipMqyt1JpBTQvpk3qxhwmfOwtDgNYxC9AHH53Qj5HcsBwgvLs0quZZ5GkociT9rko4b4uZ_uXyBjy_sbATyx46thr3UILoHBZBSRTpHQwS1ardACpYSd9QaV0x1ZBu8Yvd2jjNMs-nXbvkPxO8I:1lftJJ:JKdg0-xj-gYX2H0D6EB2DWBVcKeH9L7bSjlJpcZmc_0', '2021-05-23 23:58:09.485056');

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
(149, 1, '2021-05-09 23:42:08.221929', 147, 16, 2),
(150, 1, '2021-05-09 23:42:49.459255', 148, 15, 2),
(157, 1, '2021-05-09 23:53:47.715951', 155, 16, 2),
(158, 1, '2021-05-09 23:56:59.161820', 156, 16, 2),
(159, 1, '2021-05-09 23:57:17.647491', 157, 15, 2),
(160, 1, '2021-05-09 23:58:07.443738', 158, 14, 2);

--
-- Disparadores `orderlines`
--
DELIMITER $$
CREATE TRIGGER `restar_stock` AFTER INSERT ON `orderlines` FOR EACH ROW BEGIN
UPDATE products
SET products.stock = products.stock - new.quantity
where products.id = new.product_id;
END
$$
DELIMITER ;

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
(147, 1, '2021-05-09 23:42:08.215519', 2, 0, 1),
(148, 1, '2021-05-09 23:42:49.455377', 2, 0, 1),
(149, 1, '2021-05-09 23:45:32.317085', 2, 0, 1),
(150, 1, '2021-05-09 23:48:41.390642', 2, 0, 1),
(151, 1, '2021-05-09 23:49:04.257510', 2, 0, 1),
(152, 1, '2021-05-09 23:49:13.979548', 2, 0, 1),
(153, 1, '2021-05-09 23:51:58.095723', 2, 0, 1),
(154, 1, '2021-05-09 23:52:02.611911', 2, 0, 1),
(155, 1, '2021-05-09 23:53:47.711952', 2, 0, 1),
(156, 1, '2021-05-09 23:56:59.153770', 2, 0, 1),
(157, 1, '2021-05-09 23:57:17.643425', 2, 0, 1),
(158, 1, '2021-05-09 23:58:07.437412', 2, 0, 1);

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
(12, 'Smartphone', 'products/descarga.jfif', 'Lorem Ipsum is simply dfrrfd smpl slsoe sssks skssks ksaaaa aasssssss  sassss asakdvdvd', '99.99', 1, 1, 10),
(13, 'Lapto Dell', 'products/lapto_dell.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.pe a', '99.99', 1, 1, 10),
(14, 'lapiz', 'products/lapiz.jfif', 'Lapiz de buena calidad', '0.30', 1, 3, 9),
(15, 'llavero', 'products/llavero.jfif', 'Llavero para la playa', '1.50', 1, 3, 8),
(16, 'gorra', 'products/gorra.jfif', 'gorra de paseo', '5.00', 1, 4, 8);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

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
