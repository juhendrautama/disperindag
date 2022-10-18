
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
               <a class="navbar-brand" href="adminpanel/Home">WEBSITE RESMI BADAN PENGHUBUNG</a>
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

                     <form method="post" action="adminpanel/Admin_berita/Simpan_berita_edit_berita" >   
                        <div class="panel-heading">
                            UBAH DATA BERITA
                            <hr>
                            <div class="row">
                                <div class="col-lg-8">
                                    <input   hidden type="text" name="id" value="<?php echo $tampil_berita_id->id_berita; ?>" />
                                    <input required class="form-control" type="text" name="judul" value="<?php echo $tampil_berita_id->judul; ?>" placeholder="Judul"/>
                                </div>
                           </div>
                            <div class="row">
                                <div class="col-lg-8">
                                    <label>Ketegori</label>
                                    <select  name="ketegori" class="form-control">
                                        <option value="<?php echo $tampil_berita_id->ketegori; ?>"><?php echo $tampil_berita_id->ketegori; ?></option>
                                        <option>Berita Umum</option>
                                        <option>Sidang</option>
                                    </select>
                                </div>
                           </div>
                          
                           <div class="row">
                                <div class="col-lg-12">
                                <label>ISI BERITA SINGKAT</label>
                                  <textarea class="form-control" name="berita_singkat" rows="8%" cols="510%">
                                           <?php echo $tampil_berita_id->isi_singkat; ?> 
                                  </textarea>
                                </div>
                           </div>
                           <div class="row">
                                <div class="col-lg-12">
                                <label>ISI BERITA LENGKAP</label>
                                  <textarea class="form-control" name="berita_lengkap" rows="15%" cols="550%">
                                         <?php echo $tampil_berita_id->isi_lengkap; ?>   
                                  </textarea>
                                </div>
                           </div>
                           <br>
                          
                          
                           <div class="row">
                                <div class="col-lg-4">
                                    <input required class="form-control" type="text" name="penulis" value="<?php echo $tampil_berita_id->penulis; ?>" placeholder="Penulis"/>
                                </div>
                           </div>
                           <br>
                            <div class="row">
                                <div class="col-lg-3">
                                   <input class="btn btn-primary btn-block" type="submit" name="Submit" value="SIMPAN" />
                                   
                                </div>
                               
                           </div>
                        </div>
                        </form>
                        
                        <!-- /.panel-body -->
                    </div>
                </div>
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
