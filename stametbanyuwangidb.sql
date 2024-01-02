-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2024 pada 10.32
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stametbanyuwangidb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisiscurahhujan`
--

CREATE TABLE `analisiscurahhujan` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `analisiscurahhujan`
--

INSERT INTO `analisiscurahhujan` (`id`, `name`, `foto`, `url`, `createdAt`, `updatedAt`) VALUES
(8, '2023-12-30', 'foto-1704178789142.jpg', 'http://localhost:5000/public/analisis-curah-hujan/foto-1704178789142.jpg', '2024-01-02 06:59:49.165', '2024-01-02 06:59:49.165');

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisissifathujan`
--

CREATE TABLE `analisissifathujan` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `analisissifathujan`
--

INSERT INTO `analisissifathujan` (`id`, `name`, `foto`, `url`, `createdAt`, `updatedAt`) VALUES
(7, '2023-12-30', 'foto-1704178802223.jpg', 'http://localhost:5000/public/analisis-sifat-hujan/foto-1704178802223.jpg', '2024-01-02 07:00:02.239', '2024-01-02 07:00:02.239');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(191) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` mediumtext NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `tanggal`, `isi`, `gambar`, `url`, `createdAt`, `updatedAt`) VALUES
(4, 'Penetapan Hasil Pembahasan RKA K/L TA. 2022', '2021-09-07', '<p>Jakarta - Senin (6/9), Ketua Komisi V DPR RI Lazarus mengesahkan Penetapan hasil Pembahasan Rincian Program dan Alokasi Anggaran Kementerian dan Lembaga Mitra kerja Komisi V dalam RAPBN Tahun 2022 di Ruang Rapat Komisi V Gedung DPR RI.</p>\r\n<p>&nbsp;</p>\r\n<p>Lazarus menyebutkan hasil ini akan di sampaikan kepada Badan Anggaran DPR RI dan akan melaksanakan Paripurna pengesahan APBN Tahun 2022 pada tanggal 30 September 2021.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Masih ada waktu untuk melakukan komunikasi dan sinkronisasi manakala dipandang perlu untuk melakukan penyesuaian-penyesuaian terhadap pandangan-pandangan untuk menyamakan persepsi terhadap mata anggaran dari K/L mitra kerja komisi V dengan masukan dan saran dari seluruh pimpinan dan Anggota Komisi V DPR RI,\" Sambung nya.</p>\r\n<p>&nbsp;</p>\r\n<p>Ia menegaskan Manakala Komisi V memandang perlu, maka akan menyurati kembali K/L mitra kerja komisi V untuk mengadakan rapat lebih lanjut sebelum tanggal 30 september yang akan datang.</p>\r\n<p>&nbsp;</p>\r\n<p>lazarus menyampaikan Berdasarkan Surat Bersama Menteri Keuangan dan Menteri PPN tentang PAGU Indikatif Belanja K/L Tahun 2022, Menetapkan BMKG mendapatkan alokasi Pagu Indikatif dalam Nota Keuangan RAPBN TA 2022 sebesar Rp 3,108 Triliun. Sementara itu, usulan RKA BMKG Tahun 2022 berdasarkan Renstra BMKG 2020-2024 adalah sebesar Rp 3,584 Triliun, sehingga masih terdapat&nbsp;<em>backlog</em>&nbsp;sebesar Rp 476,014 Miliar.</p>\r\n<p>&nbsp;</p>\r\n<p>Rapat Kerja dilakukan secara fisik dan Virtual baik pimpinan dan anggota Komisi V DPR RI dihadiri 35 orang dari 9 unsur fraksi yang berbeda dan juga di hadiri para mitra kerja antara lain Menteri PUPR RI, Menteri Perhubungan, Menteri Desa, PDT dan Transmigrasi, Kepala BMKG dan Kepala BASARNAS</p>\r\n<p>&nbsp;</p>\r\n<p>Sebelum Raker penetapan Nota Keuangan RAPBN TA 2022 diwaktu yang berbeda, lebih dulu juga dilakukan Rapat Dengar Pendapat Komisi V DPR RI dengan Sestama BMKG dan Sestama BNPP (BASARNAS) dengan agenda Evaluasi Pelaksanaan APBN TA 2021 sampai dengan bulan Agustus 2021 dan Pembahasan alokasi anggaran menurut fungsi dan program masing-masing unit Eselon I K/L Mitra Kerja Komisi V DPR RI dalam RAPBN TA. 2022 dengan Pimpinan Rapat Wakil Ketua Komisi V DPR RI Arwani Thomafi di Ruang Rapat Komisi V Gedung DPR RI.</p>', 'gambar-1704170050676.jpg', 'http://localhost:5000/public/berita/gambar-1704170050676.jpg', '2024-01-02 04:34:10.689', '2024-01-02 04:34:10.689'),
(5, 'Kepala BMKG Sebut Perubahan Iklim Jadikan Ilmu Titen', '2021-10-09', '<p><strong>TRENGGALEK (7 Oktober 2021)</strong>&nbsp;- Kepala Badan Meteorologi, Klimatologi, dan Geofisika (BMKG), Dwikorita Karnawati mengatakan ilmu titen yang kerap menjadi pegangan nelayan \"ambyar\" akibat perubahan iklim. Alhasil, tidak jarang nelayan harus pulang dengan tangan kosong karena hasil melaut tidak maksimal. Bahkan, tidak jarang nelayan mengalami kecelakaan dan menjadi korban akibat badai dan gelombang tinggi.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Ilmu Titen sudah sangat sulit untuk dijadikan acuan. Cuaca dan iklim saat ini begitu sangat dinamis dan sukar untuk ditebak,\" ungkap Dwikorita Karnawati saat membuka Sekolah Lapang Cuaca Nelayan di Kabupaten Trenggalek, Jawa Timur, Kamis (7/10).</p>\r\n<p>&nbsp;</p>\r\n<p>Dwikorita mengatakan, perubahan iklim berdampak sangat luas pada kehidupan masyarakat. Kenaikan suhu bumi tidak hanya berdampak pada naiknya temperatur bumi tetapi juga mengubah sistem iklim yang mempengaruhi berbagai aspek pada perubahan alam dan kehidupan manusia, seperti kualitas dan kuantitas air, habitat, hutan, kesehatan, lahan pertanian, termasuk ekosistem wilayah pesisir.</p>\r\n<p>&nbsp;</p>\r\n<p>Dicontohkan Dwikorita, saat banjir besar yang menyergap Jabodetabek di penghujung tahun 2019 hingga awal tahun 2020 lalu. Berdasarkan prakiraan yang terkonfirmasi dari analisis BMKG, kejadian tersebut disebabkan oleh seruak udara dingin (<em>cold surge</em>) dari Tibet ke Hong Kong yang selanjutnya masuk ke wilayah Jabodetabek.&nbsp;<em>Cold surge</em>&nbsp;sendiri merupakan seruakan yang mengandung massa udara dingin dari daratan Asia ke arah selatan.</p>\r\n<p>&nbsp;</p>\r\n<p>Artinya, kata dia, perubahan iklim inilah yang kemudian menjadi biang keladi cuaca ekstrem yang kerap menghantam Indonesia. Mulai dari hujan lebat disertai kilat dan petir, siklon tropis, gelombang tinggi, hingga hujan es. Meski bukan berasal dari Indonesia, lanjut dia, namun dampaknya bisa dirasakan oleh Indonesia.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Perubahan iklim sendiri adalah peristiwa global, namun dampaknya dirasakan secara regional ataupun lokal. Tidak ada batasan teritorial negara,\" imbuhnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Dwikorita menyebut, kondisi inilah yang memacu BMKG untuk menggencarkan pelaksanaan Sekolah Lapang Cuaca Nelayan di daerah-daerah pesisir pantai. Melalui SLCN yang digelar, BMKG ingin nelayan dapat melaut, mendapatkan hasil dan pulang dengan selamat.</p>\r\n<p>&nbsp;</p>\r\n<p>SLCN sendiri, kata dia, bertujuan untuk meningkatkan keterampilan nelayan Indonesia dalam mengakses, membaca, menindaklanjuti dan mendiseminasikan informasi cuaca, iklim maritim serta informasi prakiraan lokasi ikan dari sumber yang terpercaya. Selain itu, SLCN juga menjadi bagian dari ikhtiar BMKG mewujudkan Indonesia sebagai poros maritim dunia.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Kegiatan SLCN ini menggunakan pembelajaran interaktif, yaitu metode belajar dan praktik. Materi pokok yang akan diberikan yaitu pengenalan produk dan memahami informasi cuaca dan iklim maritim, cara membaca informasi maritim dan pengenalan alat-alat observasi,\" imbuhnya.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Perkenalkan SIRITA dan&nbsp;<em>EWS Radio Broadcaster</em></strong></p>\r\n<p>Dalam kesempatan tersebut, Dwikorita juga turut memperkenalkan inovasi teknologi terbaru yang dirilis BMKG untuk menunjang sistem peringatan dini gempa dan tsunami. Inovasi tersebut bernama SIRITA dan&nbsp;<em>EWS Radio Broadcaster</em>&nbsp;yang sengaja dihadirkan sebagai respon BMKG atas meningkatnya aktivitas kegempaan di Indonesia.</p>\r\n<p>&nbsp;</p>\r\n<p><em>EWS Radio Broadcaster</em>&nbsp;merupakan moda diseminasi berbasis suara guna mengantisipasi kerusakan jaringan komunikasi selular pasca gempa merusak. System ini memanfaatkan jaringan komunikasi berbasis radio yang banyak digunakan oleh pegiat kebencanaan dan komunitas radio berbasis masyarakat seperti RAPI dan ORARI sebagai hub untuk menyebarkan informasi yang cepat, akurat serta ramah terhadap kelompok masyarakat rentan yang memiliki keterbatasan menelaah pesan berbasis teks. Sedangkan SIRITA adalah aplikasi sirine tsunami berbasis android yang dibuat untuk memudahkan Pemerintah Daerah menyampaikan perintah evakuasi kepada masyarakat sebagai bentuk peringatan dini.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Inovasi ini menjadi terobosan ditengah kendala akan banyaknya sirine tsunami yang mati akibat usia pakai atau yang rumahnya jauh dari sirine yang terpasang. Handphone akan mengeluarkan suara kencang layaknya sirine, sehingga peringatan dininya bersifat sangat personal,\" paparnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Sementara itu, anggota DPR RI Komisi V Sri Rahayu menyambut baik pelaksanaan SLCN di Kabupaten Trenggalek. Menurutnya, SLCN menjadi semacam pencerah bagi para nelayan karena nelayan tidak hanya sekedar diajarkan untuk membaca data dan informasi cuaca, namun juga ditunjukkan wilayah mana-mana saja yang menjadi tempat berkumpulnya ikan.</p>\r\n<p>&nbsp;</p>\r\n<p>Senada Wakil Bupati Trengalek, Syah Muhammad Natanegara mengatakan dengan adanya SLCN maka para nelayan baik tangkap maupun budidaya dapat memahami informasi yang disampaikan BMKG. Hal ini berguna untuk keselamatan para nelayan saat melakukan kegiatan di tengah laut.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Informasi cuaca dan iklim bisa menjadi acuan mereka (nelayan) untuk melaksanakan kegiatan,\" imbuhnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Dalam acara tersebut hadir pula dari jajaran BMKG, Kepala Pusat Meteorologi Maritim, Kepala Pusat Gempabumi dan Tsunami, Kepala Balai Besar BMKG Wilayah 3, Koordinator BMKG Propinsi Jawa Timur dan para Kepala Stasiun BMKG di Wilayah Jawa Timur, Jateng dan DIY. Semua bersama BPBD Kabupaten dan Tim Reaksi Cepat melakukan Susur dan Pengecekan Jalur Evakuasi Tsunami dari tepi Pantai Sumbreng menuju Tempat Evakuasi. (*)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Biro Hukum dan Organisasi<br>Bagian Hubungan Masyarakat</strong></p>\r\n<p>Instagram : @infoBMKG<br>Twitter : @infoBMKG @InfoHumasBMKG<br>Facebook : InfoBMKG<br>Youtube : infoBMKG<br>Tiktok : @infoBMKG</p>', 'gambar-1704170251139.jpg', 'http://localhost:5000/public/berita/gambar-1704170251139.jpg', '2024-01-02 04:37:31.160', '2024-01-02 04:37:31.160'),
(6, 'Hadang Potensi Tsunami di Selatan Jawa, BMKG Luncurkan EWS Radio Broadcaster dan SIRITA', '2023-08-28', '<p>CILACAP (4 Oktober 2021) - Badan Meteorologi, Klimatologi, dan Geofisika (BMKG) meluncurkan dua inovasi sekaligus guna menghadang potensi tsunami di Selatan Jawa, Senin (4/10) yaitu EWS Radio Broadcaster dan aplikasi SIRITA (Sirens for Rapid Information on Tsunami Alert) di Cilacap, Senin (4/10).</p>\r\n<p>&nbsp;</p>\r\n<p>Kepala BMKG, Dwikorita Karnawati mengatakan bahwa peluncuran dua inovasi ini sebagai respon BMKG atas meningkatnya aktivitas kegempaan di Indonesia. Berdasarkan data gempabumi hasil pengamatan BMKG, selama perioda tahun 2008-2016 rata-rata 5000 hingga 6000 kali, 2017 meningkat menjadi 7169, selanjutnya mulai 2018 hingga 2019 melompat menjadi lebih dari 11500 kali dalam satu tahun. Meskipun kemudian agak menurun menjadi 8258 kali di tahun 2020, jumlah ini masih di atas rata-rata kejadian gempabumi tahunan di Indonesia.</p>\r\n<p>&nbsp;</p>\r\n<p>Dwikorita menjelaskan, EWS Radio Broadcaster merupakan moda diseminasi berbasis suara guna mengantisipasi kerusakan jaringan komunikasi selular pasca gempa merusak. Sistem ini memanfaatkan jaringan komunikasi berbasis radio yang banyak digunakan oleh pegiat kebencanaan dan komunitas radio berbasis masyarakat, seperti RAPI dan ORARI sebagai hub untuk menyebarkan informasi secara cepat, akurat serta ramah terhadap kelompok masyarakat rentan yang memiliki keterbatasan menelaah pesan berbasis teks.</p>\r\n<p>&nbsp;</p>\r\n<p>Sedangkan, SIRITA adalah aplikasi sirine tsunami berbasis android yang dibuat untuk memudahkan pemerintah daerah menyampaikan perintah evakuasi kepada masyarakat sebagai bentuk peringatan dini. Dwikorita menyebut inovasi yang diprakarsai Kepala Stasiun Geofisika Banjarnegara ini, menjadi terobosan di tengah kendala akan banyaknya sirine tsunami yang mati akibat usia pakai.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Di era saat ini, saya yakin hampir semua orang telah memiliki ponsel pintar berbasis android. Paling tidak, dalam satu rumah tangga pasti ada yang memiliki ponsel pintar, bisa jadi bahkan lebih. Maka dari itu, aplikasi ini akan sangat bermanfaat sebagai bentuk peringatan dini evakuasi bagi masyarakat di pesisir pantai,\" ujar Dwikorita.</p>\r\n<p>&nbsp;</p>\r\n<p>Dwikorita membeberkan, dipilihnya Cilacap sebagai tempat peluncuran inovasi teranyar BMKG tersebut karena pusat perekonomian dan pemerintahan di kabupaten ini berada di pesisir pantai. Sedangkan jarak evakuasi menuju tempat yang relatif aman cukup jauh, sehingga cukup memakan waktu. Di Cilacap juga, tambah Dwikorita, terdapat berbagai objek vital nasional dan strategis diantaranya Kilang Minyak Pertamina, Pembangkit Listrik Tenaga Uap, dan pabrik semen Dynamix.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Berdasarkan pemodelan, potensi ketinggian tsunami berkisar belasan meter dengan estimasi kedatangan tsunami sekitar 50 menit. Namun, karena wilayah pesisir Cilacap sangat padat penduduk maka butuh waktu lebih untuk proses evakuasi. Terlebih tempat evakuasi cukup jauh sekitar 2 hingga 4 kilometer,\" paparnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Harapannya, keberadaan EWS Broadcaster dan SIRITA ini dapat meminimalisir jumlah korban jiwa jika sewaktu-waktu gempa bumi dan tsunami menerjang selatan Pulau Jawa. Dwikorita menyebut bahwa penggunaan teknologi digital dan aplikasi yang terkoneksi satu sama lain akan meningkatkan efektivitas sistem peringatan dini yang dikeluarkan, karena dapat menghindarkan dari terputusnya rantai alur informasi peringatan dini dari BMKG kepada masyarakat.</p>\r\n<p>&nbsp;</p>\r\n<p>Dwikorita mengungkapkan, keterbatasan jaringan komunikasi kerap menjadi salah satu kendala saat penyebaran peringatan dini karena tidak jarang jaringan komunikasi selular mengalami gangguan usai gempa merusak. Kendala inilah yang coba BMKG pecahkan dengan meluncurkan EWS Broadcaster dan SIRITA.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Khusus SIRITA, handphone yang menginstal aplikasi SIRITA akan berbunyi keras layaknya sirine apabila BMKG mengeluarkan peringatan dini mengenai potensi tsunami. Jadi, kendala seperti tidak tersampaikannya peringatan dini kepada masyarakat bisa diminimalisir. Pun, akibat jauhnya tempat tinggal dengan lokasi sirine karena sifat handphone yang sangat personal,\" terangnya.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Bunyi sirine yang keluar dari handphone didefinisikan sebagai perintah untuk segera melakukan evakuasi, mencari dataran tinggi atau tempat-tempat yang lebih tinggi guna menghindari terjangan tsunami,\" tambah dia.</p>\r\n<p>&nbsp;</p>\r\n<p>Lebih lanjut Kepala Pusat Gempabumi dan Tsunami, Bambang S. Prayitno, mengatakan bahwa BMKG berkomitmen untuk terus melakukan lompatan-lompatan inovasi guna melindungi segenap tumpah darah Indonesia dari bahaya bencana alam. Saat ini, BMKG bersama Kementerian/Lembaga terkait tengah berupaya keras melakukan penyempurnaan dan pengembangan lanjut Sistem Informasi Gempabumi dan Peringatan Dini Tsunami (InaTEWS) menyusul munculnya fenomena tsunami yang diakibatkan aktivitas non tektonik.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Tsunami di Pandeglang, Selat Sunda tahun 2018 lalu adalah salah satu contoh tsunami non tektonik. Tsunami terjadi bukan karena gempa bumi melainkan akibat longsor lereng gunung ke laut yang dipicu erupsi Gunung Api Anak Krakatau. Terbaru, adalah saat gempa bumi magnitudo 6,1 terjadi di Pulau Seram Maluku Tengah Juni 2021 lalu yang juga mengakibatkan longsor lereng pantai sehingga berdampak tsunami dengan kenaikan muka air laut sekitar 50 cm,\" paparnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Dwikorita menegaskan bahwa publikasi mengenai potensi gempa bumi dan tsunami yang sering disebarluaskan BMKG bukan untuk menakuti-nakuti masyarakat. Sebaliknya, hal tersebut dilakukan untuk mendorong pemangku kebijakan menyiapkan langkah-langkah mitigasi yang kuat dari hulu ke hilir. Selain itu, juga untuk meningkatkan literasi bencana dan membangun budaya selamat di masyarakat.</p>\r\n<p>&nbsp;</p>\r\n<p>Sementara itu, Gubernur Jawa Tengah Ganjar Pranowo yang hadir secara virtual menyambut gembira peluncuran EWS Broadcaster dan aplikasi SIRITA tersebut yang menurutnya akan berkontribusi positif dalam upaya mitigasi pengurangan risiko tsunami di Selatan Jawa. Apalagi, potensi bencana tsunami di selatan Pulau Jawa disebut-sebut maksimum dapat mencapai ketinggian lebih dari 20an meter jika gempa bumi megathrust terjadi.</p>\r\n<p>&nbsp;</p>\r\n<p>\"Terimakasih teman-teman BMKG yang selalu menghasilkan inovasi bencana termasuk peluncuran EWS Broadcaster dan SIRITA. Inovasi ini akan sangat bermanfaat untuk saudara-saudara kita di Pesisir Selatan Jawa,\" ujarnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Senada, Wakil Bupati Cilacap Syamsul Aulia Rahman mengatakan berbagai inovasi peringatan dini gempa dan tsunami yang diluncurkan BMKG akan sangat bermanfaat dalam upaya memperkuat mitigasi di daerah rawan bencana, termasuk Kabupaten Cilacap yang berada di Selatan Pulau Jawa. Syamsul berharap peluncuran inovasi ini dibarengi dengan sosialisasi massif kepada masyarakat agar kebermanfaatannya dapat lebih dirasakan masyarakat.</p>\r\n<p>&nbsp;</p>\r\n<p>Kepala Stasiun Geofisika, Setyoajie Prayoedhie yang merupakan inovator dari Aplikasi ini, menerangkan bahwa aplikasi SIRITA bisa diunduh masyarakat melalui telepon selular berbasis android. Namun demikian, para pengguna harus memastikan bahwa perangkat lunak di telepon selular masing-masing sudah menggunakan versi terbaru dikarenakan aplikasi hanya akan berfungsi dengan baik di perangkat yang mendukung \"google cloud service\".</p>\r\n<p>&nbsp;</p>\r\n<p>Hadir pula dalam acara peluncuran tersebut perwakilan dari Pertamina, Holchim, PLTU, Kepala Balai Besar BMKG Wilayah II, Koordinator dan para Kepala Stasiun BMKG di Propinsi Jawa Tengah dan DIY, serta Sekretaris Daerah Kabupaten Cilacap, Kepala BPBD Propinsi Jawa Tengah, dan Kepala BPBD Kabupaten Cilacap. (*)</p>\r\n<p>&nbsp;</p>\r\n<p>Biro Hukum dan Organisasi<br>Bagian Hubungan Masyarakat.</p>', 'gambar-1704170394010.jpg', 'http://localhost:5000/public/berita/gambar-1704170394010.jpg', '2024-01-02 04:39:54.097', '2024-01-02 04:39:54.097'),
(7, 'BMKG: Siap Bergabung Dalam Antisipasi Dampak Perubahan Iklim Untuk Indonesia Emas 2045', '2023-08-28', '<p>Jakarta, Senin (21/8) Badan Meteorologi, Klimatologi, dan Geofisika (BMKG) berpartisipasi dalam Dialog Nasional Antisipasi Dampak Perubahan Iklim Untuk Indonesia Emas 2045 yang diselenggarakan oleh Badan Perencanaan Pembangunan Nasional (BAPPENAS).&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Menteri Perencanaan Pembangunan Nasional dan Kepala Badan Perencanaan Pembangunan Nasional (Bappenas), Suharso Monoarfa, mengingatkan bahwa dampak perubahan iklim mengancam ekonomi di Indonesia. Diperkirakan dalam kurun 2020-2024 perubahan iklim itu akan menyebabakan kerugian ekonomi karena itu diperlukan sebuah intervensi kebijakan tukas Suharso.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Dalam upaya meningkatkan ketepatan data dan analisis, Dwikorita menyampaikan urgensi apabila dalam point penguatan sistem peringatan dini tersebut ditambahkan menjadi penguatan pengembangan sistem observasi secara sistematik.</p>\r\n<p>&nbsp;</p>\r\n<p>Jadi tidak langsung tiba-tiba peringatan dini, karena tanpa observasi yang sistematik dan kuat, kesimpulan-kesimpulannya itu bisa salah karena observasinya tidak tepat. Melalui pendekatan ini, kita dapat lebih awal mengantisipasi kemungkinan hal-hal yang menjadi kekhawatiran kita\" Ungkap Dwikorita.</p>\r\n<p>&nbsp;</p>\r\n<p>Selain itu, Dwikorita juga menggarisbawahi pentingnya penguatan sistem peringatan dini dan pengembangan sistem observasi yang lebih terstruktur guna menghadapi perubahan iklim. Data yang disajikan oleh BMKG mengindikasikan kenaikan suhu global, termasuk bulan Juli 2023 yang mencatat suhu terpanas dalam sejarah. BMKG juga memaparkan bahwa Global Water Hotspots terjadi merata di berbagai negara. Sementara menurut FAO, lebih dari 500 juta petani skala kecil yang memproduksi 80% stok pangan dunia menjadi kelompok yang rentan terhadap perubahan iklim.</p>\r\n<p>&nbsp;</p>\r\n<p>Dwikorita menyampaikan, bahwa sejak tahun 2011, Badan Meteorologi, Klimatologi, dan Geofisika (BMKG) telah aktif melakukan upaya berinteraksi dengan masyarakat di desa. Melalui interaksi tersebut, BMKG memperoleh pemahaman tentang kebutuhan masyarakat. Konsep ini juga terintegrasi dalam program Sekolah Lapang Iklim (SLI), yang sejak tahun 2011 mendapat dukungan dari Badan Perencanaan Pembangunan Nasional (BAPPENAS).</p>\r\n<p>&nbsp;</p>\r\n<p>Sekolah Lapang Iklim (SLI) adalah kegiatan literasi iklim untuk mendukung ketahanan pangan yang dilakukan BMKG bersama Kementrian Pertanian dan organisasi kemasyarakatan lainnya. Kegiatan adaptasi ini dilaksanakan sebagai upaya untuk meningkatkan pemahaman petani dan petugas penyuluh pertanian terhadap data dan informasi iklim yang dapat langsung diaplikasikan pada aktivitas pertanian.</p>\r\n<p>&nbsp;</p>\r\n<p>Dengan semakin mendesaknya isu perubahan iklim dan dampaknya yang meluas di Indonesia, Dialog Nasional Antisipasi Dampak Perubahan Iklim Untuk Indonesia Emas 2045 telah memberikan wadah penting bagi pemerintah. Dialog ini memberikan bahan pertimbangan yang berharga untuk bersama-sama mendukung negara dan masyarakat dalam menghadapi tantangan perubahan iklim. Melalui upaya mitigasi dan adaptasi yang efektif, diharapkan dampak negatif dapat diredakan dan diatasi dengan lebih baik</p>', 'gambar-1704170558383.jpg', 'http://localhost:5000/public/berita/gambar-1704170558383.jpg', '2024-01-02 04:41:43.195', '2024-01-02 04:42:38.419'),
(8, 'BMKG Hadiri Kegiatan Systematic Observations Financing Facility di Timor Leste', '2023-08-28', '<p><strong>Dili, 28 Agustus 2023 -</strong>&nbsp;Badan Meteorologi, Klimatologi, dan Geofisika (BMKG) yang diwakili oleh Kepala Pusat Pendidikan dan Pelatihan, bekerja sama dengan Tim Finnish Meteorological Institute (FMI) melaksanakan kegiatan Systematic Observations Financing Facility (SOFF)-World Meteorological Organization (WMO) Fase I (Readiness Phase) sebagai Penasihat Sejawat (Peer Advisor) di Timor Leste.</p>\r\n<p>&nbsp;</p>\r\n<p>Pada kegiatan Fase I SOFF yang dilaksanakan pada tanggal 21 s.d. 29 Agustus 2023 ini, Tim BMKG dan FMI saling bekerja sama dalam melaksanakan Global Basic Observing Network (GBON) National Gap Analysis, menyusun GBON National Contribution Plan dan melaksanakan Country Hydromet Diagnostics.</p>\r\n<p>&nbsp;</p>\r\n<p>Pengumpulan data dilakukan melalui wawancara dan diskusi yang dilaksanakan pada tanggal 21 s.d. 25 Agustus 2023 dengan Kepala Direcao Nacional de Meteorologia e Geofisica Timor Leste (DNMG) beserta staf yang dilanjutkan dengan Pertemuan Stakeholder DNMG.</p>\r\n<p>&nbsp;</p>\r\n<p>Diantaranya, Kementerian dan Lembaga yang berkaitan dengan transportasi, hidrologi, pariwisata, pertanian, perubahan iklim dan lingkungan serta organisasi internasional dan lembaga swadaya masyarakat internasional yang terdapat di Timor Leste yaitu UNEP, FAO, dan Merci Corps pada tanggal 28 s.d. 29 Agustus 2023.</p>\r\n<p>&nbsp;</p>\r\n<p>Dalam sambutannya, Kepala Pusat Pendidikan dan Pelatihan BMKG menekankan pentingnya kolaborasi antar institusi nasional dan internasional dalam mengatasi gap kapasitas serta mempercepat peningkatan kapasitas badan layanan meteorologi di suatu negara.</p>\r\n<p>&nbsp;</p>\r\n<p>Dengan kolaborasi yang kuat, setiap institusi dapat saling mendukung dalam keberhasilan pelaksanaan tugas dan fungsi masing-masing dalam rangka mewujudkan keselamatan dan kesejahteraan masayarakat. Di Indonesia, praktik terbaik atau kolaborasi antara BMKG dengan institusi juga sudah dilakukan.</p>\r\n<p>&nbsp;</p>\r\n<p>Misalnya, kerja sama pertukaran data dan kerja sama pelaksanaan kegiatan Sekolah Lapang Iklim dan Sekolah Lapang Gempa yang dilaksanakan dengan Kementerian dan Lembaga serta Badan Usaha Milik Negara (BUMN) dan Lembaga Swasta di Indonesia dan di dunia.</p>\r\n<p>&nbsp;</p>\r\n<p>Pertemuan Stakeholder hari pertama tanggal 28 Agustus 2023 mendapatkan masukan perlunya penyusunan regulasi yang mengatur tentang meteorologi, klimatologi, dan Geofisika untuk mendukung operasional DNMG serta regulasi tentang pertukaran data di Timor Leste agar data antar Kementerian dan Lembaga Pemerintah di Timor Leste dapat dipertukarkan dengan mudah.</p>\r\n<p>&nbsp;</p>\r\n<p>Kolaborasi antar Kementerian Dan Lembaga di Timor Leste juga sangat diperlukan dalam rangka mengatasi gap pengamatan cuaca dan iklim di Timor Leste dalam rangka mewujudkan keselamatand an kesejahteraan masyarakat di Negara Timor Leste.</p>', 'gambar-1704171426337.jpeg', 'http://localhost:5000/public/berita/gambar-1704171426337.jpeg', '2024-01-02 04:57:06.345', '2024-01-02 04:57:06.345'),
(9, 'fdgfg', '2024-01-01', '<p>sdghgh</p>', 'gambar-1704180541382.jpg', 'http://localhost:5000/public/berita/gambar-1704180541382.jpg', '2024-01-02 07:29:02.200', '2024-01-02 07:29:02.200');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buletintable`
--

