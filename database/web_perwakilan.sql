-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Feb 2022 pada 09.19
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

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
(7, 'ROOM', '15-February-2022 | 16:31', 'room1.jpg'),
(8, 'Tour Packages', '15-February-2022 | 16:34', 'tangga.jpg'),
(9, 'Food and Drinks', '15-February-2022 | 16:37', 'lantai2.jpg');

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
(1, 'KAI', '14-October-2021 | 19:11', 'PPID PROVINSI JAMBI TEGASKAN PENTINGNYA PENYEDIAAN INFORMASI PUBLIK YANG BERKESINAMBUNGAN', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Jambi- (Diskominfo Provinsi Jambi),&nbsp;&nbsp;Seksi Kemitraan Komunikasi Publik, Dinas Kominfo Provinsi Jambi menyelenggarakan kegiatan Focus Group Discussion (FGD) PPID pada Kamis, 7 Oktober 2021 bertempat di Independence Hotel, Bungo.&nbsp;&nbsp;Acara dibuka oleh Pejabat Pengelola Informasi dan Dokumentasi (PPID) Provinsi Jambi, Ir. Nurachmat Herlambang, MMA yang diwakili oleh Kepala Seksi Kemitraan Komunikasi Publik, Amrizal, SE</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"font-weight: 400; text-align: justify;\">Jambi- (Diskominfo Provinsi Jambi),&nbsp;&nbsp;Seksi Kemitraan Komunikasi Publik, Dinas Kominfo Provinsi Jambi menyelenggarakan kegiatan Focus Group Discussion (FGD) PPID pada Kamis, 7 Oktober 2021 bertempat di Independence Hotel, Bungo.&nbsp;&nbsp;Acara dibuka oleh Pejabat Pengelola Informasi dan Dokumentasi (PPID) Provinsi Jambi, Ir. Nurachmat Herlambang, MMA yang diwakili oleh Kepala Seksi Kemitraan Komunikasi Publik, Amrizal, SE.</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Pada kesempatan tersebut, Amrizal menegaskan pentingnya penyediaan informasi publik yang berkesinambungan agar masyarakat dengan mudah mengakses informasi publik melalui website PPID.</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">\"Jangan sampai masyarakat atau pemohon informasi yang ingin meminta informasi, namun badan publik tidak menanggapinya. Hal ini akan berakibat fatal serta dapat menjadi sengketa informasi nantinya,\" tegas Amrizal yang juga menjabat sebagai Panitera Komisi Informasi Provinsi Jambi.</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Admin PPID harus rutin membuka web PPID dan mengunggah seluruh informasi yang wajib disediakan sebagaimana amanat UU Nomor 14 Tahun 2008 tentang Keterbukaan Informasi Publik.</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Acara tersebut diikuti oleh Admin Website PPID dari seluruh OPD yang berasal dari Kabupaten Bungo dan Tebo. Turut hadir Kadis Kominfo Kab. Bungo, Zainadi, S.Pd, MM dan Kabid IKP Kab. Tebo, Syahrulrozi</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Di sisi lain, Narasumber pada FGD tersebut, Syahrul Hanafi, SE mengungkapkan bahwa informasi publik yang disediakan pada website PPID dapat membantu Kepala Daerah mewujudkan pemerintahan yang transparan dalam hal keterbukaan informasi publik.</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Syahrul berharap FGD ini juga memudahkan para admin dalam mengisi pertanyaan kuisioner Monev Keterbukaan Informasi Publik Tahun 2021 yang akan ditujukan kepada provinsi, kab/kota, dan BUMD se-Provinsi Jambi.</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Sebagaimana diketahui bahwa Komisi Informasi Provinsi Jambi dalam waktu dekat akan menyelenggarakan Monev Keterbukaan Informasi Publik yang akan ditujukan kepada provinsi, kab/kota, dan BUMD se-Provinsi Jambi, (Maria).</p>\r\n</body>\r\n</html>', '28WhatsApp_Image_2021-10-12_at_08.21.11.jpg'),
(2, 'Sul', '14-October-2021 | 19:10', 'Diskominfo Provinsi Jambi Siapkan Program Atasi Kesenjangan Teknologi Informasi di 285 Desa', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Jambi-(Diskominfo Provinsi Jambi), Dinas Kominfo Provinsi Jambi mempersiapkan program untuk mengatasi kesenjangan informasi bagi sekitar 285 desa di Provinsi Jambi yang memiliki akses internet buruk, bahkan belum terjangkau internet sama sekali sehingga menjadi daerah blank spot.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"font-weight: 400; text-align: justify;\">Jambi-(Diskominfo Provinsi Jambi), Dinas Kominfo Provinsi Jambi mempersiapkan program untuk mengatasi kesenjangan informasi bagi sekitar 285 desa di Provinsi Jambi yang memiliki akses internet buruk, bahkan belum terjangkau internet sama sekali sehingga menjadi daerah blank spot.</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Program yang saat ini sedang dijajaki dengan Telkom sekaligus sebagai upaya untuk mensukseskan Visi Misi Jambi Mantap yang salah satunya adalah memberikan pelayanan internet gratis bagi masyarakat, dimana program ini termasuk dalam salah satu program Dumisake (Dua Milyar Satu Kecamatan).</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Mengingat pentingnya teknologi informasi bagi masyarakat bagi masyarakat di desa Kepala Dinas Komunikasi dan Informatika Provinsi menggelar pertemuan dengan PT.Telkom untuk membahas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kerjasama dalam pengembangan pemanfaatan internet di Provinsi Jambi, dimana dari PT. Telkom dihadiri langsung oleh M. Zaidan Jauhari (General Manager Witel Jambi) beserta Tim. Rapat dipimpin oleh Kadis Kominfo Provinsi Jambi yaitu Ir. Nurachmat Herlambang.M.M.A.,&nbsp;&nbsp;Selasa (5/10)&nbsp;&nbsp;bertempat di ruang kerja Kadis Kominfo. Hadir turut mendampingi Kadis Kominfo&nbsp;&nbsp;beberapa Pejabat Eselon III dan IV pada Dinas Kominfo Provinsi Jambi.</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Dalam perbincangan yang hangat ini Kadis Kominfo menyatakan bahwa program ini bertujuan untuk menghilangkan kesenjangan teknologi informasi antara masyarakat yang berada di desa dengan di kota, serta penyamarataan manfaat digitalisasi bagi seluruh masyarakat di Provinsi Jambi.&rdquo; Yang harus kita persiapkan dengan baik adalah membangun infrastuktur untuk menjamin program ini dapat berjalan, dan ke depan saya berharap program ini dapat bekerjasama dengan Bumdes sehingga Bumdes juga mendapatkan keuntungan dengan kerjasama tersebut,&rdquo;ucap Kadis.</p>\r\n<ol style=\"text-align: justify;\">\r\n<li style=\"font-weight: 400;\">Zaidan Jauhari (General Manager Witel Jambi), menyatakan bahwa pihak Telkom akan berusaha untuk memenuhi apa yang dibutuhkan oleh Pemerintah Daerah dan akan menyesuaikan dengan besaran anggaran yang tersedia.&rdquo; Banyak sekali desa tempat tinggalnya kemungkinan di antara perbukitan. Sejumlah warga bercerita harus mencari tempat tinggi atau naik bukit untuk bisa menelpon atau mengirim pesan singkat atau SMS dengan telepon selulernya. Atau untuk tersambung dengan internet, mereka harus bergeser mencari sinyal, dan ini harus kita cari solusinya dan kami siap membantu,&rdquo;ujar M.Zaidan.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: justify;\">Mengingat geografis letak desa di Provinsi Jambi yang bermacam-macam, maka akan dilakukan pembahasan lanjutan yang akan memaparkan topologi teknologi yang akan dipakai, yang tentunya akan disesuaikan pula dengan kemampuan anggaran yang dimiliki oleh Pemerintah Provinsi Jambi. Nantinya secara bertahap diharapkan Internet yang ada di Desa bisa dimanfaatkan untuk e-learning, e-bussiness, e-sport, e-health, e-agro, e-government dll.(Maria)</p>\r\n</body>\r\n</html>', '68WhatsApp_Image_2021-10-06_at_20.14.03.jpg'),
(3, 'admin', '26-October-2021 | 23:21', 'Road Show TP PKK Provinsi Jambi Hj Hesti Haris: Kenalkan Aplikasi Dasawisma Berbasis Teknologi ', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Hj. Hesti Haris, S.E melakukan Kegiatan Roadshow Pencanangan Gerakan Keluarga Pelopor Perubahan di Kantor Bupati Tanjung Jabung Barat, Rabu (15/09/2021).<br />Dalam acara ini dihadiri Bupati Anwar Sadat, Sekda Tanjung Jabung Barat, Wakil ketua&nbsp;<a title=\"TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi\" href=\"https://jambi.tribunnews.com/tag/tp-pkk-provinsi-jambi\" aria-label=\"link\">TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi</a>, OPD lingkup Pemerintah Kabupaten Tanjung Jabung Barat, pengurus&nbsp;<a title=\"TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi\" href=\"https://jambi.tribunnews.com/tag/tp-pkk-provinsi-jambi\" aria-label=\"link\">TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi</a>&nbsp;dan Kabupaten Tanjung Jabung Barat.</p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><a title=\"TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi\" href=\"https://jambi.tribunnews.com/tag/tp-pkk-provinsi-jambi\" aria-label=\"link\">TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi</a>&nbsp;Hj. Hesti Haris, S.E melakukan Kegiatan Roadshow Pencanangan Gerakan Keluarga Pelopor Perubahan di Kantor Bupati Tanjung Jabung Barat, Rabu (15/09/2021).<br />Dalam acara ini dihadiri Bupati Anwar Sadat, Sekda Tanjung Jabung Barat, Wakil ketua&nbsp;<a title=\"TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi\" href=\"https://jambi.tribunnews.com/tag/tp-pkk-provinsi-jambi\" aria-label=\"link\">TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi</a>, OPD lingkup Pemerintah Kabupaten Tanjung Jabung Barat, pengurus&nbsp;<a title=\"TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi\" href=\"https://jambi.tribunnews.com/tag/tp-pkk-provinsi-jambi\" aria-label=\"link\">TP&nbsp;PKK&nbsp;Provinsi&nbsp;Jambi</a>&nbsp;dan Kabupaten Tanjung Jabung Barat.</p>\r\n<p>Tujuan dari program ini bahwa Tim Penggerak PKK se- Provinsi Jambi siap mendukung dan Mewujudkan Gerakan Keluarga Pelopor Perubahan menuju Indonesia Maju dan Jambi Mantap 2024.</p>\r\n<p>Nilai-nilai yang terkandung dalam 10 Program Pokok PKK mengatur dan menata aktivitas keluarga sejak dari bangun tidur sampai tidur kembali, sehingga jika kita terapkan secara konsisten dan sungguh sungguh, saya yakin akan dapat merubah tata kehidupan keluarga kita.<br />Hj Hesti Haris memaparkan tentang revitalisasi dasawisma.</p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', 'roadshow-tp-pkk-hesti-haris-2021.jpg'),
(4, 'admin', '26-October-2021 | 23:24', 'Ibu Hesti Kunjungi Tim Penggerak PKK Kerinci dan Sungai Penuh', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"font-weight: 400;\">Kerinci (Kominfo Provinsi Jambi)- Ketua Tim Penggerak (TP) PKK Provinsi Jambi Ny. Hj. Hesnidar Alharis, SE, yang akrab disapa Ibu Hesti Haris, melaksakan kunjungan kerja dan silaturahmi dengan Ketua TP PKK Kabupaten Kerinci dan TP PKK Kota Sungai Penuh, di Aula Kantor Bupati Kerinci, Senin (2/8/2021).</p>\r\n<p style=\"font-weight: 400;\">Dalam sambutannya Ibu Hesti menekankan kepada seluruh Tim Penggerak PKK di wilayah Kabupaten Kerinci dan Kota Sungai Penuh, untuk dapat mengikuti perkembangan teknologi dalam memberikan pelayanan kepada masyarakat</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"font-weight: 400;\">Kerinci (Kominfo Provinsi Jambi)- Ketua Tim Penggerak (TP) PKK Provinsi Jambi Ny. Hj. Hesnidar Alharis, SE, yang akrab disapa Ibu Hesti Haris, melaksakan kunjungan kerja dan silaturahmi dengan Ketua TP PKK Kabupaten Kerinci dan TP PKK Kota Sungai Penuh, di Aula Kantor Bupati Kerinci, Senin (2/8/2021).</p>\r\n<p style=\"font-weight: 400;\">Dalam sambutannya Ibu Hesti menekankan kepada seluruh Tim Penggerak PKK di wilayah Kabupaten Kerinci dan Kota Sungai Penuh, untuk dapat mengikuti perkembangan teknologi dalam memberikan pelayanan kepada masyarakat.</p>\r\n<p style=\"font-weight: 400;\">&ldquo;Saya merasakan bahwa hari ini kita semuanya harus kembali belajar, karena kita di zaman pandemi ini, dimana teknologi benar-benar dimanfaatkan&rdquo;, tegas Ibu Hesti, &ldquo;kita harus jeli melihat segala sesuatu yang terjadi di dalam lingkungan kita, kemudian juga jeli dalam berbagai hal&rdquo;, imbuhnya.</p>\r\n<p style=\"font-weight: 400;\">Ibu Hesti juga menerangkan bahwa, dalam menjalankan tugas sebagai Tim Penggerak PKK, harus dengan penuh keikhlasan dan rasa tanggung jawab serta berfikir inovatif, saat menjalankan tugas mulia sebagai pelayan masyarakat, &rdquo;artinya bekerja sebagai PKK yang dimana kita adalah relawan, jadi dimana kita yang berjiwa social, bahkan kadang-kadang jangankan kata duit, tapi duit rajo tepakek&rdquo; ungkapnya</p>\r\n<p style=\"font-weight: 400;\">Pada kesempatan yang sama Ibu Hesti menyerahkaan bantuan masker dan handsanitizer kepada Tim Penggerak PKK Kabupaten Kerinci dan Kota Sungai Penuh, sebagai bentuk kepeduliannya terhadap kondisi pandemi covid 19 yang sedang melanda negri ini. (Rino, Foto: Agus Supriyanto, Kameramen: Ardi Susianto).</p>\r\n</body>\r\n</html>', '15WhatsApp_Image_2021-08-02_at_15.42.43.jpeg'),
(6, 'Admin', '07-November-2021 | 00:33', 'Hj. Hesnidar Haris ajak masyarakat untuk mengkonsumsi Makanan Bergizi', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Ketua TP PKK Provinsi Jambi, Hj.Hesti Haris, S.E Menghadiri Puncak Acara Festival Pangan Lokal Padat Protein dan Workshop Pembentukan Jejaring Pangan Lokal Indonesia (JPLI) di Rumah Dinas Gubernur Jambi secara Virtual, Kamis(04/11/21).</p>\r\n<p style=\"text-align: justify;\">Dalam acara tersebut tokoh Lokal Provinsi Jambi atas nama Dr.Suryono, M.Si Mendapat Penghargaan Sebagai Tokoh Pangan Lokal Provinsi Jambi yang di serahkan oleh Pemerintah Provinsi Jambi secara Virtual.</p>\r\n<p style=\"text-align: justify;\"><img class=\"alignnone size-medium wp-image-8957 td-animation-stack-type0-2\" src=\"http://tuntasnews.com/wp-content/uploads/2021/11/FB_IMG_1636079813180-300x258.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://tuntasnews.com/wp-content/uploads/2021/11/FB_IMG_1636079813180-300x258.jpg 300w, https://tuntasnews.com/wp-content/uploads/2021/11/FB_IMG_1636079813180-488x420.jpg 488w, https://tuntasnews.com/wp-content/uploads/2021/11/FB_IMG_1636079813180.jpg 552w\" alt=\"\" width=\"300\" height=\"258\" /></p>\r\n<p style=\"text-align: justify;\">Hj.Hesti Haris Mengucapkan selamat kepada tokoh pangan lokal Provinsi Jambi yang baru di serahkan piagam penghargaan kepada bapak Dr.Suryono, M.Si dari Fakultas Peternakan Universitas Jambi.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Saya atas nama Pemerintah Provinsi Jambi mengucapkan terima kasih atas upaya bapak yang secara konsisten mengembangkan dan memperkenalkan pangan lokal khususnya kepada masyarakat Jambi Semoga dengan penghargaan ini semakin banyak karya yang dihasilkan sehingga pangan lokal Jambi semakin dikenal dan digunakan sebagai salah satu solusi penanganan masalah gizi di Provinsi Jambi dan di Indonesia. Tentu saja kami sangat bangga sekali dengan karya beliau ini dan kami sekali lagi akan kerja sama dengan universitas Jambi untuk mensosialisasikan ini dan untuk mengajak masyarakat untuk mengkonsumsi pangan yang bergizi dan tentu saja ini merupakan solusi untuk kecukupan gizi bagi warga Provinsi Jambi. Terimakasih kepada SEAMEO, RETPET dan USEC yang juga hari ini dari kemarin kami juga sudah mengikuti kegiatan nya terimakasih sekali lagi&rdquo;. Ujarnya.</p>\r\n<p style=\"text-align: justify;\">Hj. Hesti Haris mengatakan saat ini sedang mengkampanyekan Makan Tempe untuk pemenuhan gizi.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Mengamati ditengah masyarakat, dimana saat ini kita sangat mengayo-ayokan untuk makan tempe sebagai protein nabati. Oleh karena itu kami mengajak kepada pihak USEC fokus terhadap tempe ini bahwa dibeberapa daerah di Provinsi Jambi ini yang trans mereka memang sudah terbiasa dengab mengkonsumsi tempe sedangkan penduduk yang bagian ujung banyak yang tidak mengenal tempe karena tidak ada pengolahan disana. Oleh karena itu untuk mengenalkan tempe yang merupakan protein nabati yang baik ini. Kami mohon jika memungkinkan bagi USEC bagaimana untuk mengadakan pelatihan untuk pembuatan tempe dibeberapa titik yang menurut kami penting&rdquo; ujarnya</p>\r\n<p style=\"text-align: justify;\">Selanjutnya untuk mengatasi masalah Stunting perlu pelatihan Parenting bagi orang tua.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Kemudian untuk SEAMEO Resort kami sangat berharap bahwa kalau kita berbicara masalah stunting, masalah pendidikan. Stunting ini tentu saja berkaitan dengan para orang tua dalam mendidik anak, mengasuh dan membesarkan anak. Sementara hari ini saya melihat orang tua banyak sekali yang pemahamannya sangat minim tentang bagaimana menyiapkan anak terutama anak yang masih balita baik dibidang pengasuhan secara moril maupun pemberian gizi seimbang. Oleh karena itu kami berharap kedepannya jika memungkinkan untuk Provinsi Jambi diadakan untuk Parenting bagi para orang tua dan mungkin tokoh perempuan yang akan menyampaikan pada masyarakat tentang pengasuhan anak yang dampaknya sangat besar ini. Oleh karena itu kami berharap program dari SEAMEO mendapat Recfon&rdquo; jelasnya (red)</p>\r\n</body>\r\n</html>', 'HESNIDAR_HARIS.jpg'),
(11, 'Admin', '04-December-2021 | 18:26', 'TP PKK Provinsi Jambi Lakukan Supervisi dan Evaluasi di Kota Jambi, Iin Kurniasih Harap Setiap Jenja', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Wakil Ketua II TP PKK Provinsi Jambi Hj. Iin Kurniasih Sudirman melakukan Kegiatan Supervisi TP PKK Kota Jambi.</p>\r\n<p>Wakil Ketua II TP PKK Provinsi Jambi Hj. Iin Kurniasih Sudirman Melakukan kegiatan Supervisi dan Evaluasi TP PKK Provinsi Jambi. Hj. Iin Kurniasih Sudirman didampingi Wakil Ketua III TP PKK Kota Jambi Sri Hartati Ridwan beserta pengurus TP PKK Provinsi dan Kota Jambi.</p>\r\n<p>Pelaksanaan Supervisi dan Evaluasi ini dilaksanakan selama 2 hari yaitu 28-29 November 2021. Pada hari pertama, TP PKK Provinsi Jambi melakukan Supervisi TP PKK Kota Jambi di Aula PKK Kota Jambi, TP PKK Kecamatan Pelayangan di Kantor Camat Pelayangan dan TP PKK Kelurahan Tahtul Yaman di Kantor Lurah Tahtul Yaman.</p>\r\n<p><img src=\"https://pkk.jambiprov.go.id/upload/source/FB_IMG_1638358776955-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /></p>\r\n<p>Dalam sambutannya Hj. Iin Kurniasih Sudirman menyatakan bahwa kegiatan supervisi dan evaluasi ini sangat penting artinya karena bertujuan untuk memastikan agar TP PKK setiap jenjang sudah melaksanakan 10 program pokok PKK sesuai dengan peran dan fungsi masing-masing serta berpedoman pada pengelolaan teknis tata kelola kelembagaan dan organisasi TP PKK yang diatur dalam Rakernas PKK.</p>\r\n<p>&ldquo;Berdasarkan hasil Rakernas IX PKK tahun 2021 mengalami beberapa penyesuaian yang cukup mendasar dalam tata kelola kelembagaan dan organisasi PKK terutama penyesuaian terhadap pandemi covid 19 dan penyesuaian terhadap era globalisasi serta pesatnya perkembangan PKK dalam tata kelola kelembagaan teknologi informasi. Perubahan yang mendasar tersebut antara lain adalah isi gerakan PKK 2021-2024 yaitu terwujudnya keluarga pelopor perubahan dalam pemenuhan SDM berkualitas melalui ketahanan ekonomi revolusi mental lingkungan hidup dan pelayanan dasar,&rdquo; ujarnya.</p>\r\n<p>Menurutnya, untuk mewujudkan visi tersebut diperlukan misi gerakan PKK yang memuat prioritas program gerakan PKK meliputi ketahanan ekonomi revolusi mental lingkungan hidup dan memperkuat layanan dasar serta sinergisitas dengan 10 program PKK yang dikemas dalam program unggulan TP PKK yaitu paaredi, gelari Pelangi, aku hatinya PKK, gagah bencana dan dukungan SIM PKK/e PKK.</p>\r\n<p>&ldquo;Pada dasarnya gerakan PKK sudah memiliki pondasi yang kuat dan oleh karena dipayungi dengan Peraturan Presiden Nomor 99 tahun 2017 serta peraturan Mendagri Nomor 36 tahun 2020 kedua regulasi ini menjadi pengikat kemitraan antara PKK dengan semua OPD karena hakikat 10 program PKK memiliki korelasi yang kuat dengan program pemerintah yang ada di setiap OPD&rdquo; Jelasnya.</p>\r\n<p>&ldquo;Hari ini adalah kegiatan TP PKK Provinsi Jambi dalam rangka supervisi dan Evaluasi. Hari ini kita sudah Supervisi di PKK Kota Jambi, Kecamatan Pelayangan dan Kelurahan Tahtul Yaman. Kami berharap beberapa catatan tentang Supervisi yang akan dievaluasi tahun depan. TP PKK Kota Jambi mempunyai SDM dan kegiatannya sudah mengikutin aturan PKK yang ada&rdquo; tuturnya</p>\r\n<p>Hari Kedua, Tim Supervisi dan Evaluasi TP PKK Provinsi Jambi mengunjungi Kelurahan Tanjung Raden untuk melakukan Evaluasi TP PKK Kelurahan Tanjung Raden dan TP PKK Kecamatan Danau Teluk.</p>\r\n</body>\r\n</html>', 'FB_IMG_1638358774071.jpg'),
(12, 'Admin', '08-December-2021 | 19:59', 'HJ. HESNIDAR HARIS KENALKAN SI GADIS JAMBI', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Ketua Tim Penggerak Pemberdayaan dan Kesejahteraan Keluarga (TP PKK) Provinsi Jambi, Hj. Hesnidar Haris,S.E., (Hesti), mengatakan TP PKK Provinsi Jambi telah membuat aplikasi baru untuk pendataan dasawisma yang selama ini menjadi permasalahan PKK terkait tidak sinkronnya data. &ldquo;Aplikasi untuk pendataan ini kami namakan Si Gadis Jambi yaitu Sistem Informasi Keluarga Dasawisma Jambi,&rdquo; kata Hesti. Hal tersebut disampaikan Hesti pada Bimbingan Teknis Peningkatan Kapasitas SDM Kelembagaan dan Tata Kelola Administrasi PKK Provinsi Jambi, bertempat di Ruang Pola Kantor Gubernur Jambi, Senin (06/12/21).</p>\r\n<p style=\"text-align: justify;\">Hesti mengungkapkan, TP PKK Provinsi Jambi telah melakukan sosialisasi aplikasi Si Gadis Jambi ke seluruh Kabupaten/Kota se Provinsi Jambi dan melatih operator aplikasi Si Gadis Jambi, sehingga para operator dapat memahami aplikasi ini dan mendapatkan manfaatnya. &ldquo;Kami juga mengucapkan terima kasih kepada teman teman dan Dinas Komunikasi dan Informatika Provinsi Jambi atas kerjasamanya dalam membuat aplikasi Si Gadis Jambi. Semoga aplikasi ini dapat menjadi solusi yang baik dalam mengatasi permasalahan PKK dalam hal ketidakakuratan data dasawisma selama ini,&rdquo; ungkap Hesti.</p>\r\n<p style=\"text-align: justify;\">Lebih lanjut Hesti menyampaikan, PKK Provinsi Jambi juga telah mensosialisasikan Hasil Rapat Kerja Nasional ke 9 tentang Keluarga Pelopor Perubahan ke PKK Kabupaten/Kota Se Provinsi Jambi, sehingga PKK Kabupaten/Kota Se Provinsi Jambi dapat menerapkan kegiatan kegiatan tersebut didaerahnya masing masing dan dapat memberikan manfaat kepada masyarakat di Provinsi Jambi.</p>\r\n<p style=\"text-align: justify;\">Sebelumnya, Wakil Ketua II TP PKK Provinsi Jambi, Hj. Iin Kurniasih Sudirman selaku Ketua Pelaksana Bimtek melaporkan, Bimtek ini bertujuan untuk meningkatkan kapasitas kompetensi sumber daya manusia pengurus TP PKK yang ada di Provinsi Jambi. Bimtek ini juga bertujuan agar peserta memahami satu program strategis, program prioritas, dan program unggulan masing masing kelompok kerja,tata kelola organisasi dan kelembagaan serta tertib administrasi PKK sesuai dengan hasil Rakernas Tahun 2021.</p>\r\n</body>\r\n</html>', 'IMG-20211207-WA0058-696x464.jpg'),
(13, 'Admin', '08-December-2021 | 20:27', 'GUBERNUR AL HARIS MINTA PKK BANTU CAPAI TARGET VAKSINASI', 'Berita Umum', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Gubernur Jambi, Dr.H.Al Haris,S.Sos.,M.H., meminta Tim Penggerak Pemberdayaan dan Kesejahteraan Keluarga (TP PKK) Provinsi Jambi dapat membantu Pemerintah Provinsi Jambi dalam mencapai target vaksinasi. Hal tersebut disampaikan Gubernur saat membuka secara resmi Bimbingan Teknis yang diselenggarakan TP PKK Provinsi Jambi di Ruang Pola Kantor Gubernur Jambi, Senin (06/12/21).<br />&ldquo;Diharapkan tugas ibu PKK untuk mensosialisasikan Vaksin ini walaupun memang dalam aturannya kami itu harus berkolaborasi dilapangan, cuma mungkin kurang kuat ikatannya. Maka dari itu ada dibuat semacam kerja sama seperti MoU, sehingga ada target dalam mencapai program-program itu, dengan demikian kita punya indikator dalam penilaian,&rdquo; ujar Gubernur.<br />Gubernur Al Haris juga mengatakan bahwa patut disyukuri semua bisa hadir dalam rangka kegiatan yaitu bimbingan teknis peningkatan kapasitas SDM kelembagaan dan tata kelola administrasi PKK Provinsi Jambi.<br />&ldquo;Kalau kita bicara ini memang sangat berat tugasnya Bapak Ibu, hari ini negara Indonesia ini sedang dihadapkan oleh berbagai macam persoalan yang dihadapi oleh bangsa ini dan itu mau tidak mau, suka tidak suka harus melibatkan ibu-ibu PKK tentunya. Pertama kita bicara dulu persoalan bangsa yang sedang melanda kita yaitu virus Covid-19. Tentu dalam hal ini kita diwajibkan sampai akhir Desember ini kita harus mencapai 70% vaksin tapi itu baru vaksin untuk lansia, nakes dan usia yang sudah cukup. Tetapi harus mampu melakukan vaksinasi untuk anak-anak bayi dan balita yaitu Michelle rubella, ya ini tugas bapak ibu ibu sekalian Tim Penggerak PKK karena vaksinasi ini juga menguatkan imun kita juga nanti sampai anak-anak kita terkena covid yang masih bayi dan balita itu. Maka saya minta tolong dengan ibu sekalian tolong koordinasi dengan Dinas Kesehatan untuk vaksinasi ini bisa dilakukan di daerah masing-masing kemudian di bulan Maret April kita sudah mulai fokus dengan balita dan usia 6-12 tahun ini walaupun vaksin virus rubella ini mampu untuk menambah imunitas bayi dan balita kita itu,&rdquo; kata Gubernur.<br />Gubernur Al Haris juga mengharapkan peranan Ibu PKK terlibat dalam perlindungan anak. &ldquo;Banyak hari ini kita lihat anak-anak kita ini masih terdapat kekerasan dalam rumah tangga masih terdapat anak-anak yang menyalahgunakan yang macam-macam. Ini tugas dan tanggung jawab kita semuanya,&rdquo; ucap Gubernur.<br />&ldquo;Yang pertama kita contoh hari ini kami di masa ini orang miskin paling banyak itu ada di wilayah pasar dan perkotaan pedesaan pertama dia miskin karena kerja suaminya serabutan rumah masih ngontrak pasangan itu miskin lalu pemerintah memberikan bantuan PKH itu bentuknya apa artinya adalah pemerintah itu baru bicara perut-perut sementara mohon maaf kalau hanya diberikan makan saja mereka tidak mampu merubah status mereka dari miskin menjadi miskin pertama kami punya duit jangan tanya ada UKM usaha kreatif emak-emak ini mendukung agar bisa membina emak-emak yang miskin tadi yang tadi apa usahanya ini ada bantuan untuk mereka mereka masukkan dia ke sekolah yaitu beasiswa S1,&rdquo; sambung Gubernur.<br />Sementara itu, Ketua TP PKK Provinsi Jambi Hj. Hesnidar Haris mengatakan bahwa pihaknya sudah melaksanakan kegiatan sosialisasi gerakan pelopor perubahan dan berdasarkan hasil rakernas ke-9 tahun 2021. &ldquo;Dalam peraturan Permendagri artinya bahwa pemerintah benar-benar mengamati begitu besar dampak para tim penggerak PKK ditengah masyarakat yang mempunyai jaringan yang mengakar sampai ke kelompok dasawisma. PKK mempunyai jaringan paling bawah itu adalah kelompok dasa wisma yang terdiri dari 10 sampai 20 kata dalam satu kelompok ini,&rdquo; ujar Ketua TP PKK.<br />Hj. Hesnidar Haris juga menambahkan bahwa TP PKK Provinsi Jambi sudah menciptakan aplikasi baru untuk pendataan dasawisma selama ini permasalahan data di PKK dari dulu adalah data yang tidak akurat dan sering hilang di tengah jalan dan ini adalah permasalahan yang sudah turun-temurun. &ldquo;Kami berterima kasih pada teman-teman yang sudah menciptakan aplikasi ini tentu saja atas kerjasama yang baik dengan kominfo maka kami sudah menciptakan aplikasi yang kami namakan &ldquo;Si Gadis Jambi (sistem informasi keluarga dasawisma Jambi) yang sudah disosialisasikan ke seluruh kabupaten kota dan dengan melatih walaupun sangat terbatas tapi sudah kami latih di seluruh kabupaten kota sebagai operator untuk memahami aplikasi. Ini adalah aplikasi yang selalu harus belajar tentang manfaat yang lebih luas,&rdquo; jelas Ketua TP PKK.<br />Sementara itu juga, Ketua Pelaksana Hj. Iim Kurniasih Sudirman dalam paparannya mengatakan bahwa Bimtek ini secara umum bertujuan untuk meningkatkan kapasitas kompetensi sumber daya manusia pengurus Tim Penggerak PKK sedangkan tujuan secara khusus adalah dalam upaya agar peserta memahami satu program strategis program prioritas dan program unggulan masing-masing kelompok kerja, tata kelola organisasi dan kelembagaan serta tertib administrasi PKK sesuai dengan hasil rakernas PKK tahun 2002. Aplikasi dasawisma yang dirancang oleh Tim Penggerak PKK Provinsi Jambi bersama Dinas Kominfo Provinsi Jambi.<br />&ldquo;Peserta kegiatan bimtek ini adalah unsur dari sekretariat bendahara ketua Pokja tim penggerak PKK kabupaten Kota dan juga dari beberapa Kecamatan serta desa kelurahan terpilih dari seluruh kabupaten kota se Provinsi Jambi disamping itu ada juga peserta dari unsur operator komputer kabupaten kota. Nantinya akan perkuat kompetensinya dalam penggunaan aplikasi dasawisma. Jumlah peserta keseluruhan sebanyak 220 orang yang tersebar dalam 5 lokasi dan mengikuti acara ini secara virtual yaitu di satu di ruang pola, Sekretariat PKK Provinsi Jambi, Dinas P3AP2 Provinsi Jambi, Dinas pendidikan Provinsi Jambi dan Dinas kelautan dan Perikanan Provinsi Jambi. kegiatan ini dilaksanakan selama 1 hari yaitu pada hari ini Senin tanggal 6 Desember tahun 2021&rdquo; ujarnya.<br />Turut hadir dalam acara ini Ketua TP PKK Provinsi Jambi , Wakil Ketua II TP PKK Provinsi Jambi Hj. Iin Kurniasih Sudirman, Wakil Ketua II dan III PKK se-kabupaten/kota Jambi, Para OPD Pemerintah Provinsi Jambi dan Para peserta BIMTEK.</p>\r\n</body>\r\n</html>', 'IMG_20211207_152206.jpg');

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
(46, 'adad', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>adad</p>\r\n</body>\r\n</html>', '-', '2022-02-16', '');

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
(3, 'ADDRESS', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Jl. Mayjen H M.J. Singedekane, Sungai Putri, Kec. Telanaipura, Kota Jambi, Jambi 36361</p>\r\n</body>\r\n</html>', '2021-10-28'),
(4, 'PHONE NUMBER', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>087265251</p>\r\n</body>\r\n</html>', '2021-10-28'),
(5, 'EMAIL', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>pkk.jambiprov.go.id</p>\r\n</body>\r\n</html>', '2021-10-28');

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
(5, 'Struktur Organisasi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><img src=\"https://pkk.jambiprov.go.id/upload/source/WhatsApp%20Image%202021-11-04%20at%2010.56.05.jpg?1635998341893\" alt=\"WhatsApp Image 2021-11-04 at 10.56.05\" width=\"744\" height=\"993\" /></p>\r\n</body>\r\n</html>', '2021-03-31'),
(4, 'SEJARAH', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><span class=\" jgG6ef\"><strong>PKK</strong></span>&nbsp;yang merupakan gerakan pembangunan masyarakat bermula dari Seminar&nbsp;<strong>Home Economic</strong>&nbsp;di Bogor pada tahun 1957, yang menghasilkan rumusan 10 Segi Kehidupan Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Kemudian ditindak lanjuti oleh Kementrian Pendidikan, Pengajaran dan Kebudayaan pada tahun 1961 yang menetapkan 10 Segi Kehidupan Keluarga sebagai Kurikulum Pendidikan Kesejahteraan Keluarga yang diajarkan di sekolah-sekolah oleh Pendidikan Masyarakat (PENMAS).</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada bulan Mei tahun 1962 di Desa Salaman Kabupaten Magelang, Provinsi Jawa Tengah, didirikan Pusat Latihan Pendidikan Masyarakat (PLPM) untuk menyebarluaskan 10 Segi Kehidupan Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Sekitar tahun 1967 kehidupan sebagian masyarakat Jawa Tengah sangat menyedihkan, khususnya di daerah Dieng Kabupaten Wonosobo diantara mereka banyak yang menderita Honger Odeem (HO). Kenyataan ini menyentuh hati Ibu&nbsp;<strong>Isriati Moenadi,</strong>&nbsp;sebagai Isteri Gubernur Jawa Tengah saat itu. Beliau merasa bertanggung jawab terhadap kesejahteraan masyarakatnya dan berinisiatif membentuk PKK di Jawa Tengah, dari tingkat Provinsi sampai ketingkat Desa dan Kelurahan, dengan susunan pengurus terdiri dari; unsur-unsur Isteri Pimpinan Daerah, Tokoh-tokoh masyarakat, perempuan dan laki-laki untuk melaksanakan 10 Segi Pokok PKK secara intensif.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Dari keberhasilan PKK di Jawa Tengah, maka Presiden RI menganjurkan kepada Menteri Dalam Negeri agar PKK dilaksanakan di daerah-daerah seluruh Indonesia.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tanggal 27 Desember 1972 Menteri Dalam Negeri mengirimkan Surat Kawat Nomor SUS 3/6/12 tangal 27 Desember 1972 kepada Gubernur Jawa Tengah untuk merubah nama Pendidikan Kesejahteraan Keluarga menjadi Pembinaan Kesejahteraan Keluarga, tembusan disampaikan kepada Gubernur seluruh Indonesia.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 1978 diselenggarakan Lokakarya Pembudayaan 10 Segi Pokok PKK, yang menghasilkan rumusan 10 Program Pokok PKK yang sampai sekarang menjadi program Gerakan PKK.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Berdasarkan Keputusan Presiden No 28 Tahun 1980, tentang Perubahan LSD menjadi Lembaga Ketahanan Masyarakat Desa (LKMD), posisi PKK sebagai Seksi ke-10 di LKMD, selanjutnya Gerakan PKK dibina oleh Departemen Dalam Negeri.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Berdasarkan Keputusan Menteri Dalam Negeri No. 4 tahun 1982, Tim Penggerak PKK Pusat dibentuk dan dipimpin oleh Ibu Amir Mahmud, istri Menteri Dalam Negeri saat itu. Sebagai langkah selanjutnya, diadakan pemantapan Gerakan PKK baik tentang pengelolaan dan pengorganisasiannya maupun program kerja dan administrasi melalui Pelatihan, Orientasi, RAKON, dan RAKERNAS.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">RAKERNAS I PKK diadakan pada bulan Maret 1982. Selanjutnya tahun 1983 di bawah pimpinan Ibu Kardinah Soepardjo Roestam, melaksanakan RAKERNAS II PKK untuk memantapkan kelembagaan PKK dengan 10 Program Pokok PKK nya.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Setiap tahun diadakan Rapat Konsultasi, lima tahun sekali diselenggarakan Rapat Kerja Nasional (RAKERNAS) PKK. Kemudian pada Sidang Umum MPR Tahun 1983, berdasarkan TAP MPR No. II/MPR/1983 tentang GBHN, Pembinaan Kesejahteraan Keluarga ditetapkan sebagai salah satu wahana untuk meningkatkan Peranan Wanita Dalam Pembangunan.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 1984 diterbitkan Keputusan Menteri Dalam Negeri No. 28 Tahun 1984 tentang Pembinaan Kesejahteraan Keluarga (PKK) yang menetapkan tentang pengertian, tujuan, sasaran, fungsi, tugas Gerakan PKK, dan ketentuan atribut-atributnya.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Tahun 1987 atas persetujuan Presiden RI dibentuk Kelompok-kelompok PKK Dusun/Lingkungan, RW, RT, dan kelompok Dasawisma, guna meningkatkan pembinaan warga dalam melaksanakan 10 Program Pokok PKK dan mulai tahun 1988 PKK mendapatkan penghargaan-penghargaan Internasional seperti Maurice Pate , Sasakawa Health Price, maupun penghargaan tingkat nasional dan daerah. RAKERNAS III PKK dilaksanakan pada saat dipimpin oleh Ibu Ketua Umum Ibu Kardinah Soepardjo Roestam pada tahun 1988, memantapkan pelaksanaan program-program PKK dan mendapatkan penghargaan Hari Bumi Sedunia di Miami, Amerika.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 1993 dalam RAKERNAS IV PKK yang dipimpin oleh Ketua Umum Ibu Odiana Rudini telah memutuskan untuk &rdquo;MENETAPKAN TANGGAL 27 DESEMBER SEBAGAI HARI KESATUAN GERAK PKK&rdquo;, yang diperingati setiap tahun. Pada bulan Desember 1997 diselenggarakan Jambore Nasional Kader Posyandu yang pertama diikuti oleh Kader-kader PKK dari 27 provinsi, kabupaten/kota, dan desa/kelurahan.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Melalui RAKERNAS V PKK yang diadakan pada tahun 1998 Menteri Dalam Negeri Bapak Yogie S.M selaku Pembina PKK memberikan penghargaan kepada Pelindung, Penasehat, dan Kader-kader PKK yang telah berpartisipasi selama 25 tahun atau lebih, 15 tahun, dan 10 tahun tanpa terhenti.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">1.&nbsp; Medali Tertinggi disebut PARAMAHITA NUGRAHA.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">2.&nbsp; Medali Utama disebut ADHI BHAKTI UTAMA.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">3.&nbsp; Medali Madya disebut ADHI BHAKTI MADYA.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">4.&nbsp; Medali Pratama disebut ADHI BHAKTI PRATAMA</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Sejalan dengan Undang-Undang No. 22 Tahun 1999 tentang Pemerintahan Daerah, Tim Penggerak PKK Pusat telah menyelenggarakan Rapat Kerja Nasional Luar Biasa PKK pada tanggal 31 Oktober sampai dengan 02 November 2000 di Bandung dipimpin oleh Ibu Suryadi Sudirdja, yang menghasilkan pokok-pokok kesepakatan antara lain, adalah pengertian dan nomenklatur Gerakan PKK berubah dari Pembinaan Kesejahteraan Keluarga menjadi Pemberdayaan dan Kesejahteraan Keluarga, disingkat PKK, dan adanya Badan Penyantun TP PKK disemua tingkatan.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Hasil Kesepakatan Rakernaslub PKK tersebut selanjutnya ditetapkan menjadi Keputusan Menteri Dalam Negeri dan Otonomi Daerah No. 53 Tahun 2000 tentang Gerakan Pemberdayaan dan Kesejahteraan Keluarga (PKK). Dengan dasar Kepmendagri tersebut disusunlah Pedoman Umum Gerakan PKK sebagai panduan pelaksanaan Gerakan PKK, sampai saat ini.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 2005 TP PKK Pusat mengadakan Rakernas VI PKK dipimpin oleh Ketua Umum Ibu Susiyati Ma&rsquo;ruf menetapkan perubahan nama Badan Penyantun PKK menjadi Dewan Penyantun PKK, serta adanya Seragam Nasional PKK. Pada tahun 2010 diselenggarakan Rakernas VII PKK yang dipimpin oleh Ketua Umum TP PKK Ibu Hj. Vita Gamawan Fauzi, SH yang menghasilkan rumusan antara lain tentang: Penyesuaian dan penetapan Hari Kesatuan Gerak PKK dari tanggal 27 Desember menjadi 4 Maret.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 2013, diterbitkan Peraturan Menteri Dalam Negeri No 1 Tahun 2013 tentang Pemberdayaan Masyarakat melalui Gerakan Pemberdayaan dan Kesejahteraan Keluarga. Hal mendasar yang diatur dalam Permendagri tersebut adalah:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">1.&nbsp; Pembinaan dan pengawasan terhadap Pemberdayaan Masyarakat melalui Gerakan PKK ada di Institusi yang membidangi Pemberdayaan Masyarakat</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">2.&nbsp; Sebutan Dewan Penyantun menjadi Pembina sehingga Menteri Dalam Negeri menjadi&nbsp;<strong>Ketua Pembina TP PKK Pusat, Gubernur Ketua Pembina TP PKK Provinsi sampai dengan Kepala Desa/Lurah sebagai Ketua Pembina</strong>&nbsp;di wilayahnya masing-masing.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 2015 dilaksanakan Rakernas VIII Tahun 2015 yang dipimpin oleh&nbsp;<strong>dr.Erni Guntarti Tjahjo Kumolo</strong>, bertempat di Red Top Hotel, Rakernas tersebut menghasilkan:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">1.&nbsp; Bidang-bidang yang sebelumnya dengan sebutan Ketua I, Ketua II, Ketua III, dan Ketua IV. Pada Rakernas VIII Tahun 2015 menjadi:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><strong>Ketua I Bidang Pembinaan Karakter Keluarga</strong></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><strong>Ketua II Bidang Pendidikan dan Peningkatan Ekonomi Keluarga</strong></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><strong>Ketua III Bidang Penguatan Ketahanan Keluarga</strong></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\"><strong>Ketua IV Bidang Kesehatan Keluarga dan Lingkungan</strong></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">2.&nbsp; Susunan Keanggotaan Tim Penggerak PKK di Pusat ditambah dengan&nbsp;<strong>&ldquo;Tenaga Ahli&rdquo;</strong>&nbsp;sebagai unsur pendukung sesuai dengan keahliannya</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">3.&nbsp; Jumlah Jenis surat disederhanakan dari 11 menjadi 8 (delapan): Surat Keputusan; Surat Biasa; Surat Pengantar; Surat Edaran; Surat Kuasa; Surat Tugas; Piagam/Penghargaan; Lembar Disposisi</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">4.&nbsp; Program Unggulan; Program Unggulan merupakan ciri khas Gerakan PKK untuk mencapai visi dan misinya, yang dilaksanakan oleh seluruh jajaran Tim Penggerak PKK Pusat dan Daerah sampai kepada Kelompok-kelompok PKK dan Dasawisma sesuai dengan peran, fungsi, dan kapasitasnya masing-masing. Program Unggulan ini dikategorikan sebagai program prioritas. Program Unggulan dimaksud, adalah:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">a.&nbsp; Pola Asuh Anak dan Remaja dengan penuh cinta dan kasih sayang dalam Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">b.&nbsp; Pemberdayaan Ekonomi Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">c.&nbsp; Pemanfaatan lahan melalui Program Halaman Asri Teratur Indah dan Nyaman (<strong>Hatinya</strong>) PKK</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">d.&nbsp; Hidup Bersih Sehat di dalam Keluarga dan Lingkungan dengan PHBS dan perilaku Cerdik (cek kesehatan secara teratur, enyahkan asap rokok, rajin olahraga, diet seimbang, istirahat cukup, dan kelola stress).</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Pada tahun 2021 dilaksanakan Rakernas IX Tahun 2021 yang dipimpin oleh Ny.Tri Tito Karnavian, bertempat di Kemendagri, Rakernas tersebut menghasilkan:</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">a. Draft Rencana Induk Gerakan PKK</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">b. Juksi Tata Kelola Kelembagaan PKK</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Secara Umum Rencana Induk Gerakan PKK tersebut merupakan representasi dari ketentuan yang tertuang dalam Peraturan Presiden No.99 Tahun 2017 tentang Gerakan Pemberdayaan dan Kesejaheraan Keluarga, serta Peraturan Menteri Dalam Negeri No.36 Tahun 2020 tentang Petunjuk Pelaksanaan Peraturan Presiden No.99 Tahun 2017 tentang Gerakan Pemberdayaan dan Kesejaheraan Keluarga.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">Sedangkan isi Juknis Tata Kelola Kelembagaan PKK tidak mengalami banyak perubahan dari Hasil Rakernas VIII PKK Tahun 2015 sebagai Pedoman Gerakan PKK.</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: justify;\">&nbsp;</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: center;\">Jambi, AGUSTUS 2021</p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\" style=\"text-align: center;\">TIM PENGGERAK PKK PROV.JAMBI</p>\r\n</body>\r\n</html>', '2021-03-31'),
(6, 'VISI & MISI', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<section id=\"h.71e6c51e3ba194c1_27\" class=\"yaqOZd\">\r\n<div class=\"mYVXT\">\r\n<div class=\"LS81yb VICjCf\" tabindex=\"-1\">\r\n<div class=\"hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc\">\r\n<div class=\"JNdkSc-SmKAyb\">\r\n<div class=\"\">\r\n<div class=\"oKdM2c Kzv0Me\">\r\n<div id=\"h.71e6c51e3ba194c1_24\" class=\"hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque GNzUNc\">\r\n<div class=\"jXK9ad-SmKAyb\">\r\n<div class=\"tyJCtd mGzaTb baZpAe\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" jgG6ef\">A. VISI</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"h.71e6c51e3ba194c1_31\" class=\"yaqOZd\">\r\n<div class=\"mYVXT\">\r\n<div class=\"LS81yb VICjCf\" tabindex=\"-1\">\r\n<div class=\"hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc\">\r\n<div class=\"JNdkSc-SmKAyb\">\r\n<div class=\"\">\r\n<div class=\"oKdM2c Kzv0Me\">\r\n<div id=\"h.71e6c51e3ba194c1_28\" class=\"hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque GNzUNc\">\r\n<div class=\"jXK9ad-SmKAyb\">\r\n<div class=\"tyJCtd mGzaTb baZpAe\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" KB0Tx\"><strong>Terwujudnya Keluarga Sehat, Cerdas, Berdaya, Beriman dan Bertaqwa Menuju Indonesia Maju di Tahun 2024</strong></span></p>\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"h.71e6c51e3ba194c1_35\" class=\"yaqOZd\">\r\n<div class=\"mYVXT\">\r\n<div class=\"LS81yb VICjCf\" tabindex=\"-1\">\r\n<div class=\"hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc\">\r\n<div class=\"JNdkSc-SmKAyb\">\r\n<div class=\"\">\r\n<div class=\"oKdM2c Kzv0Me\">\r\n<div id=\"h.71e6c51e3ba194c1_32\" class=\"hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque GNzUNc\">\r\n<div class=\"jXK9ad-SmKAyb\">\r\n<div class=\"tyJCtd mGzaTb baZpAe\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">B. MISI</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"h.71e6c51e3ba194c1_39\" class=\"yaqOZd\">\r\n<div class=\"IFuOkc\">&nbsp;</div>\r\n<div class=\"mYVXT\">\r\n<div class=\"LS81yb VICjCf\" tabindex=\"-1\">\r\n<div class=\"hJDwNd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c JNdkSc\">\r\n<div class=\"JNdkSc-SmKAyb\">\r\n<div class=\"\">\r\n<div class=\"oKdM2c Kzv0Me\">\r\n<div id=\"h.71e6c51e3ba194c1_36\" class=\"hJDwNd-AhqUyc-uQSCkd jXK9ad D2fZ2 OjCsFc wHaque GNzUNc\">\r\n<div class=\"jXK9ad-SmKAyb\">\r\n<div class=\"tyJCtd mGzaTb baZpAe\">\r\n<ol class=\"n8H08c BKnRcf\">\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Membentuk Karakter Keluarga melalui Pola Asuh yang sesuai dengan Nilai Dasar Pancasila.</span></p>\r\n</li>\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Meningkatkan Pendidikan &amp; Ekonomi Keluarga.</span></p>\r\n</li>\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Memperkuat Ketahanan Keluarga melalui Pemenuhan Pangan, Sandang, Rumah Sehat Layak Huni serta Tata Laksana Rumah Tangga.</span></p>\r\n</li>\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Meningkatkan Kesehatan Keluarga, Lingkungan dan Perencanaan Sehat.</span></p>\r\n</li>\r\n<li class=\"TYR86d wXCUfe zfr3Q\" dir=\"ltr\">\r\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><span class=\" puwcIf\">Modernisasi Organisasi PKK dengan memanfaatkan Teknologi Informasi.</span></p>\r\n</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n</body>\r\n</html>', '2021-10-26');

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
(8, 'Vaksin Provinsi Jambi', 'IEE_N9MRccA', '16-February-2022', NULL);

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
(6, 'ULP', 'https://ulp.lkpp.go.id/', '38295ulp.jpg', '2022-02-16');

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
  MODIFY `id_berita` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id_kegitan_program` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id_profil` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_putusan`
--
ALTER TABLE `tbl_putusan`
  MODIFY `id_putusan` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_vidio`
--
ALTER TABLE `tbl_vidio`
  MODIFY `id_vidio` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_web_terkait`
--
ALTER TABLE `tbl_web_terkait`
  MODIFY `id_web_terkait` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
