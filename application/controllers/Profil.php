<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Profil extends CI_Controller {

	function __construct()

		{

			parent::__construct();
			$this->load->model('M_crud_kegiatan_program');
			$this->load->model('M_crud_baner');
			$this->load->model('M_crud_profil');
			$this->load->model('M_crud_putusan');
		}

	

	public function Selengkap_nya($id)

	{
		$data['tampil_data_kat_putusan']=$this->M_crud_putusan->tampil_data_kat_putusan();
		$data['tampil_data_baner']=$this->M_crud_baner->tampil_data_baner();
		$data['tampil_data_profil']=$this->M_crud_profil->tampil_data_profil();
		$data['tampil_informasi']=$this->M_crud_kegiatan_program->tampil_data_kegiatan_program();
		
		$data['tampil_data_profil_id']=$this->M_crud_profil->tampil_data_profil_id2($id);
		$this->load->view('profil',$data);

	}



	





}





/* copy reg juhendra utama*/