CREATE TABLE `buletintable` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `buletin` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buletintable`
--

INSERT INTO `buletintable` (`id`, `name`, `buletin`, `url`, `createdAt`, `updatedAt`) VALUES
(3, 'Juni 2023', 'buletin-1704172740884.pdf', 'http://localhost:5000/public/buletin/buletin-1704172740884.pdf#toolbar=0', '2024-01-02 05:19:01.038', '2024-01-02 05:19:01.038'),
(4, 'Juli 2023', 'buletin-1704172757958.pdf', 'http://localhost:5000/public/buletin/buletin-1704172757958.pdf#toolbar=0', '2024-01-02 05:19:18.150', '2024-01-02 05:19:18.150'),
(5, 'Agustus 2023', 'buletin-1704172773738.pdf', 'http://localhost:5000/public/buletin/buletin-1704172773738.pdf#toolbar=0', '2024-01-02 05:19:33.789', '2024-01-02 05:19:33.789'),
(6, 'September 2023', 'buletin-1704172789768.pdf', 'http://localhost:5000/public/buletin/buletin-1704172789768.pdf#toolbar=0', '2024-01-02 05:19:49.818', '2024-01-02 05:19:49.818'),
(7, 'Agustus 2023', 'buletin-1704172801389.pdf', 'http://localhost:5000/public/buletin/buletin-1704172801389.pdf#toolbar=0', '2024-01-02 05:20:01.451', '2024-01-02 05:20:01.451');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuacabesok`
--

