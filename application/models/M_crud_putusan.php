<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_putusan extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
		}

function tampil_data_putusan_idkat($id_kategori_dok){
			$sql=$this->db->query("select	* FROM tbl_putusan where id_kategori_dok='$id_kategori_dok'");
			return $sql;
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
			$id_kategori_dok=$this->db->escape_str($this->input->post('id_kategori_dok'));
			$tgl=Date("Y-m-d");
			$sql=$this->db->query("
			INSERT INTO `tbl_putusan` (
				  `id_putusan`,
				  `judul`,
				  `file`,
				  `tgl`,
				  `id_kategori_dok`
				)
				VALUES
				  (
				    '',
				    '$judul',
				    '$file',
				    '$tgl',
					'$id_kategori_dok'
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


//ketegori
function tampil_data_kat_putusan_id($id_kategori_dok){
	$sql=$this->db->query("select	* FROM tb_kategori_dokumen where id_kategori_dok='$id_kategori_dok'");
	return $sql;
}
function tampil_data_kat_putusan(){
	$sql=$this->db->query("select	* FROM tb_kategori_dokumen ");
	return $sql;
}

function Simpan_data_kategori(){
	$nama_kategori_dok=$this->db->escape_str($this->input->post('nama_kategori_dok'));
	$ket=$this->db->escape_str($this->input->post('ket'));
	$tgl=Date("Y-m-d");
	$sql=$this->db->query("
	INSERT INTO `tb_kategori_dokumen` (
		  `id_kategori_dok`,
		  `nama_kategori_dok`,
		  `ket`,
		  `tgl`
		)
		VALUES
		  (
			'',
			'$nama_kategori_dok',
			'$ket',
			'$tgl'
		  );		
		
	");
return $sql ;	
}

function Hapus_kategori($id=''){
	$hasil=$this->db->query("delete from tb_kategori_dokumen where id_kategori_dok = '$id' ");
	return $hasil;
} 




}
