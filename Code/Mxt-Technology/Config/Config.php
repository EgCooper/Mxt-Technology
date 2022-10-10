<?php 
	//const BASE_URL = "http://localhost/Mxt-Technology";
	const BASE_URL = "https://mxt-technology.pinguinos.org";

	//Zona horaria
	date_default_timezone_set('America/La_Paz');

	//Datos de conexión a Base de Datos Host
	const DB_HOST = "localhost";
	const DB_NAME = "c4mxt";
	const DB_USER = "c4victor";
	const DB_PASSWORD = "Cooper75906306";
	const DB_CHARSET = "utf8";

	//Datos de conexión a Base de Datos Local
	//const DB_HOST = "localhost";
	//const DB_NAME = "c4cooper";
	//const DB_USER = "root";
	//const DB_PASSWORD = "";
	//const DB_CHARSET = "utf8";

	//Para envío de correo
	const ENVIRONMENT = 1; // Local: 0, Produccón: 1;

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "Bs";
	const CURRENCY = "Bs";


	//CUENTA BANCARIA DE LA EMPRESA
	const CUENTA_BANCARIA ="75906306";

	//Api PayPal
	//SANDBOX PAYPAL
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "";
	const SECRET = "";
	
	//LIVE PAYPAL
	//const URLPAYPAL = "https://api-m.paypal.com";
	//const IDCLIENTE = "";
	//const SECRET = "";

	//Datos envio de correo
	const NOMBRE_REMITENTE = "Mxt-Technology";
	//Ingresar el email del remitente smtp host o cuenta personal si sera local
	const EMAIL_REMITENTE = "mxtmaxtechnology@gmail.com";
	const NOMBRE_EMPESA = "Mxt-Technology";
	const WEB_EMPRESA = "https://mxt-technology.pinguinos.org/";

	const DESCRIPCION = "La mejor tienda en productos informaticos.";
	const SHAREDHASH = "Mxt Technology";

	//Datos Empresa
	const DIRECCION = "SuperMall Local 21 Pb, Ciudad Cochabamba, Bolivia";
	const TELEMPRESA = "+(591) 4 4666063";
	const WHATSAPP = "+591 79328635";
	const EMAIL_EMPRESA = "mxtmaxtechnology@gmail.com";
	const EMAIL_PEDIDOS = "mxtmaxtechnology@gmail.com"; 
	const EMAIL_SUSCRIPCION = "mxtmaxtechnology@gmail.com";
	const EMAIL_CONTACTO = "mxtmaxtechnology@gmail.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";
	const CAT_FOOTER = "1,2,3,4,5";

	//Datos para Encriptar / Desencriptar
	const KEY = 'abelosh';
	const METHODENCRIPT = "AES-128-ECB";

	//Envío
	const COSTOENVIO = 12;

	//Módulos
	const MDASHBOARD = 1;
	const MUSUARIOS = 2;
	const MCLIENTES = 3;
	const MPRODUCTOS = 4;
	const MPEDIDOS = 5;
	const MCATEGORIAS = 6;
	const MSUSCRIPTORES = 7;
	const MDCONTACTOS = 8;
	const MDPAGINAS = 9;

	//Páginas
	const PINICIO = 1;
	const PTIENDA = 2;
	const PCARRITO = 3;
	const PNOSOTROS = 4;
	const PCONTACTO = 5;
	const PPREGUNTAS = 6;
	const PTERMINOS = 7;
	const PSUCURSALES = 8;
	const PERROR = 9;

	//Roles
	const RADMINISTRADOR = 1;
	const RSUPERVISOR = 2;
	const RCLIENTES = 3;

	const STATUS = array('Completo','Aprobado','Cancelado','Reembolsado','Pendiente','Entregado');

	//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;

	//REDES SOCIALES
	const FACEBOOK = "https://www.facebook.com/MaxTechBolivia";
	const INSTAGRAM = "https://www.instagram.com/victorpmora/";
	

 ?>