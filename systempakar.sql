-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2017 at 01:09 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `systempakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejalas`
--

CREATE TABLE `gejalas` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gejalas`
--

INSERT INTO `gejalas` (`id`, `kode`, `nama`) VALUES
(1, 'G01', 'BATANG DAN DAUN ATAS LAYU'),
(2, 'G02', 'BERCAK COKLAT SAMPAI HITAM PADA DAUN'),
(3, 'G03', 'ADA BERCAK KECIL BERWARNA COKLAT PADA BUAH'),
(4, 'G04', 'ADA BERCAK KECIL BERAIR DAN MEMBULAT CEKUNG PADA BUAH'),
(5, 'G05', 'PADA PANGKAL BUAH DEKAT TANGKAI ADA BERCAK UNGU'),
(6, 'G06', 'DAUN KERITING DAN KERING'),
(7, 'G07', 'BATANG TAMPAK KERANG MEMANJANG BERWARNA ABU-ABU'),
(8, 'G08', 'ADA LUBANG PADA BUAH DISETIAP TEMPAT'),
(9, 'G09', 'BATANG MUDAH PATAH'),
(10, 'G10', 'DAUN KERITING DAN KERDIL, MELENGKUNG KE BAWAH'),
(11, 'G11', 'DAUN MENYEMPIT SEPERTI PITA'),
(12, 'G12', 'WARNA DAUN MENJADI MOZAIK DAN RAPUH'),
(13, 'G13', 'DAUN MENGECIL DAN MENGGULUNG KE ATAS'),
(14, 'G14', 'DAUN TERLIHAT SEPERTI TERSELUBUNGI TEPUNG PUTIH'),
(15, 'G15', 'JIKA BUAH DIBUKA, ADA BELATUNGNYA'),
(16, 'G16', 'BUAH BUSUK');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_12_19_190000_create_gejalas_table', 1),
(4, '2016_12_20_030742_create_penyakits_table', 1),
(5, '2016_12_20_030758_create_solusis_table', 1),
(6, '2016_12_20_062413_create_penyakit_solusi_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyakits`
--

CREATE TABLE `penyakits` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desk` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penyakits`
--

