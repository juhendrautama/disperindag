<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_web_terkait extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
		}

function tampil_data_web_terkait(){
			$sql=$this->db->query("select	* FROM tbl_web_terkait ");
			return $sql;
		}

function Upload_gambar(){
			$config['upload_path'] = 'img/web_terkait';
			$config['allowed_types'] = '*';
			$config['max_size']	= '100000';
			$config['max_width']  = '100000';
			$config['max_height']  = '100000';
			$this->load->library('upload',$config);
			
		if ( ! $this->upload->do_upload()){
		
			$this->load->view('admin/admin_web_terkait');
		}
		}

function Simpan_data(){
			$dt=$this->upload->data();
			$gambar=$dt['orig_name'];
			$judul_web_terkait=$this->db->escape_str($this->input->post('judul_web_terkait'));
			$link=$this->db->escape_str($this->input->post('link'));
			$tgl=Date("Y-m-d");
			$sql=$this->db->query("
			INSERT INTO `tbl_web_terkait` (
				  `id_web_terkait`,
				  `judul_web_terkait`,
				  `link`,
				  `gambar_web_terkait`,
				  `tgl`
				)
				VALUES
				  (
				    '',
				    '$judul_web_terkait',
				    '$link',
				    '$gambar',
				    '$tgl'
				  );		
				
			");
		return $sql ;	
		}
function Hapus_data($id=''){
			$this->db->where('id_web_terkait',$id);
		    $query = $this->db->get('tbl_web_terkait');
		    $row = $query->row();

		    unlink("img/web_terkait/$row->gambar_web_terkait");

			$hasil=$this->db->query("delete from tbl_web_terkait where id_web_terkait = '$id' ");
			return $hasil;
		} 

}
