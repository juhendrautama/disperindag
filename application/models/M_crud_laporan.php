<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_laporan extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
		}

function tampil_data_laporan(){
			$sql=$this->db->query("select	* FROM tbl_laporan ");
			return $sql;
		}

function Upload_file(){
			$config['upload_path'] = 'data/laporan';
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
			$nama_laporan=$this->db->escape_str($this->input->post('nama_laporan'));
			$tgl=Date("Y-m-d");
			$sql=$this->db->query("
			INSERT INTO `tbl_laporan` (
				  `id_laporan`,
				  `nama_laporan`,
				  `file`,
				  `tgl`
				)
				VALUES
				  (
				    '',
				    '$nama_laporan',
				    '$file',
				    '$tgl'
				  );		
				
			");
		return $sql ;	
		}
function Hapus($id=''){
			$this->db->where('id_laporan',$id);
		    $query = $this->db->get('tbl_laporan');
		    $row = $query->row();

		    unlink("data/laporan/$row->file");

			$hasil=$this->db->query("delete from tbl_laporan where id_laporan = '$id' ");
			return $hasil;
		} 

}
