
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
                            DATA WEB TERKAIT
                        </div>



                        <!-- /.panel-heading -->
                        <div class="panel-body">
                              <form method="post" action="adminpanel/Admin_web_terkait/Simpan_data" enctype="multipart/form-data">

                             <div class="row">
                                <div class="col-md-4">
                                    <input type="taxt" name="judul_web_terkait" value="" class="form-control" placeholder="Judul"/>
                                </div>
                                 <div class="col-md-4">
                                    <input type="taxt" name="link" value="" class="form-control" placeholder="link"/>
                                </div>
                                 <div class="col-md-4">
                                   <input type="file" required name="userfile"  class="form-control"/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <input type="submit" name="proses"  value="Submit" class="btn btn-info"/>
                                </div>
                                
                            </div> 
                             
                         </form>
                        <hr>
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                           
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Judul</th>
                                        <th>Link</th>
                                        <th>Gambar</th>
                                        <th>Tanggal</th>
                                        <th><center>Aksi</center></th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <?php $no=1; foreach($tampil_data_web_terkait->result()as $rs){?> 
                                    <tr class="odd gradeX">
                                        <td><?php echo $no ?></td>
                                        <td><?php echo $rs->judul_web_terkait; ?></td>
                                        <td><?php echo $rs->link; ?></td>
                                        <td>
                                            <img width="50px" src="img/web_terkait/<?php echo $rs->gambar_web_terkait; ?>">
                                        </td>
                                        <td><?php echo $rs->tgl; ?></td>
                                        <td >
                                            <center>
                                            <a Onclick="return confirm('apakah yakin ingin di Hapus ?');" href="adminpanel/Admin_web_terkait/Hapus_data/<?php echo $rs->id_web_terkait; ?>" class="btn-sm btn-danger">Hapus</a>
                                           </center>     
                                        </td>
                                    </tr>
                                  <?php $no++;   }?>            
                                </tbody>
                            </table>
                          
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