INSERT INTO `penyakits` (`id`, `kode`, `nama`, `desk`) VALUES
(1, 'P01', 'LAYU FUSARIUM', 'Penyakit layu fusarium yang disebabkan oleh jamur Fusarium Oxysporum. Jamur ini menyerang bagian jaringan pembuluhan tanaman tomat. Jika dilihat tanaman tomat akan menjadi layu jika terkena cahaya matahari pada siang hari, lalu tanaman akan tampak segar kembali pada malam hari, kondisi ini akan berlangsung hingga tanaman mati. Gejala yang ditimbulkan oleh penyakit ini adalah jaringan pembuluh akan berubah warna menjadi coklat yang mengakibatkan terhambatnya aliran air dari akar ke daun'),
(2, 'P02', 'BUSUK DAUN', 'Penyakit ini sering menyerang di daereah dataran tinggi. Penyebab penyakit ini adalah Phytophthora Infestans. Penyakit ini menyerang pada bagian daun tanaman tomat. Gejala dari penyakit ini adalah pada bagian ujung dan sisi daun terdapat bercak coklat kehitaman, kemudian bercak coklat kehitaman meluas keseluruh permukaan daun, hingga ketangkai daun'),
(3, 'P03', 'BUSUK BUAH', 'Penyakit ini disebabkan oleh Cendawan Thanatephorus Cucumeris dan Cendawan Colletotrichum Coccodes. Penyakit ini menyerang pada bagian buah tanaman tomat. Gejala yang ditimbulkan penyakit ini adalah pada buah terdapat bercak kecil berwarna coklat dan berair lalu bercak itu akan membesar mencekung dan bagian tengahnya retak, serta pada pangkal buah terdapat bercak ungu.'),
(4, 'P04', 'BERCAK BAKTERI', 'Penyakit ini disebabkan oleh Xanthomonas Vesicatoria yang menyerang bagian buah, daun dan batang tanaman tomat. Gejala yang ditimbulkan antara lain : 1) Pada bagian buah terlihat bercak bergabus, 2) Pada daun terlihat berubah menjadi keriting dan mongering, 3) Pada batang terdapat kerang yang memanjang dan memiliki ke abu-abuan.'),
(5, 'H01', 'ULAT BUAH', 'Ulat buah merupakan salah satu hama yang menyerang tanaman tomat khususnya pada buah tomat. Ulat buah memiliki panjang sekitar 4-5cm dan memiliki permukaan berkutil dan ditumbuhi bulu dengan bagian samping tubuh terdapat garis yang bergelombang dengan warna yang lebih terang. Ulat buah memiliki warna yang bervariasi mulai dari warna hijau, hijau kekuningan dan kecoklatan hingga hitam. Gejala yang ditimbulkan oleh hama ini adalah jika ulat ini menyerang bagian buah tomat, maka ada banyak lubang yang ada pada buah tomat, selain menyerang buah ulat ini juga menyerang daun, dan bunga.'),
(6, 'H02', 'ULAT TANAH', 'Ulat tanah, salah satu hama yang menyerang tanaman tomat, khususnya menyerang batang tanaman. Ulat tanah memiliki warna coklat tua kehitaman, tubuhnya mengkilat dan terpadat garis coklat pada kedua sisi tubuhnya. Ulat tanah memiliki umur cukup panjang yaitu 56 minggu (4 tahun 8 bulan ) tiap satu generasi. Gejala yang ditimbulkan oleh hama ini adalah tanaman yang masih berumur muda namun layu, karena batang tanaman tomat terputus dimakan oleh ulat tanah.'),
(7, 'H03', 'KUTU DAUN HIJAU', 'Kutu daun hijau tidak menyerang secara langsung pada tanaman tomat, namun kutu daun hijau hanya hinggap pada daun tanaman tomat, dan tanaman tomat yang dihinggapi akan terkena penyebaran virus. Ada 2 macam kutu daun hijau, 1) bersayap : memiliki warna kepala dan dadanya coklat kehitaman dan bagian perut bewarna hijau kekuningan, 2)tidak bersayap : memiliki warna hijau kekuningan. Gejala yang ditimbulkan oleh hama ini memiliki gejala yang bervariasi seperti : daun menjadi keriting dan kerdil, bentuk daun melengkung kebawah, daun menyempit seperti pita, daun berubah warna menjadi mozaik dan menjadi rapuh'),
(8, 'H04', 'LALAT PUTIH', 'Lalat putih ini menyerang tanaman tomat pada bagian buah dan daun. Lalat putih memiliki warna putih, memiliki tubuh seperti dilapisi oleh tepung putih, dan memiliki ukuran tubuh kurang lebih 1 mm, memiliki rentang sayap 2 mm. Gejala yang ditimbulkan oleh hama ini adalah terhambatnya pertumbuhan tanaman tomat sehingga membuat tanaman tomat terlihat kerdil, daun akan mengecil dan menggulung ke atas.'),
(9, 'H05', 'LALAT BUAH', 'Lalat buah merupakan salah satu hama tanaman tomat yang menyerang dari dalam tanaman tomat tepatnya pada buah tomat. Lalat buah akan menyuntikkan telurtelurnya kedalam buah tomat, dan ketika telur-telur tersebut menetas akan menjadi larva yang akan memakan buah tomat dari dalam hingga tomat menjadi busuk. Lalat buah sendiri memiliki warna coklat kekuningan, memiliki garis kuning yang membujur pada bagian punggungnya.');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit_solusi`
--

CREATE TABLE `penyakit_solusi` (
  `id` int(10) UNSIGNED NOT NULL,
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `solusi_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penyakit_solusi`
--

INSERT INTO `penyakit_solusi` (`id`, `penyakit_id`, `solusi_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 3, 1),
(9, 3, 5),
(10, 3, 8),
(11, 3, 9),
(12, 4, 1),
(13, 4, 5),
(14, 4, 9),
(15, 4, 10),
(16, 5, 11),
(17, 5, 12),
(18, 5, 13),
(19, 5, 14),
(20, 6, 11),
(21, 6, 14),
(22, 6, 15),
(23, 7, 14),
(24, 7, 16),
(25, 8, 12),
(26, 8, 14),
(27, 8, 17),
(28, 9, 15),
(29, 9, 18);

