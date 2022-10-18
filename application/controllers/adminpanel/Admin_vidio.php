<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_vidio extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('m_crud_admin');
			$this->load->model('M_crud_galleri_vidio');
			$this->load->library("session");
			$this->sessionku();
			

		}

	

	
	
	public function index()

	{	
		$data['tampil_vidio_level_utama']=$this->M_crud_galleri_vidio->tampil_vidio_level_utama();
		$data['tampil_semua_vidio']=$this->M_crud_galleri_vidio->tampil_semua_vidio();
		$this->load->view('admin/admin_vidio',$data);

	}

	
	function sessionku ()

		{

			$berhasil=$this->session->userdata('login');

			if (!isset($berhasil) || $berhasil !=true )

			{

				redirect('../welcome');

			}

			

			

		}

	
	
	public function Simpan_data()

	{

		

		if(isset($_POST['Submit'])){

		$hasil=$this->M_crud_galleri_vidio->Simpan_data_vidio();

		if ($hasil){ ?>
				<script type="text/javascript">

						alert('data tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_vidio";
					</script>
				<?php }

			}else{

				redirect('Home_admin/');
			}

	}

	public function Simpan_data_ubah()

	{

		

		if(isset($_POST['Submit'])){

		$hasil=$this->M_crud_galleri_vidio->Simpan_data_ubah();

		if ($hasil){ ?>
				<script type="text/javascript">

						alert('data tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_vidio";
					</script>
				<?php }

			}else{

				redirect('Home_admin/');
			}

	}	


	

	function Hapus_data_vidio($id='0'){

		$hasil=$this->M_crud_galleri_vidio->Hapus_data($id);

		if ($hasil){ ?>

				

				<script type="text/javascript">

						alert('terhapus');window.location="<?php echo base_url() ?>adminpanel/Admin_vidio";

					</script>

					

				<?php }

		}





}





/* copy reg juhendra utama*/

