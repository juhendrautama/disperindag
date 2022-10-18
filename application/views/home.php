<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('tools/head'); ?>
</head>

<body id="home">


<!--MENU ATAS -->
    <?php $this->load->view('tools/menu_atas'); ?>
<!--MENU ATAS-->



<!-- banner -->
<div class="banner">         
    
    <div class="welcome-message">
        <div class="wrap-info">
                       
            </div>
           
        </div>
    </div>
</div>
<!-- banner-->
<!-- / banner --><!--about-->
    <section id="about" class="section-padding">
        <div class="container">
            <div class="row"><br>
                <div class="col-md-12 text-center marb-35"><p>
                    <h3 class="header-h"> SELAMAT DATANG DI WEBSITE RESMI KAMI <br>DISPERINDAG PROVINSI JAMBI</h3>
                    
    <hr>


<!--[if !supportLineBreakNewLine]-->
<!--[endif]--></span>
</p>

                    </p>
                </div>

<!-- reservation-information -->
<div id="information" class="spacer reserve-info ">

<div class="row">
<?php  foreach($tampil_vidio_level_utama->result()as $rs){?>    
<div class="col-sm-7 col-md-8">

 <marquee behavior="slide" bgcolor="white">
    <img src="images/photos/31762.jpg"  class="img-responsive" alt="slide">
    </marquee>

</div>
<?php } ?>

<div class="col-sm-3"><br>
    <form role="form" class="wowload fadeInRight">
        <div class="form-group">
           <center>
            <img src="images/penghubung1.jpg" width="55%" height="250">
            <div class="featured-author-footer"><br>

  Ir. xxxxxxxx, MMA 
</div>
KEPALA DINAS <br>
DISPERINDAG PROVINSI JAMBI

 <div class="featured-author-footer">


</div>
</div>
</div>



<div id="information" class="spacer reserve-info ">
<div class="">
<div class="row">
<div class="col-sm-7 col-md-8">
<hr>    
<h3>BERITA</h3>
<hr>

<div class="row">
    <div class="col-md-12">
                                  <div class="row">
                                <?php foreach($tampil_berita_terbaru_4->result()as $rs){?>
                                      <div class="col-md-12">
                                       <!--   -->
                                      <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                  <img src="img/berita/<?php echo $rs->img ?>" style="width:100%; height:80%;" class="img-responsive" alt="...">
                                                </div>
                                                <div class="col-md-8">
                                                  <a href="Berita/Selengkap_nya/<?php echo $rs->id_berita; ?>/<?php echo str_replace(' ','-',$rs->judul) ?>">
                                                    <p style="font-size:15px;"><?php echo $rs->judul;  ?></p>
                                                    </a>
                                                    <p style="font-size:10px;">Penulis:<?php echo $rs->penulis; ?> || TGl:<?php echo $rs->tgl; ?> </p>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                        
                                      </div>
                              <?php } ?>
    </div>
</div>

</div>
</div>


<div class="col-sm-5 col-md-4">

          
        
        <div class="form-group">
            <div class="row">
            <div class="col-xs-4">
              <div class="title-box">
                    
                    <a href="index.php"><img src="images/renstra.png" width="300" height="150">
                    </div>
                    <div class="video">
                    <audio controls><source src="https://egov.riau.go.id/;stream.mp3" type="audio/mp3">Your browser does not support the audio element.</audio>
                 </div>

                  <a href="index.php"><img src="images/renja.png" width="300" height="150"><p>
                   

            </div>
            <div class="col-xs-4">
             
            </div>
            <div class="col-xs-4">
             
            </div>
          </div>
        </div>
        <div class="form-group">     
    </form>  


<div class="col-sm-10">
    <div class="col-ctr">
        <div class="row-heading"><br>
        <h4><span class="title">GPR WIDGET</span>
    <span class="border"></span>
</div>
<div class="info-list">
    <div class="info-list-ctn">
        
    </div>
    <div class="info-list-footer">
            <script type="text/javascript" src="https://widget.kominfo.go.id/gpr-widget-kominfo.min.js"></script>

    <div id="gpr-kominfo-widget-container"></div>
    </div>
</div>
</div>
</div>
</div>
</div>  
</div>
</div>

<!-- reservation-information -->
<div id="galleri"><h2>Gallery Kegiatan </h2></div></center>
<!-- services -->
<div class=" services wowload fadeInUp" id="galleri">

    <div class="row">
