-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 09:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logbook_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_kendala` int(7) NOT NULL,
  `laboran` varchar(35) NOT NULL,
  `date` date NOT NULL,
  `lab` varchar(7) NOT NULL,
  `pc` varchar(5) NOT NULL,
  `kendala` varchar(200) NOT NULL,
  `level` varchar(7) NOT NULL,
  `validasi` varchar(30) NOT NULL,
  `TanggalPenyelesaian` varchar(25) NOT NULL,
  `Teknisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_kendala`, `laboran`, `date`, `lab`, `pc`, `kendala`, `level`, `validasi`, `TanggalPenyelesaian`, `Teknisi`) VALUES
(4, 'Miftahul Huda', '2022-02-27', 'Lab 319', 'PC-17', 'Layar pc mengalami keretakan', 'level-1', 'Tidak Dapat Di Perbaikin', '', ''),
(5, 'Ika Suhasmi', '2022-02-01', 'Lab 319', 'PC-17', 'Kerusakan pada beberapa keyboard', 'level-1', 'Tidak Dapat Di Perbaikin', '', ''),
(6, 'Miftahul Huda', '2022-03-03', 'Lab 323', 'PC-19', 'Lisence Windows', 'level-1', 'Selesai', '', ''),
(7, 'Uun Patrio', '2022-02-04', 'Lab 319', 'PC-17', 'Mouse tidak berfungsi', 'level-1', 'Tidak Dapat Di Perbaikin', '', ''),
(8, 'Ika Suhasmi', '2022-02-01', 'Lab 319', 'PC-13', 'Layar laptop mengalami bluescreen', 'level-1', 'Selesai', '', ''),
(10, 'Hazimah Fatin Bachrum', '2022-02-11', 'Lab 319', 'PC-18', 'Komputer mati total', 'level-1', 'Selesai', '', ''),
(11, 'Hazimah Fatin Bachrum', '2022-02-08', 'Lab 313', 'PC-01', 'CPU tidak menyala', 'level-1', 'Tidak Dapat Di Perbaikin', '', ''),
(12, 'dinzyyy', '2022-01-17', 'lab-322', 'PC-19', 'bismillah semoga kartika berhasil', 'level-2', 'Selesai', '', ''),
(13, 'Uun Patrio', '2022-02-03', 'Lab 317', 'PC-07', 'License pada windows', 'level-1', 'Selesai', '2022-02-24', 'Muharfan'),
(14, 'saya', '2022-01-16', 'lab-333', 'PC-14', 'jhadjaksjdsbajkcjsbkbjk', 'level-3', 'Tidak Dapat Di Perbaikin', '2022-02-15', 'Raja Septama'),
(15, 'Ika Suhasmi', '2022-02-10', 'Lab 319', 'PC-19', 'xss', 'level-1', 'Selesai', '2022-02-08', 'Raja Septama'),
(16, 'Ika Suhasmi', '2022-02-01', 'Lab 313', 'PC-19', 'm.zm.', 'level-2', 'Tidak Dapat Di Perbaikin', '2022-02-08', 'Muharfan'),
(17, 'Aida Kamila, S.ST', '2022-02-14', 'Lab-281', 'PC-01', 'zz', 'level-1', 'Tidak Dapat Di Perbaikin', '2022-02-24', 'Raja Septama'),
(18, 'Aida Kamila, S.ST', '2022-02-12', 'Lab-281', 'PC-01', 'jkv.k', 'level-2', 'Selesai', '', 'Muharfan'),
(19, 'Harumin, S.ST', '2022-02-08', 'Lab-281', 'PC-19', 'lasttt', 'level-1', 'Selesai', '2022-02-09', 'Raja Septama'),
(20, 'Harumin, S.ST', '2022-02-28', 'Lab-305', 'PC-16', 'banting', 'level-2', 'Tidak Dapat Di Perbaikin', '2022-02-11', 'Aris Suandi'),
(21, 'Aida Kamila, S.ST', '2022-02-14', 'Lab-281', 'PC-01', 'zz', 'level-1', 'Tidak Dapat Di Perbaikin', '2022-02-25', 'Muharfan'),
(22, 'Susiyanti, S.ST', '2022-02-08', 'Lab-281', 'PC-01', 'asw', 'level-3', 'Selesai', '2022-02-26', 'Muharfan');

-- --------------------------------------------------------

--
-- Table structure for table `kendala`
--

CREATE TABLE `kendala` (
  `id_kendala` int(7) NOT NULL,
  `laboran` varchar(35) NOT NULL,
  `date` date NOT NULL,
  `lab` varchar(7) NOT NULL,
  `pc` varchar(5) NOT NULL,
  `kendala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kendala`
--

INSERT INTO `kendala` (`id_kendala`, `laboran`, `date`, `lab`, `pc`, `kendala`) VALUES
(27, 'Nessa Chairani Bemin, S,ST', '2022-02-08', 'Lab-281', 'PC-01', 'bismillah bisa di view_pic'),
(28, 'Nessa Chairani Bemin, S,ST', '2022-02-08', 'Lab-330', 'PC-01', 'bismillah bagian teknisi terakhir \r\nyok bisa');

-- --------------------------------------------------------

--
-- Table structure for table `kendala2`
--

CREATE TABLE `kendala2` (
  `id_kendala` int(7) NOT NULL,
  `laboran` varchar(35) NOT NULL,
  `date` date NOT NULL,
  `lab` varchar(7) NOT NULL,
  `pc` varchar(5) NOT NULL,
  `kendala` varchar(200) NOT NULL,
  `level` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kendala2`
