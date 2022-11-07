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
<br>
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
      
</div>


<div class="container">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.517095246587!2d106.83961201436024!3d-6.195295662418563!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4400e64b0f9%3A0x1203804819ebc03a!2sMess%20Jambi!5e0!3m2!1sid!2sid!4v1641972797701!5m2!1sid!2sid" width="100%" height="300" frameborder="0"></iframe> 
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






