-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2020 at 01:13 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `nama` varchar(50) NOT NULL,
  `penyakit` varchar(50) NOT NULL,
  `keterangan` varchar(120) NOT NULL,
  `poli` varchar(50) NOT NULL,
  `namadokter` varchar(50) NOT NULL,
  `idpasien` int(11) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jeniskelamin` varchar(15) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`nama`, `penyakit`, `keterangan`, `poli`, `namadokter`, `idpasien`, `alamat`, `notelp`, `email`, `jeniskelamin`, `agama`, `foto`) VALUES
('Hawwariyyun', 'Sakit gigi', 'check up', 'Poli 1', 'Dr.Ramdan', 1, 'Jakarta', '0876594889', 'hawa@gmail.com', 'Laki-laki', 'Islam', ''),
('Aisyah', 'Pusing, batuk', 'pertama kali', 'Poli 2', 'Dr.Ariq', 2, '', '', '', '', '', ''),
('Ali', 'Covid-19', 'ODP', 'Poli 1', 'Dr.Ramdan', 3, '', '', '', '', '', ''),
('Ayyub', 'Kusta', 'sudah puluhan tahun', 'Poli 1', 'Dr.Ramdan', 4, 'Timur Tengah', '081345563200', 'Umar@gmail.com', '', 'Islam', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id` int(11) NOT NULL,
  `namal` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kodepeg` int(11) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `foto` double NOT NULL,
  `jeniskel` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id`, `namal`, `nama`, `kodepeg`, `tgl_lahir`, `jabatan`, `alamat`, `email`, `no_telp`, `foto`, `jeniskel`, `agama`) VALUES
(1, 'Khalisyahdini', 'Dini', 1301180208, '2000-03-02', 'Bendahara', 'Sukabirus', 'Khalisyahdini@student.telkomuniversity.ac.id', '081359668267', 0, 'Perempuan', 'Islam'),
(2, 'Khodijah', 'Codi', 1301180209, '2000-04-16', 'Ketua Umum Pelayanan', 'Sukapura', 'Codi@gmail.com', '0813456278', 0, 'Perempuan', 'Islam'),
(3, 'Siapa ini?', 'Daffa', 1301180207, '2000-04-02', 'Administrasi', 'Semarang', 'Daffa@gmail.com', '0987237288', 0, 'Laki-laki', 'Islam'),
(5, 'Winda Putri', 'Putri', 13011809, '2020-04-15', 'Administrasi', 'Pontianak', 'putri@gmail.com', '0897xxxxx', 0, 'Laki-laki', 'Islam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`idpasien`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `idpasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