--

INSERT INTO `kendala2` (`id_kendala`, `laboran`, `date`, `lab`, `pc`, `kendala`, `level`) VALUES
(21, 'Aida Kamila, S.ST', '2022-02-14', 'Lab-281', 'PC-01', 'zz', 'level-1'),
(24, 'Susiyanti, S.ST', '2022-02-08', 'Lab-281', 'PC-01', 'asw', 'level-3'),
(27, 'Nessa Chairani Bemin, S,ST', '2022-02-08', 'Lab-284', 'PC-21', 'bismillah bisa bagian view_ilb', 'level-2');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `idLab` varchar(5) NOT NULL,
  `namaLab` varchar(50) NOT NULL,
  `jumlahPc` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`idLab`, `namaLab`, `jumlahPc`) VALUES
('L281', 'Basis data dasar', 34),
('L282', 'JKD', 31),
('L330', 'Programing', 30),
('L331', 'Rekayasa Perangkat Lunak', 33);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level`) VALUES
('Level-1'),
('Level-2'),
('Level-3');

-- --------------------------------------------------------

--
-- Table structure for table `logbookmhs`
--

CREATE TABLE `logbookmhs` (
  `nim` int(10) NOT NULL,
  `namamhs` varchar(50) NOT NULL,
  `nopc` int(3) NOT NULL,
  `idLab` varchar(50) NOT NULL,
  `jam` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `sks` varchar(2) NOT NULL,
  `namakegiatan` varchar(50) NOT NULL,
  `idilb` varchar(100) NOT NULL,
  `jammhs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logbookmhs`
--

INSERT INTO `logbookmhs` (`nim`, `namamhs`, `nopc`, `idLab`, `jam`, `tanggal`, `sks`, `namakegiatan`, `idilb`, `jammhs`) VALUES
(2055301050, 'Felly Chandra', 2, 'L331', '16 : 22 : 55', '22-02-08', '1', 'praktikum basis data dasar', '1', '16 : 22 : 55'),
(2055301051, 'hhhh', 19, 'L332', '17 : 44 : 28', '2022-2-08', '1', 'praktikum jaringan dasar', 'chandrafelly', '17 : 44 : 29'),
(2055301053, 'yyy', 9, 'L330', '18 : 27 : 29', '2022-02-08', '1', 'prak rpl', 'tikoddddd', '18 : 27 : 39'),
(2055301057, 'Azzura ', 7, 'L282', '19 : 01 : 09', '2022-02-8', '1', 'Praktikum Struktur Data', 'erfghjfrghjrfghdfg', '19 : 01 : 50'),
(2055301070, 'Bima', 8, 'L281', '10 : 54 :11', '2022-02-8', '1', 'praktiukum algoritma dasar', 'Yuliska Zhakaria', '10 : 54 :17'),
(2055301065, 'Azzura', 30, 'L281', '22 : 52 : 23', '2022-02-08', '1', 'Praktikum Algoritma dasar', 'Yuliska Zhakaria', '22 : 56 : 22');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hak_akses` enum('kalab','piclab','teknisi','ilb','mahasiswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `hak_akses`) VALUES
(1, 'kalab@pcr.ac.id', '12345', 'kalab'),
(2, 'piclab@pcr.ac.id', '12345', 'piclab'),
(3, 'teknisi@pcr.ac.id', '12345', 'teknisi'),
(4, 'ilb@pcr.ac.id', '12345', 'ilb'),
(5, 'fulan@mahasiswa.pcr.ac.id', '12345', 'mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `membukalogbook`
--

CREATE TABLE `membukalogbook` (
  `id` int(5) NOT NULL,
  `idLab` varchar(50) NOT NULL,
  `jam` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `sks` varchar(2) NOT NULL,
  `namakegiatan` varchar(50) NOT NULL,
  `idilb` varchar(100) NOT NULL,
  `jumlahmhs` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membukalogbook`
--

INSERT INTO `membukalogbook` (`id`, `idLab`, `jam`, `tanggal`, `sks`, `namakegiatan`, `idilb`, `jumlahmhs`) VALUES
(10, 'L331', '16 : 22 : 52', '2022-02-08', '1', 'praktikum basis data dasar', 'Muhammad Mahrus Zain, S.S.T', '32'),
(12, 'L332', '17 : 44 : 22', '2022-02-08', '1', 'praktikun jaringan dasar', 'chandrafelly', '29'),
(13, 'L330', '18 : 27 : 15', '2022-02-08', '1', 'prak rpl', 'tikoddddd', '28'),
(14, 'L282', '18 : 33 : 20', '2022-02-08', '1', 'Praktikum Struktur Data', 'Muhammad Mahrus Zain, S.S.T', '33'),
(16, 'L281', '22 : 52 : 23', '2022-02-08', '1', 'Praktikum Algoritma dasar', 'Yuliska Zhakaria', '27');

-- --------------------------------------------------------

--
-- Table structure for table `peminjamanlab`
--

CREATE TABLE `peminjamanlab` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `tgl_pengajuan` varchar(15) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `tgl_peminjaman` varchar(15) NOT NULL,
  `tgl_pengembalian` varchar(15) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjamanlab`
--

INSERT INTO `peminjamanlab` (`id`, `nama`, `nim`, `tgl_pengajuan`, `ruang`, `tgl_peminjaman`, `tgl_pengembalian`, `status`) VALUES
(1, 'Vito Baihaki Afi', '2055301140', '2022-02-08', 'Lab 316', '2022-02-08', '2022-02-08', 'Diajukan'),
(2, 'Satria Tofa', '2055301099', '2022-02-08', 'Lab 304', '2022-02-08', '2022-02-08', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `transitlogbook`
--

CREATE TABLE `transitlogbook` (
  `nim` int(10) NOT NULL,
  `namamhs` varchar(100) NOT NULL,
  `nopc` int(3) NOT NULL,
  `idLab` varchar(50) NOT NULL,
  `jam` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `sks` varchar(2) NOT NULL,
  `namakegiatan` varchar(50) NOT NULL,
  `idilb` varchar(100) NOT NULL,
  `jammhs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transitlogbook`
--

INSERT INTO `transitlogbook` (`nim`, `namamhs`, `nopc`, `idLab`, `jam`, `tanggal`, `sks`, `namakegiatan`, `idilb`, `jammhs`) VALUES
(2055301059, 'asdfdsaf', 1, 'L332', '17 : 44 : 22', '2022-02-08', '1', 'praktikun jaringan dasar', 'chandrafelly', '18 : 24 : 35'),
(2055301080, 'felly', 4, 'L330', '18 : 27 : 15', '2022-02-08', '1', 'prak rpl', 'tikoddddd', '18 : 31 : 12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_kendala`);

--
-- Indexes for table `kendala`
--
ALTER TABLE `kendala`
  ADD PRIMARY KEY (`id_kendala`);

--
-- Indexes for table `kendala2`
--
ALTER TABLE `kendala2`
  ADD PRIMARY KEY (`id_kendala`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`idLab`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membukalogbook`
--
ALTER TABLE `membukalogbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjamanlab`
--
ALTER TABLE `peminjamanlab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transitlogbook`
--
ALTER TABLE `transitlogbook`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_kendala` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kendala`
--
ALTER TABLE `kendala`
  MODIFY `id_kendala` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kendala2`
--
ALTER TABLE `kendala2`
  MODIFY `id_kendala` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `membukalogbook`
--
ALTER TABLE `membukalogbook`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `peminjamanlab`
--
ALTER TABLE `peminjamanlab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
