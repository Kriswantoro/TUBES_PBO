-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2018 at 05:01 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualanmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE `faktur` (
  `no_faktur` int(10) NOT NULL,
  `kode_pembeli` int(10) NOT NULL,
  `kode_mobil` int(10) NOT NULL,
  `tgl_fktur` varchar(10) NOT NULL,
  `jam_fktur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `kode_mobil` int(10) NOT NULL,
  `nama_mobil` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `kode_pembeli` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `umur` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(10) NOT NULL,
  `no_faktur` int(10) NOT NULL,
  `tgl_fktur` varchar(10) NOT NULL,
  `jam_fktur` varchar(10) NOT NULL,
  `kode_pembeli` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kode_mobil` int(10) NOT NULL,
  `nama_mobil` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kode_mobil`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`kode_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
