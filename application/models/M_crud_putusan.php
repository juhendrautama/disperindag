<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_putusan extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
		}

function tampil_data_putusan(){
			$sql=$this->db->query("select	* FROM tbl_putusan ");
			return $sql;
		}

function Upload_file(){
			$config['upload_path'] = 'data/putusan';
			$config['allowed_types'] = '*';
			$config['max_size']	= '100000';
			$config['max_width']  = '100000';
			$config['max_height']  = '100000';
			$this->load->library('upload',$config);
			
		if ( ! $this->upload->do_upload()){
		
			$this->load->view('admin/admin_putusan');
		}
		}

function Simpan_data(){
			$dt=$this->upload->data();
			$file=$dt['orig_name'];
			$judul=$this->db->escape_str($this->input->post('judul'));
			$tgl=Date("Y-m-d");
			$sql=$this->db->query("
			INSERT INTO `tbl_putusan` (
				  `id_putusan`,
				  `judul`,
				  `file`,
				  `tgl`
				)
				VALUES
				  (
				    '',
				    '$judul',
				    '$file',
				    '$tgl'
				  );		
				
			");
		return $sql ;	
		}
function Hapus($id=''){
			$this->db->where('id_putusan',$id);
		    $query = $this->db->get('tbl_putusan');
		    $row = $query->row();

		    unlink("data/putusan/$row->file");

			$hasil=$this->db->query("delete from tbl_putusan where id_putusan = '$id' ");
			return $hasil;
		} 

}
