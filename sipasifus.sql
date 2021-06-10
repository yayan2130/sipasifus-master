-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 09:28 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipasifus`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_diri`
--

CREATE TABLE `data_diri` (
  `ID` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_diri`
--

INSERT INTO `data_diri` (`ID`, `nama`, `umur`) VALUES
(5, 'Muhammad Januar Pribadi', 21);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`) VALUES
(1, 'berkeringat'),
(2, 'sakit kepala'),
(3, 'kelelahan dan lemas'),
(4, 'tidak enak badan'),
(5, 'nafsu makan turun'),
(6, 'sakit perut'),
(7, 'mimisan'),
(8, 'linglung'),
(9, 'batuk kering'),
(10, 'nyeri otot'),
(11, 'ruam pada kulit'),
(12, 'demam tinggi'),
(13, 'berat badan turun');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_analisis`
--

CREATE TABLE `hasil_analisis` (
  `id_hasil` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil_analisis`
--

INSERT INTO `hasil_analisis` (`id_hasil`, `nama`, `umur`, `status`) VALUES
(12, 'Muhammad Januar Pribadi', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `informasi_penyakit`
--

CREATE TABLE `informasi_penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(20) NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi_penyakit`
--

INSERT INTO `informasi_penyakit` (`id_penyakit`, `nama_penyakit`, `solusi`) VALUES
(1, 'tifus', 'Umumnya membutuhkan pengobatan selama 1–2 minggu dengan tablet antibiotik. Meski tubuh mulai membaik setelah 2–3 hari mengonsumsi antibiotik, sebaiknya jangan menghentikan konsumsi sebelum antibiotik habis. Hal ini berguna untuk memastikan agar bakteri Salmonella typhii benar-benar lenyap di dalam tubuh.'),
(2, 'tifus', 'Cuci tangan sebelum dan sesudah mengolah makanan dan minuman, Batasi konsumsi jenis-jenis makanan boga-bahari (seafood), terutama yang masih mentah, karena tingkat kesegarannya sulit diketahui secara pasti, Bersihkan kamar mandi secara teratur');

-- --------------------------------------------------------

--
-- Table structure for table `presentase`
--

CREATE TABLE `presentase` (
  `id_presentase` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `presentase` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presentase`
--

INSERT INTO `presentase` (`id_presentase`, `id_gejala`, `id_penyakit`, `presentase`) VALUES
(1, 1, 1, 100),
(2, 2, 1, 100),
(3, 3, 1, 100),
(4, 4, 1, 100),
(5, 5, 1, 100),
(6, 6, 1, 100),
(7, 7, 1, 100),
(8, 8, 1, 100),
(9, 9, 1, 100),
(10, 10, 1, 100),
(11, 11, 1, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_diri`
--
ALTER TABLE `data_diri`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `hasil_analisis`
--
ALTER TABLE `hasil_analisis`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `informasi_penyakit`
--
ALTER TABLE `informasi_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `presentase`
--
ALTER TABLE `presentase`
  ADD PRIMARY KEY (`id_presentase`),
  ADD KEY `id_gejala` (`id_gejala`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_diri`
--
ALTER TABLE `data_diri`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hasil_analisis`
--
ALTER TABLE `hasil_analisis`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `informasi_penyakit`
--
ALTER TABLE `informasi_penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `presentase`
--
ALTER TABLE `presentase`
  MODIFY `id_presentase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `presentase`
--
ALTER TABLE `presentase`
  ADD CONSTRAINT `presentase_ibfk_1` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`),
  ADD CONSTRAINT `presentase_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `informasi_penyakit` (`id_penyakit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
