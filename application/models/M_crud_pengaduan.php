<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_crud_pengaduan extends CI_Model {

		function __construct()
		{
			parent::__construct();
			$this->load->database();
			
		}
		

		function Upload_file(){
			$config['upload_path'] = 'data/putusan/file_pengaduan';
			$config['allowed_types'] = '*';
			$config['max_size']	= '10000';
			$config['max_width']  = '10000';
			$config['max_height']  = '10000';
			$this->load->library('upload',$config);
			
		if ( ! $this->upload->do_upload()){
		

			$this->load->view('form_pengaduan');
		}
		}



	function Simpan_data_pengaduan(){
		$i_konsumen_nama=$this->db->escape_str($this->input->post('i_konsumen_nama')); 
		$i_konsumen_jk=$this->db->escape_str($this->input->post('i_konsumen_jk')); 
		$i_konsumen_tgl=$this->db->escape_str($this->input->post('i_konsumen_tgl')); 
		$i_konsumen_noidentitas=$this->db->escape_str($this->input->post('i_konsumen_noidentitas')); 
		$i_konsumen_notlpn=$this->db->escape_str($this->input->post('i_konsumen_notlpn')); 
		$i_konsumen_email=$this->db->escape_str($this->input->post('i_konsumen_email')); 
		$i_konsumen_alamat=$this->db->escape_str($this->input->post('i_konsumen_alamat')); 
		$i_konsumen_prov=$this->db->escape_str($this->input->post('i_konsumen_prov')); 
		$i_konsumen_kabkot=$this->db->escape_str($this->input->post('i_konsumen_kabkot')); 
		$i_konsumen_kodepos=$this->db->escape_str($this->input->post('i_konsumen_kodepos')); 
		$i_pelaku_usaha_alamat=$this->db->escape_str($this->input->post('i_pelaku_usaha_alamat'));
		$i_pelaku_usaha_notlpn=$this->db->escape_str($this->input->post('i_pelaku_usaha_notlpn'));
		$i_pelaku_usaha_prov=$this->db->escape_str($this->input->post('i_pelaku_usaha_prov'));
		$i_pelaku_usaha_kabkot=$this->db->escape_str($this->input->post('i_pelaku_usaha_kabkot'));
		$i_pelaku_usaha_kodepos=$this->db->escape_str($this->input->post('i_pelaku_usaha_kodepos'));
		$t_pengaduan_jenis_produk=$this->db->escape_str($this->input->post('t_pengaduan_jenis_produk'));
		$t_pengaduan_merekdagang=$this->db->escape_str($this->input->post('t_pengaduan_merekdagang'));
		$t_pengaduan_tipe=$this->db->escape_str($this->input->post('t_pengaduan_tipe'));
		$t_pengaduan_jenis_pengaduan=$this->db->escape_str($this->input->post('t_pengaduan_jenis_pengaduan'));
		$t_pengaduan_saat_kejadian_ditemukan_tgl=$this->db->escape_str($this->input->post('t_pengaduan_saat_kejadian_ditemukan_tgl'));
		$t_pengaduan_saat_kejadian_ditemukan_jam=$this->db->escape_str($this->input->post('t_pengaduan_saat_kejadian_ditemukan_jam'));
		$t_pengaduan_saat_kejadian_ditemukan_lokasi=$this->db->escape_str($this->input->post('t_pengaduan_saat_kejadian_ditemukan_lokasi'));
		$dt=$this->upload->data();
		$t_pengaduan_bukti_pembelian=$dt['orig_name'];
		$t_pengaduan_jenis_hubungan_saksi=$this->db->escape_str($this->input->post('t_pengaduan_jenis_hubungan_saksi'));
		$t_pengaduan_nama_saksi=$this->db->escape_str($this->input->post('t_pengaduan_nama_saksi'));
		$t_pengaduan_bentuk_kerugian_meterial=$this->db->escape_str($this->input->post('t_pengaduan_bentuk_kerugian_meterial'));
		$t_pengaduan_bentuk_kerugian_fisik=$this->db->escape_str($this->input->post('t_pengaduan_bentuk_kerugian_fisik'));
		$t_pengaduan_bentuk_kerugian_psikis=$this->db->escape_str($this->input->post('t_pengaduan_bentuk_kerugian_psikis'));
		$jenis_tuntutan=$this->db->escape_str($this->input->post('jenis_tuntutan'));
		$kronologi_pengaduan=$this->db->escape_str($this->input->post('kronologi_pengaduan'));
		$tgl=Date("Y-m-d");
  		$sql=$this->db->query("
		  INSERT INTO `tbl_pengaduan` (
			`id_pengaduan`,
			`i_konsumen_nama`,
			`i_konsumen_jk`,
			`i_konsumen_tgl`,
			`i_konsumen_noidentitas`,
			`i_konsumen_notlpn`,
			`i_konsumen_email`,
			`i_konsumen_alamat`,
			`i_konsumen_prov`,
			`i_konsumen_kabkot`,
			`i_konsumen_kodepos`,
			`i_pelaku_usaha_alamat`,
			`i_pelaku_usaha_notlpn`,
			`i_pelaku_usaha_prov`,
			`i_pelaku_usaha_kabkot`,
			`i_pelaku_usaha_kodepos`,
			`t_pengaduan_jenis_produk`,
			`t_pengaduan_merekdagang`,
			`t_pengaduan_tipe`,
			`t_pengaduan_jenis_pengaduan`,
			`t_pengaduan_saat_kejadian_ditemukan_tgl`,
			`t_pengaduan_saat_kejadian_ditemukan_jam`,
			`t_pengaduan_saat_kejadian_ditemukan_lokasi`,
			`t_pengaduan_bukti_pembelian`,
			`t_pengaduan_jenis_hubungan_saksi`,
			`t_pengaduan_nama_saksi`,
			`t_pengaduan_bentuk_kerugian_meterial`,
			`t_pengaduan_bentuk_kerugian_fisik`,
			`t_pengaduan_bentuk_kerugian_psikis`,
			`jenis_tuntutan`,
			`kronologi_pengaduan`,
			`tgl`
		  )
		  VALUES
			(
			  '',
			  '$i_konsumen_nama',
			  '$i_konsumen_jk',
			  '$i_konsumen_tgl',
			  '$i_konsumen_noidentitas',
			  '$i_konsumen_notlpn',
			  '$i_konsumen_email',
			  '$i_konsumen_alamat',
			  '$i_konsumen_prov',
			  '$i_konsumen_kabkot',
			  '$i_konsumen_kodepos',
			  '$i_pelaku_usaha_alamat',
			  '$i_pelaku_usaha_notlpn',
			  '$i_pelaku_usaha_prov',
			  '$i_pelaku_usaha_kabkot',
			  '$i_pelaku_usaha_kodepos',
			  '$t_pengaduan_jenis_produk',
			  '$t_pengaduan_merekdagang',
			  '$t_pengaduan_tipe',
			  '$t_pengaduan_jenis_pengaduan',
			  '$t_pengaduan_saat_kejadian_ditemukan_tgl',
			  '$t_pengaduan_saat_kejadian_ditemukan_jam',
			  '$t_pengaduan_saat_kejadian_ditemukan_lokasi',
			  '$t_pengaduan_bukti_pembelian',
			  '$t_pengaduan_jenis_hubungan_saksi',
			  '$t_pengaduan_nama_saksi',
			  '$t_pengaduan_bentuk_kerugian_meterial',
			  '$t_pengaduan_bentuk_kerugian_fisik',
			  '$t_pengaduan_bentuk_kerugian_psikis',
			  '$jenis_tuntutan',
			  '$kronologi_pengaduan',
			  '$tgl'
			);
		  
		  
			");
		return $sql ;	
		}

function tampil_data_pengaduan(){
			$sql=$this->db->query("select * FROM tbl_pengaduan ");
			return $sql;
		}	

function Hapus_data($id=''){
			$this->db->where('id_pengaduan',$id);
		    $query = $this->db->get('tbl_pengaduan');
		    $row = $query->row();
		    unlink("data/putusan/file_pengaduan/$row->t_pengaduan_bukti_pembelian");
			$hasil=$this->db->query("delete from tbl_pengaduan where id_pengaduan = '$id' ");
			return $hasil;
		} 			
	
}
