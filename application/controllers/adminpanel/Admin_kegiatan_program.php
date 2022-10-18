<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_kegiatan_program extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_admin');
			$this->load->model('M_crud_kegiatan_program');
			$this->load->library("session");
			$this->sessionku();

		}

public function index()
	{	
		$data['tampil_data_kegiatan_program']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$this->load->view('admin/admin_kegiatan_program',$data);
	}

function sessionku ()

		{
			$berhasil=$this->session->userdata('login');
			if (!isset($berhasil) || $berhasil !=true )
			{ redirect('adminpanel/Login_akses'); }
		}




public function Tambah_kegiatan_program(){
		$this->load->view('admin/admin_kegiatan_program_add');
	}
	
public function Simpan_kegiatan_program(){
		if(isset($_POST['proses'])){	
		$hasil=$this->M_crud_kegiatan_program->Simpan_kegiatan_program();
		if ($hasil){ ?>
				<script type="text/javascript">
						alert('Data Tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_kegiatan_program";
					</script>
				<?php }
			}else{
				redirect('/Admin_kegiatan_program');
			}
	}

public function Ubah_kegiatan_program($id){
		$data['tampil_data_kegiatan_program_id']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_id($id);
		$this->load->view('admin/admin_kegiatan_program_ubah',$data);
	}

public function Simpan_ubah_kegiatan_program($id){
		if(isset($_POST['proses'])){	
		$hasil=$this->M_crud_kegiatan_program->Simpan_ubah_kegiatan_program($id);
		if ($hasil){ ?>
				<script type="text/javascript">
						alert('Data Tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_kegiatan_program";
					</script>
				<?php }
			}else{
				redirect('/Admin_kegiatan_program');
			}
	}

function Hapus_kegiatan_program($id='0'){
		$hasil=$this->M_crud_kegiatan_program->Hapus_kegiatan_program($id);
		if ($hasil){ ?>
				<script type="text/javascript">
						window.location="<?php echo base_url() ?>adminpanel/Admin_kegiatan_program";
					</script>
				<?php }
		}


}





/* copy reg juhendra utama*/

