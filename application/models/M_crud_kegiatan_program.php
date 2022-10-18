<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_kegiatan_program extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
			
		}

function tampil_data_kegiatan_program(){
			$sql=$this->db->query("select	* FROM tbl_kegitan_proggram ");
			return $sql;
		}



function Simpan_kegiatan_program(){
			$nama_kegitan=$this->db->escape_str($this->input->post('nama_kegitan'));
			$keterangan=$this->db->escape_str($this->input->post('keterangan'));
			$kategori=$this->db->escape_str($this->input->post('kategori'));
			$tgl=Date("Y-m-d");
			$sql=$this->db->query("
			INSERT INTO `tbl_kegitan_proggram` (
				  `id_kegitan_program`,
				  `nama`,
				  `keterangan`,
				  `gambar`,
				  `tgl`,
				  `kategori`
				)
				VALUES
				  (
				    '',
				    '$nama_kegitan',
				    '$keterangan',
				    '-',
				    '$tgl',
				    '$kategori'
				  );		
				
			");
		return $sql ;	
		}

function tampil_data_kegiatan_id($id){
			$sql=$this->db->query("select	* FROM tbl_kegitan_proggram where id_kegitan_program='$id' ");
			return $sql->row();
		}	

function Simpan_ubah_kegiatan_program($id){
			$nama_kegitan=$this->db->escape_str($this->input->post('nama_kegitan'));
			$keterangan=$this->db->escape_str($this->input->post('keterangan'));
			$kategori=$this->db->escape_str($this->input->post('kategori'));
			$tgl=Date("Y-m-d");
			$sql=$this->db->query("

			update tbl_kegitan_proggram 
				set 
				nama ='$nama_kegitan' , 
				keterangan = '$keterangan' , 
				tgl = '$tgl' , 
				kategori = '$kategori'
				
				where
				id_kegitan_program = '$id' ;	
				
			");
		return $sql ;	
		}		
		
function Hapus_kegiatan_program($id=''){
			$hasil=$this->db->query("delete from tbl_kegitan_proggram where id_kegitan_program = '$id' ");
			return $hasil;
		} 


function tampil_kegiatan_terbaru_sidang_4(){
			
			$sql=$this->db->query("select * FROM tbl_kegitan_proggram where kategori='KEGIATAM' order by id_kegitan_program desc limit 4 ");
			return $sql;
			
		}	

//tampilan depan
function tampil_kategori_program(){
			$sql=$this->db->query("select	* FROM tbl_kegitan_proggram where kategori='PROGRAM' ");
			return $sql;
		}

function tampil_kategori_kegiatan(){
			$sql=$this->db->query("select	* FROM tbl_kegitan_proggram where kategori='KEGIATAM' ");
			return $sql;
		}		


}
