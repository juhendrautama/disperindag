
<!DOCTYPE html>
<html lang="en">

<head>

     <?php $this->load->view('admin/tools/head'); ?>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              <a class="navbar-brand" href="adminpanel/Home">ADMINPANEL</a>
            </div>
            <!-- /.navbar-header -->

            <?php $this->load->view('admin/tools/menu_atas'); ?>
            <?php $this->load->view('admin/tools/menu_samping'); ?>
     </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                   <br>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <br>
                         <center>UBAH DATA INFORMASI</center>
                             <hr>
                            
                        </div>
                      
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           <form method="post" action="adminpanel/Admin_kegiatan_program/Simpan_ubah_kegiatan_program/<?php echo $tampil_data_kegiatan_program_id->id_kegitan_program; ?>" enctype="multipart/form-data">

                            <div class="row">
                                <div class="col-md-12">
                                    <label>Judul </label>
                                    <input type="taxt" name="nama_kegitan" value="<?php echo $tampil_data_kegiatan_program_id->nama; ?>" class="form-control" placeholder="Judul"/>
                                </div>
                                 
                            </div>
                            <hr>
                            
                             <div class="row">
                                <div class="col-md-12">
                                    <label>isi</label>
                                    <textarea name="keterangan" rows="20" cols="100">
                                             <?php echo $tampil_data_kegiatan_program_id->keterangan; ?>         
                                    </textarea>
                                </div>
                            </div>
                          
                             <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <input type="submit" name="proses"  value="PUBLISH" class="btn btn-info"/>
                                </div>
                                
                            </div> 
                            
                            </form>
                          
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
         
                           
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="tmp_admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="tmp_admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="tmp_admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="tmp_admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="tmp_admin/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="tmp_admin/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="tmp_admin/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>

</html>
