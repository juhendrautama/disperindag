<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Pengaduan extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_kegiatan_program');
			$this->load->model('M_crud_baner');
			$this->load->model('M_crud_profil');
			$this->load->model('M_crud_berita');
			// $this->load->model('M_crud_baner');
			// $this->load->model('M_crud_profil');
			$this->load->model('M_crud_pengaduan');
			$this->load->model('M_crud_galleri_vidio');
			$this->load->model('M_crud_web_terkait');
			$this->load->model('M_crud_galleri');
			$this->load->model('M_crud_kontak');
			$this->load->model('M_crud_putusan');
		}

	
	public function index()

	{
		$data['tampil_data_kat_putusan']=$this->M_crud_putusan->tampil_data_kat_putusan();
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();


		$this->load->view('form_pengaduan',$data);

	}	


	public function Simpan_pengaduan()
	{
		if(isset($_POST['proses'])){
		$nama_file=$this->M_crud_pengaduan->Upload_file();
		$hasil=$this->M_crud_pengaduan->Simpan_data_pengaduan($nama_file);

		if ($hasil){ ?>
				<script type="text/javascript">
						alert('data tersimpan');window.location="<?php echo base_url() ?>/Pengaduan";
					</script>
				<?php }

			}else{

				redirect('Home_admin/');
			}

	}

}





/* copy reg juhendra utama*/

