-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Apr 2022 pada 03.33
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Struktur dari tabel `alternatif`
--

CREATE TABLE IF NOT EXISTS `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
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
-- Struktur dari tabel `hasil`
--

CREATE TABLE IF NOT EXISTS `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 22, 2.1847),
(2, 23, 2.3562),
(3, 24, 2.9039),
(4, 25, 1.8116),
(5, 26, 2.3562),
(6, 27, 2.0969),
(7, 28, 3.0665),
(8, 29, 1.7366),
(9, 30, 2.9895),
(10, 31, 2.5331);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `type` enum('Benefit','Cost') NOT NULL,
  `bobot` float NOT NULL,
  `ada_pilihan` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama`, `type`, `bobot`, `ada_pilihan`) VALUES
(25, 'C1', 'Pekerjaan', 'Benefit', 1, 0),
(26, 'C2', 'Penghasilan', 'Cost', 1, 0),
(27, 'C3', 'Lantai', 'Benefit', 2, 0),
(28, 'C4', 'Jenis Dinding', 'Benefit', 2, 0),
(29, 'C5', 'MCK', 'Benefit', 2, 0),
(30, 'C6', 'Jenis Atap', 'Benefit', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE IF NOT EXISTS `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(140, 22, 25, 3),
(141, 22, 26, 4),
(142, 22, 27, 3),
(143, 22, 28, 4),
(144, 22, 29, 2),
(145, 22, 30, 22),
(146, 23, 25, 3),
(147, 23, 26, 4),
(148, 23, 27, 4),
(149, 23, 28, 4),
(150, 23, 29, 2),
(151, 23, 30, 22),
(152, 24, 25, 3),
(153, 24, 26, 4),
(154, 24, 27, 3),
(155, 24, 28, 5),
(156, 24, 29, 5),
(157, 24, 30, 22),
(158, 25, 25, 2),
(159, 25, 26, 3),
(160, 25, 27, 3),
(161, 25, 28, 2),
(162, 25, 29, 2),
(163, 25, 30, 22),
(164, 26, 25, 3),
(165, 26, 26, 4),
(166, 26, 27, 4),
(167, 26, 28, 4),
(168, 26, 29, 2),
(169, 26, 30, 22),
(170, 27, 25, 1),
(171, 27, 26, 5),
(172, 27, 27, 3),
(173, 27, 28, 2),
(174, 27, 29, 5),
(175, 27, 30, 22),
(176, 28, 25, 3),
(177, 28, 26, 4),
(178, 28, 27, 5),
(179, 28, 28, 4),
(180, 28, 29, 5),
(181, 28, 30, 22),
(182, 29, 25, 4),
(183, 29, 26, 4),
(184, 29, 27, 3),
(185, 29, 28, 1),
(186, 29, 29, 2),
(187, 29, 30, 22),
(188, 30, 25, 5),
(189, 30, 26, 3),
(190, 30, 27, 3),
(191, 30, 28, 4),
(192, 30, 29, 5),
(193, 30, 30, 22),
(194, 31, 25, 5),
(195, 31, 26, 4),
(196, 31, 27, 5),
(197, 31, 28, 3),
(198, 31, 29, 2),
(199, 31, 30, 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE IF NOT EXISTS `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `nama`, `nilai`) VALUES
(22, 30, 'Seng Gelombang', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `role`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', 'admin@gmail.com', '1'),
(8, 'user', '12dea96fec20593566ab75692c9949596833adc9', 'User', 'user@gmail.com', '2');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
