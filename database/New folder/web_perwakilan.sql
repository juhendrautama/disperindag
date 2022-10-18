-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Bulan Mei 2022 pada 10.48
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_perwakilan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
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
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `user`, `pass`, `alamat`, `no_tlpn`, `status`, `tgl`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'jambi', '082117114028', '1', '2021-01-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `id_album` int(7) NOT NULL,
  `nama_allbum` varchar(100) DEFAULT NULL,
  `tgl_album` varchar(100) DEFAULT NULL,
  `foto_album` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`id_album`, `nama_allbum`, `tgl_album`, `foto_album`) VALUES
(7, 'VIP', '15-February-2022 | 16:31', 'room1.jpg'),
(8, 'STANDAR', '15-February-2022 | 16:34', 'tangga.jpg'),
(9, 'KEGIATAN', '15-February-2022 | 16:37', 'lantai2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_baner`
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
-- Struktur dari tabel `tbl_berita`
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

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `penulis`, `tgl`, `judul`, `ketegori`, `isi_singkat`, `isi_lengkap`, `img`) VALUES
(14, 'Mas', '05-April-2022 | 11:23', 'Presiden Jokowi mampir di stand Batanghari', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">SPM News Jakarta</p>\r\n<p style=\"text-align: justify;\">Ketua Dekranasda Kabupaten Batanghari, Zulva Fadhil yang juga istri Bupati Batanghari, patut berbangga hati, setelah kostum yang dikenakannya dikenali Menteri Pariwisata dan Ekonomi Kreatif Sandiaga Uno, sebagai kostum dari Batanghari, stand pameran Dekranasda&nbsp;</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Ketua Dekranasda Kabupaten Batanghari, Zulva Fadhil yang juga istri Bupati Batanghari, patut berbangga hati, setelah kostum yang dikenakannya dikenali Menteri Pariwisata dan Ekonomi Kreatif Sandiaga Uno, sebagai kostum dari Batanghari, stand pameran Dekranasda Kabupaten Batanghari bahkan menjadi salah satu persinggahan Presiden Jokowidodo saat meninjau stand pameran Inacraft 2022, usai beliau membuka International Handicraft Trade Fair (INACRAFT 2022) yang dibuka secara langsung oleh Presiden R.I&nbsp; Ir.H.Joko Widodo, di depan gedung Jakarta Convention Center (JCC) Senayan Jakarta, Rabu, 23 Maret 2022 pukul 10.00 WIB.</p>\r\n<p style=\"text-align: justify;\"><strong><em>Semangat ya bu&hellip;</em></strong></p>\r\n<p style=\"text-align: justify;\">&ldquo;Ya , pasti semangatlah, setelah 2 tahun pandemi, sekarang geliatnya terasa sekali. Yang hadir bahkan banyak terlihat&nbsp; pengunjung dari mancanegara, antusias masyarakat dan antusias para pengrajin juga terasa sekali, ini yang membuat kita bersemangat&rdquo;, ujar Zulva Fadhil.</p>\r\n<p style=\"text-align: justify;\"><em><strong>Tadi Bapak Presiden sempat mampir ya bu..</strong></em></p>\r\n<p style=\"text-align: justify;\">&ldquo;Ya, Bapak Jokowi sempat mampir, beliau merasa terkesan dengan batik kita, yang menurut beliau &ldquo;Elegan&rdquo;, dan tadi sempat berbincang juga dengan ibu Mariana (Pengrajin Batanghari), katanya bulan besok beliau akan ke Jambi&rdquo;, ujarnya.&nbsp;<em>lihat youtube https://www.youtube.com/watch?v=tcZaSBRiypw</em></p>\r\n<p style=\"text-align: justify;\">Selanjutnya Zulva Fadhil juga menyampaikan beberapa produk unggulan Kabupaten Batanghari, seperti Batik, produk anyaman, cemilan khas Batanghari, dan adanya sosok Suku Anak dalam dan pemain Piul (biola) dengan lagu-lagu khas Batanghari sebagai daya pikat pengunjung Inacraft 2022.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Selain produk unggulan, kami juga membawa Icon Jambi &ldquo;Suku Anak Dalam&rdquo;, ini replikanya&hellip;&rdquo;, ujar Zulva sambil menunjuk figur sosok Suku Anak dalam dan juga ada musik piul (biola) yang membawakan lagu-lagu khas Batanghari.</p>\r\n<p style=\"text-align: justify;\">Menutup perbincangan dengan spmnews, Zulva berharap dagangannya bisa habis terjual.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Kami berharap, pulang nanti tidak lagi membawa barang, barang kita habis, laris manis, dan yang terpenting, kita ingin menunjukkan kalo Batanghari punya Pengrajin-pengrajin dan UMKM yang hebat, produk-produk yang bagus, punya banyak variasi, kedepan kita bisa terus berkembang dan bisa go international&rdquo;, pungkas Zulva.</p>\r\n<p>Reportase</p>\r\n<p>Den,Asnawi,Lela,Diah,Raesa</p>\r\n</body>\r\n</html>', 'Presiden-kunjungi-batanghari-e1648109743852.jpg'),
(15, 'mas', '05-April-2022 | 11:22', 'Abdullah Sani: UMKM kita siap berkompetensi di e-Comers', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">SPM News Jakarta</p>\r\n<p style=\"text-align: justify;\">Bertempat di Convention Hall SMESCO Indonesia, Wakil Gubernur Provinsi Jambi, Drs. H. Abdullah Sani, M.Pd.I&nbsp; hadir di acara &nbsp;Rakornas Transformasi Digital dan Pendataan Lengkap Koperasi dan Usaha Mikro, Kecil, dan Menengah Tahun 2022 yang dibuka langsung oleh Presiden RI Ir. Joko Widodo secara Virtual Live dari Istana Kepresidenan (28/3 22)</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Bertempat di Convention Hall SMESCO Indonesia, Wakil Gubernur Provinsi Jambi, Drs. H. Abdullah Sani, M.Pd.I&nbsp; hadir di acara &nbsp;Rakornas Transformasi Digital dan Pendataan Lengkap Koperasi dan Usaha Mikro, Kecil, dan Menengah Tahun 2022 yang dibuka langsung oleh Presiden RI Ir. Joko Widodo secara Virtual Live dari Istana Kepresidenan (28/3 22)</p>\r\n<p style=\"text-align: justify;\">Dalam wawancara bersama SPM News Jakarta, sesusai acara pembukaan, Wakil Gubernur Provinsi Jambi, menyambut baik arahan yang disampaikan Bapak Presiden R.I Jokowidodo, dimana pada tahun 2024 harus tercapai target 20 juta UMKM sudah menerapkan transformasi digital dan masuk dalam Marketplace.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Tentunya ini adalah sebagai semangat untuk kita semua, bagaimana meningkatkan geliat UMKM di Provinsi kita&rdquo;, ujar Abdullah Sani</p>\r\n<p style=\"text-align: justify;\">&ldquo;Harus diakui dengan jujur, untuk provinsi Jambi, baru beberapa persen saja UMKM kita yang sudah masuk kedalam e-comers (atau yang menjalankan usahanya berbasis digital)&rdquo;, lanjut Abdullah Sani</p>\r\n<p style=\"text-align: justify;\">&ldquo;Nah, dengan semangat inilah, kan kegiatan masih berlanjut, tentunya akan ada arahan-arahan, petunjuk-petunjuk, dalam diskusi yang akan kita dapatkan, insya Allah selama 3 hari ini, dan akan kita tindak lanjuti di provinsi Jambi.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Apa yang sudah ditargetkan Bapak Presiden Jokowi , bahwa di tahun 2024 ada 20 juta UMKM yang sudah berbasis e-comers, yang mengisi Marketpalace, saya yakin UMKM kita (Provinsi Jambi) juga bisa berkompetitif secara sehat dengan UMKM dari provinsi lain, do&rsquo;akan saja ya&rdquo;, pungkas Abdullah sani</p>\r\n<p style=\"text-align: justify;\">Sebelumnya, Presiden R.I Jokowidodo dalam sambutannya, menyampaikan, bahwa UMKM kita harus naik kelas ditengah masivnya aktifitas perdagangan digital, UMKM kita harus &nbsp;membanjiri marketplace, memang banyak yang harus kita benahi, kita harus benahi dari hulu sampai hilir, produk-produk UMKM harus semakin berkualitas, harus semakin kompetitif, kita harus benahi packagingnya (kemasannya) dan brandingnya.</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut Jokowi berkeinginan ekosistem kewirausahaan kita semakin baik, dan semakin banyak lahir wirausaha-wirausaha muda &nbsp;yang produktif dan kreatif yang siap memajukan UMKM kita dan bersaing di pasar Global</p>\r\n<p style=\"text-align: justify;\">Rakornas ini, diikuti oleh Menteri Kabinet Indonesia maju, Gubernur, Bupati dan Walikota seluruh Indonesia, kepala dinas Koperasi dan pelaku UMKM dari seluruh Indonesia yang hadir secara offline dan virtual. sebagai upaya dalam mempersiapkan Koperasi dan UMKM Indonesia masa depan untuk mengaktifkan aksesibilitas pada rantai pasok global, Integrasi UMKM dan Koperasi modern melalui pemanfaatan teknologi digital</p>\r\n<p style=\"text-align: justify;\">Reportase: Den,Asnawi,Lela,Diah,Raesa</p>\r\n</body>\r\n</html>', 'Dalam-Meeting-Room.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_foto`
--

CREATE TABLE `tbl_foto` (
  `id_foto` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `tgl_foto` varchar(100) DEFAULT NULL,
  `id_album` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_foto`
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
-- Struktur dari tabel `tbl_kategori_galleri`
--

CREATE TABLE `tbl_kategori_galleri` (
  `id_kategori_galeri` int(7) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kegitan_proggram`
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
-- Dumping data untuk tabel `tbl_kegitan_proggram`
--

INSERT INTO `tbl_kegitan_proggram` (`id_kegitan_program`, `nama`, `keterangan`, `gambar`, `tgl`, `kategori`) VALUES
(46, 'Dokumen Perencanaan', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '-', '2022-03-22', ''),
(47, 'Transparansi Kinerja', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '-', '2022-03-22', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(7) NOT NULL,
  `nama_kontak` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `nama_kontak`, `isi`, `tgl`) VALUES
(3, 'ADDRESS', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"address\">Jl. Cidurian No.15-17, RT.5/RW.4, Cikini, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10330</div>\r\n</body>\r\n</html>', '2021-10-28'),
(4, 'PHONE NUMBER', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Telp : (021) 31935635 | Fax (021) 3922638</p>\r\n</body>\r\n</html>', '2021-10-28'),
(5, 'EMAIL', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Email : bapengdapprovjambi@jambiprov.go.id</p>\r\n</body>\r\n</html>', '2021-10-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `id_profil` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tgl` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_profil`
--

INSERT INTO `tbl_profil` (`id_profil`, `nama`, `isi`, `tgl`) VALUES
(5, 'Sejarah', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2021-03-31'),
(4, 'Visi dan Misi Gubernur Jambi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2021-03-31'),
(6, 'Struktur Organisasi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2021-10-26'),
(9, 'Profil Singkat Pejabat', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2022-05-11'),
(8, 'Tugas Pokok dan Fungsi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2022-03-22'),
(10, 'Sumber Daya Manusia', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2022-05-11'),
(11, 'Buku Alamat Pejabat', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2022-05-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_putusan`
--

CREATE TABLE `tbl_putusan` (
  `id_putusan` int(7) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(300) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_vidio`
--

CREATE TABLE `tbl_vidio` (
  `id_vidio` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `tgl` varchar(100) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_vidio`
--

INSERT INTO `tbl_vidio` (`id_vidio`, `nama`, `link`, `tgl`, `level`) VALUES
(4, 'PROFIL PROVINSI JAMBI', 'rRcAyAiqprY', '16-February-2022', 'UTAMA'),
(6, 'Gubernur Jambi H. Al Haris menerima dua penghargaan Abdi Bakti Tani 2021', 'vq5pCJrCm2E', '16-February-2022', NULL),
(7, 'Gubernur Al Haris: Kita Harus bijak dalam bermedsos', '6ru77bteXtQ', '16-February-2022', NULL),
(8, 'Vaksin Provinsi Jambi', 'IEE_N9MRccA', '16-February-2022', NULL),
(9, 'Gubernur Jambi Al Haris Bergerak Cepat Tanggapi Adanya Laporan Kerumunan Dalam Kegiatan Vaksinasi', 'oI7ENGHMfw4', '23-March-2022', NULL),
(10, 'DR. H. Al Haris, S.Sos.,M.H mengajak masyarakat Provinsi Jambi untuk vaksinasi, menggunakan masker', 'Kb--vuzREjs', '23-March-2022', NULL),
(11, 'Penyerahan Sembako oleh Ketua TP PKK Provinsi Jambi, Hj. Hesnidar Al Haris, SE.', 'J3bvdMQ-bDw', '23-March-2022', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web_terkait`
--

CREATE TABLE `tbl_web_terkait` (
  `id_web_terkait` int(7) NOT NULL,
  `judul_web_terkait` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL,
  `gambar_web_terkait` varchar(200) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_web_terkait`
--

INSERT INTO `tbl_web_terkait` (`id_web_terkait`, `judul_web_terkait`, `link`, `gambar_web_terkait`, `tgl`) VALUES
(2, 'KOMINFO', 'https://kominfo.go.id/', '851409KOMINFO.jpg', '2021-10-14'),
(3, 'Kemendagri', 'https://kemendagri.go.id/', '133544kemendagri.jpg', '2022-02-16'),
(4, 'setneg', 'https://www.setneg.go.id/', '995492sekretariatanegra.jpg', '2022-02-16'),
(5, 'LKPP', 'http://www.lkpp.go.id/v3/', '355621lkpp.jpg', '2022-02-16'),
(6, 'ULP', 'https://ulp.lkpp.go.id/', '38295ulp.jpg', '2022-02-16'),
(7, 'PPID', 'http://ppid.jambiprov.go.id/', 'ppid.png', '2022-03-22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `tbl_baner`
--
ALTER TABLE `tbl_baner`
  ADD PRIMARY KEY (`id_baner`);

--
-- Indeks untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indeks untuk tabel `tbl_kategori_galleri`
--
ALTER TABLE `tbl_kategori_galleri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indeks untuk tabel `tbl_kegitan_proggram`
--
ALTER TABLE `tbl_kegitan_proggram`
  ADD PRIMARY KEY (`id_kegitan_program`);

--
-- Indeks untuk tabel `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `tbl_putusan`
--
ALTER TABLE `tbl_putusan`
  ADD PRIMARY KEY (`id_putusan`);

--
-- Indeks untuk tabel `tbl_vidio`
--
ALTER TABLE `tbl_vidio`
  ADD PRIMARY KEY (`id_vidio`);

--
-- Indeks untuk tabel `tbl_web_terkait`
--
ALTER TABLE `tbl_web_terkait`
  ADD PRIMARY KEY (`id_web_terkait`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `id_album` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_baner`
--
ALTER TABLE `tbl_baner`
  MODIFY `id_baner` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id_foto` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori_galleri`
--
ALTER TABLE `tbl_kategori_galleri`
  MODIFY `id_kategori_galeri` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_kegitan_proggram`
--
ALTER TABLE `tbl_kegitan_proggram`
  MODIFY `id_kegitan_program` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id_profil` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_putusan`
--
ALTER TABLE `tbl_putusan`
  MODIFY `id_putusan` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_vidio`
--
ALTER TABLE `tbl_vidio`
  MODIFY `id_vidio` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_terkait`
--
ALTER TABLE `tbl_web_terkait`
  MODIFY `id_web_terkait` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
