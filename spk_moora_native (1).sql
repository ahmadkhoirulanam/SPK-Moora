-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2026 at 04:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_moora_native`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`) VALUES
(22, 'Sumarlin Sinaga'),
(23, 'Tiolom Silalahi'),
(24, 'Suarmi'),
(25, 'Hitler Saragi'),
(26, 'Rotua Silalahi'),
(27, 'Susanti'),
(28, 'Yulianti'),
(29, 'Satini'),
(30, 'Paimun'),
(31, 'Saminah');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 22, 0.765),
(2, 23, 1.5285),
(3, 24, 2.2935),
(4, 25, 3.0585),
(5, 26, 3.822),
(6, 27, 4.587),
(7, 28, 5.352),
(8, 29, 6.1155),
(9, 30, 6.8805),
(10, 31, 7.644);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `type` enum('Benefit','Cost') NOT NULL,
  `bobot` float NOT NULL,
  `ada_pilihan` tinyint(1) DEFAULT NULL,
  `id_variabel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama`, `type`, `bobot`, `ada_pilihan`, `id_variabel`) VALUES
(25, 'C1', 'Rumusan Standart Kompetensi', 'Benefit', 1, 0, 1),
(26, 'C2', 'Rumusan Kompetensi Dasar', 'Benefit', 1, 0, 1),
(27, 'C3', 'Bahan Ajar', 'Benefit', 1, 0, 1),
(28, 'C4', 'Media dan Sumber Pembelajaran', 'Benefit', 1, 0, 1),
(31, 'C5', 'Sikap Guru', 'Benefit', 1, 0, 2),
(32, 'C6', 'Penguasaan Pembelajaran', 'Benefit', 1, 0, 2),
(33, 'C7', 'Mengelola Kelas', 'Benefit', 1, 0, 2),
(34, 'C8', 'Melakukan Refleksi', 'Benefit', 1, 0, 2),
(35, 'C9', 'Inovasi Alat Evaluasi Keberhasilan Pembelajaran', 'Benefit', 1, 0, 3),
(36, 'C10', 'Inovasi Strategi dan Metode Penilaian', 'Benefit', 1, 0, 3),
(37, 'C11', 'Pemanfaatan Umpan Balik dalam Kemajuan Pembelajara', 'Benefit', 1, 0, 3),
(38, 'C12', 'Pengelolaan Hasil Penilaian', 'Benefit', 1, 0, 3),
(39, 'C13', 'Patuh Terhadap Ketentuan', 'Benefit', 1, 0, 4),
(40, 'C14', 'Kesediaan Melakukan Pekerjaan', 'Benefit', 1, 0, 4),
(41, 'C15', 'Tanggung Jawab', 'Benefit', 1, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(398, 0, 39, 9),
(399, 0, 40, 9),
(400, 0, 41, 9),
(1046, 22, 25, 1),
(1047, 22, 26, 1),
(1048, 22, 27, 1),
(1049, 22, 28, 1),
(1050, 22, 31, 1),
(1051, 22, 32, 1),
(1052, 22, 33, 1),
(1053, 22, 34, 1),
(1054, 22, 35, 1),
(1055, 22, 36, 1),
(1056, 22, 37, 1),
(1057, 22, 38, 1),
(1058, 22, 39, 1),
(1059, 22, 40, 1),
(1060, 22, 41, 1),
(1061, 23, 25, 2),
(1062, 23, 26, 2),
(1063, 23, 27, 2),
(1064, 23, 28, 2),
(1065, 23, 31, 2),
(1066, 23, 32, 2),
(1067, 23, 33, 2),
(1068, 23, 34, 2),
(1069, 23, 35, 2),
(1070, 23, 36, 2),
(1071, 23, 37, 2),
(1072, 23, 38, 2),
(1073, 23, 39, 2),
(1074, 23, 40, 2),
(1075, 23, 41, 2),
(1076, 24, 25, 3),
(1077, 24, 26, 3),
(1078, 24, 27, 3),
(1079, 24, 28, 3),
(1080, 24, 31, 3),
(1081, 24, 32, 3),
(1082, 24, 33, 3),
(1083, 24, 34, 3),
(1084, 24, 35, 3),
(1085, 24, 36, 3),
(1086, 24, 37, 3),
(1087, 24, 38, 3),
(1088, 24, 39, 3),
(1089, 24, 40, 3),
(1090, 24, 41, 3),
(1091, 25, 25, 4),
(1092, 25, 26, 4),
(1093, 25, 27, 4),
(1094, 25, 28, 4),
(1095, 25, 31, 4),
(1096, 25, 32, 4),
(1097, 25, 33, 4),
(1098, 25, 34, 4),
(1099, 25, 35, 4),
(1100, 25, 36, 4),
(1101, 25, 37, 4),
(1102, 25, 38, 4),
(1103, 25, 39, 4),
(1104, 25, 40, 4),
(1105, 25, 41, 4),
(1106, 26, 25, 5),
(1107, 26, 26, 5),
(1108, 26, 27, 5),
(1109, 26, 28, 5),
(1110, 26, 31, 5),
(1111, 26, 32, 5),
(1112, 26, 33, 5),
(1113, 26, 34, 5),
(1114, 26, 35, 5),
(1115, 26, 36, 5),
(1116, 26, 37, 5),
(1117, 26, 38, 5),
(1118, 26, 39, 5),
(1119, 26, 40, 5),
(1120, 26, 41, 5),
(1121, 27, 25, 6),
(1122, 27, 26, 6),
(1123, 27, 27, 6),
(1124, 27, 28, 6),
(1125, 27, 31, 6),
(1126, 27, 32, 6),
(1127, 27, 33, 6),
(1128, 27, 34, 6),
(1129, 27, 35, 6),
(1130, 27, 36, 6),
(1131, 27, 37, 6),
(1132, 27, 38, 6),
(1133, 27, 39, 6),
(1134, 27, 40, 6),
(1135, 27, 41, 6),
(1136, 28, 25, 7),
(1137, 28, 26, 7),
(1138, 28, 27, 7),
(1139, 28, 28, 7),
(1140, 28, 31, 7),
(1141, 28, 32, 7),
(1142, 28, 33, 7),
(1143, 28, 34, 7),
(1144, 28, 35, 7),
(1145, 28, 36, 7),
(1146, 28, 37, 7),
(1147, 28, 38, 7),
(1148, 28, 39, 7),
(1149, 28, 40, 7),
(1150, 28, 41, 7),
(1151, 29, 25, 8),
(1152, 29, 26, 8),
(1153, 29, 27, 8),
(1154, 29, 28, 8),
(1155, 29, 31, 8),
(1156, 29, 32, 8),
(1157, 29, 33, 8),
(1158, 29, 34, 8),
(1159, 29, 35, 8),
(1160, 29, 36, 8),
(1161, 29, 37, 8),
(1162, 29, 38, 8),
(1163, 29, 39, 8),
(1164, 29, 40, 8),
(1165, 29, 41, 8),
(1166, 30, 25, 9),
(1167, 30, 26, 9),
(1168, 30, 27, 9),
(1169, 30, 28, 9),
(1170, 30, 31, 9),
(1171, 30, 32, 9),
(1172, 30, 33, 9),
(1173, 30, 34, 9),
(1174, 30, 35, 9),
(1175, 30, 36, 9),
(1176, 30, 37, 9),
(1177, 30, 38, 9),
(1178, 30, 39, 9),
(1179, 30, 40, 9),
(1180, 30, 41, 9),
(1211, 31, 25, 10),
(1212, 31, 26, 10),
(1213, 31, 27, 10),
(1214, 31, 28, 10),
(1215, 31, 31, 10),
(1216, 31, 32, 10),
(1217, 31, 33, 10),
(1218, 31, 34, 10),
(1219, 31, 35, 10),
(1220, 31, 36, 10),
(1221, 31, 37, 10),
(1222, 31, 38, 10),
(1223, 31, 39, 10),
(1224, 31, 40, 10),
(1225, 31, 41, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `nama`, `nilai`) VALUES
(23, 25, 'tes1', 2),
(24, 25, 'tes 2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `role`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', 'admin@gmail.com', '1'),
(10, 'kepsek', '82b7283910ac7cb508ea7ecc645e5c944d7fb612', 'Kepala Sekolah', 'q@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `variabel`
--

CREATE TABLE `variabel` (
  `id_variabel` int(5) NOT NULL,
  `nama_variabel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variabel`
--

INSERT INTO `variabel` (`id_variabel`, `nama_variabel`) VALUES
(1, 'Evaluasi dalam perencanaan pembelajaran'),
(2, 'Kinerja guru tentang pelaksanaan pembelajaran'),
(3, 'Kinerja guru terkait evaluasi pembelajaran'),
(4, 'Disiplin Kerja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `variabel`
--
ALTER TABLE `variabel`
  ADD PRIMARY KEY (`id_variabel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1226;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `variabel`
--
ALTER TABLE `variabel`
  MODIFY `id_variabel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
