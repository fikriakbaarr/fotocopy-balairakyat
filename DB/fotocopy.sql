-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 02:59 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fotocopy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_toko` varchar(35) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `nomor_hp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_toko`, `gambar`, `username`, `password`, `email`, `nomor_hp`, `alamat`, `description`) VALUES
(1, 'Balai Rakyat', 'logo.jpg', 'admin', 'admin', 'balai.rakyat@gmail.com', '08124918945', 'Jl. Raya Condet, No.103', '        Kami Menyediakan jasa fotocopy dan cetak secara online');

-- --------------------------------------------------------

--
-- Table structure for table `cetak`
--

CREATE TABLE `cetak` (
  `id_cetak` int(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nomor` varchar(13) NOT NULL,
  `email` varchar(35) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `gambar` text NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cetak`
--

INSERT INTO `cetak` (`id_cetak`, `nama`, `nomor`, `email`, `jenis`, `jumlah`, `gambar`, `pesan`, `tanggal`) VALUES
(1, 'muhammad rizdalah', '081290255683', 'rizdaagisa@gmail.com', 'Print', 5, '6119416719d86_ERDUMKM(4).jpg', '', '15-08-2021'),
(2, 'muhammad rizdalah', '081290255683', 'rizdaagisa@gmail.com', 'Print', 5, '6119418a6fa32_ERDUMKM(4).jpg', 'adad', '15-08-2021'),
(5, 'muhammad rizdalah', '081290255683', 'rizdaagisa@gmail.com', 'Fotocopy', 5, '611b91462958f_WhatsAppImage2021-08-16at05.47.10.jpeg', 'ddd', '17-08-2021');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id_messages` int(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id_messages`, `email`, `pesan`, `waktu`) VALUES
(6, 'user@gmail.com', 'bagaimana cara membeli product', '25-07-2021');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(8) NOT NULL,
  `id_product` int(8) NOT NULL,
  `id_pelanggan` int(8) NOT NULL,
  `jumlah_order` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `id_product`, `id_pelanggan`, `jumlah_order`) VALUES
(12, 3, 38, 1),
(13, 2, 39, 1),
(21, 32, 62, 1),
(22, 33, 62, 2),
(23, 32, 75, 1),
(24, 32, 76, 1),
(25, 39, 77, 2),
(26, 36, 78, 1),
(27, 35, 78, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `nomor` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `waktu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `nomor`, `email`, `waktu`) VALUES
(62, 'abid', 'jalan catur', 'muhammad rizd', 'rizdaagisa@gmail.com', '19-08-2020'),
(75, 'adadadadadada', 'JL SIAGA DARMA VIII NO 18', '081290255683', 'rizdaagisa@gmail.com', '02-04-2021'),
(77, 'muhammad rizdalah', 'jl. siaga darma viii no.1', '081290255683', 'rizdaagisa@gmail.com', '16-08-2021'),
(78, 'Adam', 'jl. siaga darma viii no.1', '081290255683', 'adam@gmail.com', '17-08-2021');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `nama_product` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` int(100) NOT NULL,
  `stock` int(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `nama_product`, `gambar`, `harga`, `stock`, `description`) VALUES
(30, 'Penghapus', '1.jpg', 2000, 11, 'Penghapus untuk anak sekolahan'),
(31, 'Penggaris', '2.jpg', 5000, 12, 'Penggaris untuk anak sekolahan'),
(32, 'Pulpen', '3.jpg', 3000, 15, 'Pulpen standart sekolah'),
(33, 'Pensil Faber Castle', '4.jpg', 5000, 4, ''),
(34, 'Materai 10000', '5.jpg', 12000, 22, ''),
(35, 'Tempat Pensil', '6.jpg', 20000, 11, ''),
(36, 'TipeX Kertas', '7.jpg', 6000, 9, ''),
(37, 'Rautan Warna', '8.jpg', 3000, 7, ''),
(38, 'Isolasi Plastik', '9.jpg', 5000, 10, ''),
(39, 'Gunting', '10.jpg', 7000, 8, ''),
(40, 'Cutter Kertas', '11.jpg', 6000, 5, ''),
(41, 'Pensil Warna', '12.jpg', 17000, 13, ''),
(42, 'Krayon Gambar', '13.jpg', 20000, 8, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `cetak`
--
ALTER TABLE `cetak`
  ADD PRIMARY KEY (`id_cetak`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_messages`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cetak`
--
ALTER TABLE `cetak`
  MODIFY `id_cetak` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_messages` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
