<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_galleri extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
			
		}
		

		function upload_gambar(){
			$config['upload_path'] = 'img/foto';
			$config['allowed_types'] = '*';
			$config['max_size']	= '100000';
			$config['max_width']  = '100000';
			$config['max_height']  = '100000';
			$this->load->library('upload',$config);
		

			
			
		if ( ! $this->upload->do_upload()){
		

			$this->load->view('admin/admin_galleri_foto');
		}
		}

		function simpan_data_foto(){
			$dt=$this->upload->data();
			$fhoto=$dt['orig_name'];
			$nama=$this->db->escape_str($this->input->post('nama'));
			$allbum=$this->db->escape_str($this->input->post('allbum'));
			$tanggal=Date("d-F-Y | H:i" ,time()+60*60*7);
			$sql=$this->db->query("
			insert into tbl_foto 
				(id_foto, 
				nama, 
				gambar, 
				tgl_foto, 
				id_album
				)
				values
				('', 
				'$nama', 
				'$fhoto', 
				'$tanggal', 
				'$allbum'
				);

			");
		return $sql ;	
		}



		function Tampil_semua_foto(){
			
$sql=$this->db->query("SELECT * from tbl_foto inner join tbl_album on tbl_album.id_album=tbl_foto.id_album  order by tbl_foto.id_foto  ");
			return $sql;
			
		}
		function tampil_semua_album(){
			
			$sql=$this->db->query("select * FROM tbl_album order by  id_album desc");
			return $sql;
			
		}

	

		

		
		function Hapus_data_foto($id=''){
			$this->db->where('id_foto',$id);
		    $query = $this->db->get('tbl_foto');
		    $row = $query->row();

		    unlink("img/foto/$row->gambar");

			$hasil=$this->db->query("delete from tbl_foto where id_foto = '$id' ");
			return $hasil;
		}

		///proses allbum
	
					
	   function upload_gambar_allbum(){
			$config['upload_path'] = 'img/album';
			$config['allowed_types'] = '*';
			$config['max_size']	= '100000';
			$config['max_width']  = '100000';
			$config['max_height']  = '100000';
			$this->load->library('upload',$config);

		if ( ! $this->upload->do_upload()){
		

			$this->load->view('admin/admin_galleri_album');
		}
		}
		function simpan_data_allbum(){
			$dt=$this->upload->data();
			$fhoto=$dt['orig_name'];
			$nama_allbum=$this->db->escape_str($this->input->post('nama_allbum'));
			$tanggal=Date("d-F-Y | H:i" ,time()+60*60*7);
			$sql=$this->db->query("
			insert into tbl_album 
				(id_album, 
				nama_allbum, 
				tgl_album, 
				foto_album
				)
				values
				('', 
				'$nama_allbum', 
				'$tanggal', 
				'$fhoto'
				);

			");
		return $sql ;	
		}
		function Hapus_data_allbum($id=''){
			$this->db->where('id_album',$id);
		    $query = $this->db->get('tbl_album');
		    $row = $query->row();

		    unlink("img/album/$row->foto_album");

			$hasil=$this->db->query("delete from tbl_album where id_album = '$id' ");
			return $hasil;
		} 


		///tampilan depana

		function ambil_jumlah_slider_id($id){
			
			$sql=$this->db->query("select max(id_foto) as total from tbl_foto where id_album ='$id';");
			return $sql;
			
		}

		function tampil_semua_foto_id_allbum($id=''){
			
			$sql=$this->db->query("select * FROM tbl_foto where id_album ='$id';");
			return $sql;
			
		}



		function tampil_album_id_allbum($id=''){
			
			$sql=$this->db->query("select * FROM tbl_album where id_album ='$id';");
			return $sql->row();
			
		}
		
		
		function tampil_semua_foto_depan(){
			
			$sql=$this->db->query("select * FROM tbl_foto ;");
			return $sql;
			
		}

		function tampil_semua_album_3(){
			
			$sql=$this->db->query("select * FROM tbl_album order by  id_album desc limit 3 ");
			return $sql;
			
		}
	
		
				
	
}
