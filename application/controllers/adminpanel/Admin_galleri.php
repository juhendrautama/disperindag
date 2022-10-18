<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_galleri extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('m_crud_admin');
			$this->load->model('M_crud_galleri');
			$this->load->library("session");
			$this->sessionku();
		}

	
	public function Foto()

	{
		$data['tampil_semua_album']=$this->M_crud_galleri->tampil_semua_album();
		$data['tampil_semua_foto']=$this->M_crud_galleri->Tampil_semua_foto();
		$this->load->view('admin/admin_galleri_foto',$data);

	}

	
	function sessionku ()

		{

			$berhasil=$this->session->userdata('login');

			if (!isset($berhasil) || $berhasil !=true )

			{
				redirect('../welcome');
			}

		}
		

	

	public function Simpan_foto_galleri()

	{
		if(isset($_POST['Submit'])){

		$nama_file=$this->M_crud_galleri->upload_gambar();

		$hasil=$this->M_crud_galleri->simpan_data_foto($nama_file);

		if ($hasil){ ?>

				<script type="text/javascript">

						alert('data tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_galleri/Foto";
					</script>
				<?php }

			}else{

				redirect('Admin_galleri/');
			}

	}



	


	

	function Hapus_foto($id='0'){

		$hasil=$this->M_crud_galleri->Hapus_data_foto($id);

		if ($hasil){ ?>

				

				<script type="text/javascript">

						window.location="<?php echo base_url() ?>adminpanel/Admin_galleri/Foto";

					</script>
				<?php }
		}



public function Allbum(){
	$data['tampil_semua_album']=$this->M_crud_galleri->tampil_semua_album();
	$this->load->view('admin/admin_galleri_album',$data);
	}

public function Simpan_allbum(){
		if(isset($_POST['Submit'])){
		$nama_file=$this->M_crud_galleri->upload_gambar_allbum();
		$hasil=$this->M_crud_galleri->simpan_data_allbum($nama_file);
		if ($hasil){ ?>
				<script type="text/javascript">
						alert('data tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_galleri/Allbum";
					</script>
				<?php }
			}else{
				redirect('Admin_galleri/');
			}
	}	
	

	function Hapus_allbum($id='0'){
		$hasil=$this->M_crud_galleri->Hapus_data_allbum($id);
		if ($hasil){ ?>
				<script type="text/javascript">
						window.location="<?php echo base_url() ?>adminpanel/Admin_galleri/Allbum";
					</script>

				<?php }
		}



	

}





/* copy reg juhendra utama*/

