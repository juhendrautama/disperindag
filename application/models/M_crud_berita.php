<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_berita extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
			
		}
		

		function upload_gambar(){
			$config['upload_path'] = 'img/berita';
			$config['allowed_types'] = '*';
			$config['max_size']	= '10000';
			$config['max_width']  = '10000';
			$config['max_height']  = '10000';
			$this->load->library('upload',$config);
		

			
			
		if ( ! $this->upload->do_upload()){
		

			$this->load->view('admin/admin_berita_add');
		}
		}

		function simpan_data_berita(){
			$dt=$this->upload->data();
			$fhoto=$dt['orig_name'];
			$judul=$this->db->escape_str($this->input->post('judul'));
			$ketegori=$this->db->escape_str($this->input->post('ketegori'));
			$berita_singkat=$this->db->escape_str($this->input->post('berita_singkat'));
			$berita_lengkap=$this->db->escape_str($this->input->post('berita_lengkap'));
			$penulis=$this->db->escape_str($this->input->post('penulis'));
			$tanggal=Date("d-F-Y | H:i" ,time()+60*60*7);
			$sql=$this->db->query("
			insert into tbl_berita 
				(id_berita, 
				penulis, 
				tgl, 
				judul,
				ketegori, 
				isi_singkat, 
				isi_lengkap, 
				img
				)
				values
				('', 
				'$penulis', 
				'$tanggal', 
				'$judul', 
				'$ketegori',
				'$berita_singkat', 
				'$berita_lengkap', 
				'$fhoto'
				);
			");
		return $sql ;	
		}
		function tampil_semua_berita(){
			
			$sql=$this->db->query("select * FROM tbl_berita order by id_berita desc ");
			return $sql;
			
		}

		
		function tampil_berita_id($id=''){
			
			$sql=$this->db->query("select * FROM tbl_berita where id_berita='$id'");
			return $sql->row();
			
		}
		

		function simpan_data_edit($id=''){
			$judul=$this->db->escape_str($this->input->post('judul'));
			$ketegori=$this->db->escape_str($this->input->post('ketegori'));
			$berita_singkat=$this->db->escape_str($this->input->post('berita_singkat'));
			$berita_lengkap=$this->db->escape_str($this->input->post('berita_lengkap'));
			$penulis=$this->db->escape_str($this->input->post('penulis'));
			$id=$this->db->escape_str($this->input->post('id'));
			$tanggal=Date("d-F-Y | H:i" ,time()+60*60*7);
			$sql=$this->db->query("
			 update tbl_berita 
				set 
				penulis ='$penulis' , 
				tgl = '$tanggal' , 
				judul = '$judul' , 
				ketegori = '$ketegori',
				isi_singkat = '$berita_singkat' , 
				isi_lengkap = '$berita_lengkap'
				
				where
				id_berita = '$id' ;
			");
		return $sql ;	
		}
		function upload_gambar_edit(){
			$config['upload_path'] = 'img/berita';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size']	= '10000';
			$config['max_width']  = '10000';
			$config['max_height']  = '10000';
			$this->load->library('upload',$config);
			
			if ( ! $this->upload->do_upload()){
					
				
					$this->load->view('admin/v_berita_admin_tambah');
				
			}
			
		}

		function Simpan_foto_edit($id=''){
			$dt=$this->upload->data();
			$fhoto=$dt['orig_name'];
			$id=$this->db->escape_str($this->input->post('id'));
			$this->db->where('id_berita',$id);
			$query = $this->db->get('tbl_berita');
			$row = $query->row();

			unlink("img/berita/$row->img");
			$sql=$this->db->query("
			update tbl_berita 
				set 
				img = '$fhoto'
				
				where
				id_berita = '$id' ;  
			");
		return $sql ;	
		}	

		
		function Hapus_data($id=''){
			$this->db->where('id_berita',$id);
		    $query = $this->db->get('tbl_berita');
		    $row = $query->row();

		    unlink("img/berita/$row->img");

			$hasil=$this->db->query("delete from tbl_berita where id_berita = '$id' ");
			return $hasil;
		} 
					
	   
	
		//tampilan depan
		public function ambil_berita($num, $offset)
			 {
			 $this->db->order_by('id_berita', 'desc');

			$data = $this->db->get('tbl_berita', $num, $offset);

			return $data->result();
			 }
	
		function ambil_jumlah_id(){
			
			$sql=$this->db->query("select max(id_berita) as jumlah from tbl_berita");
			return $sql->row();
			
		}
		
		function tampil_berita_update(){
			
			$sql=$this->db->query("select * FROM tbl_berita order by  id_berita desc limit 1");
			return $sql;
			
		}
		function tampil_detail_berita_depan($id=''){
			$hasil=$this->db->query("SELECT * from tbl_berita WHERE id_berita='$id';");
			if ( $hasil->num_rows()>0)
			{
				$row=$hasil->row();
				return $row;
			}else
			{
				redirect('Welcome');
			}
		}
		
		
			function tampil_berita_5(){
			
			$sql=$this->db->query("select * FROM tbl_berita order by id_berita desc limit 5 ");
			return $sql;
			
		}

			function tampil_berita_terbaru_1(){
			
			$sql=$this->db->query("select * FROM tbl_berita order by id_berita desc limit 1 ");
			return $sql;
			
		}

			function tampil_berita_terbaru_4(){
			
			$sql=$this->db->query("select * FROM tbl_berita order by id_berita desc limit 4 ");
			return $sql;
			
		}
	
		
		function tampil_berita_terbaru_sidang_1(){
			
			$sql=$this->db->query("select * FROM tbl_berita where ketegori='Sidang' order by id_berita desc limit 1 ");
			return $sql;
			
		}	


			function tampil_berita_terbaru_sidang_4(){
			
			$sql=$this->db->query("select * FROM tbl_berita where ketegori='Sidang' order by id_berita desc limit 4 ");
			return $sql;
			
		}		
	
}
