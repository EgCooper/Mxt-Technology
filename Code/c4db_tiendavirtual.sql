-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 27, 2022 at 11:22 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c4db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Perifericos', 'Mouse teclados y audifonos gaming', 'img_394c311b8e8ddbff2ae7f3b44a982a53.jpg', '2021-08-20 03:04:04', 'perifericos', 1),
(2, 'Perifericos Gaming', 'Lo mejor en tecnología gaming', 'img_968db81eda472ff29f2610d6d4e68785.jpg', '2021-08-21 00:47:10', 'perifericos-gaming', 1),
(3, 'Impresoras', 'Impresoras Canon Epson Hp', 'img_2a9f0f54ed940e0905bda23ac42e6dd2.jpg', '2022-09-24 18:34:57', 'impresoras', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `mensaje` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_swedish_ci NOT NULL,
  `dispositivo` varchar(25) COLLATE utf8mb4_swedish_ci NOT NULL,
  `useragent` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Fernando Herrera', 'toolsfordeveloper@gmail.com', 'Mensaje del primer suscriptor!', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-20 04:06:18'),
(2, 'Victor', 'vicox30@gmail.com', 'hola', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42', '2022-09-23 14:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_pedido`
--

CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(1, 1, 2, 200.00, 1),
(2, 1, 1, 100.00, 2),
(3, 2, 1, 100.00, 3),
(4, 3, 4, 140.00, 1),
(5, 4, 8, 650.00, 2),
(6, 5, 8, 650.00, 1),
(7, 6, 7, 900.00, 1),
(8, 7, 9, 500.00, 1),
(9, 8, 8, 650.00, 1),
(10, 9, 10, 1250.00, 1),
(11, 10, 8, 650.00, 2),
(12, 11, 10, 1250.00, 1),
(13, 11, 6, 700.00, 1),
(14, 12, 9, 500.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_temp`
--

CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagen`
--

CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(1, 1, 'pro_1018ac4efefe93878b7468ce72c630a3.jpg'),
(2, 1, 'pro_f90affec1052d2bf94047cb224d16568.jpg'),
(3, 1, 'pro_053da6d3ee7d346b6577ccfef6dac02d.jpg'),
(4, 2, 'pro_04e3bbf847b466de4aed691fca982d9d.jpg'),
(12, 2, 'pro_bb8108451aa8a21610931110c19fb369.jpg'),
(13, 3, 'pro_2b1a81cfe27f85486abbf5a7f8860cd9.jpg'),
(14, 3, 'pro_ff9d29decc4d30b32e6f54f470140448.jpg'),
(15, 3, 'pro_05785de7b5aad5b8db5d41c1408eb0cc.jpg'),
(16, 4, 'pro_90a1f90dacce1d2add78eb397c1e64c2.jpg'),
(23, 8, 'pro_fcd4a72a1ab1d9a8d1e9ac03d19f28a4.jpg'),
(24, 7, 'pro_cee6c327bf6d03c8cfa5f0df2f5869e7.jpg'),
(25, 6, 'pro_cbb714a387c2d5da6ce8ebd9827924e9.jpg'),
(26, 5, 'pro_fc1b534d9d7f0b3ae4ad2a0ba61b990a.jpg'),
(28, 9, 'pro_fd08a20f9de9caeb8e4d6c2f4bc4dcba.jpg'),
(29, 10, 'pro_3bc120d33aafbf9cd9319ff987100613.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `modulo`
--

CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(1, '4561654687', NULL, NULL, 3, '2021-08-20 03:41:57', 50.00, 450.00, 3, 'Antigua Guatemala, Antigua Guatemala', 'Completo'),
(2, NULL, '8XD37465755620710', '{"id":"4S6284553D668511R","intent":"CAPTURE","status":"COMPLETED","purchase_units":[{"reference_id":"default","amount":{"currency_code":"USD","value":"350.00"},"payee":{"email_address":"sb-6z0da4580133@business.example.com","merchant_id":"ULNZF7CTTE748"},"description":"Compra de artículos en Tienda Virtual por $350 ","soft_descriptor":"PAYPAL *JOHNDOESTES","shipping":{"name":{"full_name":"John Doe"},"address":{"address_line_1":"Free Trade Zone","admin_area_2":"Guatemala City","admin_area_1":"Guatemala City","postal_code":"01001","country_code":"GT"}},"payments":{"captures":[{"id":"8XD37465755620710","status":"COMPLETED","amount":{"currency_code":"USD","value":"350.00"},"final_capture":true,"seller_protection":{"status":"ELIGIBLE","dispute_categories":["ITEM_NOT_RECEIVED","UNAUTHORIZED_TRANSACTION"]},"create_time":"2021-08-20T09:48:38Z","update_time":"2021-08-20T09:48:38Z"}]}}],"payer":{"name":{"given_name":"John","surname":"Doe"},"email_address":"sb-iimwo4579006@personal.example.com","payer_id":"ZTA3QXTY5JS6Q","address":{"country_code":"GT"}},"create_time":"2021-08-20T09:46:25Z","update_time":"2021-08-20T09:48:38Z","links":[{"href":"https://api.sandbox.paypal.com/v2/checkout/orders/4S6284553D668511R","rel":"self","method":"GET"}]}', 3, '2021-08-20 03:48:39', 50.00, 350.00, 1, 'Guatemala, Guatemala', 'Completo'),
(3, '123', NULL, NULL, 7, '2022-09-23 14:40:53', 5.00, 145.00, 2, 'temporal, cbba', 'Aprobado'),
(4, NULL, NULL, NULL, 5, '2022-09-23 20:09:07', 5.00, 1305.00, 2, 'Temporal, Cochabam,ba', 'Pendiente'),
(5, NULL, NULL, NULL, 5, '2022-09-23 20:45:19', 5.00, 655.00, 5, 'Tempora, cochabamba', 'Pendiente'),
(6, NULL, NULL, NULL, 8, '2022-09-23 22:58:42', 5.00, 905.00, 2, 'Zon norte, Temporal', 'Pendiente'),
(7, '97987878', NULL, NULL, 5, '2022-09-24 20:20:46', 5.00, 505.00, 2, 'jkmnjb, vuvyu', 'Cancelado'),
(8, NULL, NULL, NULL, 9, '2022-09-24 22:01:35', 5.00, 655.00, 2, 'Av antawara, Cochabamba', 'Pendiente'),
(9, NULL, NULL, NULL, 10, '2022-09-24 22:10:12', 5.00, 1255.00, 2, 'temporal, zona norte', 'Pendiente'),
(10, NULL, NULL, NULL, 11, '2022-09-25 11:43:29', 5.00, 1305.00, 2, 'Cochsbamba, Cochabamba Bolivis', 'Pendiente'),
(11, '43423423423', NULL, NULL, 12, '2022-09-26 08:40:57', 5.00, 1955.00, 2, 'Circunvalacion, Cochabamba', 'Aprobado'),
(12, NULL, NULL, NULL, 15, '2022-09-27 10:57:17', 5.00, 505.00, 2, 'Temporal, ZOna', 'Pendiente');

-- --------------------------------------------------------

--
-- Table structure for table `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(16, 2, 5, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(18, 2, 7, 1, 0, 0, 0),
(19, 2, 8, 1, 0, 0, 0),
(20, 2, 9, 1, 1, 1, 1),
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(30, 4, 1, 1, 0, 0, 0),
(31, 4, 2, 0, 0, 0, 0),
(32, 4, 3, 1, 1, 1, 0),
(33, 4, 4, 1, 0, 0, 0),
(34, 4, 5, 1, 0, 1, 0),
(35, 4, 6, 0, 0, 0, 0),
(36, 4, 7, 1, 0, 0, 0),
(37, 4, 8, 1, 0, 0, 0),
(38, 4, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '24091989', 'Abel', 'OSH', 123456, 'info@abelosh.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Abel OSH', 'Ciudad', NULL, 1, '2021-08-20 01:34:15', 1),
(2, '24091990', 'Alex', 'Arana', 456878977, 'alex@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 2, '2021-08-20 02:58:47', 1),
(3, '84654864', 'Ricardo', 'Hernández Pérez', 4687987, 'hr@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '468798', 'Ricardo HP', 'Ciudad de Guatemala', NULL, 3, '2021-08-20 03:41:28', 0),
(4, '798465877', 'Fernando', 'Guerra', 468498, 'fer@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 1),
(5, '9519261', 'Victor Angel', 'Pinto Mora', 75906306, 'vicox30@gmail.com', '25076c8283c9e2e2ad46ab693851d2fa7337b9c8b3cca7267c3e6555bd9540fe', NULL, NULL, NULL, 'c2f63dc04dc0d645d90b-2c5028f4ac58921b29d9-d3c6d34f464cc1b380ad-450279db7b8e2bf23e75', 1, '2022-09-23 14:34:08', 1),
(6, NULL, 'Juan', 'Perez', 78322334, 'juanperez@gmail.com', 'cab41ea3e888804f093604c10f40ddb3d68546f89ff9b6e00fbc52fad42b1172', NULL, NULL, NULL, NULL, 3, '2022-09-23 14:35:53', 1),
(7, '123', 'Juan', 'Perez', 78322334, 'juan@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '123', '123', '123', NULL, 3, '2022-09-23 14:40:36', 1),
(8, NULL, 'Brandon', 'Pinto', 78322334, 'brapro522@gmail.com', '490dfaee0131ed27c00d36b635facd3034454f93dc7c92bdfc285d296e26418f', NULL, NULL, NULL, NULL, 3, '2022-09-23 22:58:22', 1),
(9, '12553087', 'Nicolas', 'Quintanilla', 70398519, 'nikolasx484@gmail.com', 'dfef7e253584de33de694b5a72c82200795b2e23692afd11c000f30f4f2ccdba', 'Nicolas', 'Nicolas', 'Temporal', NULL, 3, '2022-09-24 21:59:49', 1),
(10, NULL, 'Juanito', 'Alcachofa', 74433452, 'niclasx48@gmail.com', 'a4a95abbb9ebfb4e43aaa9fd5d003d4e8aabb7f2610c68ade152a1b5969b7c4f', NULL, NULL, NULL, NULL, 3, '2022-09-24 22:10:01', 1),
(11, NULL, 'Brenda', 'Pinto Mora', 62611862, 'brendapintomora0@gmail.com', '418e66539988392fe23eb2499c014f52dbe0eb65bbd8ae8ea158146d79dcc3d8', NULL, NULL, NULL, NULL, 3, '2022-09-25 11:42:17', 1),
(12, '123124151', 'Myrna', 'Baena', 78322334, 'myrna@gmail.com', '72ce326b60341daecc5af1ca9c50308fa720349bf409c9df3e2e65246db99ff6', NULL, NULL, NULL, NULL, 3, '2022-09-26 08:40:17', 1),
(13, '8757462', 'Maria', 'Solis', 78322344, 'maria@gmail.com', '02508a0eb6d1612890d88a93433b050d008d653076bdf9f341b243823fa77ca7', NULL, NULL, NULL, NULL, 4, '2022-09-26 08:48:07', 1),
(14, '666', 'Erick', 'Benavides', 71717, 'kasdfjla@gmail.com', 'a295e386c5b934d7dd4b3e020e8accfc1858bbb1a953e7bbff9385d39645f601', NULL, NULL, NULL, NULL, 3, '2022-09-26 09:00:19', 1),
(15, NULL, 'Test', 'Testt', 78334455, 'test@gmail.com', '6ff787a05118c6f43021f7cc99e1936fb4da0d518382b8a3d65096e0e68d80e9', NULL, NULL, NULL, NULL, 3, '2022-09-27 10:51:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint(20) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class="p-t-80"> <h3 class="ltext-103 cl5">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class="row"> <div class="col-md-3">&nbsp;</div> </div>', 'img_36ef65372f104f4744758cb79090e29b.jpg', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class="bg0 p-t-75 p-b-120"> <div class="container"> <div class="row p-b-148"> <div class="col-md-7 col-lg-8"> <div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md"> <h3 class="mtext-111 cl2 p-b-16">Historia</h3> <p class="stext-113 cl6 p-b-26">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.</p> <p class="stext-113 cl6 p-b-26">Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula.</p> <p class="stext-113 cl6 p-b-26">Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879</p> </div> </div> <div class="col-11 col-md-5 col-lg-4 m-lr-auto"> <div class="how-bor1 "> <div class="hov-img0"><img src="https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg" alt="IMG" width="500" height="333" /></div> </div> </div> </div> <div class="row"> <div class="order-md-2 col-md-7 col-lg-8 p-b-30"> <div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md"> <h2 class="mtext-111 cl2 p-b-16"><span style="color: #236fa1;">Nuestra Misi&oacute;n</span></h2> <p class="stext-113 cl6 p-b-26">Mauris non lacinia magna. Sed nec lobortis dolor. Vestibulum rhoncus dignissim risus, sed consectetur erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam maximus mauris sit amet odio convallis, in pharetra magna gravida. Praesent sed nunc fermentum mi molestie tempor. Morbi vitae viverra odio. Pellentesque ac velit egestas, luctus arcu non, laoreet mauris. Sed in ipsum tempor, consequat odio in, porttitor ante. Ut mauris ligula, volutpat in sodales in, porta non odio. Pellentesque tempor urna vitae mi vestibulum, nec venenatis nulla lobortis. Proin at gravida ante. Mauris auctor purus at lacus maximus euismod. Pellentesque vulputate massa ut nisl hendrerit, eget elementum libero iaculis.</p> <div class="bor16 p-l-29 p-b-9 m-t-22"> <p class="stext-114 cl6 p-r-40 p-b-11">Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn''t really do it, they just saw something. It seemed obvious to them after a while.</p> <span class="stext-111 cl8"> - Steve Job&rsquo;s </span></div> </div> </div> <div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30"> <div class="how-bor2"> <div class="hov-img0"><img src="https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg" alt="IMG" width="500" height="333" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3807.367133640118!2d-66.1695495600741!3d-17.394160123067746!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93e374a599c50d9b%3A0x5463fc450c6e33a8!2sSUPERMALL!5e0!3m2!1ses!2sbo!4v1663965039181!5m2!1ses!2sbo" width="600" height="450" allowfullscreen="allowfullscreen" loading="lazy"></iframe></p>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style="color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class="py-5 text-center"> <div class="container"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class="btn btn-info" href="../../../tienda_virtual/tienda">VER PRODUCTOS</a></div> </section> <div class="py-5 bg-light"> <div class="container"> <div class="row"> <div class="col-md-4"> <div class="card mb-4 box-shadow hov-img0"><img src="https://abelosh.com/tienda_virtual/Assets/images/s1.jpg" alt="Tienda Uno" width="100%" height="100%" /> <div class="card-body"> <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class="col-md-4"> <div class="card mb-4 box-shadow hov-img0"><img src="https://abelosh.com/tienda_virtual/Assets/images/s2.jpg" alt="Sucural dos" width="100%" height="100%" /> <div class="card-body"> <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class="col-md-4"> <div class="card mb-4 box-shadow hov-img0"><img src="https://abelosh.com/tienda_virtual/Assets/images/s3.jpg" alt="Sucural tres" width="100%" height="100%" /> <div class="card-body"> <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 2),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 1, '2417984565', 'Chaqueta Azul', '<p><strong style="margin: 0px; padding: 0px; color: #000000; font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Lorem Ipsum</strong><span style="color: #000000; font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></p>', 100.00, 50, NULL, '2021-08-20 03:12:14', 'chaqueta-azul', 0),
(2, 1, '456879878', 'Reloj', '<p><strong style="margin: 0px; padding: 0px; color: #000000; font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Lorem Ipsum</strong><span style="color: #000000; font-family: ''Open Sans'', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></p>', 200.00, 100, NULL, '2021-08-20 03:14:10', 'reloj', 0),
(3, 2, '4658798787', 'Bocina JBL Flip 5', '<p>Wireless Bluetooth streaming. 24 hours of playtime. IPX7 waterproof. JBL Connect plus. High-capacity battery. Connector type: 3.5 millimeter stereo. Power Source Type: Battery Powered.</p>', 300.00, 100, NULL, '2021-08-21 00:48:21', 'bocina-jbl-flip-5', 0),
(4, 2, '8582384', 'Mouse Logitech G403', '<p>Dise&ntilde;ado para la comodidad, el G403 est&aacute; contorneado con empu&ntilde;aduras de goma para un mayor control. El sensor HERO 25K permite realizar un seguimiento a nivel submicr&oacute;nico. LIGHTSYNC RGB de espectro completo y 6 botones programables te dan el control.</p>', 140.00, 20, NULL, '2022-09-23 14:37:50', 'mouse-logitech-g403', 0),
(5, 1, '1231111', 'Mouse G403', '<p>Dise&ntilde;ado para la comodidad, el G403 est&aacute; contorneado con empu&ntilde;aduras de goma para un mayor control. El sensor HERO 25K permite realizar un seguimiento a nivel submicr&oacute;nico. LIGHTSYNC RGB de espectro completo y 6 botones programables te dan el control.</p>', 500.00, 20, NULL, '2022-09-23 16:46:25', 'mouse-g403', 1),
(6, 1, '12344343', 'Teclado G413', '<p>Dise&ntilde;o para un desempe&ntilde;o avanzado con las funciones adecuadas. La compacta carcasa de aleaci&oacute;n de aluminio tiene, entre otras cosas, paso de USB, teclas con retroiluminaci&oacute;n e interruptores mec&aacute;nicos Romer-G.</p>', 700.00, 209, NULL, '2022-09-23 16:50:36', 'teclado-g413', 1),
(7, 1, '12312412421', 'Teclado G513', '<p>G513 es un teclado para juegos de alto desempe&ntilde;o con interruptores mec&aacute;nicos avanzados GX Brown Tactile.. El reposamanos extra&iacute;ble de espuma viscoel&aacute;stica y la construcci&oacute;n de aleaci&oacute;n de aluminio premium complementan las caracter&iacute;sticas de G513 para hacerlo el mejor de su clase.</p>', 900.00, 10, NULL, '2022-09-23 16:51:25', 'teclado-g513', 1),
(8, 1, '123123124', 'Headsets Gpro', '<p>Dise&ntilde;ados con y para profesionales. Con sonido envolvente 7.1 de pr&oacute;xima generaci&oacute;n, transductores PRO-G de 50 mm, micr&oacute;fono de varilla de 6 mm PRO y perfiles de ecualizaci&oacute;n con optimizaci&oacute;n profesional disponibles mediante el software para juegos G HUB.</p>', 650.00, 5, NULL, '2022-09-23 16:52:26', 'headsets-gpro', 1),
(9, 1, '123123444', 'Audifono G332', '<p>Los transductores de 50 mm y el micr&oacute;fono volteable para silenciar de 6 mm producen un gran sonido que permite sumergirse en el juego. Funcionan con PC, Mac, la mayor&iacute;a de consolas y dispositivos m&oacute;viles mediante cable con conector de 3,5 mm.</p>', 500.00, 20, NULL, '2022-09-24 18:07:49', 'audifono-g332', 1),
(10, 3, '123124124', 'Impresora L3250', '<p>Epson es la marca en la que puede confiar para todas sus necesidades de impresi&oacute;n. Con la tecnolog&iacute;a Heat-Free, EcoTank garantiza un rendimiento &oacute;ptimo, respaldado por hasta 2 a&ntilde;os de garant&iacute;a limitada con registro<sup>2</sup>.</p>', 1500.00, 20, NULL, '2022-09-24 18:40:19', 'impresora-l3250', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reembolso`
--

CREATE TABLE IF NOT EXISTS `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datosreembolso` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `observacion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(150) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor de tiendas', 1),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Vendedor', 'Operador de tienda', 1),
(5, 'Contador', 'Contador de la empresa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `suscripciones`
--

CREATE TABLE IF NOT EXISTS `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Roberto', 'toolsfordeveloper@gmail.com', '2021-08-20 04:05:10'),
(2, 'Victor', 'vicox30@gmail.com', '2022-09-23 14:32:56'),
(3, 'Nicolas Quintanilla Orellana', 'niclasx48@gmail.com', '2022-09-24 22:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `tipopago`
--

CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indexes for table `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indexes for table `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indexes for table `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indexes for table `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indexes for table `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indexes for table `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indexes for table `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indexes for table `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
