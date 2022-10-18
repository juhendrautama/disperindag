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

       <h1 class="title">KONTAK</h1>
      <div class="panel panel-default">
                    <div class="panel-heading" style="font-size:18px;"><b><center>KONTAK</center></b></div>
                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                           
                                 <?php $no=1; foreach($tampil_data_kontak->result()as $rs){?> 
                                    <tr class="odd gradeX">
                                          <td><?php echo $no ?></td>
                                        <td><?php echo $rs->nama_kontak; ?></td>
                                        <td><?php echo $rs->isi; ?></td>
                                    </tr>
                                  <?php $no++;   }?> 
                            </table>
                    </div>
                  </div>
<hr>       
</div>


<div class="container">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.517095246587!2d106.83961201436024!3d-6.195295662418563!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4400e64b0f9%3A0x1203804819ebc03a!2sMess%20Jambi!5e0!3m2!1sid!2sid!4v1641972797701!5m2!1sid!2sid" width="100%" height="300" frameborder="0"></iframe> 

<footer class="spacer">
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <h4>Badan Penghubung Provinsi Jambi</h4>
                     <p>Alamat: Jl. Cidurian No.15-17, RT.5/RW.4, Cikini, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta  | 10330</p>
                     <p>Telp : (021) 31935635  | Fax (021) 3922638</p>
                     <p>Email : bapengdapprovjambi@jambiprov.go.id</p>
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
                 <img src="images/download.jpg" alt="HTML5 Icon" width="133" height="128">
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






