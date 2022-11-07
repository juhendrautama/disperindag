<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_data_kategori_putusan extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_admin');
			$this->load->model('M_crud_putusan');
			$this->load->library("session");
			$this->sessionku();

		}

public function index()
	{	
		$data['tampil_data_kat_putusan']=$this->M_crud_putusan->tampil_data_kat_putusan();
		$this->load->view('admin/admin_putusan_ketegori',$data);
	}

function sessionku ()

		{
			$berhasil=$this->session->userdata('login');
			if (!isset($berhasil) || $berhasil !=true )
			{ redirect('adminpanel/Login_akses'); }
		}


public function Simpan_data(){
		if(isset($_POST['proses'])){
		$hasil=$this->M_crud_putusan->Simpan_data_kategori();
		if ($hasil){ ?>
				<script type="text/javascript">
						alert('Data Tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_data_kategori_putusan";
					</script>
				<?php }
			}else{
				redirect('/Admin_data_kategori_putusan');
			}
	}

function Hapus($id='0'){
		$hasil=$this->M_crud_putusan->Hapus_kategori($id);
		if ($hasil){ ?>
				<script type="text/javascript">
						window.location="<?php echo base_url() ?>adminpanel/Admin_data_kategori_putusan";
					</script>
				<?php }
		}


}





/* copy reg juhendra utama*/

