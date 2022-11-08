<?php 
headerTienda($data);
 ?>
<br><br><br>
<div class="jumbotron text-center">
  <h1 class="display-4">¡Gracias por tu compra!</h1>
  <p class="lead">Tu pedido fue realizado!.</p>
  <p>No. Orden: <strong> <?= $data['orden']; ?> </strong></p>
  	<?php 
  		if(!empty($data['transaccion'])){
    ?>
    <p>Transacción: <strong> <?= $data['transaccion']; ?> </strong></p>
   <?php } ?>
    <hr class="my-4">

    <strong>SI HA REALIZADO LA COMPRA MEDIANTE DEPOSITO BANCARIO REALICE EL DEPOSTIO A LA SIGUIENTE CUENTA BANCARIA:<strong> 
    <body><p style="color:#70e000"><b><?=CUENTA_BANCARIA?></b></p>MERCANTIL SANTA CRUZ<br></body> 
    
    <br>
 
    <strong>SI HA REALIZADO EL PEDIDO MEDIANTE PAGO EN EFECTIVO</strong>
    <p>Confirme su pedido llamando a:<body>
    <p style="color:#70e000"><strong><?=TELEMPRESA?><strong></p>
    </body> </p><br>
    
    
    <p>Puede ver el estado de su pedido en su cuenta en la seccion de <a href="<?=base_url();?>/pedidos" style="color:#70e000"><b>PEDIDOS</b></a></p><br>
    <p>POR FAVOR LLENE SUS DATOS PRESIONANDO EL BOTON DE CONTINUAR</p>

    <br>
  <a class="btn btn-success" href="<?= base_url(); ?>/usuarios/perfil" role="button">Continuar</a>
      
</div>

<?php 
	footerTienda($data);
?>


  
  <br>
