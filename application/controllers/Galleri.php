<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Galleri extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_kegiatan_program');
			$this->load->model('M_crud_baner');
			$this->load->model('M_crud_profil');
			$this->load->model('M_crud_putusan');
			$this->load->model('M_crud_galleri');
			$this->load->model('M_crud_galleri_vidio');
		}

	

	public function Album()

	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$data['tampil_data_putusan']=$this->M_crud_putusan->tampil_data_putusan();


		$data['tampil_semua_album']=$this->M_crud_galleri->tampil_semua_album();
		$this->load->view('album',$data);

	}

	public function Foto($id)

	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$data['tampil_data_putusan']=$this->M_crud_putusan->tampil_data_putusan();


		$data['tampil_semua_foto_id_allbum']=$this->M_crud_galleri->tampil_semua_foto_id_allbum($id);
		$data['tampil_album_id_allbum']=$this->M_crud_galleri->tampil_album_id_allbum($id);
		$this->load->view('foto',$data);

	}


public function Foto_depan($id)

	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$data['tampil_data_putusan']=$this->M_crud_putusan->tampil_data_putusan();


		$data['tampil_semua_foto_id_allbum']=$this->M_crud_galleri->tampil_semua_foto_id_allbum($id);
		$data['tampil_album_id_allbum']=$this->M_crud_galleri->tampil_album_id_allbum($id);
		$this->load->view('foto_depan',$data);

	}

	public function Vidio()

	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$data['tampil_data_putusan']=$this->M_crud_putusan->tampil_data_putusan();


		$data['tampil_semua_vidio']=$this->M_crud_galleri_vidio->tampil_semua_vidio();
		$this->load->view('vidio',$data);

	}



	





}





/* copy reg juhendra utama*/

