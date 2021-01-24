-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 08:48 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdessertrecipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `IdKomentar` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdResep` int(11) NOT NULL,
  `Komentar` text NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `IdUser` int(11) NOT NULL,
  `NamaUser` varchar(100) NOT NULL,
  `JenisKelamin` varchar(50) DEFAULT NULL,
  `Username` varchar(150) NOT NULL,
  `Password` varchar(150) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `NomorTelepon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`IdUser`, `NamaUser`, `JenisKelamin`, `Username`, `Password`, `Email`, `NomorTelepon`) VALUES
(0, 'Denads', 'Perempuan', 'Dnds', 'xxx', 'dena0955@gmail.com', '081917924942');

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `IdResep` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `NamaResep` varchar(150) NOT NULL,
  `Durasi` int(10) NOT NULL,
  `Porsi` int(11) NOT NULL,
  `BahanMakanan` text NOT NULL,
  `LangkahMasak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`IdResep`, `IdUser`, `NamaResep`, `Durasi`, `Porsi`, `BahanMakanan`, `LangkahMasak`) VALUES
(0, 0, 'Dark Brownies', 50, 5, 'Brownies Instan', '1. Buka bungkus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`IdKomentar`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`IdUser`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`IdResep`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
