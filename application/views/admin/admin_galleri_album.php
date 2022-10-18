<!DOCTYPE html>
<html lang="en">

<head>
<?php $this->load->view('admin/tools/head'); ?>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <!-- Navigation -->
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
               <a class="navbar-brand" href="adminpanel/Home">WEBSITE RESMI BADAN PENGHUBUNG</a>
            </div>
            <!-- /.navbar-header -->

             <?php $this->load->view('admin/tools/menu_atas'); ?>
            <?php $this->load->view('admin/tools/menu_samping'); ?>
     </nav>

        <div id="page-wrapper">
           
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12"><br>
                    <div class="panel panel-default">

                        
                        <div class="panel-heading">
                       <div class="row">
                            <div class="col-lg-12">
                          <form method="post" action="adminpanel/Admin_galleri/Simpan_allbum" enctype="multipart/form-data">    
                            <div class="row">
                                <div class="col-lg-5">
                                    <input required class="form-control" type="text" name="nama_allbum" value="" placeholder="Nama"/>
                                </div>
                           </div>
                          
                            
                           <br>
                           <div class="row">
                                <div class="col-lg-4">
                                    <input class="form-control" type="file" name="userfile" value="" placeholder="gambar"/>
                                </div>
                           </div>
                           <br>        
                            <div class="row">
                                <div class="col-lg-2">
                                   <input class="btn btn-primary btn-block" type="submit" name="Submit" value="TAMBAH ALLBUM" />
                                   
                                </div>
                               
                           </div>
                           </form>
                          </div>  
                        </div>
                        
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>NO</th>
                                        <th>NAMA</th>
                                        <th>TANGGAL</th>
                                        <th>GAMBAR</th>
                                        <th><center>AKSI</center></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                                                 $no=1;
                                                                 foreach($tampil_semua_album->result()as $rs)
                                                                  {?>
                                    <tr class="odd gradeX">
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $rs->nama_allbum; ?></td>
                                        <td ><?php echo $rs->tgl_album; ?></td>
                                        <td >
                        <img class="media-object img-thumbnail user-img" src="img/album/<?php echo $rs->foto_album; ?>" width="50"  />
                                        </td>
                                        <td >
                                            <center>
                                 <a Onclick="return confirm('apakah yakin ingin di Hapus ?');" class="btn btn-primary"  href="adminpanel/Admin_galleri/Hapus_allbum/<?php echo $rs->id_album; ?>" title="HAPUS DATA" ><i class="ace-icon fa fa-trash-o bigger-130"></i></a>
                                            </center>
                                        </td>
                                    </tr>
                                    <?php $no++;}  ?>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
              
         
           
                  
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
