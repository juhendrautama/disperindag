<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_baner extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_admin');
			$this->load->model('M_crud_baner');
			$this->load->library("session");
			$this->sessionku();

		}
function sessionku ()

		{
			$berhasil=$this->session->userdata('login');
			if (!isset($berhasil) || $berhasil !=true )
			{ redirect('adminpanel/Login_akses'); }
		}

public function index()
	{	
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$this->load->view('admin/admin_baner',$data);
	}



public function Simpan_data_baner(){
		if(isset($_POST['proses'])){
		$nama_file=$this->M_crud_baner->Upload_gambar();	
		$hasil=$this->M_crud_baner->Simpan_data_baner($nama_file);
		if ($hasil){ ?>
				<script type="text/javascript">
						alert('Data Tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_baner";
					</script>
				<?php }
			}else{
				redirect('/Admin_baner');
			}
	}

function Hapus_baner($id='0'){
		$hasil=$this->M_crud_baner->Hapus_baner($id);
		if ($hasil){ ?>
				<script type="text/javascript">
						window.location="<?php echo base_url() ?>adminpanel/Admin_baner";
					</script>
				<?php }
		}


}





/* copy reg juhendra utama*/

