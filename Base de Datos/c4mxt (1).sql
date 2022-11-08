-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2022 at 11:32 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c4mxt`
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Dispositivos de Red', 'Routers Switchs Puntos de Acceso y mas', 'img_70bfb19fceb993c7c0259fdcb72590d8.jpg', '2021-08-20 03:04:04', 'dispositivos-de-red', 1),
(2, 'Perifericos Gaming', 'Lo mejor en perifericos gaming Logitech!', 'img_968db81eda472ff29f2610d6d4e68785.jpg', '2021-08-21 00:47:10', 'perifericos-gaming', 1),
(3, 'Impresoras', 'Impresoras Canon Epson Hp', 'img_4721bf1fd490bc2d6f05f42c3ba7c7b8.jpg', '2022-09-24 18:34:57', 'impresoras', 1),
(4, 'Tarjetas de Video', 'Contamos con variedad de modelos de tarjetas gráficas a los mejores precios', 'img_6b989de5557567d22f3b380fdda27f25.jpg', '2022-10-16 23:45:31', 'tarjetas-de-video', 1),
(5, 'Monitores', 'Mejores marcas de monitores ! Samsung Aoc Lg Redragon', 'img_2fe06dc5b6e716a8687a2ba4737ba486.jpg', '2022-10-16 23:52:16', 'monitores', 1),
(6, 'Tarjetas Madre', 'Mejores Motherboards para gaming', 'img_ac665c650335ec073dd1a2ee405e9b59.jpg', '2022-10-16 23:52:30', 'tarjetas-madre', 1),
(7, 'Procesadores', 'Mejores Cpu para todo tipo de ensamblado', 'img_3f0ede88b68360ff6c619f0d70b67891.jpg', '2022-10-16 23:52:49', 'procesadores', 1),
(8, 'Memorias Ram', 'Las mejores memorias con las frecuencias mas altas disponibles en el mercado!', 'img_429f485f9728d7960f0b04925f6ce587.jpg', '2022-10-16 23:53:21', 'memorias-ram', 1),
(9, 'Almacenamiento', 'Contamos con todo tipo de almacenamiento para tu ordenador', 'img_902387818fb3dc71613b191ac46b5691.jpg', '2022-10-16 23:53:43', 'almacenamiento', 1),
(10, 'Fuentes de poder', 'Manejamos las mejores certificaciones en fuentes de poder Corsair Evga y Redragon', 'img_5dc33a02d86c544a88dad73dc9d8e390.jpg', '2022-10-16 23:54:11', 'fuentes-de-poder', 1),
(11, 'Altavoces', 'Parlantes Logitech Creative y Xtech', 'img_96dc1d952f6132d46c95e5973840c875.jpg', '2022-10-22 14:32:01', 'altavoces', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(44, 40, 20, 210.00, 1),
(45, 41, 20, 210.00, 1),
(46, 42, 16, 1250.00, 1),
(49, 45, 17, 190.00, 1),
(51, 47, 22, 2000.00, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(16, 4, 'pro_90a1f90dacce1d2add78eb397c1e64c2.jpg'),
(23, 8, 'pro_fcd4a72a1ab1d9a8d1e9ac03d19f28a4.jpg'),
(24, 7, 'pro_cee6c327bf6d03c8cfa5f0df2f5869e7.jpg'),
(25, 6, 'pro_cbb714a387c2d5da6ce8ebd9827924e9.jpg'),
(26, 5, 'pro_fc1b534d9d7f0b3ae4ad2a0ba61b990a.jpg'),
(28, 9, 'pro_fd08a20f9de9caeb8e4d6c2f4bc4dcba.jpg'),
(30, 11, 'pro_6878b4d19941567c8ce8abe40f0128cd.jpg'),
(31, 12, 'pro_9bdc92358b1b1e12ae4b0b1a5b40372d.jpg'),
(32, 12, 'pro_24eb6892e5d75145de563d81f8de3ea0.jpg'),
(33, 12, 'pro_e1690aea051b79a38cb3158b538f60e0.jpg'),
(34, 13, 'pro_2f9ec27176ca8b0e9c9ae4551447031d.jpg'),
(35, 13, 'pro_7602d3aa10007ef8eded19fbd8519405.jpg'),
(36, 14, 'pro_20a469e48db33284f04b6b96a2279c28.jpg'),
(37, 14, 'pro_a7852a9d1868ba389268f4e28e55960b.jpg'),
(38, 15, 'pro_5c1042c62d27b24f1f4dd88e54c4a2c2.jpg'),
(39, 16, 'pro_835d69997839f167062ac294358281f1.jpg'),
(40, 16, 'pro_432fdaaa597a786a6e428a9cfb0896ac.jpg'),
(41, 17, 'pro_6d71708b6f491f17407af070cfe7c205.jpg'),
(42, 17, 'pro_b686df2ce4d209c939b2fbd64279a9c1.jpg'),
(43, 17, 'pro_54c7643060796ceb9901808d6732a75b.jpg'),
(44, 18, 'pro_9cf67861146d78295b53d0baff295178.jpg'),
(45, 19, 'pro_15adf9dc979c0d8b50a8bdf7230f201a.jpg'),
(46, 20, 'pro_b995e0f39d79f693fa961e045a6d9765.jpg'),
(48, 21, 'pro_ac6ae95449d52d74dba6b8ad437f088d.jpg'),
(49, 22, 'pro_79cb57fcdf4e40c92819c1196a5c9e37.jpg'),
(50, 22, 'pro_5ab719fa88159b34f8ca6441ecd019c3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(40, '123', NULL, NULL, 30, '2022-10-18 17:20:41', 12.00, 222.00, 3, 'temporal, cochabamba', 'Pendiente'),
(41, '654', NULL, NULL, 30, '2022-10-19 13:24:10', 12.00, 222.00, 3, 'dcsdcs, xddxdxd', 'Aprobado'),
(42, NULL, NULL, NULL, 30, '2022-10-19 13:34:35', 12.00, 1262.00, 2, 'adcc, dcscd', 'Pendiente'),
(45, NULL, NULL, NULL, 34, '2022-11-06 17:51:11', 12.00, 202.00, 2, 'tuft, dtdf', 'Pendiente'),
(47, NULL, NULL, NULL, 36, '2022-11-08 11:36:50', 12.00, 2012.00, 2, 'test, test', 'Pendiente');

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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

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
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(39, 4, 1, 1, 0, 0, 0),
(40, 4, 2, 0, 0, 0, 0),
(41, 4, 3, 1, 1, 1, 0),
(42, 4, 4, 1, 1, 1, 0),
(43, 4, 5, 1, 0, 1, 1),
(44, 4, 6, 0, 0, 0, 0),
(45, 4, 7, 0, 0, 0, 0),
(46, 4, 8, 0, 0, 0, 0),
(47, 4, 9, 0, 0, 0, 0),
(66, 2, 1, 1, 1, 1, 1),
(67, 2, 2, 0, 0, 0, 0),
(68, 2, 3, 1, 1, 1, 0),
(69, 2, 4, 1, 1, 1, 0),
(70, 2, 5, 1, 1, 1, 0),
(71, 2, 6, 1, 1, 1, 0),
(72, 2, 7, 0, 0, 0, 0),
(73, 2, 8, 0, 0, 0, 0),
(74, 2, 9, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(5, '9519261', 'Administrador', 'Pinto', 75906306, 'vicox30@gmail.com', 'b2f564edaccc0bf0c6c5ee47f702d232689c6e67770ee362b8a2b9330c90fed2', NULL, NULL, NULL, '', 1, '2022-09-23 14:34:08', 1),
(25, '80808080', 'Teresa', 'Cutili Quispe', 79328635, 'administrador@gmail.com', '15194f62d1f93661b0d5973b2fee8f67f1f685cbb79605b1b3a9d3b04820231f', NULL, NULL, NULL, NULL, 1, '2022-10-13 13:30:07', 1),
(27, '7547564', 'Joel Adrian', 'Limpias Rojas', 75960098, 'vendedor@gmail.com', '56976bf24998ca63e35fe4f1e2469b5751d1856003e8d16fef0aafef496ed044', NULL, NULL, NULL, NULL, 4, '2022-10-13 13:35:16', 1),
(28, '9898978', 'Fernando', 'Mamani', 79719262, 'supervisor@gmail.com', '02423ab2e61297b8262449c93e19be42fb5bbb275860a7d93b1ebdc7b6535ed7', NULL, NULL, NULL, NULL, 2, '2022-10-13 13:36:29', 1),
(30, '34134124', 'Ariel', 'Rodrigueez', 2845968594, 'cliente@gmail.com', '09a31a7001e261ab1e056182a71d3cf57f582ca9a29cff5eb83be0f0549730a9', NULL, NULL, NULL, NULL, 3, '2022-10-18 10:36:35', 1),
(34, NULL, 'Adriana', 'Solis', 69507865, 'adriana.sy77@gmail.com', '8959d033e386778b1ec7262b3a8f5cc7982f37e529884420139399e8940daec1', NULL, NULL, NULL, NULL, 3, '2022-11-06 17:47:14', 1),
(36, NULL, 'Prueba', 'Prieba', 8282282829, 'prueba@gmail.com', 'bc9aeb4b9e087b6f1d2570c0c7848ee06f3c814fdf2ce68d188b277261b653b5', NULL, NULL, NULL, NULL, 3, '2022-11-08 11:36:42', 1);

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
(1, 'Inicio', '<div class="p-t-80"> <h3 class="ltext-103 cl5">Nuestras marcas</h3> <p>&nbsp;</p> <img src="../../Assets/images/logitechlogo.png" alt="" width="250" height="64" /></div> <div class="p-t-80"><img src="../../Assets/images/tplink.png" alt="" width="250" height="95" /></div> <div class="p-t-80"><img src="../../Assets/images/redragon.png" alt="" width="250" height="66" /></div>', 'img_36ef65372f104f4744758cb79090e29b.jpg', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class="bg0 p-t-75 p-b-120"> <div class="container"> <div class="row p-b-148"> <div class="col-md-7 col-lg-8"> <div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md"> <h3 class="mtext-111 cl2 p-b-16"><span style="color: #70e000;">QUIENES SOMOS</span></h3> <p class="stext-113 cl6 p-b-26"><span style="color: #000000;">Empresa Comercial que distribuye soluciones en computacion, impresion y redes. Somos distribuidores regionales de Tp-link, Logitech, Encore, Notoll, AMP.</span></p> <h3 class="mtext-111 cl2 p-b-16"><span style="color: #70e000;">DESCRIPCION</span></h3> <p><span style="color: #000000;">Somos una empresa seria y competitiva a nivel local, en el &aacute;rea de soluciones inform&aacute;ticas, que van desde accesorios internos, perifericos, redes, y soluciones de impresion, ofrecemos productos de calidad a un precio competitivo; nos mantenemos a la vanguardia tecnol&oacute;gica, poniendo esta al alcance de nuestros clientes, brindamos una amplia gama de soluciones basadas en HARDWARE</span></p> <p><span style="color: #000000;">Representantes Locales de Logitech; TP-LINK</span></p> <h3 class="mtext-111 cl2 p-b-16"><span style="color: #70e000;">PRODUCTOS</span></h3> <p><span style="color: #000000;">Redes Cableadas, Redes Inalambricas, Impresoras &amp; Suministros, Laptop &amp; Accesorios, Seguridad &amp; Proteccion El&eacute;ctrica, Accesorios Internos - Externos PC, Usb Dispositivos, Perifericos, Cables &amp; adaptadores</span></p> </div> </div> <div class="col-11 col-md-5 col-lg-4 m-lr-auto"> <div class="how-bor1 "> <div class="hov-img0"><img src="https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg" alt="IMG" width="500" height="333" /></div> </div> </div> </div> <div class="row"> <div class="order-md-2 col-md-7 col-lg-8 p-b-30"> <div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md"> <h2 class="mtext-111 cl2 p-b-16"><span style="color: #70e000;">Nuestra Misi&oacute;n</span></h2> <p class="stext-113 cl6 p-b-26">Comercializar productos computacionales, satisfaciendo los requerimientos de los clientes, seg&uacute;n sus necesidades tecnol&oacute;gicas, apoyando al desarrollo de personas, peque&ntilde;as y medianas empresas, brindando la m&aacute;xima tecnolog&iacute;a en computaci&oacute;n y entregando una amplia gama de soluciones en hardware.</p> </div> </div> <div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30"> <div class="how-bor2"> <div class="hov-img0"><img src="https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg" alt="IMG" width="500" height="333" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<p>.</p>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 2),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>El tiempo de entrega de los productos se debe coordinar llamando al telefono de la empresa:<a class="linkFooter" href="tel:+(591) 4 4666063">+(591) 4 4666063</a>&nbsp;</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> La forma de envio es mediante delivery o si ustedes quiere puede dirigirse a una de las sucursales a simplemente recoger el pedido mostrando su comprobante en linea</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Para solicitar un reembolso de algun producto la tolerancia maxima es de 1 dia dependiendo del producto.</li> </ol> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style="color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Los pagos los aceptamos mediante trasnferencia bancaria o en efectivo personalmente al recoger el producto o al recibir el producto del delivery</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Mxt Technology!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class="py-5 text-center"> <div class="container" style="text-align: center;">&nbsp;</div> </section> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 1),
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(4, 2, '8582384', 'Mouse Logitech G403', '<p>Dise&ntilde;ado para la comodidad, el G403 est&aacute; contorneado con empu&ntilde;aduras de goma para un mayor control. El sensor HERO 25K permite realizar un seguimiento a nivel submicr&oacute;nico. LIGHTSYNC RGB de espectro completo y 6 botones programables te dan el control.</p>', 140.00, 20, NULL, '2022-09-23 14:37:50', 'mouse-logitech-g403', 0),
(5, 2, '1231111', 'Mouse G403', '<p>Dise&ntilde;ado para la comodidad, el G403 est&aacute; contorneado con empu&ntilde;aduras de goma para un mayor control. El sensor HERO 25K permite realizar un seguimiento a nivel submicr&oacute;nico. LIGHTSYNC RGB de espectro completo y 6 botones programables te dan el control.</p>', 500.00, 20, NULL, '2022-09-23 16:46:25', 'mouse-g403', 1),
(6, 2, '12344343', 'Teclado G413', '<p>Dise&ntilde;o para un desempe&ntilde;o avanzado con las funciones adecuadas. La compacta carcasa de aleaci&oacute;n de aluminio tiene, entre otras cosas, paso de USB, teclas con retroiluminaci&oacute;n e interruptores mec&aacute;nicos Romer-G.</p>', 700.00, 209, NULL, '2022-09-23 16:50:36', 'teclado-g413', 1),
(7, 2, '12312412421', 'Teclado G513', '<p>G513 es un teclado para juegos de alto desempe&ntilde;o con interruptores mec&aacute;nicos avanzados GX Brown Tactile.. El reposamanos extra&iacute;ble de espuma viscoel&aacute;stica y la construcci&oacute;n de aleaci&oacute;n de aluminio premium complementan las caracter&iacute;sticas de G513 para hacerlo el mejor de su clase.</p>', 900.00, 10, NULL, '2022-09-23 16:51:25', 'teclado-g513', 1),
(8, 2, '123123124', 'Headsets Gpro', '<p>Dise&ntilde;ados con y para profesionales. Con sonido envolvente 7.1 de pr&oacute;xima generaci&oacute;n, transductores PRO-G de 50 mm, micr&oacute;fono de varilla de 6 mm PRO y perfiles de ecualizaci&oacute;n con optimizaci&oacute;n profesional disponibles mediante el software para juegos G HUB.</p>', 650.00, 5, NULL, '2022-09-23 16:52:26', 'headsets-gpro', 1),
(9, 2, '123123444', 'Audifono G332', '<p>Los transductores de 50 mm y el micr&oacute;fono volteable para silenciar de 6 mm producen un gran sonido que permite sumergirse en el juego. Funcionan con PC, Mac, la mayor&iacute;a de consolas y dispositivos m&oacute;viles mediante cable con conector de 3,5 mm.</p>', 500.00, 20, NULL, '2022-09-24 18:07:49', 'audifono-g332', 1),
(11, 1, '4545454321', 'Deco M9 Plus', '', 890.00, 10, NULL, '2022-10-14 17:26:17', 'deco-m9-plus', 1),
(12, 4, '7586948475939', '3060Ti', '<p>Las GeForce RTX&reg; 3060 Ti y RTX 3060 te permiten enfrentarte a los &uacute;ltimos juegos utilizando la potencia de la arquitectura RTX de 2&ordf; generaci&oacute;n de Ampere-NVIDIA. Obt&eacute;n un rendimiento incre&iacute;ble con los n&uacute;cleos RT dedicados de 2&ordf; generaci&oacute;n y los n&uacute;cleos tensoriales de 3&ordf; generaci&oacute;n, multiprocesadores en streaming y memoria G6 de alta velocidad.</p>', 4600.00, 1, NULL, '2022-10-16 23:57:40', '3060ti', 1),
(13, 6, '1230192471', 'B560 ASUS ROG', '<h2 class="OverViewBanner__overBannerTextSub__1xRYt">Tarjeta madre Intel<sup>&reg;</sup>&nbsp;B560 LGA 1200 ATX con PCIe 4.0, 8 + 2 fases de poder en equipo, AI Noise Cancelation bidireccional, WiFi 6 (802.11ax), Realtek 2.5 Gb Ethernet, dos puertos M.2 con disipadores, USB 3.2 Gen 2x2 USB Type-C<sup>&reg;</sup>, SATA e iluminaci&oacute;n y Aura Sync RGB</h2>', 1300.00, 5, NULL, '2022-10-17 00:01:23', 'b560-asus-rog', 1),
(14, 8, '1231231414', 'Corsair 8gb Vengeance', '<p>La memoria DDR4 CORSAIR VENGEANCE RGB RS realza la est&eacute;tica de su PC gracias a su iluminaci&oacute;n RGB din&aacute;mica y direccionable individualmente, a la vez que ofrece un rendimiento excepcional optimizado tanto para placas Intel como AMD.</p>', 560.00, 20, NULL, '2022-10-17 00:03:02', 'corsair-8gb-vengeance', 1),
(15, 10, '123125515', 'Fuente 500W Seasonic', '<p>La serie A12 est&aacute; disponible en el factor de forma ATX est&aacute;ndar y en potencias que son las m&aacute;s comunes para un sistema de PC. La serie Seasonic A12 alcanza el est&aacute;ndar 80 PLUS&reg; 230V EU de proporcionar al menos 82%, 85% y 82% de eficiencia en el uso de energ&iacute;a al 20%, 50% y 100% de cargas operativas, respectivamente.</p>', 380.00, 10, NULL, '2022-10-17 00:04:16', 'fuente-500w-seasonic', 1),
(16, 3, '1231243145', 'L3250', '<p>La Impresora multifuncional 3 en 1 Epson EcoTank L3250 ofrece a las familias, estudiantes y profesionales un costo de impresi&oacute;n ultra bajo, que te permite imprimir hasta&nbsp; 4.500 p&aacute;ginas en negro o 7.500 p&aacute;ginas a color<sup>5</sup>&nbsp; con cada juego de botellas de repuesto. La EcoTank L3250 ofrece total confiabilidad gracias a la tecnolog&iacute;a Heat-Free de Epson, adem&aacute;s de una experiencia de recarga f&aacute;cil, limpia y sin errores con la tecnolog&iacute;a EcoFit<sup>TM</sup>. Dise&ntilde;ado para integrarse en su estilo de vida, est&aacute; completamente conectado con WiFi, WiFi Direct&reg; y capacidades de impresi&oacute;n m&oacute;vil a trav&eacute;s de la nueva e intuitiva aplicaci&oacute;n Epson Smart Panel y cuenta con un dise&ntilde;o de tanque frontal s&uacute;per compacto que ocupa poco espacio y permite verificar f&aacute;cilmente los niveles de tinta. Con una garant&iacute;a limitada y extendida hasta de 2 a&ntilde;os<sup>4</sup>, Epson te respalda totalmente para que pueda imprimir sin cartuchos y sin preocupaciones.</p>', 1250.00, 20, NULL, '2022-10-17 00:08:15', 'l3250', 1),
(17, 1, '1231414122', '940N', '<ul> <li>Velocidad inal&aacute;mbrica de 450 Mbps ideal para aplicaciones sensibles a la interrupci&oacute;n como la transmisi&oacute;n de video HD</li> <li>Tres antenas aumentan la robustez y la estabilidad inal&aacute;mbricas</li> <li>Admite 3 modos: modos de enrutador, extensor de rango y punto de acceso</li> <li>F&aacute;cil encriptaci&oacute;n de seguridad inal&aacute;mbrica con solo presionar el bot&oacute;n WPS</li> <li>Control de ancho de banda: asigna sus dispositivos preferidos con m&aacute;s ancho de banda</li> </ul>', 190.00, 20, NULL, '2022-10-17 00:10:11', '940n', 1),
(18, 5, '123154115151', 'Samsung Led Curvo 24P', '<p>Disfruta de una experiencia totalmente inmersiva con el nuevo monitor curvo de Samsung. Su curvatura 1800R (radio de curvatura de 1800 mm) te ofrece un mayor campo de visi&oacute;n, mejorando la percepci&oacute;n de profundidad y haciendo que te sumerjas a&uacute;n m&aacute;s en tu contenido multimedia.</p>', 1500.00, 5, NULL, '2022-10-17 00:11:25', 'samsung-led-curvo-24p', 1),
(19, 7, '1231254151', 'i5-12600k', '<ul class="a-unordered-list a-vertical a-spacing-mini"> <li><span class="a-list-item">El procesador Intel Core i5 Deca-core (10 N&uacute;cleos) de 3.70 GHz ofrece una arquitectura de hiperenhebrado que ofrece un alto desempe&ntilde;o para aplicaciones exigentes con gr&aacute;ficos integrados mejorados y turbo impulso</span></li> <li><span class="a-list-item">El enchufe LGA-1700 permite colocar el procesador en el PCB sin soldar</span></li> <li><span class="a-list-item">16 MB de cach&eacute; L3 recupera r&aacute;pidamente los datos m&aacute;s utilizados disponibles para mejorar el desempe&ntilde;o del sistema</span></li> <li><span class="a-list-item">La arquitectura Intel 7 permite un mejor desempe&ntilde;o por vatio y la microarquitectura hace que sea eficiente en la energ&iacute;a</span></li> <li><span class="a-list-item">Controlador de gr&aacute;ficos Intel UHD integrado para una gran calidad gr&aacute;fica y visual</span></li> </ul>', 2000.00, 5, NULL, '2022-10-17 00:14:21', 'i5-12600k', 1),
(20, 9, '12315151513', 'Crucial BX500 240gb', '<ul class="a-unordered-list a-vertical a-spacing-mini"> <li><span class="a-list-item">Arranque m&aacute;s r&aacute;pido. Carga archivos m&aacute;s r&aacute;pido. Mejora la capacidad de respuesta general del sistema</span></li> <li><span class="a-list-item">300% m&aacute;s r&aacute;pido que un disco duro t&iacute;pico</span></li> <li><span class="a-list-item">Mejora la duraci&oacute;n de la bater&iacute;a porque es 45 veces m&aacute;s eficiente que un disco duro t&iacute;pico</span></li> <li><span class="a-list-item">Micron 3D NAND: avanzando en la tecnolog&iacute;a de memoria y almacenamiento del mundo durante 40 a&ntilde;os</span></li> <li><span class="a-list-item">Crucial Garant&iacute;a limitada de 1 a&ntilde;os</span></li> </ul>', 210.00, 20, NULL, '2022-10-17 00:15:22', 'crucial-bx500-240gb', 1),
(21, 7, '12312412233', 'ryzen 5 2600', '<p>asdjasdajdhas</p>', 1800.00, 5, NULL, '2022-10-19 13:32:34', 'ryzen-5-2600', 1),
(22, 11, '509920600823505', 'G560 Logitech', '<p>Sistema de bocinas 2.1 con RGB LIGHTSYNC de espectro completo que reacciona a la acci&oacute;n y el audio del juego en curso. El sonido envolvente posicional DTS:X Ultra activa el explosivo subwoofer con salida inferior y dos bocinas sat&eacute;lite con transductores de &aacute;ngulo ancho.</p>', 2000.00, 5, NULL, '2022-10-22 14:36:21', 'g560-logitech', 1);

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
(4, 'Vendedor', 'Operador de tienda', 1);

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
(2, 'Efectivo', 1),
(3, 'Deposito Bancario', 1);

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
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
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
