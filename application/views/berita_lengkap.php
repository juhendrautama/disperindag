<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('tools/head'); ?>
</head>

<body id="home">


<!--MENU ATAS -->
    <?php $this->load->view('tools/menu_atas'); ?>
<!--MENU ATAS-->


<div class="container">

         <div class="row">

          <div class="col-md-12">
        
          <hr>
           <div class="panel panel-default">
                    <div class="panel-heading">
                      <b  style="font-size:18px;"><?php echo $tampil_berita_id->judul; ?></b>
                      <br>

                      Penulis : <?php echo $tampil_berita_id->penulis; ?> || Tgl : <?php echo $tampil_berita_id->tgl; ?>
                      <hr>
                    </div>
                    <div class="panel-body">
                          <img src="img/berita/<?php echo $tampil_berita_id->img; ?>" class="img-responsive" style="width:100% ; height:450%;">
                          <hr>
                          <?php echo $tampil_berita_id->isi_lengkap; ?>
                    </div>
            </div>
        </div>  
      </div>
          
        


 </div>

<hr>

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