CREATE TABLE `cuacabesok` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cuacabesok`
--

INSERT INTO `cuacabesok` (`id`, `name`, `foto`, `url`, `createdAt`, `updatedAt`) VALUES
(2, '2023-12-30', 'foto-1704178774513.jpg', 'http://localhost:5000/public/cuaca-besok/foto-1704178774513.jpg', '2024-01-02 06:59:34.523', '2024-01-02 06:59:34.523');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuacahariini`
--

CREATE TABLE `cuacahariini` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cuacahariini`
--

INSERT INTO `cuacahariini` (`id`, `name`, `foto`, `url`, `createdAt`, `updatedAt`) VALUES
(3, '2023-12-30', 'foto-1704178756778.jpeg', 'http://localhost:5000/public/cuacahariini/foto-1704178756778.jpeg', '2024-01-02 06:59:16.784', '2024-01-02 06:59:16.784'),
(5, '2024-01-02', 'foto-1704185951864.jpg', 'http://localhost:5000/public/cuacahariini/foto-1704185951864.jpg', '2024-01-02 08:50:49.711', '2024-01-02 08:59:11.890'),
(6, '2024-01-10', 'foto-1704186148977.jpg', 'http://localhost:5000/public/cuacahariini/foto-1704186148977.jpg', '2024-01-02 09:02:28.982', '2024-01-02 09:02:28.982'),
(7, '2024-01-10', 'foto-1704186465928.jpg', 'http://localhost:5000/public/cuacahariini/foto-1704186465928.jpg', '2024-01-02 09:07:45.950', '2024-01-02 09:07:45.950'),
(8, '2024-01-13', 'foto-1704186489967.jpg', 'http://localhost:5000/public/cuacahariini/foto-1704186489967.jpg', '2024-01-02 09:08:09.985', '2024-01-02 09:08:09.985');

-- --------------------------------------------------------

--
-- Struktur dari tabel `haritanpahujan`
--

CREATE TABLE `haritanpahujan` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `haritanpahujan`
--

INSERT INTO `haritanpahujan` (`id`, `name`, `foto`, `url`, `createdAt`, `updatedAt`) VALUES
(2, '2023-12-30', 'foto-1704178833023.jpg', 'http://localhost:5000/public/hari-tanpa-hujan/foto-1704178833023.jpg', '2024-01-02 07:00:33.036', '2024-01-02 07:00:33.036');

-- --------------------------------------------------------

--
-- Struktur dari tabel `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritiksaran`
--

CREATE TABLE `kritiksaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `nohp` varchar(191) NOT NULL,
  `kritik` varchar(191) NOT NULL,
  `saran` varchar(191) NOT NULL,
  `createAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `normalmusim`
--

CREATE TABLE `normalmusim` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `normalmusim`
--

INSERT INTO `normalmusim` (`id`, `name`, `foto`, `url`, `createdAt`, `updatedAt`) VALUES
(7, '2024-01-01', 'foto-1704183360468.jpg', 'http://localhost:5000/public/normal-musim/foto-1704183360468.jpg', '2024-01-02 08:16:00.474', '2024-01-02 08:16:00.474'),
(8, '2024-01-01', 'foto-1704184249244.jpg', 'http://localhost:5000/public/normal-musim/foto-1704184249244.jpg', '2024-01-02 08:30:49.272', '2024-01-02 08:30:49.272'),
(9, '2023-12-31', 'foto-1704184274148.jpg', 'http://localhost:5000/public/normal-musim/foto-1704184274148.jpg', '2024-01-02 08:31:14.185', '2024-01-02 08:31:14.185'),
(10, '2024-01-01', 'foto-1704184653283.jpg', 'http://localhost:5000/public/normal-musim/foto-1704184653283.jpg', '2024-01-02 08:37:33.311', '2024-01-02 08:37:33.311');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `nip` varchar(191) NOT NULL,
  `pangkat` varchar(191) NOT NULL,
  `jabatan` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `nip`, `pangkat`, `jabatan`, `createdAt`, `updatedAt`) VALUES
(5, 'TEGUH TRI SUSANTO, S.SI.,M.T.', '198401252004121001', 'Pembina/IVa', 'Kepala Stasiun/ Struktural Es. IVa', '2023-12-29 07:22:10.689', '2023-12-29 07:23:47.239'),
(6, 'I GEDE AGUS PURBAWA, S.P', '198006192000031001', 'Pembina/IVa', 'PMG Madya', '2023-12-29 07:27:03.018', '2023-12-29 07:27:03.018'),
(7, 'ANJAR TRIYONO HADI, S.P.', '197710241998031001', 'Pembina/IVa', 'PMG Madya', '2023-12-29 07:28:00.836', '2023-12-29 07:28:00.836'),
(8, 'GIGIK NURBASKORO, S.Kom', '198001092000031002', 'Pembina/IVa', 'PMG Madya, PPK', '2023-12-29 07:31:30.493', '2023-12-29 07:31:30.493'),
(9, 'IWAN HERMAWAN, S.T.', '197806262002121001', 'Pembina/IVa', 'PMG Madya', '2023-12-29 07:32:53.501', '2023-12-29 07:32:53.501'),
(10, 'NURIL CHAMIDA', '196703241987032002', 'Penata TK I/IIId', 'PMG Penyelia', '2023-12-29 07:34:03.231', '2023-12-29 07:34:03.231'),
(11, 'BAMBANG SIDIQ CAHYONO', '197502181997031003', 'Penata TK I/IIId', 'PMG Penyelia', '2023-12-29 07:35:15.395', '2023-12-29 07:35:30.681'),
(12, 'EKO SUSANTO', '197107211992031001', 'Penata TK I/IIId', 'PMG Penyelia', '2023-12-29 07:37:32.311', '2023-12-29 07:37:32.311'),
(13, 'YUSTOTO WINDIARTO, A.Md', '197610131997031001', 'Penata TK I/IIId', 'PMG Penyelia', '2023-12-29 07:38:55.639', '2023-12-29 07:38:55.639'),
(14, 'MOH. ASWIN ANWAR', '197212181993031001', 'Penata TK I/IIId', 'PMG Penyelia', '2023-12-29 07:41:01.672', '2023-12-29 07:41:01.672'),
(15, 'KHISOM ADI PURWANTO', '197606242000031001', 'Penata/IIIc', 'PMG Penyelia', '2023-12-29 07:42:04.369', '2023-12-29 07:42:04.369'),
(16, 'IWAN DWI CAHYONO, S.Tr.', '198509222006041003', 'Penata/IIIc', 'PMG Muda', '2023-12-29 07:43:02.130', '2023-12-29 07:43:02.130'),
(17, 'MARADANI REKSO GUMINTAR, S.Tr.', '198803262009111001', 'Penata/IIIc', 'PMG Muda', '2023-12-29 07:46:29.585', '2023-12-29 07:46:29.585'),
(18, 'IBNU HARYO PRAMUDITYO, S.Tr.', '199037112013121001', 'Penata/IIIc', 'PMG Muda', '2023-12-29 07:47:33.407', '2023-12-29 07:47:33.407'),
(19, 'DITA PURNAMA SARI, S.Tr.', '199302282013122001', 'Penata/IIIc', 'PMG Muda', '2023-12-29 07:48:36.488', '2023-12-29 07:48:36.488'),
(20, 'AGUNG DWI NUGROHO, S.Tr', '199306292013121001', 'Penata/IIIc', 'PMG Muda', '2023-12-29 07:49:45.205', '2023-12-29 07:49:45.205'),
(21, 'PANDE NYOMAN PARWATA, A.Md.', '198907062012121002', 'Penata/IIIc', 'PMG Penyelia', '2023-12-29 07:50:54.134', '2023-12-29 07:50:54.134'),
(22, 'REZKY PRASETYO HARTIWI, S.Tr', '199307222013122001', 'Penata/IIIc', 'PMG Muda', '2023-12-29 07:52:10.117', '2023-12-29 07:52:10.117'),
(23, 'BAGUS DWI ADITYA, S.Tr.', '199401252013121001', 'Penata/IIIc', 'PMG Muda', '2023-12-29 07:53:01.000', '2023-12-29 07:53:01.000'),
(24, 'SRI ASTUTIK', '197607071998032001', 'Penata Muda TK I/IIIb', 'P\'administrasi Keuangan', '2023-12-29 07:54:38.898', '2023-12-29 07:54:38.898'),
(25, 'HERI SUDARSONO SEPUTRA, S.E.', '198012182008121003', 'Penata Muda TK I/IIIb', 'PPSPM', '2023-12-29 07:56:17.439', '2023-12-29 07:56:17.439'),
(26, 'AULIA PRIMA RAHMAWATI, A.Md', '198504152008122003', 'Penata Muda TK I/IIIb', 'Pengelola BMN', '2023-12-29 07:57:25.088', '2023-12-29 07:57:25.088'),
(27, 'DEDYARZA, S.Tr.', '199409232013121001', 'Penata Muda TK I/IIIb', 'PMG Pertama', '2023-12-29 07:58:15.446', '2023-12-29 07:58:15.446'),
(28, 'GANIS DYAH LIMARAN, S.Tr.Met.', '199607212016012001', 'Penata Muda/IIIa', 'PMG Pertama', '2023-12-29 07:59:55.147', '2023-12-29 07:59:55.147'),
(29, 'DHIYAUR ROHMAN FIRDAUSY, S.Tr.Klim.', '199511272016012001', 'Penata Muda/IIIa', 'PMG Pertama', '2023-12-29 08:01:20.901', '2023-12-29 08:01:20.901'),
(30, 'FREDDY DWI KURNIAWAN, A.P.', '199405042014111001', 'Penata Muda/IIIa', 'PMG Pertama', '2023-12-29 08:05:24.172', '2023-12-29 08:05:24.172'),
(31, 'RAHMAYANI, S.Tr.Met.', '200002072023022004', 'Penata Muda/IIIa', 'Pengamat Met & Geo', '2023-12-29 08:06:43.617', '2023-12-29 08:08:30.626'),
(32, 'HUKUMA NUR AKMAL, S.Tr.Met.', '200007232023021004', 'Penata Muda/IIIa', 'Pengamat Met & Geo', '2023-12-29 08:08:13.458', '2023-12-29 08:08:13.458');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peringatandini`
--

