-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2022 at 12:06 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Dispositivos de Red', 'Routers Switchs Puntos de Acceso y mas', 'img_70bfb19fceb993c7c0259fdcb72590d8.jpg', '2021-08-20 03:04:04', 'dispositivos-de-red', 1),
(2, 'Perifericos Gaming', 'Lo mejor en perifericos gaming Logitech!', 'img_968db81eda472ff29f2610d6d4e68785.jpg', '2021-08-21 00:47:10', 'perifericos-gaming', 1),
(3, 'Impresoras', 'Impresoras Canon Epson Hp', 'img_4721bf1fd490bc2d6f05f42c3ba7c7b8.jpg', '2022-09-24 18:34:57', 'impresoras', 1);

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

--
-- Dumping data for table `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(2, 'Victor', 'vicox30@gmail.com', 'hola', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42', '2022-09-23 14:44:19'),
(3, 'Victor', 'vicox30@gmail.com', 'Hola', '181.115.167.23', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.37', '2022-10-10 11:42:09');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(27, 23, 10, 1500.00, 1),
(28, 24, 10, 1500.00, 1),
(29, 25, 10, 1500.00, 1),
(30, 26, 9, 500.00, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(23, '758475647', NULL, NULL, 21, '2022-10-09 00:21:54', 12.00, 1512.00, 2, 'Temporal Alipio Valencia Vega, Cochabamba Cercado', 'Completo'),
(24, NULL, NULL, NULL, 21, '2022-10-09 17:01:58', 12.00, 1512.00, 3, 'Temporal Alipio Valencia Vega - Faustino Suarez, Cochabamba/Cercado', 'Pendiente'),
(25, NULL, NULL, NULL, 5, '2022-10-09 17:03:26', 12.00, 1512.00, 2, 'temporal, cocha', 'Pendiente'),
(26, NULL, NULL, NULL, 23, '2022-10-09 17:36:53', 12.00, 512.00, 3, 'temporal, cocha', 'Pendiente');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(5, '9519261', 'Administrador', 'Pinto', 75906306, 'vicox30@gmail.com', 'b2f564edaccc0bf0c6c5ee47f702d232689c6e67770ee362b8a2b9330c90fed2', NULL, NULL, NULL, '', 1, '2022-09-23 14:34:08', 1),
(20, '0909897', 'Juan', 'Torrico', 76474636, 'supervisor@gmail.com', '02423ab2e61297b8262449c93e19be42fb5bbb275860a7d93b1ebdc7b6535ed7', NULL, NULL, NULL, NULL, 2, '2022-10-09 00:14:01', 1),
(21, '7574632', 'Nicolas', 'Lopez', 76485746, 'cliente@gmail.com', '09a31a7001e261ab1e056182a71d3cf57f582ca9a29cff5eb83be0f0549730a9', NULL, NULL, NULL, NULL, 3, '2022-10-09 00:14:26', 1),
(22, '7564764', 'Ariel', 'Morales', 65463536, 'vendedor@gmail.com', '56976bf24998ca63e35fe4f1e2469b5751d1856003e8d16fef0aafef496ed044', NULL, NULL, NULL, NULL, 4, '2022-10-09 00:21:02', 1),
(23, NULL, 'Brenda', 'Mora', 78344556, 'brenda@gmail.com', '7de73a3cc39e668c1d2bd5dbdcb415f23cbb9dc08946f79094a0f769276a0128', NULL, NULL, NULL, NULL, 3, '2022-10-09 17:36:32', 1);

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
(5, 'Contacto', '<p>.</p>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(4, 2, '8582384', 'Mouse Logitech G403', '<p>Dise&ntilde;ado para la comodidad, el G403 est&aacute; contorneado con empu&ntilde;aduras de goma para un mayor control. El sensor HERO 25K permite realizar un seguimiento a nivel submicr&oacute;nico. LIGHTSYNC RGB de espectro completo y 6 botones programables te dan el control.</p>', 140.00, 20, NULL, '2022-09-23 14:37:50', 'mouse-logitech-g403', 0),
(5, 1, '1231111', 'Mouse G403', '<p>Dise&ntilde;ado para la comodidad, el G403 est&aacute; contorneado con empu&ntilde;aduras de goma para un mayor control. El sensor HERO 25K permite realizar un seguimiento a nivel submicr&oacute;nico. LIGHTSYNC RGB de espectro completo y 6 botones programables te dan el control.</p>', 500.00, 20, NULL, '2022-09-23 16:46:25', 'mouse-g403', 1),
(6, 1, '12344343', 'Teclado G413', '<p>Dise&ntilde;o para un desempe&ntilde;o avanzado con las funciones adecuadas. La compacta carcasa de aleaci&oacute;n de aluminio tiene, entre otras cosas, paso de USB, teclas con retroiluminaci&oacute;n e interruptores mec&aacute;nicos Romer-G.</p>', 700.00, 209, NULL, '2022-09-23 16:50:36', 'teclado-g413', 1),
(7, 1, '12312412421', 'Teclado G513', '<p>G513 es un teclado para juegos de alto desempe&ntilde;o con interruptores mec&aacute;nicos avanzados GX Brown Tactile.. El reposamanos extra&iacute;ble de espuma viscoel&aacute;stica y la construcci&oacute;n de aleaci&oacute;n de aluminio premium complementan las caracter&iacute;sticas de G513 para hacerlo el mejor de su clase.</p>', 900.00, 10, NULL, '2022-09-23 16:51:25', 'teclado-g513', 1),
(8, 1, '123123124', 'Headsets Gpro', '<p>Dise&ntilde;ados con y para profesionales. Con sonido envolvente 7.1 de pr&oacute;xima generaci&oacute;n, transductores PRO-G de 50 mm, micr&oacute;fono de varilla de 6 mm PRO y perfiles de ecualizaci&oacute;n con optimizaci&oacute;n profesional disponibles mediante el software para juegos G HUB.</p>', 650.00, 5, NULL, '2022-09-23 16:52:26', 'headsets-gpro', 1),
(9, 1, '123123444', 'Audifono G332', '<p>Los transductores de 50 mm y el micr&oacute;fono volteable para silenciar de 6 mm producen un gran sonido que permite sumergirse en el juego. Funcionan con PC, Mac, la mayor&iacute;a de consolas y dispositivos m&oacute;viles mediante cable con conector de 3,5 mm.</p>', 500.00, 20, NULL, '2022-09-24 18:07:49', 'audifono-g332', 1),
(10, 3, '123124124', 'Impresora L3250', '<p>Epson es la marca en la que puede confiar para todas sus necesidades de impresi&oacute;n. Con la tecnolog&iacute;a Heat-Free, EcoTank garantiza un rendimiento &oacute;ptimo, respaldado por hasta 2 a&ntilde;os de garant&iacute;a limitada con registro<sup>2</sup>.</p>', 1500.00, 20, NULL, '2022-09-24 18:40:19', 'impresora-l3250', 0);

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
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
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
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
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
