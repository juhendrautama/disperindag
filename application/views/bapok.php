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
                    <h3 class="header-h"> INFORMASI BAHAN POKOK <br>DISPERINDAG PROVINSI JAMBI</h3>
                    
    <hr>


<!--[if !supportLineBreakNewLine]-->
<!--[endif]--></span>

                </div>

<!-- reservation-information -->
<h3>Info Harga Komoditi Terkini</h3>
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
                    
                   
                    </div>
                  
                
                   

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
        
</div>
<div class="info-list">
    <div class="info-list-ctn">
        
    </div>
   
</div>
</div>
</div>
</div>
</div>  
</div>
</div>

<!-- reservation-information -->
<center><div id="galleri"><h2>Gallery Kegiatan </h2></div></center>
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

<?php $this->load->view('tools/footer') ?>




<div class="row">
    <div class="col-md-12">
        
        <div class="text-center copyright">Powered by <a href="http://thebootstrapthemes.com">COPYRIGHT ?? DISKOMINFO PROVINSI JAMBI 2022. ALL RIGHT RESERVED.</a></div>

        <a href="#home" class="toTop scroll"><i class="fa fa-angle-up"></i></a>

        <!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
        <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
            <!-- The container for the modal slides -->
            <div class="slides"></div>
            <!-- Controls for the borderless lightbox -->
            <h3 class="title">title</h3>
            <a class="prev">???</a>
            <a class="next">???</a>
            <a class="close">??</a>
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