CREATE TABLE `peringatandini` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `peringatan` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peringatandini`
--

INSERT INTO `peringatandini` (`id`, `tanggal`, `peringatan`, `createdAt`, `updatedAt`) VALUES
(3, '2024-01-01', 'Semua Baik-Baik Saja', '2024-01-02 05:00:37.157', '2024-01-02 06:07:45.445');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prakiraancurahhujan`
--

CREATE TABLE `prakiraancurahhujan` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prakiraancurahhujan`
--

INSERT INTO `prakiraancurahhujan` (`id`, `name`, `foto`, `url`, `createdAt`, `updatedAt`) VALUES
(2, '2023-12-30', 'foto-1704178815463.png', 'http://localhost:5000/public/prakiraan-curah-hujan/foto-1704178815463.png', '2024-01-02 07:00:15.530', '2024-01-02 07:00:15.530');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tourism`
--

CREATE TABLE `tourism` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `foto` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nip` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nip`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1, 'Perdhana Oka Wijaya Anwar', '190402290396000111', '$2b$10$5ThKM6X/K5xwisMJBIUNRupo1ktfNaSA5beU7BPDE6L/cLlz3hFRq', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJQZXJkaGFuYSBPa2EgV2lqYXlhIEFud2FyIiwibmlwIjoiMTkwNDAyMjkwMzk2MDAwMTExIiwiaWF0IjoxNzA0MTg1MjA2LCJleHAiOjE3MDQyNzE2MDZ9.U9JAG2F6wXC9FE3IwTitXE4C6PcoTy0wKDdWwhCFPWM', '2023-12-29 02:50:10', '2024-01-02 08:46:46'),
(2, 'Dhani Anwar', '000000000000000000', '$2b$10$opXjxcOdzZu9zUVHyO1MgenOUWrp9WVx2iA2.R/elGWQejCxD1KOe', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJEaGFuaSBBbndhciIsIm5pcCI6IjAwMDAwMDAwMDAwMDAwMDAwMCIsImlhdCI6MTcwMzgzMTQ5OSwiZXhwIjoxNzAzOTE3ODk5fQ.eTJwtTful6AWzjzqS4VA-sB0NFN9-3gh2yw6y5IcPsY', '2023-12-29 06:30:56', '2023-12-29 06:31:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('0413f4b7-ce19-41a4-9c60-38093a16e97d', '3043efda91a8c2c71e3cdb82091a9198af549d2987efb73c77b8a466f6da8e8e', '2023-12-29 02:47:45.143', '20231225235625_buletin', NULL, NULL, '2023-12-29 02:47:45.125', 1),
('1d494ca9-c08a-48f3-b4dd-ce657aa62dd2', 'be1421dd706bda111d6f6fae8cc107e1e9327877b52d0c4fd05eccc834c2de08', '2023-12-29 02:47:45.107', '20231225234159_1', NULL, NULL, '2023-12-29 02:47:44.973', 1),
('1eb7aa38-1884-481b-b095-e67e7b2ae1da', '231e768f9c1331c643d737d49982dcc40831025cc56e7b37236e0f5dd7754c1b', '2023-12-29 02:47:45.124', '20231225235608_2', NULL, NULL, '2023-12-29 02:47:45.109', 1),
('36a0ca68-957c-47c8-a30e-475e8887fcac', '00289d715ec55f4f20f1189c6f21090e218a9b7ce76ef437430a637484c8723e', '2023-12-29 02:47:45.465', '20231228164026_revisi_2', NULL, NULL, '2023-12-29 02:47:45.458', 1),
('5bc3d8e1-df27-43f2-b3d5-43b22c78e9f7', '6958819a38a9cbc96aac224f630cf83364e78440d5c48b151df07de06bc8378c', '2023-12-29 02:47:45.456', '20231228061056_revisi', NULL, NULL, '2023-12-29 02:47:45.222', 1),
('6fe5f31d-c3de-4491-b703-3b46ef6bfb17', '9c1a9a5ac71eff0301efc3d821b9e508aea31b860ec0058b47ca51fbf93f190e', '2023-12-29 02:47:45.178', '20231226151949_edit_peringatan', NULL, NULL, '2023-12-29 02:47:45.144', 1),
('85b799c8-0922-40e7-9c6e-5b52808729e0', '3723abef4ca988ca49c3364fdacf8fe4111150215f2bedbb8a04b398ea102868', '2023-12-29 02:47:51.463', '20231229024751_adding_update_at', NULL, NULL, '2023-12-29 02:47:51.391', 1),
('9dcc126f-7b23-4f20-a122-230966a89ac1', 'a2589c8d91f89c2ca480c7a07674a39db4453528af21af37aba762debc33eae6', '2023-12-29 02:47:45.220', '20231226182446_wisata_besok', NULL, NULL, '2023-12-29 02:47:45.201', 1),
('ab3c8eae-82f3-4d90-913d-d4de439df9d2', 'ca28ac5744ddbe1b4ec9b789655e492cdc85a5703c960819a07fe8d07d2e3e04', '2023-12-29 02:47:45.199', '20231226162356_1', NULL, NULL, '2023-12-29 02:47:45.180', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `analisiscurahhujan`
--
ALTER TABLE `analisiscurahhujan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `analisissifathujan`
--
ALTER TABLE `analisissifathujan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buletintable`
--
ALTER TABLE `buletintable`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cuacabesok`
--
ALTER TABLE `cuacabesok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cuacahariini`
--
ALTER TABLE `cuacahariini`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `haritanpahujan`
--
ALTER TABLE `haritanpahujan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kritiksaran`
--
ALTER TABLE `kritiksaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `normalmusim`
--
ALTER TABLE `normalmusim`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peringatandini`
--
ALTER TABLE `peringatandini`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prakiraancurahhujan`
--
ALTER TABLE `prakiraancurahhujan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tourism`
--
ALTER TABLE `tourism`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `analisiscurahhujan`
--
ALTER TABLE `analisiscurahhujan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `analisissifathujan`
--
ALTER TABLE `analisissifathujan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `buletintable`
--
ALTER TABLE `buletintable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `cuacabesok`
--
ALTER TABLE `cuacabesok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cuacahariini`
--
ALTER TABLE `cuacahariini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `haritanpahujan`
--
ALTER TABLE `haritanpahujan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kritiksaran`
--
ALTER TABLE `kritiksaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `normalmusim`
--
ALTER TABLE `normalmusim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `peringatandini`
--
ALTER TABLE `peringatandini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `prakiraancurahhujan`
--
ALTER TABLE `prakiraancurahhujan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tourism`
--
ALTER TABLE `tourism`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
