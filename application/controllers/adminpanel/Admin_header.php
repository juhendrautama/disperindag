<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Admin_header extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_admin');
			$this->load->model('M_crud_header');
			$this->load->library("session");
			$this->sessionku();

		}

public function index()
	{	
		$data['tampil_data_header']=$this->M_crud_header->tampil_data_header();
		$this->load->view('admin/admin_header',$data);
	}

function sessionku ()

		{
			$berhasil=$this->session->userdata('login');
			if (!isset($berhasil) || $berhasil !=true )
			{ redirect('adminpanel/Login_akses'); }
		}
function Hapus_header($id='0'){
		$hasil=$this->M_crud_header->Hapus_header($id);
		if ($hasil){ ?>
				<script type="text/javascript">
						window.location="<?php echo base_url() ?>adminpanel/Admin_header/Form_upload/<?php echo $id; ?>";
					</script>
				<?php }
		}
public function Form_upload($id)
	{	
		$data['tampil_data_header_id']=$this->M_crud_header->tampil_data_header_id($id);
		$this->load->view('admin/form_upload',$data);
	}		

public function Simpan_data_header_ubah($id){
		if(isset($_POST['proses'])){
		$nama_file=$this->M_crud_header->Upload_gambar();	
		$hasil=$this->M_crud_header->Simpan_data_header_ubah($id,$nama_file);
		if ($hasil){ ?>
				<script type="text/javascript">
						alert('Data Tersimpan');window.location="<?php echo base_url() ?>adminpanel/Admin_header";
					</script>
				<?php }
			}else{
				redirect('/Admin_header');
			}
	}



}





/* copy reg juhendra utama*/

