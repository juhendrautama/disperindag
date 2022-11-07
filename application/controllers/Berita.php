<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Berita extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_kegiatan_program');
			$this->load->model('M_crud_baner');
			$this->load->model('M_crud_profil');
			$this->load->model('M_crud_berita');
			$this->load->model('M_crud_kegiatan_program');
			// $this->load->model('M_crud_baner');
			// $this->load->model('M_crud_profil');
			// $this->load->model('M_crud_berita');
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
		$data['tampil_semua_berita']=$this->M_crud_berita->tampil_semua_berita();
		$this->load->view('berita',$data);

	}	


	public function Selengkap_nya($id)

	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$data['tampil_berita_id']=$this->M_crud_berita->tampil_berita_id($id);
		$this->load->view('berita_lengkap',$data);

	}

	public function layanan()
	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$data['tampil_semua_berita']=$this->M_crud_berita->tampil_semua_berita();
		$this->load->view('layanan',$data);
		// echo "string";
		// echo "<pre>";
		// print_r($data);
		// echo "<pre>";
	}

	public function room_vip()
	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$this->load->view('room_vip',$data);
		// echo "string";
		
	}


	public function standard_room()
	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$this->load->view('room_standard',$data);
	}
	

	public function Bapok()
	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		
		$data['tampil_berita_terbaru_1']=$this->M_crud_berita->tampil_berita_terbaru_1();
		$data['tampil_vidio_level_utama']=$this->M_crud_galleri_vidio->tampil_vidio_level_utama();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$data['tampil_data_web_terkait']=$this->M_crud_web_terkait->tampil_data_web_terkait();
		$data['tampil_berita_terbaru_4']=$this->M_crud_berita->tampil_berita_terbaru_4();
		$data['tampil_semua_foto_depan']=$this->M_crud_galleri->tampil_semua_foto_depan();
		$data['tampil_semua_album_3']=$this->M_crud_galleri->tampil_semua_album_3();
		$data['tampil_vidio_3']=$this->M_crud_galleri_vidio->tampil_vidio_3();

		$data['tampil_data_kontak_addres']=$this->M_crud_kontak->tampil_data_kontak_addres();
		$data['tampil_data_kontak_nomber_phone']=$this->M_crud_kontak->tampil_data_kontak_nomber_phone();
		$data['tampil_data_kontak_email']=$this->M_crud_kontak->tampil_data_kontak_email();
		$this->load->view('bapok',$data);
	}

}





/* copy reg juhendra utama*/

