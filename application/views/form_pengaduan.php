<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('tools/head'); ?>
</head>

<body id="home">


<!--MENU ATAS -->
    <?php $this->load->view('tools/menu_atas'); ?>
<!--MENU ATAS-->
<br>
<div class="container" style="width: 90%">
<div class="panel panel-default" style="border-color: #99b8c4;">
      <div class="panel-heading">
        <h3 class="panel-title">Formulir Isi Pengaduan</h3>
      </div>
      <div class="panel-body">
      <form action="Pengaduan/Simpan_pengaduan" method="POST" enctype="multipart/form-data">
          <div id="message"></div>
          <div class="col-md-6 col-sm-6">
            <div class="panel panel-default" style="border-color: #99b8c4;">
              <div class="panel-heading" style="background-color: transparent; line-height: 1em;">
                <h5>I.  IDENTITAS KONSUMEN</h5><br>
              </div>
              <div class="panel-body" style="padding-left: 0;">
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">Nama</label>
                  <div class="col-md-8 col-sm-8">
                    <input name="i_konsumen_nama" type="text" class="form-control input-sm"  placeholder="" value="">
                  </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">Jenis Kelamin</label>
                  <div class="col-md-8 col-sm-8">
                    <select name="i_konsumen_jk" class="form-control input-sm select2">
                      <option value="Laki-laki">Laki-laki</option>
                      <option value="Perempuan">Perempuan</option>
                    </select>
                  </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">Tanggal Lahir</label>
                  <div class="col-md-8 col-sm-8">
                    <input name="i_konsumen_tgl" type="date" class="form-control input-sm"    placeholder="">
                  </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">No Identitas (KTP/SIM/Paspor)</label>
                  <div class="col-md-8 col-sm-8">
                    <input name="i_konsumen_noidentitas" type="text" class="form-control input-sm" placeholder="">
                  </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">Telpon / HP</label>
                  <div class="col-md-8 col-sm-8">
                    <input name="i_konsumen_notlpn" type="text" class="form-control input-sm"  placeholder="">
                  </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">E-Mail</label>
                  <div class="col-md-8 col-sm-8">
                    <input name="i_konsumen_email" type="text" class="form-control input-sm" placeholder="">
                  </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">Alamat</label>
                  <div class="col-md-8 col-sm-8">
                    <textarea name="i_konsumen_alamat" rows="3" class="form-control" placeholder="Alamat"></textarea>
                  </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">Provinsi</label>
                  <div class="col-md-8 col-sm-8">
                    <select class="form-control select2prop mandatory" style="width: 100%;"  name="i_konsumen_prov" >
                      <option value="Jambi">Jambi</option>
                  </select>
                  </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                  <label for="name" class="col-md-4 col-sm-4">Kota / Kabupaten</label>
                  <div class="col-md-8 col-sm-8">
                   <select name="i_konsumen_kabkot" class="form-control input-sm select2">
                    <option value="">Pilih</option>
                    <option value="Kabupaten Batanghari">Kabupaten Batanghari</option>
                    <option value="Kabupaten Bungo">Kabupaten Bungo</option>
                    <option value="Kabupaten Kerinci">Kabupaten Kerinci</option>
                    <option value="Kabupaten Merangin">Kabupaten Merangin</option>
                    <option value="Kabupaten Muaro Jambi">Kabupaten Muaro Jambi</option>
                    <option value="Kabupaten Sarolangun">Kabupaten Sarolangun</option>
                    <option value="Kabupaten Tanjung Jabung Barat">Kabupaten Tanjung Jabung Barat</option>
                    <option value="Kabupaten Tanjung Jabung Timur">Kabupaten Tanjung Jabung Timur</option>
                    <option value="Kabupaten Tebo">Kabupaten Tebo</option>
                    <option value="Kota Jambi">Kota Jambi</option>
                    <option value="Kota Sungai Penuh">Kota Sungai Penuh</option>
                   </select>
                 </div>
               </div>
               <div class="form-group col-md-12 col-sm-12">
                <label for="name" class="col-md-4 col-sm-4">Kode Pos</label>
                <div class="col-md-8 col-sm-8">
                  <input name="i_konsumen_kodepos" type="text" class="form-control input-sm" placeholder="">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="panel panel-default" style="border-color: #99b8c4;">
            <div class="panel-heading" style="background-color: transparent; line-height: 1em;">
              <h5>II.  IDENTITAS PELAKU USAHA</h5><br>
              <small></small>
            </div>
            <div class="panel-body" style="padding-left: 0;">
              <div class="form-group col-md-12 col-sm-12">
                <label for="name" class="col-md-4 col-sm-4">Alamat Lengkap Tempat Memperoleh Barang dan Jasa</label>
                <div class="col-md-8 col-sm-8">
                  <textarea name="i_pelaku_usaha_alamat" rows="3" class="form-control" placeholder="Alamat"></textarea>
                 
                </div>
              </div>
              <div class="form-group col-md-12 col-sm-12">
                <label for="name" class="col-md-4 col-sm-4">Telpon / HP</label>
                <div class="col-md-8 col-sm-8">
                  <input name="i_pelaku_usaha_notlpn" type="text" class="form-control input-sm"  placeholder="">
                </div>
              </div>
              <div class="form-group col-md-12 col-sm-12">
                <label for="name" class="col-md-4 col-sm-4">Provinsi</label>
                <div class="col-md-8 col-sm-8">
                <select class="form-control select2prop mandatory" style="width: 100%;" name="i_pelaku_usaha_prov" >
                      <option value="Jambi">Jambi</option>
                  </select>
               </div>
             </div>
             <div class="form-group col-md-12 col-sm-12">
              <label for="name" class="col-md-4 col-sm-4">Kota / Kabupaten</label>
              <div class="col-md-8 col-sm-8">
              <select name="i_pelaku_usaha_kabkot"  class="form-control input-sm select2">
                    <option value="">Pilih</option>
                    <option value="Kabupaten Batanghari">Kabupaten Batanghari</option>
                    <option value="Kabupaten Bungo">Kabupaten Bungo</option>
                    <option value="Kabupaten Kerinci">Kabupaten Kerinci</option>
                    <option value="Kabupaten Merangin">Kabupaten Merangin</option>
                    <option value="Kabupaten Muaro Jambi">Kabupaten Muaro Jambi</option>
                    <option value="Kabupaten Sarolangun">Kabupaten Sarolangun</option>
                    <option value="Kabupaten Tanjung Jabung Barat">Kabupaten Tanjung Jabung Barat</option>
                    <option value="Kabupaten Tanjung Jabung Timur">Kabupaten Tanjung Jabung Timur</option>
                    <option value="Kabupaten Tebo">Kabupaten Tebo</option>
                    <option value="Kota Jambi">Kota Jambi</option>
                    <option value="Kota Sungai Penuh">Kota Sungai Penuh</option>
                   </select>
             </div>
           </div>
           <div class="form-group col-md-12 col-sm-12">
            <label for="name" class="col-md-4 col-sm-4">Kode Pos</label>
            <div class="col-md-8 col-sm-8">
              <input name="i_pelaku_usaha_kodepos" type="text" class="form-control input-sm"  placeholder="">
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-md-12 col-sm-12" style="margin-top: 10px">
      <div class="panel panel-default" style="border-color: #99b8c4;">
        <div class="panel-heading" style="background-color: transparent; line-height: 1em; ">
          <h5>III.  TENTANG PENGADUAN</h5><br>
          <small>Barang / Jasa yang diadukan</small>
        </div>
        <div class="panel-body" style="padding-left: 0;">
          <div class="form-group col-md-12 col-sm-12">
            <label for="name" class="col-md-4 col-sm-4">Jenis Produk</label>
            <div class="col-md-8 col-sm-8">
             <select class="form-control select2" style="width: 100%;"  name="t_pengaduan_jenis_produk">
              <option value="">--- Pilih Jenis ---</option>
              <option value="Barang">Barang</option>
              <option value="Jasa">Jasa</option>
            </select>
          </div>
        </div>
     
       <div class="form-group col-md-12 col-sm-12">
        <label for="name" class="col-md-4 col-sm-4">Merk Dagang</label>
        <div class="col-md-8 col-sm-8">
          <input name="t_pengaduan_merekdagang" type="text" class="form-control input-sm"  placeholder=""></div>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4">Type</label>
          <div class="col-md-8 col-sm-8">
            <input name="t_pengaduan_tipe" type="text" class="form-control input-sm"  placeholder="">
          </div>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4">Jenis Pengaduan</label>
          <div class="col-md-8 col-sm-8">
            <select name="t_pengaduan_jenis_pengaduan" class="form-control input-sm select2">
