
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
                       <div class="row">
                            <div class="col-lg-12">
                          <form method="post" action="adminpanel/Admin_vidio/Simpan_data" >    
                            <div class="row">
                                <div class="col-lg-4">
                                    <input required class="form-control" type="text" name="nama" value="" placeholder="Nama"/>
                                </div>
                           </div><br>
                            <div class="row">
                                <div class="col-lg-5">
                                    <input required class="form-control" type="text" name="link" value="" placeholder="Link Vidio"/>
                                </div>
                           </div>
                           <br>        
                            <div class="row">
                                <div class="col-lg-2">
                                   <input class="btn btn-primary btn-block" type="submit" name="Submit" value="POST" />
                                   
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
                                        <th>vidio</th>
                                        <th>TANGGAL</th>
                                        <th><center>AKSI</center></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php  $no=1; foreach($tampil_vidio_level_utama->result()as $rs){?>
                                    <tr class="odd gradeX">
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $rs->nama; ?></td>
                                        <td >
                            <iframe width="100%" height="170" src="https://www.youtube.com/embed/<?php echo $rs->link; ?>?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>

                                        </td>
                                        <td ><?php echo $rs->tgl; ?></td>
                                        <td >
                                        <center>
<a class="btn btn-primary"  href="#" title="EDIT DATA"  data-toggle="modal" data-target="#m<?php echo $rs->id_vidio; ?>">
    <i class="ace-icon fa fa-pencil bigger-130"></i>
</a>
                                            </center>
<!-- Modal -->
<div class="modal fade" id="m<?php echo $rs->id_vidio; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Ubah Link Vidio</h4>
      </div>
      <form action="adminpanel/Admin_vidio/Simpan_data_ubah" method="post">
      <div class="modal-body">
            <input type="taxt" hidden name="id_vidio" value="<?php echo $rs->id_vidio; ?>">
           <div class="row">
                <div class="col-md-12">
                    <input required class="form-control" style="width:100%;" type="text" name="nama" value="<?php echo $rs->nama; ?>" placeholder="Nama"/>
                </div>
            </div>
           <br>
            <div class="row">
                <div class="col-md-12">
                    <input required class="form-control" style="width:100%;" type="text" name="link" value="<?php echo $rs->link; ?>" placeholder="Link Vidio"/>
                </div>
            </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" name="Submit" class="btn btn-primary">Save changes</button>
      </div>
      </form> 
    </div>
  </div>
</div>                                            
<!-- Modal -->
                                   
                                    <?php } ?>        
                                    </tr>
                                    <?php 
                                    $no=1; foreach($tampil_semua_vidio->result()as $rs){ ?>
                                    <?php if($rs->level=='UTAMA'){ }else{?>    

                                    <tr class="odd gradeX">
                                        <td><?php echo $no; ?></td>
                                        <td><?php echo $rs->nama; ?></td>
                                        <td >
                            <iframe width="100%" height="170" src="https://www.youtube.com/embed/<?php echo $rs->link; ?>?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>

                                        </td>
                                        <td ><?php echo $rs->tgl; ?></td>
                                        <td >
                                         
                                            <center>
                                 <a class="btn btn-primary"  href="adminpanel/Admin_vidio/Hapus_data_vidio/<?php echo $rs->id_vidio; ?>" title="HAPUS DATA" ><i class="ace-icon fa fa-trash-o bigger-130"></i></a>
                                            </center>     
                                        </td>
                                    </tr>
                                   <?php } $no++; } ?>
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
