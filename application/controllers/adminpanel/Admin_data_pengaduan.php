<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_data_pengaduan extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_admin');
            $this->load->model('M_crud_pengaduan');
			$this->load->library("session");
			$this->sessionku();

		}

public function index()
	{	
		$data['tampil_data_pengaduan']=$this->M_crud_pengaduan->tampil_data_pengaduan();
		$this->load->view('admin/admin_pengaduan',$data);
	}

function sessionku ()

		{
			$berhasil=$this->session->userdata('login');
			if (!isset($berhasil) || $berhasil !=true )
			{ redirect('adminpanel/Login_akses'); }
		}

function Hapus_data($id='0'){
		$hasil=$this->M_crud_pengaduan->Hapus_data($id);
		if ($hasil){ ?>
				<script type="text/javascript">
						window.location="<?php echo base_url() ?>adminpanel/Admin_data_pengaduan";
					</script>
				<?php }
		}


}





/* copy reg juhendra utama*/