<?php foreach($tampil_semua_album_3->result()as $rs){?>
        <div class="col-sm-4">    
                <div class="item "><img src="img/album/<?php echo $rs->foto_album; ?>" class="img-responsive" alt="slide"></div>

              
            <div class="caption"><?php echo $rs->nama_allbum; ?>
            <a href="Galleri/Foto_depan/<?php echo $rs->id_album; ?>" class="pull-right" >
                Lihat
            </a>
            </div>
        </div>
<?php } ?>  
    </div>
</div>

<div class="container" id="row-4">

    <div class="row galery-row">

        <div class="row-heading album-foto-terbaru"><br>

    <h3><center><div class="title"><hr>GALERI VIDEO TERBARU <h3></div>

    <div class="border hidden-xs hidden-sm"></div>

</div>

<?php foreach($tampil_vidio_3->result()as $rs){?>
<div class="col-sm-4">

    <div class="info-list" style="margin-top: 10px;">

            <iframe src="https://www.youtube.com/embed/<?php echo $rs->link; ?>" width="100%" height="250"></iframe>

            <a href="video-gubernur-jambi-h-al-haris-menerima-dua-penghargaan-abdi-bakti-tani-2021.html"><div class="fp-title-album"><?php echo $rs->nama; ?></div></a>

    </div>
</div>
<?php } ?>



</div>
<hr>
<h2><div class="title"><hr>LINK TERKAIT</div></h2>
<marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
<?php foreach($tampil_data_web_terkait->result()as $rs){?>
                        
                        <a href="<?php echo $rs->link; ?>" target="_BLANK"><img src="img/web_terkait/<?php echo $rs->gambar_web_terkait; ?>"  width="175" height="89"></a>&nbsp;&nbsp;&nbsp;&nbsp;
<?php } ?>                        
</marquee>


<!-- services -->



<hr>

<footer class="spacer">
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <h4>Dinas Disperindag Provinsi Jambi</h4>
                     <p>Jl. Letjen Suprapto No.28, Telanaipura, Kec. Telanaipura, Kota Jambi, Jambi  | 36122</p>
                     <p>Telp : (021) 31935635  | Fax (021) 3922638</p>
                     <p>Email : Dinas@jambiprov.go.id</p>
               </div>              
                 
                 <div class="col-sm-3">
                   
                     <h4>Covid-19 Prov Jambi</h4>
               <p>Semua informasi mengenai Covid 19 di Provinsi Jambi tercakup dalam satu website covid 19 Provinsi Jambi.</p>
               <div>
                  <a target="_blank" href="https://corona.jambiprov.go.id/v2/"><img width="40%" class="img-fluid" src="https://pertuni.or.id/wp-content/uploads/2020/03/covid-19-4960254_1920-651x350.png" alt=""></a>
               </div>

                </div>
                 <div class="col-sm-4 subscribe">
                    <h4>Media Sosial</h4>
                   
                    <div class="social">
                    <a href="#"><i class="fa fa-facebook-square" data-toggle="tooltip" data-placement="top" data-original-title="facebook"></i></a>
                    <a href="#"><i class="fa fa-instagram"  data-toggle="tooltip" data-placement="top" data-original-title="instragram"></i></a>
                    <a href="#"><i class="fa fa-twitter-square" data-toggle="tooltip" data-placement="top" data-original-title="twitter"></i></a>
                    <a href="#"><i class="fa fa-tumblr-square" data-toggle="tooltip" data-placement="top" data-original-title="tumblr"></i></a>
                    <a href="#"><i class="fa fa-youtube-square" data-toggle="tooltip" data-placement="top" data-original-title="youtube"></i></a>
                    </div>
                 
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container-->    
    
    <!--/.footer-bottom--> 
</footer>




<div class="row">
    <div class="col-md-12">
        
        <div class="text-center copyright">Powered by <a href="http://thebootstrapthemes.com">COPYRIGHT © DISKOMINFO PROVINSI JAMBI 2022. ALL RIGHT RESERVED.</a></div>

        <a href="#home" class="toTop scroll"><i class="fa fa-angle-up"></i></a>

        <!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
        <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
            <!-- The container for the modal slides -->
            <div class="slides"></div>
            <!-- Controls for the borderless lightbox -->
            <h3 class="title">title</h3>
            <a class="prev">‹</a>
            <a class="next">›</a>
            <a class="close">×</a>
            <!-- The modal dialog, which will be used to wrap the lightbox content -->    
        </div>

    </div>
</div>






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





