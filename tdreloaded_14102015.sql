-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-10-2015 a las 20:51:19
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tdreloaded`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` int(11) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`),
  KEY `fk_auth_assignment_user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('admin', 2, 'Usuario administrador', NULL, 'N;'),
('bill_create', 0, 'Crear factura', NULL, 'N;'),
('bill_delete', 0, 'Eliminar usuario factura', NULL, 'N;'),
('bill_list', 0, 'Listar facturas', NULL, 'N;'),
('bill_manage', 1, 'Gestionar facturas', NULL, 'N;'),
('bill_update', 0, 'Actualizar factura', NULL, 'N;'),
('bill_view', 0, 'Ver usuario factura', NULL, 'N;'),
('city_create', 0, 'Crear ciudad', NULL, 'N;'),
('city_delete', 0, 'Eliminar usuario ciudad', NULL, 'N;'),
('city_list', 0, 'Listar ciudades', NULL, 'N;'),
('city_manage', 1, 'Gestionar ciudades', NULL, 'N;'),
('city_update', 0, 'Actualizar ciudad', NULL, 'N;'),
('city_view', 0, 'Ver usuario ciudad', NULL, 'N;'),
('coupon_create', 0, 'Crear cupón', NULL, 'N;'),
('coupon_delete', 0, 'Eliminar usuario cupón', NULL, 'N;'),
('coupon_list', 0, 'Listar cupones', NULL, 'N;'),
('coupon_manage', 1, 'Gestionar cupones', NULL, 'N;'),
('coupon_update', 0, 'Actualizar cupón', NULL, 'N;'),
('coupon_view', 0, 'Ver usuario cupón', NULL, 'N;'),
('multimedia_create', 0, 'Crear multimedia', NULL, 'N;'),
('multimedia_delete', 0, 'Eliminar usuario multimedia', NULL, 'N;'),
('multimedia_list', 0, 'Listar multimedia', NULL, 'N;'),
('multimedia_manage', 1, 'Gestionar multimedia', NULL, 'N;'),
('multimedia_update', 0, 'Actualizar multimedia', NULL, 'N;'),
('multimedia_view', 0, 'Ver usuario multimedia', NULL, 'N;'),
('order_create', 0, 'Crear orden', NULL, 'N;'),
('order_delete', 0, 'Eliminar usuario orden', NULL, 'N;'),
('order_list', 0, 'Listar órdenes', NULL, 'N;'),
('order_manage', 1, 'Gestionar órdenes', NULL, 'N;'),
('order_update', 0, 'Actualizar orden', NULL, 'N;'),
('order_view', 0, 'Ver usuario orden', NULL, 'N;'),
('partner_create', 0, 'Crear asociado', NULL, 'N;'),
('partner_delete', 0, 'Eliminar usuario asociado', NULL, 'N;'),
('partner_list', 0, 'Listar asociados', NULL, 'N;'),
('partner_manage', 1, 'Gestionar asociados', NULL, 'N;'),
('partner_update', 0, 'Actualizar asociado', NULL, 'N;'),
('partner_view', 0, 'Ver usuario asociado', NULL, 'N;'),
('promotion_create', 0, 'Crear promoción', NULL, 'N;'),
('promotion_delete', 0, 'Eliminar usuario promoción', NULL, 'N;'),
('promotion_list', 0, 'Listar promociones', NULL, 'N;'),
('promotion_manage', 1, 'Gestionar promociones', NULL, 'N;'),
('promotion_update', 0, 'Actualizar promoción', NULL, 'N;'),
('promotion_view', 0, 'Ver usuario promoción', NULL, 'N;'),
('prueba', 2, 'prueba', NULL, NULL),
('subpromotion_create', 0, 'Crear subpromoción', NULL, 'N;'),
('subpromotion_delete', 0, 'Eliminar usuario subpromoción', NULL, 'N;'),
('subpromotion_list', 0, 'Listar subpromociones', NULL, 'N;'),
('subpromotion_manage', 1, 'Gestionar subpromociones', NULL, 'N;'),
('subpromotion_update', 0, 'Actualizar subpromoción', NULL, 'N;'),
('subpromotion_view', 0, 'Ver usuario subpromoción', NULL, 'N;'),
('user_create', 0, 'Crear usuario', NULL, 'N;'),
('user_delete', 0, 'Eliminar usuario usuario', NULL, 'N;'),
('user_list', 0, 'Listar usuarios', NULL, 'N;'),
('user_manage', 1, 'Gestionar usuarios', NULL, 'N;'),
('user_manage_own', 1, 'Gestionar usuario propio', 'return Yii::app()->user->getId()==$params["user"]->id;', 'N;'),
('user_update', 0, 'Actualizar usuario', NULL, 'N;'),
('user_view', 0, 'Ver usuario usuario', NULL, 'N;'),
('usuario', 2, 'Usuario de la página', NULL, 'N;'),
('zone_create', 0, 'Crear zona', NULL, 'N;'),
('zone_delete', 0, 'Eliminar usuario zona', NULL, 'N;'),
('zone_list', 0, 'Listar zonas', NULL, 'N;'),
('zone_manage', 1, 'Gestionar zonas', NULL, 'N;'),
('zone_update', 0, 'Actualizar zona', NULL, 'N;'),
('zone_view', 0, 'Ver usuario zona', NULL, 'N;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `fk_auth_item_child_parent` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('bill_manage', 'bill_create'),
('bill_manage', 'bill_delete'),
('bill_manage', 'bill_list'),
('admin', 'bill_manage'),
('bill_manage', 'bill_update'),
('bill_manage', 'bill_view'),
('city_manage', 'city_create'),
('city_manage', 'city_delete'),
('city_manage', 'city_list'),
('usuario', 'city_list'),
('admin', 'city_manage'),
('city_manage', 'city_update'),
('city_manage', 'city_view'),
('coupon_manage', 'coupon_create'),
('coupon_manage', 'coupon_delete'),
('coupon_manage', 'coupon_list'),
('admin', 'coupon_manage'),
('coupon_manage', 'coupon_update'),
('coupon_manage', 'coupon_view'),
('multimedia_manage', 'multimedia_create'),
('multimedia_manage', 'multimedia_delete'),
('multimedia_manage', 'multimedia_list'),
('admin', 'multimedia_manage'),
('multimedia_manage', 'multimedia_update'),
('multimedia_manage', 'multimedia_view'),
('usuario', 'multimedia_view'),
('order_manage', 'order_create'),
('order_manage', 'order_delete'),
('order_manage', 'order_list'),
('admin', 'order_manage'),
('order_manage', 'order_update'),
('order_manage', 'order_view'),
('partner_manage', 'partner_create'),
('partner_manage', 'partner_delete'),
('partner_manage', 'partner_list'),
('admin', 'partner_manage'),
('partner_manage', 'partner_update'),
('partner_manage', 'partner_view'),
('promotion_manage', 'promotion_create'),
('promotion_manage', 'promotion_delete'),
('promotion_manage', 'promotion_list'),
('usuario', 'promotion_list'),
('admin', 'promotion_manage'),
('prueba', 'promotion_manage'),
('promotion_manage', 'promotion_update'),
('promotion_manage', 'promotion_view'),
('usuario', 'promotion_view'),
('subpromotion_manage', 'subpromotion_create'),
('subpromotion_manage', 'subpromotion_delete'),
('subpromotion_manage', 'subpromotion_list'),
('usuario', 'subpromotion_list'),
('admin', 'subpromotion_manage'),
('subpromotion_manage', 'subpromotion_update'),
('subpromotion_manage', 'subpromotion_view'),
('usuario', 'subpromotion_view'),
('user_manage', 'user_create'),
('user_manage', 'user_delete'),
('user_manage', 'user_list'),
('admin', 'user_manage'),
('usuario', 'user_manage_own'),
('user_manage', 'user_update'),
('user_manage_own', 'user_update'),
('user_manage', 'user_view'),
('user_manage_own', 'user_view'),
('zone_manage', 'zone_create'),
('zone_manage', 'zone_delete'),
('zone_manage', 'zone_list'),
('admin', 'zone_manage'),
('zone_manage', 'zone_update'),
('zone_manage', 'zone_view');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(45) DEFAULT NULL,
  `state` varchar(64) NOT NULL DEFAULT 'PLACED' COMMENT 'Posibles estados: PLACED, PAYMENT PENDING, CONFIRMATION PENDING, PAYMENT CONFIRMED, PAYMENT DECLINED, IN REVIEW, CLOSED',
  `td_bank` varchar(45) NOT NULL,
  `user_bank` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `credit` double NOT NULL DEFAULT '0',
  `source` varchar(45) DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bill_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `googlemap` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_branch_partner1_idx` (`partner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `branch`
--

INSERT INTO `branch` (`id`, `address`, `googlemap`, `mark`, `phone`, `partner_id`) VALUES
(2, 'Branch', '', 'Bill', 'Branch', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Gastronomia'),
(2, 'Gastronomia'),
(3, 'Viajes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'Caracas'),
(2, 'Maracay'),
(3, 'Barquisimeto'),
(4, 'Los Roques'),
(5, 'Trujillo'),
(6, 'Guatire'),
(7, 'Guatire');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'entero de 16 digitos',
  `type` varchar(45) NOT NULL COMMENT 'viaje, evento,consumo',
  `consume` date DEFAULT NULL COMMENT 'fecha de cosnumo, si no tiene fecha no ha sido consumido',
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL COMMENT 'nombre del que usara el cupon (comprador o regalado)',
  `last` varchar(45) DEFAULT NULL COMMENT 'apellido del que usara el cupon (comprador o regalado)',
  `email` varchar(45) DEFAULT NULL COMMENT 'email del que usara el cupon (comprador o regalado)',
  `verify` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Si se recibio el cupon de regalo',
  `promotion_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_coupon_promotion1_idx` (`promotion_id`),
  KEY `fk_coupon_partner1_idx` (`partner_id`),
  KEY `fk_coupon_user1_idx` (`user_id`),
  KEY `fk_coupon_order1_idx` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE IF NOT EXISTS `multimedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL COMMENT 'imagen, pdf',
  `route` varchar(255) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL COMMENT 'no son foraneas, pueden ser null porque otro id puede estar usandose',
  `partner_id` int(11) DEFAULT NULL COMMENT 'no son foraneas, pueden ser null porque otro id puede estar usandose',
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`id`, `type`, `route`, `promotion_id`, `partner_id`, `date_create`) VALUES
(1, 'image', 'Tudescuenton-2267-activacampoviewadmin.JPG', 1, 3, '2015-05-08 03:56:41'),
(2, 'image', 'Tudescuenton-3609-activacampoviewadmin.JPG', 1, 3, '2015-05-08 03:57:02'),
(4, 'image', 'Tudescuenton-9890-Dia-de-relax-en-el-spa-renacer.jpeg', 2, NULL, '2015-08-28 14:41:48'),
(7, 'image', 'Tudescuenton-202-Escape-a-Margarita.jpeg', 3, NULL, '2015-08-28 15:42:07'),
(8, 'image', 'Tudescuenton-3817-images.jpg', NULL, NULL, '2015-08-28 16:05:28'),
(10, 'image', 'Tudescuenton-2559-Escape-a-Margarita.jpeg', 3, NULL, '2015-08-28 17:53:18'),
(11, 'image', 'Tudescuenton-1572-audive-slide-01-700x300.png', NULL, NULL, '2015-09-01 03:43:53'),
(12, 'image', 'Tudescuenton-2315-Escape-a-Margarita.png', 3, NULL, '2015-09-01 03:45:29'),
(13, 'image', 'Tudescuenton-8055-Escape-a-Margarita.jpeg', 3, NULL, '2015-10-09 03:05:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_server_consumer`
--

CREATE TABLE IF NOT EXISTS `oauth_server_consumer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL,
  `secret` varchar(64) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `callback_url` varchar(1024) DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL,
  `application_name` varchar(64) NOT NULL,
  `application_description` varchar(256) NOT NULL,
  `application_homepage` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_UNIQUE` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_server_nonce`
--

CREATE TABLE IF NOT EXISTS `oauth_server_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumer_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `nonce` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `osn_consumer_key` (`consumer_key`,`token`,`timestamp`,`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_server_token`
--

CREATE TABLE IF NOT EXISTS `oauth_server_token` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `consumer_id` int(10) unsigned NOT NULL,
  `token` varchar(64) NOT NULL,
  `secret` varchar(64) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token_type` tinyint(1) DEFAULT NULL COMMENT '1: Request, 2: Access',
  `authorized` bit(1) NOT NULL,
  `expire_time` datetime NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL,
  `verifier` varchar(12) DEFAULT NULL,
  `callback_url` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_UNIQUE` (`token`),
  KEY `fk_oauth_server_token_oauth_server_consumer` (`consumer_id`),
  KEY `expire_time` (`expire_time`),
  KEY `fk_oauth_server_token_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `subtotal` double NOT NULL DEFAULT '0',
  `state` varchar(64) NOT NULL DEFAULT 'PLACED' COMMENT 'Posibles estados: PLACED, PAYMENT PENDING, CONFIRMATION PENDING, PAYMENT CONFIRMED, PAYMENT DECLINED, IN REVIEW, CLOSED',
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NULL DEFAULT NULL,
  `promotion_id` int(11) NOT NULL,
  `subpromotion_id` int(11) unsigned NOT NULL,
  `partner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_promotion1_idx` (`promotion_id`),
  KEY `fk_order_partner1_idx` (`partner_id`),
  KEY `fk_order_user1_idx` (`user_id`),
  KEY `fk_order_bill1_idx` (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(256) NOT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `instagram` varchar(45) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `googlemaps` varchar(255) DEFAULT NULL COMMENT 'info google maps',
  `marcas` varchar(255) DEFAULT NULL COMMENT 'marcas de google maps',
  `phone` varchar(255) NOT NULL,
  `business_name` varchar(255) NOT NULL COMMENT 'Razón social ',
  `phone_exchange` varchar(32) NOT NULL COMMENT 'Teléfono de canje promoción',
  `phone_bill` varchar(32) NOT NULL COMMENT 'Teléfono de envío de factura',
  `address_bill` text NOT NULL COMMENT 'Dirección de entrega de factura',
  `address_exchange` text NOT NULL COMMENT 'Dirección de canje',
  `contact_name_promo` varchar(255) NOT NULL COMMENT 'Persona de contacto promoción ',
  `contact_phone_promo` varchar(32) NOT NULL COMMENT 'Persona de contacto promoción ',
  `contact_address_promo` text NOT NULL COMMENT 'Persona de contacto promoción ',
  `contact_name_admin` varchar(255) NOT NULL COMMENT 'Persona contacto administración ',
  `contact_phone_admin` varchar(32) NOT NULL COMMENT 'Persona contacto administración ',
  `contact_address_admin` text NOT NULL COMMENT 'Persona contacto administración ',
  `contact_name_promo_canje` varchar(255) NOT NULL COMMENT 'Persona contacto canje de promoción ',
  `contact_phone_promo_canje` varchar(32) NOT NULL COMMENT 'Persona contacto canje de promoción ',
  `contact_address_promo_canje` varchar(255) NOT NULL COMMENT 'Persona contacto canje de promoción ',
  `date_create` timestamp NULL DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_partner_zone1_idx` (`zone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `partner`
--

INSERT INTO `partner` (`id`, `name`, `password`, `weburl`, `facebook`, `twitter`, `instagram`, `address`, `googlemaps`, `marcas`, `phone`, `business_name`, `phone_exchange`, `phone_bill`, `address_bill`, `address_exchange`, `contact_name_promo`, `contact_phone_promo`, `contact_address_promo`, `contact_name_admin`, `contact_phone_admin`, `contact_address_admin`, `contact_name_promo_canje`, `contact_phone_promo_canje`, `contact_address_promo_canje`, `date_create`, `date_update`, `zone_id`) VALUES
(3, 'dermo', 'vera', 'dadsa', 'dasd', 'dasd', 'asd', 'qweqwe', 'dasd', 'dasd', '42342432', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-05-08 03:48:36', '2015-05-08 04:39:05', 2),
(32, 'Pizza Hut', 'c9f0f895fb98ab9159f51fd0297e236d', 'www.pizzahut.com', 'pizzahut', 'pizzahut', 'pizzahut', '<p>Las Mercedes, Sambil</p>\r\n', '12', '12', '582126094284', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-06-21 22:37:21', '2015-06-22 00:57:08', 2),
(35, 'prueba', '827ccb0eea8a706c4c34a16891f84e7b', 'www.tuprueba.com', 'tuprueba', 'tuprueba', 'tuprueba', 'La Castellana', '', '', '4529988', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-08-28 15:55:41', NULL, 2),
(36, 'Araxi Burger', '29b5fee46a20acd4c892f9ecae3ec3ef', 'www.araxiburger.com/index.php', 'www.facebook.com/araxigrill/', 'twitter.com/ARAXIGRILL', '', 'Av. La Estancia, C.C.C.T., PB. Al lado de los ascensores de la Torre A', '', '', '0212-9594077', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-09-16 20:53:45', NULL, 4),
(37, 'Poasada Acquamarina', '0597fc57ad4d7b1c42620c08d322f55e', '', '', '', '', 'CALLE LA LAGUNA 149, ISLA GRAN ROQUE, P.N. ARCHIPIELAGO LOS ROQUES, DEPENDENCIAS FEDERALES', '{"zoom":15,"lng":-66.7575,"lat":11.8575}', '[null,{"lat":11.8575,"lng":-66.7575,"cnt":"Archipiélago Los Roques, Venezuela"}]', '5804123096014', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-09-16 21:06:12', NULL, 5),
(38, '3', 'c4ca4238a0b923820dcc509a6f75849b', '3', '4', '3', '4', '4', '', '', '3', '4', '4', '3', '3', '4', '3', '4', '3', '4', '3', '4', '3', '4', '3', '2015-10-05 03:08:30', '2015-10-05 03:09:03', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`) VALUES
(1, 'Local'),
(2, 'Viajes'),
(5, 'Restaurant');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `promostart3days`
--
CREATE TABLE IF NOT EXISTS `promostart3days` (
`promotion_id` int(11)
,`view_start` date
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `gift_title` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `share` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `conditions` text NOT NULL,
  `price_original` double NOT NULL DEFAULT '0',
  `price_promo` double NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `date_expire` date NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `max_coupon` int(11) NOT NULL DEFAULT '1',
  `max_pp` int(11) NOT NULL DEFAULT '1',
  `counter` int(11) NOT NULL DEFAULT '0',
  `type` varchar(45) DEFAULT NULL,
  `presale_start` date DEFAULT NULL,
  `presale_end` date DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `zone_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_promotion_zone1_idx` (`zone_id`),
  KEY `fk_promotion_partner1_idx` (`partner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `promotion`
--

INSERT INTO `promotion` (`id`, `title`, `gift_title`, `tags`, `share`, `description`, `conditions`, `price_original`, `price_promo`, `priority`, `date_start`, `date_end`, `date_expire`, `source`, `state`, `max_coupon`, `max_pp`, `counter`, `type`, `presale_start`, `presale_end`, `date_create`, `date_update`, `zone_id`, `partner_id`, `product_id`, `category_id`) VALUES
(1, 'algo', 'algo gift', 'Bill', NULL, '<p>sdad</p>', '<p>fdfs</p>', 0, 0, 0, '2015-09-01', '2015-09-30', '2015-10-31', 'web', '', 1, 1, 0, '', '0000-00-00', '0000-00-00', '2015-05-08 03:51:43', '2015-09-04 03:52:31', 2, 35, 1, 1),
(2, 'Día de relax en el spa renacer', ' spa renacer', 'spa', '', '<p>Día de relax en el spa renacer</p>', '<p>Para mayores de 18 años</p><p>Un solo cupón por persona</p>', 20000, 18500, 1, '2015-09-28', '2015-10-30', '0000-00-00', 'web', 'inactiva', 10, 1, 2, 'local', '2015-08-28', '2015-08-30', '2015-08-28 14:40:16', '2015-09-15 05:57:30', 3, 32, 1, 1),
(3, 'Escape a Margarita ', 'Regala un viaje a Margarita', 'viaje', '', '<p>Escape a Margarita mas informacion <a href="http://tdreloaded.cloudapp.net/api/repotd/Tudescuenton-9598-ELVIRA SLV.pdf" target="_blank">aquí</a></p>', '<p>Para mayores de 18 años</p><p>Un solo cupón por persona </p><p>Valido solo para temporadas bajas</p><p><br></p>', 50000, 45000, 1, '2015-08-28', '2015-09-30', '2015-10-31', 'web', 'inactiva', 1, 1, 0, 'viajes', '2015-08-27', '2015-08-29', '2015-08-28 15:40:24', '2015-09-04 14:21:09', 2, 35, 2, 1),
(13, 'algo', 'algo gift', 'Bill', '', '<p>sdad</p>', '<p>fdfs</p>', 1000, 1000, 0, '2015-09-01', '2015-09-08', '2015-10-08', 'web', '', 1, 1, 0, 'local', '0000-00-00', '0000-00-00', '2015-08-02 03:51:43', '2015-09-02 08:33:24', 2, 3, 2, 4),
(14, 'no tnego idea', 'otro regalo', '', '', 'sa', 'sd', 1200, 1222, 3, '2015-08-31', '2015-09-08', '2015-10-08', 'web', 'activa', 1, 1, 0, 'local', '0000-00-00', '0000-00-00', '2015-07-18 19:48:16', '2015-08-02 07:36:45', 2, 32, 0, 0),
(15, 'Promoción cintura de avispa: 1 Hidrolipoclasia ultrasónica + 1 Drenaje linfático + 1 Ultracavitación + 1 Endermoterapia + 1 Gimnasia pasiva', 'Promoción cintura de avispa', '', '', 'Promoción cintura de avispa', 'Promoción cintura de avispa', 1000, 1000, 0, '2015-08-23', '2015-08-27', '2015-09-27', 'web', 'activa', 1, 1, 0, 'local', '0000-00-00', '0000-00-00', '2015-08-01 14:56:39', '0000-00-00 00:00:00', 2, 3, 0, 0),
(16, '2 Sesiones de fotodepilación para axilas', '2 Sesiones de fotodepilación para axilas', '', '', '<p>2 Sesiones de fotodepilación para axilas</p>', '<p>2 Sesiones de fotodepilación para axilas</p>', 2000, 2000, 0, '2015-08-30', '2015-09-02', '2015-10-02', 'web', 'activa', 20, 1, 17, 'local', '0000-00-00', '0000-00-00', '2015-07-20 14:59:50', '2015-09-15 05:57:02', 2, 32, 1, 1),
(17, 'Limpieza facial + Electroporación', 'Limpieza facial + Electroporación', 'limpieza,facial,electroporación,electroporacion,piel,cutis,rostro,cara,cutáneo,cutaneo', '', 'Limpieza facial + Electroporación', 'Limpieza facial + Electroporación', 3000, 3000, 0, '2015-09-02', '2015-09-06', '2015-10-06', 'web', 'activa', 40, 3, 40, 'local', '0000-00-00', '0000-00-00', '2015-08-01 15:00:44', '0000-00-00 00:00:00', 2, 3, 0, 0),
(18, 'Cirugía capilar Soft-Liss + Lavado + Secado + Planchado', 'Cirugía capilar Soft-Liss + Lavado + Secado + Planchado', 'depilacion,depilación,cera,axilas,axila,media,pierna,bozo,vellos', '', 'Cirugía capilar Soft-Liss + Lavado + Secado + Planchado', 'Cirugía capilar Soft-Liss + Lavado + Secado + Planchado', 4000, 4000, 0, '2015-09-06', '2015-09-08', '2015-10-08', 'web', 'activa', 1, 1, 0, 'local', '0000-00-00', '0000-00-00', '2015-07-20 15:01:38', '0000-00-00 00:00:00', 2, 3, 0, 0),
(19, 'Depilación con cera de bozo, axilas y media pierna', 'Depilación con cera de bozo, axilas y media pierna', 'depilacion,depilación,cera,axilas,axila,media,pierna,bozo,vellos', '', '<p>Depilación con cera de bozo, axilas y media pierna</p>', '<p>Depilación con cera de bozo, axilas y media pierna</p>', 5000, 5000, 0, '2015-08-11', '2015-09-16', '2015-09-16', 'web', 'activa', 25, 2, 24, 'viajes', '0000-00-00', '0000-00-00', '2015-07-20 15:02:27', '2015-09-15 05:58:58', 2, 3, 1, 1),
(20, 'Limpieza facial + Electroporación + Lavado + Secado + Planchado', 'Limpieza facial + Electroporación + Lavado + Secado + Planchado', 'depilacion,depilación,cera,axilas,axila,media,pierna,bozo,vellos', '', '<p>Limpieza facial + Electroporación + Lavado + Secado + Planchado</p>', '<p>Limpieza facial + Electroporación + Lavado + Secado + Planchado</p>', 6000, 6000, 0, '2015-08-23', '2015-09-30', '2015-10-31', 'web', 'activa', 1, 1, 0, 'local', '0000-00-00', '0000-00-00', '2015-07-20 15:03:53', '2015-09-04 04:06:07', 2, 32, 2, 1),
(21, '2 Sesiones de fotodepilación para axilas locoooooo', '2 Sesiones de fotodepilación para axilas locoooooo', 'depilacion,depilación,cera,axilas,axila,media,pierna,bozo,vellos', '', '<p>2 Sesiones de fotodepilación para axilas locoooooo</p>', '<p>2 Sesiones de fotodepilación para axilas locoooooo</p>', 3200, 3200, 10, '2015-09-03', '2015-09-11', '2015-10-11', 'web', 'activa', 10, 1, 0, 'viajes', '0000-00-00', '0000-00-00', '2015-08-02 23:14:01', '2015-09-04 07:47:13', 2, 32, 1, 3),
(23, 'Paga Bs 500 consume Bs 1000 por persona en Araxi Burger', 'Consume Bs 1000 por persona en Araxi Burger', 'hamburguesa-araxi-mercedes-consumo', '', '<ol>\r\n	<li>\r\n	<h5>El primer concepto de Hamburguesas Gourmet de Venezuela</h5></li><li><h5>Fusionado con la mejor selección de exquisitos ingredientes</h5></li><li><div><a href="http://www.araxiburger.com/index.php" target="_blank">Pagina Web</a></div></li><li><div><a href="http://www.araxiburger.com/index.php" target="_blank"></a><strong>Espec</strong><strong>taculares merengadas y postres</strong></div></li>\r\n	<li>\r\n	<h2 style="text-align: justify;">Para disfrutar individual, pareja o grupos.<span></span></h2><hr><hr><br></li>\r\n</ol><p><span></span></p><p><span></span></p><p><span></span></p><p><span></span></p><p><span></span></p><p><span></span></p>', '<p>Incluye: consumo de Bs 1000</p><p>Horario de canje: lunes a domingo de 12:00m a 8:00pm<br></p><p>Teléfono: <br></p><p>Válido ÚNICAMENTE en la Av. La Estancia, C.C.C.T., PB. Al lado de los ascensores de la Torre A<br></p><p>Un cupón por persona. No hay restricción de cupones por mesa<br></p><p>El cupón no aplica para combinar promociones en el restaurant<br></p><p>Presentar cupón impreso y cédula de identidad</p>', 1500, 500, 0, '2015-09-17', '2015-09-24', '2015-09-23', 'web', 'activa', 1, 2, 0, NULL, '2015-09-18', '2015-09-25', '2015-09-16 21:14:22', '0000-00-00 00:00:00', 4, 36, 3, 1),
(24, 'Paga uno o dos meses de clases de yoga, bailoterapia, fitness de combate o pilates en el Gimnasio Curves con atención personalizada', 'Uno o dos meses de clases variadas en el Gimnasio Curves con atención personalizada', 'clases-gimnasio-curves', '', 'Curves ofrece una rutina de entrenamiento completa cardiovascular y de fuerza<hr><p>Está compuesto de máquinas de resistencia<br></p><p>Ponen a trabajar a cada uno de los grupos principales de músculos, dos músculos a la vez</p>', '<p>ddddddddddddddddddddd</p>', 0, 1500, 4, '2015-10-01', '2015-10-22', '2015-10-31', 'web', 'activa', 1, 1, 0, NULL, '0000-00-00', '0000-00-00', '2015-10-06 20:54:35', '0000-00-00 00:00:00', 4, 32, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publishing`
--

CREATE TABLE IF NOT EXISTS `publishing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET latin1 NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `promotions_ids` varchar(255) CHARACTER SET latin1 NOT NULL,
  `filter_1` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `filter_2` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `filter_3` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `publishing`
--

INSERT INTO `publishing` (`id`, `type`, `product_id`, `promotions_ids`, `filter_1`, `filter_2`, `filter_3`, `date_create`) VALUES
(1, 'Viajes', 0, '3,20', '', '', '', '2015-09-15 06:04:06'),
(2, 'Local', 0, '1', '', '', '', '2015-09-16 21:40:27'),
(3, 'Local', 0, '1', '', '', '', '2015-09-16 21:40:30'),
(4, 'Local', 0, '1', '', '', '', '2015-09-16 21:40:33'),
(5, 'Local', 0, '1', '', '', '', '2015-09-16 21:40:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT 'entrada o salida',
  `date_create` timestamp NULL DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `record`
--

INSERT INTO `record` (`id`, `action`, `type`, `date_create`, `promotion_id`, `user_id`, `order_id`) VALUES
(1, 'das', 'Bill', '2015-05-08 04:06:13', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `cookie` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`cookie`),
  KEY `fk_session_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`cookie`, `user_id`) VALUES
(9999, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subpromotion`
--

CREATE TABLE IF NOT EXISTS `subpromotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `title_gift` varchar(255) NOT NULL,
  `price_original` double NOT NULL DEFAULT '0',
  `price_subpromo` double NOT NULL DEFAULT '0',
  `max_coupon` int(11) NOT NULL DEFAULT '0',
  `max_pp` int(11) NOT NULL DEFAULT '1',
  `counter` int(11) NOT NULL DEFAULT '0',
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NULL DEFAULT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subpromotion_promotion1_idx` (`promotion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `subpromotion`
--

INSERT INTO `subpromotion` (`id`, `title`, `title_gift`, `price_original`, `price_subpromo`, `max_coupon`, `max_pp`, `counter`, `date_create`, `date_update`, `promotion_id`) VALUES
(1, 'Hotel Hesperia', 'Hotel Hesperia', 35000, 30000, 1, 1, 0, '2015-08-28 15:47:49', NULL, 3),
(2, 'Hotel Flamingo', 'Flamingo', 15000, 10000, 1, 1, 0, '2015-08-28 17:55:03', NULL, 3),
(3, 'Promoción de masaje anti estrés', 'masaje anti estrés', 2000, 1500, 10, 1, 0, '2015-08-28 20:24:37', NULL, 2),
(4, 'Promoción de manos y pies', 'Promoción de manos y pies', 2000, 1800, 10, 1, 0, '2015-08-28 20:28:30', NULL, 2),
(5, 'Paga Bs 500 consume Bs 1000 por persona en Araxi Burger', 'Consume Bs 1000 por persona en Araxi Burger', 1500, 500, 2, 1, 0, '2015-09-16 21:16:31', NULL, 23),
(6, 'dos meses', 'dos meses', 1500, 2000, 3, 1, 0, '2015-10-06 20:56:19', NULL, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscribed`
--

CREATE TABLE IF NOT EXISTS `suscribed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_suscribed_zone1_idx` (`zone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `suscribed`
--

INSERT INTO `suscribed` (`id`, `email`, `ip`, `source`, `date_create`, `zone_id`) VALUES
(1, 'date_create', '', 'Bill', '2015-05-08 04:35:44', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1440729109),
('m150802_020408_crear_tablas_roles', 1440729131),
('m150802_192608_crear_tablas_oauth', 1440729133);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `town`
--

CREATE TABLE IF NOT EXISTS `town` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_town_city_idx` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `town`
--

INSERT INTO `town` (`id`, `name`, `city_id`) VALUES
(1, 'Baruta', 1),
(2, 'Chacao', 1),
(3, 'Sucre', 1),
(4, 'El Hatillo', 1),
(5, 'Libertador', 1),
(6, 'Guatire', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `credit` double NOT NULL DEFAULT '0',
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(255) DEFAULT NULL COMMENT 'encriptado para verificacion',
  `source` varchar(45) DEFAULT NULL COMMENT 'si es de web o app',
  `usercol` varchar(45) DEFAULT NULL,
  `last_access` date DEFAULT NULL,
  `rol` varchar(45) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NULL DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_zone1_idx` (`zone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `status`, `email`, `name`, `lastname`, `password`, `sex`, `phone`, `credit`, `verify`, `hash`, `source`, `usercol`, `last_access`, `rol`, `date_create`, `date_update`, `zone_id`) VALUES
(1, 'activo', 'Bill', 'erwer', 'admin', '1b0e1d88521fa99f9e4d041033f33778', 'w', '32342', 0, 0, '', '', '', '0000-00-00', 'weqwe', '2015-05-08 04:04:55', '2015-05-08 04:51:57', 2),
(2, 'Activo', 'prueba@prueba.com', 'prueba', 'admin', 'b20870e22de48ccc83c80d3561ae6d9f', 'f', '5602366', 0, 0, NULL, '', NULL, NULL, 'prueba', '2015-08-28 15:23:26', '2015-08-28 15:53:23', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `view`
--

CREATE TABLE IF NOT EXISTS `view` (
  `counter` int(11) DEFAULT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`),
  KEY `fk_visit_promotion1_idx` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `view`
--

INSERT INTO `view` (`counter`, `promotion_id`) VALUES
(12, 15),
(210, 18),
(120, 19),
(2050, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `YiiCache`
--

CREATE TABLE IF NOT EXISTS `YiiCache` (
  `id` char(128) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `value` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `YiiCache`
--

INSERT INTO `YiiCache` (`id`, `expire`, `value`) VALUES
('35a89b5c1f1a5ab5bba5983462a97fc1', 0, 0x613a323a7b693a303b613a323a7b693a303b613a333a7b693a303b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31373a223c636f6e74726f6c6c65723e2f76696577223b733a31303a227265666572656e636573223b613a313a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b7d733a31323a22726f7574655061747465726e223b733a33303a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f76696577242f75223b733a373a227061747465726e223b733a33393a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c69643e5c642b295c2f242f75223b733a383a2274656d706c617465223b733a31373a223c636f6e74726f6c6c65723e2f3c69643e223b733a363a22706172616d73223b613a313a7b733a323a226964223b733a333a225c642b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a313b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a35363a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c69643e5c642b295c2f242f75223b733a383a2274656d706c617465223b733a32363a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c69643e223b733a363a22706172616d73223b613a313a7b733a323a226964223b733a333a225c642b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a323b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a34333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d7d693a313b733a33323a223434393832613234336433633331393564353161616333643333613266363336223b7d693a313b4e3b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zone`
--

CREATE TABLE IF NOT EXISTS `zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `town_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_zone_town1_idx` (`town_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `zone`
--

INSERT INTO `zone` (`id`, `name`, `town_id`) VALUES
(2, '21', 1),
(3, 'Colonia T', 1),
(4, 'Las Mercedes', 2),
(5, 'Insular', 5),
(6, 'Buenaventura', 3);

-- --------------------------------------------------------

--
-- Estructura para la vista `promostart3days`
--
DROP TABLE IF EXISTS `promostart3days`;

CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `promostart3days` AS select `promotion`.`id` AS `promotion_id`,`promotion`.`date_start` AS `view_start` from `promotion` where ((`promotion`.`date_start` <= curdate()) and (`promotion`.`date_start` > (curdate() + interval -(3) day)));

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `fk_auth_assignment_auth_item` FOREIGN KEY (`itemname`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_assignment_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `fk_auth_item_child_child` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_child_parent` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `fk_branch_partner1` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `coupon`
--
ALTER TABLE `coupon`
  ADD CONSTRAINT `fk_coupon_order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_coupon_partner1` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_coupon_promotion1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_coupon_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `oauth_server_token`
--
ALTER TABLE `oauth_server_token`
  ADD CONSTRAINT `fk_oauth_server_token_oauth_server_consumer` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_server_consumer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_oauth_server_token_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_partner1` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_promotion1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_bill1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `partner`
--
ALTER TABLE `partner`
  ADD CONSTRAINT `fk_partner_zone1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `fk_promotion_zone1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `promotion_partner1` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `fk_session_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subpromotion`
--
ALTER TABLE `subpromotion`
  ADD CONSTRAINT `fk_subpromotion_promotion1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `suscribed`
--
ALTER TABLE `suscribed`
  ADD CONSTRAINT `fk_suscribed_zone1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `town`
--
ALTER TABLE `town`
  ADD CONSTRAINT `fk_town_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_zone1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `view`
--
ALTER TABLE `view`
  ADD CONSTRAINT `fk_visit_promotion1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `zone`
--
ALTER TABLE `zone`
  ADD CONSTRAINT `fk_zone_town1` FOREIGN KEY (`town_id`) REFERENCES `town` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
