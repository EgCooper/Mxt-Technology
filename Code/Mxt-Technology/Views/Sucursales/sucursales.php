<?php 
headerTienda($data);
$banner = $data['page']['portada'];
$idpagina = $data['page']['idpost'];
 ?>
<script>
  document.querySelector('header').classList.add('header-v4');
</script>

 <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url(<?= $banner ?>);">
  <h2 class="ltext-105 cl0 txt-center">
    <?= $data['page']['titulo'] ?>
  </h2>
</section>
 <section class="py-5 text-center">
    <div class="container">
      <p>Visitanos y obten los mejores productos del mercado al mejor precio!</p>
      <a href="<?= base_url();?>/tienda" class="btn btn-success">VER PRODUCTOS</a>
    </div>
</section>
<div class="py-5 bg-light">
  <div class="container">
    <div class="row">

      <div class="col-md-4">
        <div class="card mb-4 box-shadow">
          <img src="<?= media() ?>/images/supermall.jpg" alt="Sucural uno">
          <div class="card-body">
        
            <p>Dirección: SuperMall Local 21 Pb, Ciudad Cochabamba, Bolivia <br>
              Teléfono:+(591) 4 4666063 <br>
              Correo: mxtmaxtechnology@gmail.com
            </p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card mb-4 box-shadow">
          <img src="<?= media() ?>/images/audi.jpg" alt="Sucural uno">
          <div class="card-body">
            <p>Dirección: Esteban Arze Totora Quillacollo Ciudad Cochabmaba, Bolivia <br>
              Teléfono:+(591) 4 4666063 <br>
              Correo: mxtmaxtechnology@gmail.com
            </p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card mb-4 box-shadow">
          <img src="<?= media() ?>/images/supermall.jpg" alt="Sucural uno">
          <div class="card-body">
            <p>Dirección: SuperMall Local 21 Pb, Ciudad Cochabamba, Bolivia <br>
              Teléfono:+(591) 4 4666063 <br>
              Correo: mxtmaxtechnology@gmail.com
            </p>
          </div>
        </div>
      </div>
     

    </div>
  </div>
</div> 

<?php
  if(viewPage($idpagina)){
    echo $data['page']['contenido'];
  }else{
  ?>
<div>
  <div class="container-fluid py-5 text-center" >
    <img src="<?= media() ?>/images/construction.png" alt="En construcción">
    <h3>Estamos trabajando para usted.</h3>
  </div>
</div>
<?php 
  }
  footerTienda($data);
?>