<option value="1">Standar</option>
<option value="2">Label</option>
<option value="3">Petunjuk Penggunaan</option>
<option value="4">Pelayanan Purna Jual</option>
<option value="5">Cara Menjual</option>
<option value="6">Pengiklanan / Promosi</option>
<option value="7">Klausula Baku</option>
<option value="8">Lain-lain</option>
<option value="9">Penggunaan alat ukur, alat takar, alat timbang dan alat perlengkapan</option>
<option value="10">Kesesuiaan label dan kebenaran kuantitas (berat bersih) barang dalam keadaan terbungkus</option>
<option value="11">Penulisan satuan ukuran</option>
</select>
          </div>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4">Saat Kejadian Ditemukan (Tanggal / Jam / Lokasi)</label>
          <div class="col-md-2 col-sm-2">
            <input name="t_pengaduan_saat_kejadian_ditemukan_tgl" type="date" class=""  placeholder="Tanggal Kejadian" title="Tanggal Kejadian">
          </div>
          <div class="col-md-2 col-sm-2">
            <input name="t_pengaduan_saat_kejadian_ditemukan_jam" type="time" class=""  placeholder="Jam Kejadian" title="Jam Kejadian jam:menit:Am/Pm">
          </div>
          <div class="col-md-4 col-sm-4">
            <input name="t_pengaduan_saat_kejadian_ditemukan_lokasi" type="text" class="form-control input-sm" id="tempat_lokasi" placeholder="Tempat/Lokasi Kejadian">
          </div>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4">Bukti-Bukti</label>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4">Bukti Pembelian</label>
          <div class="col-md-8 col-sm-8">
            <label for="name" class="col-md-4 col-sm-4"> belum ada file </label>
            <input class="form-control" type="file" name="userfile" value="" />
          </div>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4">Saksi</label>
          <div class="col-md-8 col-sm-8">
            <select name="t_pengaduan_jenis_hubungan_saksi">
              <option value="Ada">Ada, hubungan dengan saksi</option>
              <option value="Tidak">Tidak</option>
            </select>
            <input type="text"  name="t_pengaduan_nama_saksi" value="" placeholder="Nama Saksi">
          </div>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4">Bentuk Kerugian</label>
          <label for="name" class="col-md-2 col-sm-2">Material</label>
          <div class="col-md-4 col-sm-4 ">
            <input name="t_pengaduan_bentuk_kerugian_meterial" class="form-control input-sm" type="text"  placeholder="">
          </div>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4"></label>
          <label for="name" class="col-md-2 col-sm-2">Fisik</label>
          <div class="col-md-4 col-sm-4 ">
            <input name="t_pengaduan_bentuk_kerugian_fisik" class="form-control input-sm" type="text"  placeholder="">
          </div>
        </div>
        <div class="form-group col-md-12 col-sm-12">
          <label for="name" class="col-md-4 col-sm-4"></label>
          <label for="name" class="col-md-2 col-sm-2">Psikis</label>
          <div class="col-md-4 col-sm-4 ">
            <input name="t_pengaduan_bentuk_kerugian_psikis" class="form-control input-sm" type="text"  placeholder="">
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-md-6 col-sm-6" style="margin-top: 10px">
    <div class="panel panel-default" style="border-color: #99b8c4;">
      <div class="panel-heading" style="background-color: transparent; line-height: 1em;">
        <h5>IV.   JENIS TUNTUTAN</h5><br>
      </div>
      <div class="panel-body" style="padding-left: 0;">
        <div class="form-group col-md-12 col-sm-12">
          <div class="col-md-12 col-sm-12">
            <select class="form-control input-sm" name="jenis_tuntutan" >
              <option value="pengembalian">pengembalian</option>
              <option value="penggantian">penggantian</option>
              <option value="perawatan">perawatan</option>
              <option value="pemberian">pemberian</option>
              <option value="lain-lain">lain-lain</option>
            </select>    

           
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-md-6 col-sm-6" style="margin-top: 10px">
    <div class="panel panel-default" style="border-color: #99b8c4;">
      <div class="panel-heading" style="background-color: transparent; line-height: 1em;">
        <h5>V.  KRONOLOGIS PENGADUAN</h5><br>
      </div>
      <div class="panel-body" style="padding-left: 0;padding-right: 0;">
        <div class="form-group col-md-12 col-sm-12">
          <textarea name="kronologi_pengaduan" type="text" rows="4" class="form-control input-sm"  placeholder=""></textarea>
                
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-12 col-sm-12" style="margin-top: 10px">
            <div class="panel panel-default" style="border-color: #99b8c4;">
            
              <div class="col-md-12 col-sm-12" style="margin-top: 10px">
              <input type="submit" class="btn btn-primary" name="proses" value="Kirim">
                <button type="reset" class="btn btn-danger">Reset Form</button>
              </div>
            </div>
          </div>
    
        </form>
       
      </div>
    </div>
</div>
<br>








<!-- <div class="container" style="width: 90%">
<br>
      <div class="panel panel-default">
                    <div class="panel-heading" style="font-size:18px;"><b>Formulir Isi Pengaduan</b></div>
                    <div class="panel-body">
                       
                    </div>
                  </div>
      
</div> -->



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






