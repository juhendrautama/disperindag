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

       <h1 class="title">Gallery Video</h1>
       <div class="row gallery">
 <?php foreach($tampil_semua_vidio->result()as $rs) {?> 
              <div class="col-sm-4 wowload fadeInUp"><iframe src="https://www.youtube.com/embed/<?php echo $rs->link; ?>" width="100%" height="400"></iframe></a></div>
<?php } ?>

       </div>
 <hr>      
</div>


<?php $this->load->view('tools/footer'); ?>

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





