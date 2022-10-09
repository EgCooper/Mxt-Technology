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

    <strong>SI HA REALIZADO LA COMPRA MEDIANTE DEPOSITO BANCARIO REALIZANDO EL DEPOSITO A LA CUENTA:<strong> 
    <body><p style="color:#235324"><b><?=CUENTA_BANCARIA?></b></p></body> 
    
    <br>
 
    <strong>SI HA REALIZADO EL PEDIDO MEDIANTE PAGO EN EFECTIVO</strong>
    <p>Confirme su pedido llamando a:<body>
    <p style="color:#235324"><strong><?=TELEMPRESA?><strong></p>
    </body> </p><br>
    
    
    <p>Puede ver el estado de su pedido en su cuenta en la seccion de <a href="<?=base_url();?>/pedidos" style="color:#235324"><b>PEDIDOS</b></a></p>

    <br>
  <a class="btn btn-success" href="<?= base_url(); ?>" role="button">Continuar</a>
</div>

<?php 
	footerTienda($data);
?>


  
  <br>
