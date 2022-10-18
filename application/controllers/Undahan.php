<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Undahan extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_kegiatan_program');
			$this->load->model('M_crud_baner');
			$this->load->model('M_crud_profil');
			$this->load->model('M_crud_putusan');
		}

	

	public function index()

	{
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_data_kegiatan_program']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		$data['tampil_data_putusan']=$this->M_crud_putusan->tampil_data_putusan();
		$data['tampil_kategori_kegiatan']=$this->M_crud_kegiatan_program->tampil_kategori_kegiatan();
		$data['tampil_kategori_program']=$this->M_crud_kegiatan_program->tampil_kategori_program();
		$this->load->view('putusan',$data);

	}



	





}





/* copy reg juhendra utama*/

