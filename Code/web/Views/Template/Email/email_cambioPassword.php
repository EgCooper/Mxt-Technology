<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Recuperar cuenta</title>
	<style type="text/css">
		/*PARRAFO TEXTO CORREO */
		p{
			font-family: arial;
			letter-spacing: 1px;
			color: #000;
			font-size: 15px;
		}
		a{
			color: red;
			font-family: arial;
			text-decoration: none;
			text-align: center;
			display: block;
			font-size: 18px;
		}
		/*HOLA USUARIO */
		.x_sgwrap p{
			font-size: 20px;
		    line-height: 32px;
		    color: #000;
		    font-family: arial;
		    text-align: center;
		}
		.x_title_gray {
		    color: red;
		    padding: 5px 0;
		    font-size: 15px;
			border-top: 1px solid #CCC;
		}
		.x_title_blue {
		    padding: 08px 0;
		    line-height: 25px;
		    text-transform: uppercase;
			border-bottom: 1px solid #CCC;
		}
		.x_title_blue h1{
			color: #70e000;
			font-size: 25px;
			font-family: 'arial';
		}
		.x_bluetext {
		    color: #70e000 !important;
		}
		.x_title_gray a{
			text-align: center;
			padding: 10px;
			margin: auto;
			color: #000;
		}
		.x_text_white a{
			color: #70e000;
		}
		.x_button_link {
		    width: 100%;
			max-width: 470px;
		    height: 40px;
		    display: block;
		    color: #fff;
		    margin: 20px auto;
		    line-height: 40px;
		    text-transform: uppercase;
		    font-family: Arial Black,Arial Bold,Gadget,sans-serif;
		}
		.x_link_blue {
		    background-color: #000;
		}
		.x_textwhite {
		    background-color: rgb(50, 67, 128);
		    color: #fff;
		    padding: 10px;
		    font-size: 15px;
		    line-height: 20px;
		}
		strong{
			color: #70e000;
			
		}
		span{
			color: #70e000;
		}

	</style>
</head>
<body>
	<table align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff" style="text-align:center;">
		<tbody>
			<tr>
				<td>
					<div class="x_sgwrap x_title_blue">
						<h1><?= NOMBRE_EMPESA ?></h1>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="x_sgwrap">
						<p>Hola <?= $data['nombreUsuario']; ?></p>
					</div>
					<p>Solicitud de acceso para el usuario: <strong><?= $data['email'];  ?><strong></p>
					<p>Has solicitado los datos de tu usuario, accede al enlace de abajo para confirmar tu contraseña. </p>
					<p class="x_text_white">
					<a href="<?= $data['url_recovery']; ?>" target="_blank" class="x_button_link x_link_blue">Confirmar datos</a>
					</p>
					<br>
					<p>Si no te funciona el botón puedes copiar y pegar la siguiente dirección en tu navegador.</p>
					<span><?= $data['url_recovery']; ?></span>
					<p class="x_title_gray"><a href="<?= BASE_URL; ?>" target="_blanck"><?= WEB_EMPRESA; ?></a></p>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>