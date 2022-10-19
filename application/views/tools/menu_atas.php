<nav class="navbar  navbar-default" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href=""><img src="images/logo-mobile.png"  alt="holiday crown" style="width:250px;height:55px;">
</a>
    </div>

    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">     
         
        <li><a   href="Home">Beranda </a></li>

        <li>
          <a  href="#" class="dropdown-toggle dropdown" type="button" data-toggle="dropdown">
            Profil
            <span class="caret"></span>
          </a>

          <ul class="dropdown-menu">
              <?php foreach($tampil_data_profil->result()as $rs) {?> 
                <li> 
                  <a class="dropdown-item a" href="Profil/Selengkap_nya/<?php echo $rs->id_profil; ?>/<?php echo str_replace(' ','-',$rs->nama) ?>">
                              <?php echo $rs->nama; ?>
                          </a>
                </li>        
              <?php } ?>               
          </ul>
        
        </li>

        <li><a href="Berita">Berita </a>


        	<li>
          
            <a href="#" class="dropdown-toggle dropdown" type="button" data-toggle="dropdown">Regulasi
            <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1486"><a title="Regulasi Kemenperin" target="_blank" rel="noopener" href="http://jdih.kemenperin.go.id/site/">Regulasi Kemenperin</a></li>
	<li class="Regulasi Kemendag menu-item menu-item-type-custom menu-item-object-custom menu-item-1488"><a title="Regulasi Kemendag" target="_blank" rel="Regulasi Kemendag" href="http://jdih.kemendag.go.id/peraturan">Regulasi Kemendag</a></li>           
            </ul>
        
        </li>

          
        

        <li><a href="#" class="dropdown-toggle dropdown" type="button" data-toggle="dropdown">Unit Kerja
            <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <?php foreach($tampil_informasi->result()as $rs) {?> 
              <li>
                <a href="Informasi/Selengkap_nya/<?php echo $rs->id_kegitan_program; ?>/<?php echo str_replace(' ','-',$rs->nama) ?>">
                  <?php echo $rs->nama; ?>
                </a>
              </li>        
              <?php } ?>  
            </ul>
        </li> 


         <li>
             <a href="" class="dropdown-toggle dropdown" type="button" data-toggle="dropdown">Layanan Informasi
            <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href="Berita/Pengaduan">Pengaduan</a></li>
              <li><a href="Berita/layanan">Izin Usaha Industri</a></li>
              <li><a href="Berita/Bapok">Harga Bahan Pokok</a></li>
              <li><a href="Galleri/Vidio">Harga Bahan Bangunan</a></li>            
            </ul>

        <li>
          
            <a href="#" class="dropdown-toggle dropdown" type="button" data-toggle="dropdown">Gallery
            <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="Galleri/Album">Foto</a></li>
              <li><a href="Galleri/Vidio">Video</a></li>            
            </ul>
        
        </li>


        <li><a href="Kontak">Contact</a></li>
        <li id="menu-item-1545" class="PPID menu-item menu-item-type-custom menu-item-object-custom menu-item-1545"><a target="_blank" rel="PPID" href="http://ppid.jambiprov.go.id/">PPID</a></li>
</ul>

      </ul>

      </ul>
    </div>
  </div>
</nav>