-- --------------------------------------------------------

--
-- Table structure for table `solusis`
--

CREATE TABLE `solusis` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `solusis`
--

INSERT INTO `solusis` (`id`, `kode`, `nama`) VALUES
(1, 'S01', 'MEMAKAI BENIH YANG RESISTEN'),
(2, 'S02', 'MEMAKAI MULSA PLASTIK'),
(3, 'S03', 'MENJAUHI BUDIDAYA TOMAT PADA TEMPAT YANG PERNAH TERKENA JAMUR'),
(4, 'S04', 'MEMBERI JEDA YANG LAMA PADA LAHAN HINGGA DITANAMI KEMBALI'),
(5, 'S05', 'HARUS CEPAT DICABUT DAN DIBAKAR, JANGAN DIPENDAM, UNTUK MEMUTUS SIKLUS'),
(6, 'S06', 'MEMAKAI VARIETAS UNGGUL DAN BEBAS JAMUR'),
(7, 'S07', 'PENYEMPROTAN MEMAKAI FUNGISIDA'),
(8, 'S08', 'MEMAKAI AIR UNTUK MENYOKONG TANAMAN TOMAT SUPAYA BUAH TAK MENYENTUH TANAH'),
(9, 'S09', 'MEROTASI PEMBIBITAN TANAMAN'),
(10, 'S10', 'PENYEMPROTAN MEMAKAI BAKTERISIDA YANG MENGANDUNG ANTIBIOTIK, PAKAI DOSIS SESUAI PANDUAN'),
(11, 'S11', 'MEMUNGUT ULAR DAN TELURNYA, LALU DIBAKAR'),
(12, 'S12', 'MENJAGA KEBERSIHAN KEBUN DARI GULMA SERTA SEMAK BELUKAR'),
(13, 'S13', 'JIKA BERBENTUK NGENGAT, DAPAT DIATASI DENGAN PERANGKAT ULTRAVIOLET'),
(14, 'S14', 'PENYEMPROTAN MEMAKAI INSEKTISIDA'),
(15, 'S15', 'MENGOLAH TANAH DENGAN BAIK'),
(16, 'S16', 'MEMAKAI MULSA PLASTIK PERAK'),
(17, 'S17', 'MEMAKAI MULSA PLASTIK JERAMI ATAU MULSA KUNING'),
(18, '218', 'MEMBALIK TANAH DAN BIARKAN TERKENA SINAR MATAHARI SELAMA BEBERAPA HARI');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejalas`
--
ALTER TABLE `gejalas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `penyakits`
--
ALTER TABLE `penyakits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit_solusi`
--
ALTER TABLE `penyakit_solusi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penyakit_solusi_penyakit_id_foreign` (`penyakit_id`),
  ADD KEY `penyakit_solusi_solusi_id_foreign` (`solusi_id`);

--
-- Indexes for table `solusis`
--
ALTER TABLE `solusis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejalas`
--
ALTER TABLE `gejalas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `penyakits`
--
ALTER TABLE `penyakits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `penyakit_solusi`
--
ALTER TABLE `penyakit_solusi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `solusis`
--
ALTER TABLE `solusis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `penyakit_solusi`
--
ALTER TABLE `penyakit_solusi`
  ADD CONSTRAINT `penyakit_solusi_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakits` (`id`),
  ADD CONSTRAINT `penyakit_solusi_solusi_id_foreign` FOREIGN KEY (`solusi_id`) REFERENCES `solusis` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
