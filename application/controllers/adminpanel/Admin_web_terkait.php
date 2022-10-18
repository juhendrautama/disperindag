<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_web_terkait extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_admin');
			$this->load->model('M_crud_web_terkait');
			$this->load->library("session");
			$this->sessionku();

		}

public function index()
	{	
		$data['tampil_data_web_terkait']=$this->M_crud_web_terkait->tampil_data_web_terkait();
		$this->load->view('admin/admin_web_terkait',$data);
	}

function sessionku ()

		{
			$berhasil=$this->session->userdata('login');
			if (!isset($berhasil) || $berhasil !=true )
			{ redirect('adminpanel/Login_akses'); }
		}


public function Simpan_data(){
		if(isset($_POST['proses'])){
		$nama_file=$this->M_crud_web_terkait->Upload_gambar();	
		$hasil=$this->M_crud_web_terkait->Simpan_data($nama_file);
		if ($hasil){ ?>
				<script type="text/javascript">
						alert('Data Tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_web_terkait";
					</script>
				<?php }
			}else{
				redirect('/Admin_web_terkait');
			}
	}

function Hapus_data($id='0'){
		$hasil=$this->M_crud_web_terkait->Hapus_data($id);
		if ($hasil){ ?>
				<script type="text/javascript">
						window.location="<?php echo base_url() ?>adminpanel/Admin_web_terkait";
					</script>
				<?php }
		}


}





/* copy reg juhendra utama*/

	