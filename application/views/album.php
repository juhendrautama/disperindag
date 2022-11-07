<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('tools/head'); ?>
</head>

< id="home">


<!--MENU ATAS -->
    <?php $this->load->view('tools/menu_atas'); ?>
<!--MENU ATAS-->


<div class="container">

       <h1 class="title">Gallery Foto</h1>
       <div class="row gallery">
        <?php foreach($tampil_semua_album->result()as $rs) {?> 
              <div class="col-sm-4 wowload fadeInUp">
                    <a href="Galleri/Foto/<?php echo $rs->id_album; ?>"  >
                       <img cclass="img-responsive" style="width:100%;height:200px;" src="img/album/<?php echo $rs->foto_album; ?>" />
                    </a>
                    <a href="Galleri/Foto/<?php echo $rs->id_album; ?>"  >
                    <p><?php echo $rs->nama_allbum; ?></p>
                    </a>
              </div>
        <?php } ?>   
       </div>
<hr>       
</div>

<?php $this->load->view('tools/footer') ?>




<script src="assets/jquery.js"></script>

<!-- wow script -->
<script src="assets/wow/wow.min.js"></script>

<!-- uniform -->
<script src="assets/uniform/js/jquery.uniform.js"></script>


<!-- boostrap -->
<script src="assets/bootstrap/js/bootstrap.js" type="text/javascript" ></script>

<!-- jquery mobile -->
<script src="assets/mobile/touchSwipe.min.js"></script>

<!-- jquery mobile -->
<script src="assets/respond/respond.js"></script>

<!-- gallery -->
<script src="assets/gallery/jquery.blueimp-gallery.min.js"></script>


<!-- custom script -->
<script src="assets/script.js"></script>










</body>
</html>





