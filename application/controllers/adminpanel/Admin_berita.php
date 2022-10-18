<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_berita extends CI_Controller {

	function __construct()

		{

			parent::__construct();

			$this->load->model('m_crud_admin');
			$this->load->model('M_crud_berita');
			$this->load->library("session");
			
			$this->sessionku();
			

		}
	function sessionku ()

		{

			$berhasil=$this->session->userdata('login');

			if (!isset($berhasil) || $berhasil !=true )

			{
				redirect('../welcome');
			}
		}
	public function index()

	{
		$data['tampil_semua_berita']=$this->M_crud_berita->tampil_semua_berita();
		$this->load->view('admin/admin_berita',$data);
	}

	


	public function Tambah(){
	$this->load->view('admin/admin_berita_add');
	}

	public function Simpan_berita()
	{
		if(isset($_POST['Submit'])){

		$nama_file=$this->M_crud_berita->upload_gambar();

		$hasil=$this->M_crud_berita->simpan_data_berita($nama_file);

		if ($hasil){ ?>
				<script type="text/javascript">
						alert('data tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_berita";
					</script>
				<?php }

			}else{

				redirect('Home_admin/');
			}

	}
	public function Tampil_edit_berita($id='0')

	{

		$data['tampil_berita_id']=$this->M_crud_berita->tampil_berita_id($id);

		$this->load->view('admin/admin_berita_edit',$data);

	}

	public function Simpan_berita_edit_berita($id='0')

	{
		if(isset($_POST['Submit'])){

		$hasil=$this->M_crud_berita->simpan_data_edit($id);

		if ($hasil){ ?>
				<script type="text/javascript">

						alert('data tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_berita";
				</script>
				<?php }

			}else{

				redirect('Home_admin/');
			}
	}


	public function Tampil_edit_foto($id='0')

	{

		$data['tampil_berita_id']=$this->M_crud_berita->tampil_berita_id($id);
		$this->load->view('admin//admin_berita_edit_foto',$data);

	}


	public function Simpan_edit_foto_berita($id='0')

	{
		if(isset($_POST['Submit'])){

		$nama_file=$this->M_crud_berita->upload_gambar_edit();

		$hasil=$this->M_crud_berita->Simpan_foto_edit($nama_file,$id);

		if ($hasil){ ?>
				<script type="text/javascript">

						alert('data tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_berita";
					</script>
				<?php }

			}else{

				redirect('Home_admin/');
			}
	}

	function Hapus_berita($id='0'){

		$hasil=$this->M_crud_berita->Hapus_data($id);

		if ($hasil){ ?>

				

				<script type="text/javascript">

						window.location="<?php echo base_url() ?>adminpanel/Admin_berita";

					</script>

					

				<?php }

		}


}





/* copy reg juhendra utama*/

