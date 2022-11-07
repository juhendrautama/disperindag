<!DOCTYPE html>
<html lang="en">
  <head>
      <?php $this->load->view('tools/head'); ?>
<!-- DataTables CSS -->
    <link href="tmp_admin/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="tmp_admin/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
  </head>
  <body class="body">
 
 <?php $this->load->view('tools/menu_atas'); ?>

 
  <hr><hr><br>

  <main id="main">

    <!-- ======= Services Section ======= -->
    <section id="services">
      <div class="container" data-aos="fade-up">

     

        <div class="row">

        <div class="col-md-8">
        <header class="section-header wow fadeInUp">
          <h3>Data Undahan : <?php echo $tampil_data_kat_putusan_id->nama_kategori_dok; ?></h3>
        </header>
          <hr>
              <div class="panel panel-default">
                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                           
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Judul</th>
                                        <th>File</th>
                                        <th>Tanggal</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <?php $no=1; foreach($tampil_data_putusan_idkat->result()as $rs){?> 
                                    <tr class="odd gradeX">
                                          <td><?php echo $no ?></td>
                                        <td><?php echo $rs->judul; ?></td>
                                        <td><?php echo $rs->file; ?></td>
                                        <td><?php echo $rs->tgl; ?></td>
                                       <td><a href="data/putusan/<?php echo $rs->file ?>" class="btn-sm btn-danger" target="_blank">Download</a></td>
                                    </tr>
                                  <?php $no++;   }?>            
                                </tbody>
                            </table>
                    </div>
                  </div>
        </div>  
        <div class="col-md-4">
          
          <div class="row">
            <div class="co-md-12">
              <div class="card text-dark bg-light" >
                <div class="card-header">GPR WIDGET</div>
                <div class="card-body">
                  <script type="text/javascript" src="https://widget.kominfo.go.id/gpr-widget-kominfo.min.js"></script>
                  <div id="gpr-kominfo-widget-container"></div>       
                </div>
              </div>
            </div>
          </div>


              
        </div>


        </div>

      </div>
    </section><!-- End Services Section -->

  </main><!-- End #main -->
<?php $this->load->view('tools/footer') ?>


 <?php $this->load->view('tools/js_footer'); ?>
  </body>
</html>