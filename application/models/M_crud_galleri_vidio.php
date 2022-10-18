<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_galleri_vidio extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
			
		}
		
		function Simpan_data_vidio(){
			
			$nama=$this->db->escape_str($this->input->post('nama'));
			$link=$this->db->escape_str($this->input->post('link'));
			$tanggal=Date("d-F-Y");
			$sql=$this->db->query("
				insert into tbl_vidio 
					(id_vidio, 
					nama, 
					link, 
					tgl
					)
					values
					('', 
					'$nama', 
					'$link', 
					'$tanggal'
					);
			
			");
		return $sql ;	
		}

		function Simpan_data_ubah(){
			$id_vidio=$this->db->escape_str($this->input->post('id_vidio'));
			$nama=$this->db->escape_str($this->input->post('nama'));
			$link=$this->db->escape_str($this->input->post('link'));
			$tanggal=Date("d-F-Y");
			$sql=$this->db->query("
				UPDATE
				`tbl_vidio`
				SET
				  `nama` = '$nama',
				  `link` = '$link',
				  `tgl` = '$tanggal'
				WHERE `id_vidio` = '$id_vidio';
			
			");
		return $sql ;	
		}
		
		function tampil_semua_vidio(){
			
			$sql=$this->db->query("select * FROM tbl_vidio order by id_vidio desc ");
			return $sql;
			
		}

		function tampil_vidio_level_utama(){
			
			$sql=$this->db->query("select * FROM tbl_vidio where level='UTAMA' ");
			return $sql;
			
		}

			
		function Hapus_data($id=''){

			$hasil=$this->db->query("delete from tbl_vidio where id_vidio = '$id' ");
			return $hasil;
		} 
					
	   
	
		//tampilan depan
		function tampil_id_profil($id=''){
			$hasil=$this->db->query("SELECT * from tbl_vidio WHERE id_vidio='$id';");
			if ( $hasil->num_rows()>0)
			{
				$row=$hasil->row();
				return $row;
			}else
			{
				redirect('Welcome');
			}
		}
		
		
		function tampil_vidio_3(){
			
			$sql=$this->db->query("select * FROM tbl_vidio order by id_vidio desc limit 3 ");
			return $sql;
			
		}
	
		
				
	
}
