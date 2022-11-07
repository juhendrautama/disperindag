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

       <center><h1 class="title"> Berita<hr></h1></center>

       
           <div class="row">
            <?php $no=1; foreach($tampil_semua_berita->result()as $rs){?> 
                <div class="col-sm-4">
                    <hr>
                    <h3 class="title"><a href="Berita/Selengkap_nya/<?php echo $rs->id_berita; ?>/<?php echo str_replace(' ','-',$rs->judul) ?>"><?php echo $rs->judul; ?></a></h3>
                    <hr>
                    <img src="img/berita/<?php echo $rs->img; ?>" alt="HTML5 Icon" width="350" height="250">
                    <p><?php echo $rs->isi_singkat; ?></p>
                    
                </div> 
            <?php } ?>   
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





