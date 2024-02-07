-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 09:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kosabc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_kamar`
--

CREATE TABLE `tbl_data_kamar` (
  `id_kamar` char(10) NOT NULL,
  `nama_kamar` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_data_kamar`
--

INSERT INTO `tbl_data_kamar` (`id_kamar`, `nama_kamar`, `status`, `keterangan`) VALUES
('A2', 'ajah', 'Tersedia', 'djwwuwhy'),
('A3', 'kipas', 'Terhuni', '200 m x 200m');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pemasukan`
--

CREATE TABLE `tbl_data_pemasukan` (
  `id_kamar` char(10) NOT NULL,
  `nama_penghuni` varchar(100) NOT NULL,
  `Harga` char(10) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_tenggat` date NOT NULL,
  `total` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pengeluaran`
--

CREATE TABLE `tbl_data_pengeluaran` (
  `id_pengeluaran` char(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_data_pengeluaran`
--

INSERT INTO `tbl_data_pengeluaran` (`id_pengeluaran`, `nama`, `jumlah`, `keterangan`) VALUES
('A1', 'sapu', 2, 'rusak'),
('A2', 'kipas angin', 2, 'kurang 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_penghuni`
--

CREATE TABLE `tbl_data_penghuni` (
  `no` char(5) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `nama_penghuni` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`) VALUES
('123', '123'),
('1234', '1234'),
('aku', '123'),
('amalia', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data_kamar`
--
ALTER TABLE `tbl_data_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `tbl_data_pemasukan`
--
ALTER TABLE `tbl_data_pemasukan`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `tbl_data_penghuni`
--
ALTER TABLE `tbl_data_penghuni`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
