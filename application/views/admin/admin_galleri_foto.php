
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
                <div class="col-lg-12"><br>
                    <div class="panel panel-default">

                        
                        <div class="panel-heading">
                       <div class="row">
                            <div class="col-lg-12">
                          <form method="post" action="adminpanel/Admin_galleri/Simpan_foto_galleri" enctype="multipart/form-data">    
                            <div class="row">
                                <div class="col-lg-5">
                                    <label>JUDUL FOTO</label>
                                    <input required class="form-control" type="text" name="nama" value="" placeholder="Judul"/>
                                </div>
                           </div>
                          
                            
                           <br>
                           <div class="row">
                                <div class="col-lg-4">
                                    <label>File Foto</label>
                                    <input class="form-control" type="file" name="userfile" value="" placeholder="gambar"/>
                                </div>
                                  <div class="col-md-2">
                                    <label>ALLBUM FOTO</label>
                                   <select required class="form-control" name="allbum">
                                    <?php foreach($tampil_semua_album->result()as $rs){?>
                                      <option value="<?php echo $rs->id_album; ?>" ><?php echo $rs->nama_allbum; ?></option>
                                      <?php } ?>
                                    </select>
                                </div>
                           </div>
                           <br>

                            <div class="row">
                              
                                  <div class="col-lg-2">
                                    <label></label>
                                   <input class="btn btn-primary btn-block" type="submit" name="Submit" value="UPLOAD" />
                                   
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
                                        <th>GAMBAR</th>
                                        <th>JUDUL FOTO</th>
                                        <th>TANGGAL</th>
                                        <th>NAMA ALLBUM</th>
                                        <th><center>AKSI</center></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                                                 $no=1;
                                                                 foreach($tampil_semua_foto->result()as $rs)
                                                                  {?>
                                    <tr class="odd gradeX">
                                        <td><?php echo $no; ?></td>
                                        <td >
                            <img class="media-object img-thumbnail user-img" src="img/foto/<?php echo $rs->gambar; ?>" width="50"  />
                                        </td>
                                        <td><?php echo $rs->nama; ?></td>
                                        <td ><?php echo $rs->tgl_foto; ?></td>
                                        <td ><?php echo $rs->nama_allbum; ?></td>
                                        <td >
                                            <center>
                                 <a Onclick="return confirm('apakah yakin ingin di Hapus ?');" class="btn btn-primary"  href="adminpanel/Admin_galleri/Hapus_foto/<?php echo $rs->id_foto; ?>" title="HAPUS DATA" ><i class="ace-icon fa fa-trash-o bigger-130"></i></a>
                                            </center>
                                        </td>
                                    </tr>
                                   <?php 
                                                        $no++;
                                                         } 
                                                      ?>
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
