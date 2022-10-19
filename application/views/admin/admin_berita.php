
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
                            DATA BERITA
                             <hr>
                            <a   class="btn btn-info" href="adminpanel/Admin_berita/Tambah">
                            <i class="icon-edit icon-white"></i>TAMBAH DATA
                            </a>
                        </div>
                      
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>NO</th>
                                        <th>JUDUL</th>
                                        <th>KATEGORI</th>
                                        <th>TANGGAL</th>
                                        <th>GAMBAR</th>
                                        <th>PENULIS</th>
                                        <th><center>AKSI</center></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php $no=1; foreach($tampil_semua_berita->result()as $rs) {?>
                                    <tr class="odd gradeX">
                                    <td><?php echo $no; ?></td>
                                    <td><?php echo $rs->judul; ?></td>
                                    <td><?php echo $rs->ketegori; ?></td>
                                    <td ><?php echo $rs->tgl; ?></td>
                                    <td >
                                    <a   href="adminpanel/Admin_berita/Tampil_edit_foto/<?php echo $rs->id_berita; ?>" title="UBAH FOTO" ><img class="media-object img-thumbnail user-img" src="img/berita/<?php echo $rs->img; ?>" width="50"  />
                                    </a>
                                    </td>
                                <td><?php echo $rs->penulis; ?></td>
                                <td >
                                <center>
                                <a class="btn btn-primary"  href="adminpanel/Admin_berita/Tampil_edit_berita/<?php echo $rs->id_berita; ?>" title="EDIT DATA" ><i class="ace-icon fa fa-pencil bigger-130"></i></a>

                                 <a Onclick="return confirm('apakah yakin ingin di Hapus ?');" class="btn btn-primary"  href="adminpanel/Admin_berita/Hapus_berita/<?php echo $rs->id_berita; ?>" title="HAPUS DATA" ><i class="ace-icon fa fa-trash-o bigger-130"></i></a>
                                 
                                </center>
                                </td>
                                </tr>
                                   <?php $no++; } ?>
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
