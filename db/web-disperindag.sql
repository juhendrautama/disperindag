-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 08:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-disperindag`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_tlpn` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `user`, `pass`, `alamat`, `no_tlpn`, `status`, `tgl`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'jambi', '082117114028', '1', '2021-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `id_album` int(7) NOT NULL,
  `nama_allbum` varchar(100) DEFAULT NULL,
  `tgl_album` varchar(100) DEFAULT NULL,
  `foto_album` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baner`
--

CREATE TABLE `tbl_baner` (
  `id_baner` int(7) NOT NULL,
  `judul_baner` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `gambar_baner` varchar(200) NOT NULL,
  `tgl_baner` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(7) NOT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `tgl` varchar(100) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `ketegori` varchar(50) NOT NULL,
  `isi_singkat` text DEFAULT NULL,
  `isi_lengkap` text DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foto`
--

CREATE TABLE `tbl_foto` (
  `id_foto` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `tgl_foto` varchar(100) DEFAULT NULL,
  `id_album` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_foto`
--

INSERT INTO `tbl_foto` (`id_foto`, `nama`, `gambar`, `tgl_foto`, `id_album`) VALUES
(6, 'Kunjungi Tim Penggerak PKK Kerinci', '15WhatsApp_Image_2021-08-02_at_15.42.43.jpeg', '26-October-2021 | 23:25', 2),
(8, 'tempat tidur', 'room1.jpg', '15-February-2022 | 16:32', 7),
(9, 'Tempat Tidur bet 1', 'roomv2.jpg', '15-February-2022 | 16:32', 7),
(10, 'Fasilitas Room', 'room3.jpg', '15-February-2022 | 16:33', 7),
(11, 'Tempat Santai', 'santai.jpg', '15-February-2022 | 16:35', 8),
(12, 'Tempat Makan', 'makan.jpg', '15-February-2022 | 16:35', 8),
(13, 'Lantai dua', 'lantai2.jpg', '15-February-2022 | 16:37', 9),
(14, 'Resepsionis', 'Resepsionis.jpg', '15-February-2022 | 16:38', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_galleri`
--

CREATE TABLE `tbl_kategori_galleri` (
  `id_kategori_galeri` int(7) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kegitan_proggram`
--

CREATE TABLE `tbl_kegitan_proggram` (
  `id_kegitan_program` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kegitan_proggram`
--

INSERT INTO `tbl_kegitan_proggram` (`id_kegitan_program`, `nama`, `keterangan`, `gambar`, `tgl`, `kategori`) VALUES
(46, 'adad', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>adad</p>\r\n</body>\r\n</html>', '-', '2022-02-16', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(7) NOT NULL,
  `nama_kontak` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `nama_kontak`, `isi`, `tgl`) VALUES
(3, 'ADDRESS', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Jl. Mayjen H M.J. Singedekane, Sungai Putri, Kec. Telanaipura, Kota Jambi, Jambi 36361</p>\r\n</body>\r\n</html>', '2021-10-28'),
(4, 'PHONE NUMBER', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>087265251</p>\r\n</body>\r\n</html>', '2021-10-28'),
(5, 'EMAIL', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>pkk.jambiprov.go.id</p>\r\n</body>\r\n</html>', '2021-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengaduan`
--

CREATE TABLE `tbl_pengaduan` (
  `id_pengaduan` int(7) NOT NULL,
  `i_konsumen_nama` varchar(100) DEFAULT NULL,
  `i_konsumen_jk` varchar(50) DEFAULT NULL,
  `i_konsumen_tgl` date DEFAULT NULL,
  `i_konsumen_noidentitas` varchar(50) DEFAULT NULL,
  `i_konsumen_notlpn` varchar(20) DEFAULT NULL,
  `i_konsumen_email` varchar(20) DEFAULT NULL,
  `i_konsumen_alamat` text DEFAULT NULL,
  `i_konsumen_prov` varchar(10) DEFAULT NULL,
  `i_konsumen_kabkot` varchar(50) DEFAULT NULL,
  `i_konsumen_kodepos` varchar(50) DEFAULT NULL,
  `i_pelaku_usaha_alamat` text DEFAULT NULL,
  `i_pelaku_usaha_notlpn` varchar(20) DEFAULT NULL,
  `i_pelaku_usaha_prov` varchar(20) DEFAULT NULL,
  `i_pelaku_usaha_kabkot` varchar(50) DEFAULT NULL,
  `i_pelaku_usaha_kodepos` varchar(10) DEFAULT NULL,
  `t_pengaduan_jenis_produk` varchar(100) DEFAULT NULL,
  `t_pengaduan_merekdagang` varchar(100) DEFAULT NULL,
  `t_pengaduan_tipe` varchar(100) DEFAULT NULL,
  `t_pengaduan_jenis_pengaduan` varchar(100) DEFAULT NULL,
  `t_pengaduan_saat_kejadian_ditemukan_tgl` date DEFAULT NULL,
  `t_pengaduan_saat_kejadian_ditemukan_jam` varchar(50) DEFAULT NULL,
  `t_pengaduan_saat_kejadian_ditemukan_lokasi` varchar(100) DEFAULT NULL,
  `t_pengaduan_bukti_pembelian` varchar(150) DEFAULT NULL,
  `t_pengaduan_jenis_hubungan_saksi` varchar(50) DEFAULT NULL,
  `t_pengaduan_nama_saksi` varchar(100) DEFAULT NULL,
  `t_pengaduan_bentuk_kerugian_meterial` varchar(100) DEFAULT NULL,
  `t_pengaduan_bentuk_kerugian_fisik` varchar(100) DEFAULT NULL,
  `t_pengaduan_bentuk_kerugian_psikis` varchar(100) DEFAULT NULL,
  `jenis_tuntutan` varchar(100) DEFAULT NULL,
  `kronologi_pengaduan` text DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `id_profil` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tgl` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_profil`
--

INSERT INTO `tbl_profil` (`id_profil`, `nama`, `isi`, `tgl`) VALUES
(5, 'Struktur Organisasi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><img src=\"https://pkk.jambiprov.go.id/upload/source/WhatsApp%20Image%202021-11-04%20at%2010.56.05.jpg?1635998341893\" alt=\"WhatsApp Image 2021-11-04 at 10.56.05\" width=\"744\" height=\"993\" /></p>\r\n</body>\r\n</html>', '2021-03-31'),
(4, 'SEJARAH', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><span class=\" jgG6ef\"><strong>PKK</strong></span>&nbsp;yang merupakan gerakan pembangunan masyarakat bermula dari Seminar&nbsp;<strong>Home Economic</strong>&nbsp;di Bogor pada tahun 1957, yang menghasilkan rumusan 10 Segi Kehidupan Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Kemudian ditindak lanjuti oleh Kementrian Pendidikan, Pengajaran dan Kebudayaan pada tahun 1961 yang menetapkan 10 Segi Kehidupan Keluarga sebagai Kurikulum Pendidikan Kesejahteraan Keluarga yang diajarkan di sekolah-sekolah oleh Pendidikan Masyarakat (PENMAS).</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada bulan Mei tahun 1962 di Desa Salaman Kabupaten Magelang, Provinsi Jawa Tengah, didirikan Pusat Latihan Pendidikan Masyarakat (PLPM) untuk menyebarluaskan 10 Segi Kehidupan Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Sekitar tahun 1967 kehidupan sebagian masyarakat Jawa Tengah sangat menyedihkan, khususnya di daerah Dieng Kabupaten Wonosobo diantara mereka banyak yang menderita Honger Odeem (HO). Kenyataan ini menyentuh hati Ibu&nbsp;<strong>Isriati Moenadi,</strong>&nbsp;sebagai Isteri Gubernur Jawa Tengah saat itu. Beliau merasa bertanggung jawab terhadap kesejahteraan masyarakatnya dan berinisiatif membentuk PKK di Jawa Tengah, dari tingkat Provinsi sampai ketingkat Desa dan Kelurahan, dengan susunan pengurus terdiri dari; unsur-unsur Isteri Pimpinan Daerah, Tokoh-tokoh masyarakat, perempuan dan laki-laki untuk melaksanakan 10 Segi Pokok PKK secara intensif.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Dari keberhasilan PKK di Jawa Tengah, maka Presiden RI menganjurkan kepada Menteri Dalam Negeri agar PKK dilaksanakan di daerah-daerah seluruh Indonesia.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tanggal 27 Desember 1972 Menteri Dalam Negeri mengirimkan Surat Kawat Nomor SUS 3/6/12 tangal 27 Desember 1972 kepada Gubernur Jawa Tengah untuk merubah nama Pendidikan Kesejahteraan Keluarga menjadi Pembinaan Kesejahteraan Keluarga, tembusan disampaikan kepada Gubernur seluruh Indonesia.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 1978 diselenggarakan Lokakarya Pembudayaan 10 Segi Pokok PKK, yang menghasilkan rumusan 10 Program Pokok PKK yang sampai sekarang menjadi program Gerakan PKK.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Berdasarkan Keputusan Presiden No 28 Tahun 1980, tentang Perubahan LSD menjadi Lembaga Ketahanan Masyarakat Desa (LKMD), posisi PKK sebagai Seksi ke-10 di LKMD, selanjutnya Gerakan PKK dibina oleh Departemen Dalam Negeri.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Berdasarkan Keputusan Menteri Dalam Negeri No. 4 tahun 1982, Tim Penggerak PKK Pusat dibentuk dan dipimpin oleh Ibu Amir Mahmud, istri Menteri Dalam Negeri saat itu. Sebagai langkah selanjutnya, diadakan pemantapan Gerakan PKK baik tentang pengelolaan dan pengorganisasiannya maupun program kerja dan administrasi melalui Pelatihan, Orientasi, RAKON, dan RAKERNAS.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">RAKERNAS I PKK diadakan pada bulan Maret 1982. Selanjutnya tahun 1983 di bawah pimpinan Ibu Kardinah Soepardjo Roestam, melaksanakan RAKERNAS II PKK untuk memantapkan kelembagaan PKK dengan 10 Program Pokok PKK nya.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Setiap tahun diadakan Rapat Konsultasi, lima tahun sekali diselenggarakan Rapat Kerja Nasional (RAKERNAS) PKK. Kemudian pada Sidang Umum MPR Tahun 1983, berdasarkan TAP MPR No. II/MPR/1983 tentang GBHN, Pembinaan Kesejahteraan Keluarga ditetapkan sebagai salah satu wahana untuk meningkatkan Peranan Wanita Dalam Pembangunan.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 1984 diterbitkan Keputusan Menteri Dalam Negeri No. 28 Tahun 1984 tentang Pembinaan Kesejahteraan Keluarga (PKK) yang menetapkan tentang pengertian, tujuan, sasaran, fungsi, tugas Gerakan PKK, dan ketentuan atribut-atributnya.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Tahun 1987 atas persetujuan Presiden RI dibentuk Kelompok-kelompok PKK Dusun/Lingkungan, RW, RT, dan kelompok Dasawisma, guna meningkatkan pembinaan warga dalam melaksanakan 10 Program Pokok PKK dan mulai tahun 1988 PKK mendapatkan penghargaan-penghargaan Internasional seperti Maurice Pate , Sasakawa Health Price, maupun penghargaan tingkat nasional dan daerah. RAKERNAS III PKK dilaksanakan pada saat dipimpin oleh Ibu Ketua Umum Ibu Kardinah Soepardjo Roestam pada tahun 1988, memantapkan pelaksanaan program-program PKK dan mendapatkan penghargaan Hari Bumi Sedunia di Miami, Amerika.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 1993 dalam RAKERNAS IV PKK yang dipimpin oleh Ketua Umum Ibu Odiana Rudini telah memutuskan untuk &rdquo;MENETAPKAN TANGGAL 27 DESEMBER SEBAGAI HARI KESATUAN GERAK PKK&rdquo;, yang diperingati setiap tahun. Pada bulan Desember 1997 diselenggarakan Jambore Nasional Kader Posyandu yang pertama diikuti oleh Kader-kader PKK dari 27 provinsi, kabupaten/kota, dan desa/kelurahan.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Melalui RAKERNAS V PKK yang diadakan pada tahun 1998 Menteri Dalam Negeri Bapak Yogie S.M selaku Pembina PKK memberikan penghargaan kepada Pelindung, Penasehat, dan Kader-kader PKK yang telah berpartisipasi selama 25 tahun atau lebih, 15 tahun, dan 10 tahun tanpa terhenti.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">1.&nbsp; Medali Tertinggi disebut PARAMAHITA NUGRAHA.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">2.&nbsp; Medali Utama disebut ADHI BHAKTI UTAMA.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">3.&nbsp; Medali Madya disebut ADHI BHAKTI MADYA.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">4.&nbsp; Medali Pratama disebut ADHI BHAKTI PRATAMA</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Sejalan dengan Undang-Undang No. 22 Tahun 1999 tentang Pemerintahan Daerah, Tim Penggerak PKK Pusat telah menyelenggarakan Rapat Kerja Nasional Luar Biasa PKK pada tanggal 31 Oktober sampai dengan 02 November 2000 di Bandung dipimpin oleh Ibu Suryadi Sudirdja, yang menghasilkan pokok-pokok kesepakatan antara lain, adalah pengertian dan nomenklatur Gerakan PKK berubah dari Pembinaan Kesejahteraan Keluarga menjadi Pemberdayaan dan Kesejahteraan Keluarga, disingkat PKK, dan adanya Badan Penyantun TP PKK disemua tingkatan.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Hasil Kesepakatan Rakernaslub PKK tersebut selanjutnya ditetapkan menjadi Keputusan Menteri Dalam Negeri dan Otonomi Daerah No. 53 Tahun 2000 tentang Gerakan Pemberdayaan dan Kesejahteraan Keluarga (PKK). Dengan dasar Kepmendagri tersebut disusunlah Pedoman Umum Gerakan PKK sebagai panduan pelaksanaan Gerakan PKK, sampai saat ini.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 2005 TP PKK Pusat mengadakan Rakernas VI PKK dipimpin oleh Ketua Umum Ibu Susiyati Ma&rsquo;ruf menetapkan perubahan nama Badan Penyantun PKK menjadi Dewan Penyantun PKK, serta adanya Seragam Nasional PKK. Pada tahun 2010 diselenggarakan Rakernas VII PKK yang dipimpin oleh Ketua Umum TP PKK Ibu Hj. Vita Gamawan Fauzi, SH yang menghasilkan rumusan antara lain tentang: Penyesuaian dan penetapan Hari Kesatuan Gerak PKK dari tanggal 27 Desember menjadi 4 Maret.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 2013, diterbitkan Peraturan Menteri Dalam Negeri No 1 Tahun 2013 tentang Pemberdayaan Masyarakat melalui Gerakan Pemberdayaan dan Kesejahteraan Keluarga. Hal mendasar yang diatur dalam Permendagri tersebut adalah:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">1.&nbsp; Pembinaan dan pengawasan terhadap Pemberdayaan Masyarakat melalui Gerakan PKK ada di Institusi yang membidangi Pemberdayaan Masyarakat</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">2.&nbsp; Sebutan Dewan Penyantun menjadi Pembina sehingga Menteri Dalam Negeri menjadi&nbsp;<strong>Ketua Pembina TP PKK Pusat, Gubernur Ketua Pembina TP PKK Provinsi sampai dengan Kepala Desa/Lurah sebagai Ketua Pembina</strong>&nbsp;di wilayahnya masing-masing.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 2015 dilaksanakan Rakernas VIII Tahun 2015 yang dipimpin oleh&nbsp;<strong>dr.Erni Guntarti Tjahjo Kumolo</strong>, bertempat di Red Top Hotel, Rakernas tersebut menghasilkan:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">1.&nbsp; Bidang-bidang yang sebelumnya dengan sebutan Ketua I, Ketua II, Ketua III, dan Ketua IV. Pada Rakernas VIII Tahun 2015 menjadi:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><strong>Ketua I Bidang Pembinaan Karakter Keluarga</strong></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><strong>Ketua II Bidang Pendidikan dan Peningkatan Ekonomi Keluarga</strong></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><strong>Ketua III Bidang Penguatan Ketahanan Keluarga</strong></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><strong>Ketua IV Bidang Kesehatan Keluarga dan Lingkungan</strong></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">2.&nbsp; Susunan Keanggotaan Tim Penggerak PKK di Pusat ditambah dengan&nbsp;<strong>&ldquo;Tenaga Ahli&rdquo;</strong>&nbsp;sebagai unsur pendukung sesuai dengan keahliannya</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">3.&nbsp; Jumlah Jenis surat disederhanakan dari 11 menjadi 8 (delapan): Surat Keputusan; Surat Biasa; Surat Pengantar; Surat Edaran; Surat Kuasa; Surat Tugas; Piagam/Penghargaan; Lembar Disposisi</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">4.&nbsp; Program Unggulan; Program Unggulan merupakan ciri khas Gerakan PKK untuk mencapai visi dan misinya, yang dilaksanakan oleh seluruh jajaran Tim Penggerak PKK Pusat dan Daerah sampai kepada Kelompok-kelompok PKK dan Dasawisma sesuai dengan peran, fungsi, dan kapasitasnya masing-masing. Program Unggulan ini dikategorikan sebagai program prioritas. Program Unggulan dimaksud, adalah:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">a.&nbsp; Pola Asuh Anak dan Remaja dengan penuh cinta dan kasih sayang dalam Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">b.&nbsp; Pemberdayaan Ekonomi Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">c.&nbsp; Pemanfaatan lahan melalui Program Halaman Asri Teratur Indah dan Nyaman (<strong>Hatinya</strong>) PKK</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">d.&nbsp; Hidup Bersih Sehat di dalam Keluarga dan Lingkungan dengan PHBS dan perilaku Cerdik (cek kesehatan secara teratur, enyahkan asap rokok, rajin olahraga, diet seimbang, istirahat cukup, dan kelola stress).</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 2021 dilaksanakan Rakernas IX Tahun 2021 yang dipimpin oleh Ny.Tri Tito Karnavian, bertempat di Kemendagri, Rakernas tersebut menghasilkan:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">a. Draft Rencana Induk Gerakan PKK</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">b. Juksi Tata Kelola Kelembagaan PKK</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Secara Umum Rencana Induk Gerakan PKK tersebut merupakan representasi dari ketentuan yang tertuang dalam Peraturan Presiden No.99 Tahun 2017 tentang Gerakan Pemberdayaan dan Kesejaheraan Keluarga, serta Peraturan Menteri Dalam Negeri No.36 Tahun 2020 tentang Petunjuk Pelaksanaan Peraturan Presiden No.99 Tahun 2017 tentang Gerakan Pemberdayaan dan Kesejaheraan Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Sedangkan isi Juknis Tata Kelola Kelembagaan PKK tidak mengalami banyak perubahan dari Hasil Rakernas VIII PKK Tahun 2015 sebagai Pedoman Gerakan PKK.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: center;\">Jambi, AGUSTUS 2021</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: center;\">TIM PENGGERAK PKK PROV.JAMBI</p>\r\n</body>\r\n</html>', '2021-03-31'),
(6, 'VISI & MISI', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<section id=\"h.71e6c51e3ba194c1_27\" class=\"yaqOZd\">\r\n<div class=\"mYVXT\">\r\n<div class=\"LS81yb VICjCf\" tabindex=\"-1\">\r\n<div class=\"hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc\">\r\n<div class=\"JNdkSc-SmKAyb\">\r\n<div class=\"\">\r\n<div class=\"oKdM2c Kzv0Me\">\r\n<div id=\"h.71e6c51e3ba194c1_24\" class=\"hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque GNzUNc\">\r\n<div class=\"jXK9ad-SmKAyb\">\r\n<div class=\"tyJCtd mGzaTb baZpAe\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" jgG6ef\">A. VISI</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"h.71e6c51e3ba194c1_31\" class=\"yaqOZd\">\r\n<div class=\"mYVXT\">\r\n<div class=\"LS81yb VICjCf\" tabindex=\"-1\">\r\n<div class=\"hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc\">\r\n<div class=\"JNdkSc-SmKAyb\">\r\n<div class=\"\">\r\n<div class=\"oKdM2c Kzv0Me\">\r\n<div id=\"h.71e6c51e3ba194c1_28\" class=\"hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque GNzUNc\">\r\n<div class=\"jXK9ad-SmKAyb\">\r\n<div class=\"tyJCtd mGzaTb baZpAe\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" KB0Tx\"><strong>Terwujudnya Keluarga Sehat, Cerdas, Berdaya, Beriman dan Bertaqwa Menuju Indonesia Maju di Tahun 2024</strong></span></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"h.71e6c51e3ba194c1_35\" class=\"yaqOZd\">\r\n<div class=\"mYVXT\">\r\n<div class=\"LS81yb VICjCf\" tabindex=\"-1\">\r\n<div class=\"hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc\">\r\n<div class=\"JNdkSc-SmKAyb\">\r\n<div class=\"\">\r\n<div class=\"oKdM2c Kzv0Me\">\r\n<div id=\"h.71e6c51e3ba194c1_32\" class=\"hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque GNzUNc\">\r\n<div class=\"jXK9ad-SmKAyb\">\r\n<div class=\"tyJCtd mGzaTb baZpAe\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">B. MISI</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"h.71e6c51e3ba194c1_39\" class=\"yaqOZd\">\r\n<div class=\"IFuOkc\">&nbsp;</div>\r\n<div class=\"mYVXT\">\r\n<div class=\"LS81yb VICjCf\" tabindex=\"-1\">\r\n<div class=\"hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc\">\r\n<div class=\"JNdkSc-SmKAyb\">\r\n<div class=\"\">\r\n<div class=\"oKdM2c Kzv0Me\">\r\n<div id=\"h.71e6c51e3ba194c1_36\" class=\"hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque GNzUNc\">\r\n<div class=\"jXK9ad-SmKAyb\">\r\n<div class=\"tyJCtd mGzaTb baZpAe\">\r\n<ol class=\"n8H08c BKnRcf\">\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Membentuk Karakter Keluarga melalui Pola Asuh yang sesuai dengan Nilai Dasar Pancasila.</span></p>\r\n</li>\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Meningkatkan Pendidikan &amp; Ekonomi Keluarga.</span></p>\r\n</li>\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Memperkuat Ketahanan Keluarga melalui Pemenuhan Pangan, Sandang, Rumah Sehat Layak Huni serta Tata Laksana Rumah Tangga.</span></p>\r\n</li>\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Meningkatkan Kesehatan Keluarga, Lingkungan dan Perencanaan Sehat.</span></p>\r\n</li>\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Modernisasi Organisasi PKK dengan memanfaatkan Teknologi Informasi.</span></p>\r\n</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n</body>\r\n</html>', '2021-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_putusan`
--

CREATE TABLE `tbl_putusan` (
  `id_putusan` int(7) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(300) NOT NULL,
  `tgl` date NOT NULL,
  `id_kategori_dok` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_putusan`
--

INSERT INTO `tbl_putusan` (`id_putusan`, `judul`, `file`, `tgl`, `id_kategori_dok`) VALUES
(1, 'a', 'Screenshot_2022-10-20_142942.png', '2022-10-21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vidio`
--

CREATE TABLE `tbl_vidio` (
  `id_vidio` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `tgl` varchar(100) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vidio`
--

INSERT INTO `tbl_vidio` (`id_vidio`, `nama`, `link`, `tgl`, `level`) VALUES
(4, 'PROFIL PROVINSI JAMBI', 'rRcAyAiqprY', '16-February-2022', 'UTAMA'),
(6, 'Gubernur Jambi H. Al Haris menerima dua penghargaan Abdi Bakti Tani 2021', 'vq5pCJrCm2E', '16-February-2022', NULL),
(7, 'Gubernur Al Haris: Kita Harus bijak dalam bermedsos', '6ru77bteXtQ', '16-February-2022', NULL),
(8, 'Vaksin Provinsi Jambi', 'IEE_N9MRccA', '16-February-2022', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_terkait`
--

CREATE TABLE `tbl_web_terkait` (
  `id_web_terkait` int(7) NOT NULL,
  `judul_web_terkait` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `gambar_web_terkait` varchar(200) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_web_terkait`
--

INSERT INTO `tbl_web_terkait` (`id_web_terkait`, `judul_web_terkait`, `link`, `gambar_web_terkait`, `tgl`) VALUES
(2, 'KOMINFO', 'https://kominfo.go.id/', '851409KOMINFO.jpg', '2021-10-14'),
(3, 'Kemendagri', 'https://kemendagri.go.id/', '133544kemendagri.jpg', '2022-02-16'),
(4, 'setneg', 'https://www.setneg.go.id/', '995492sekretariatanegra.jpg', '2022-02-16'),
(5, 'LKPP', 'http://www.lkpp.go.id/v3/', '355621lkpp.jpg', '2022-02-16'),
(6, 'ULP', 'https://ulp.lkpp.go.id/', '38295ulp.jpg', '2022-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_dokumen`
--

CREATE TABLE `tb_kategori_dokumen` (
  `id_kategori_dok` int(7) NOT NULL,
  `nama_kategori_dok` varchar(100) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori_dokumen`
--

INSERT INTO `tb_kategori_dokumen` (`id_kategori_dok`, `nama_kategori_dok`, `ket`, `tgl`) VALUES
(2, 'a', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>a</p>\r\n</body>\r\n</html>', '2022-10-21'),
(3, 'b', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>b</p>\r\n</body>\r\n</html>', '2022-10-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `tbl_baner`
--
ALTER TABLE `tbl_baner`
  ADD PRIMARY KEY (`id_baner`);

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `tbl_kategori_galleri`
--
ALTER TABLE `tbl_kategori_galleri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `tbl_kegitan_proggram`
--
ALTER TABLE `tbl_kegitan_proggram`
  ADD PRIMARY KEY (`id_kegitan_program`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `tbl_putusan`
--
ALTER TABLE `tbl_putusan`
  ADD PRIMARY KEY (`id_putusan`);

--
-- Indexes for table `tbl_vidio`
--
ALTER TABLE `tbl_vidio`
  ADD PRIMARY KEY (`id_vidio`);

--
-- Indexes for table `tbl_web_terkait`
--
ALTER TABLE `tbl_web_terkait`
  ADD PRIMARY KEY (`id_web_terkait`);

--
-- Indexes for table `tb_kategori_dokumen`
--
ALTER TABLE `tb_kategori_dokumen`
  ADD PRIMARY KEY (`id_kategori_dok`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `id_album` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_baner`
--
ALTER TABLE `tbl_baner`
  MODIFY `id_baner` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id_foto` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_kategori_galleri`
--
ALTER TABLE `tbl_kategori_galleri`
  MODIFY `id_kategori_galeri` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kegitan_proggram`
--
ALTER TABLE `tbl_kegitan_proggram`
  MODIFY `id_kegitan_program` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  MODIFY `id_pengaduan` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id_profil` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_putusan`
--
ALTER TABLE `tbl_putusan`
  MODIFY `id_putusan` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_vidio`
--
ALTER TABLE `tbl_vidio`
  MODIFY `id_vidio` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_web_terkait`
--
ALTER TABLE `tbl_web_terkait`
  MODIFY `id_web_terkait` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kategori_dokumen`
--
ALTER TABLE `tb_kategori_dokumen`
  MODIFY `id_kategori_dok` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
