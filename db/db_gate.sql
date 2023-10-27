-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 08:05 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gate`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alat`
--

CREATE TABLE `tbl_alat` (
  `id` int(11) NOT NULL,
  `id_alat` int(20) DEFAULT NULL,
  `nama` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_alat`
--

INSERT INTO `tbl_alat` (`id`, `id_alat`, `nama`, `status`, `ket`) VALUES
(1, NULL, 'gerbang_masuk', 0, 'gate'),
(2, NULL, 'gerbang_keluar', 0, 'gate'),
(3, NULL, 'running text', 1, 'TEST RUNNING TEXT'),
(4, 22, 'Udin', 0, 'gate'),
(5, 12, 'Gerbang Masuk 2', 1, 'gate'),
(6, NULL, 'Gerbang Keluar 2', 1, 'gate');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fakultas`
--

CREATE TABLE `tbl_fakultas` (
  `id_fakultas` int(2) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL,
  `kategori` int(2) NOT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_fakultas`
--

INSERT INTO `tbl_fakultas` (`id_fakultas`, `nama_fakultas`, `kategori`, `ket`) VALUES
(1, 'Fakultas Keguruan dan Ilmu Pendidikan', 3, NULL),
(2, 'Fakultas Hukum', 3, NULL),
(3, 'Fakultas Agama Islam', 3, NULL),
(4, 'Fakultas Teknik', 3, NULL),
(5, 'Fakultas Ilmu Kesehatan', 3, NULL),
(6, 'Fakultas Ekonomi', 3, ''),
(8, '-', 4, NULL),
(9, 'Administrasi', 2, ''),
(11, 'Laboran', 2, ''),
(12, 'Dosen', 1, ''),
(17, 'Perpustakaan', 2, ''),
(18, 'Administrasi', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(2) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`, `ket`) VALUES
(1, 'Tenaga Pendidik', ''),
(2, 'Tenaga kependidikan', ''),
(3, 'Mahasiswa', NULL),
(4, 'Tamu', '\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keluar`
--

CREATE TABLE `tbl_keluar` (
  `id_keluar` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `waktu_keluar` datetime NOT NULL,
  `foto_keluar` varchar(20) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_keluar`
--

INSERT INTO `tbl_keluar` (`id_keluar`, `nama`, `waktu_keluar`, `foto_keluar`, `prodi`, `kategori`) VALUES
(1, 'James', '2022-07-11 16:04:16', 'pic.png', 'Fakultas Teknik', 'Dosen'),
(2, 'James euy', '2022-07-11 16:04:16', 'pic.png', 'Fakultas Teknik', 'Dosen'),
(3, 'Thomas Slebew', '2022-07-11 16:04:16', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa'),
(4, 'James euy', '2022-07-11 16:04:16', 'pic.png', 'Fakultas Teknik', 'Dosen'),
(5, 'Thomas Slebew', '2022-07-11 16:04:16', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa'),
(6, 'Thomas Slebew', '2022-07-11 16:04:16', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa'),
(7, 'Thomas Slebew', '2022-07-11 16:04:16', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa'),
(8, 'Thomas Slebew', '2022-07-11 16:04:16', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laporan`
--

CREATE TABLE `tbl_laporan` (
  `id_laporan` int(20) NOT NULL,
  `laporan` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `dat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_laporan`
--

INSERT INTO `tbl_laporan` (`id_laporan`, `laporan`, `id_user`, `date`, `dat`) VALUES
(5, 'tesss', 16, '2022-08-27 15:52:47', ''),
(6, 'tes ke 2\r\n', 16, '2022-08-27 16:05:33', ''),
(9, 'tes laporan tes laporan tes tes laporan tes laporan tes tes laporan tes laporan testes laporan tes laporan testes laporan tes laporan testes laporan tes laporan tes', 30, '2022-08-27 21:27:23', ''),
(10, 'tes', 16, '2022-08-28 00:10:43', ''),
(11, 'Hari ini Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit.', 32, '2022-08-28 17:28:08', ''),
(13, 'Tes laporan\r\n(28-08-2022)\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor \r\n????????????????????????????\r\nya ga sih\r\n', 16, '2022-08-28 23:30:19', ''),
(14, 'gasss', 33, '2022-08-28 23:37:22', ''),
(15, 'tes seeeee\r\n', 32, '2022-08-29 14:41:04', '2022-08-29'),
(16, 'tesrrr', 16, '2022-09-02 16:35:43', '2022-09-02'),
(17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', 16, '2022-09-04 22:36:17', '2022-09-04'),
(18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', 16, '2022-09-04 22:36:22', '2022-09-04'),
(19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do ei', 16, '2022-09-04 22:36:29', '2022-09-04'),
(20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do ei', 16, '2022-09-04 22:36:48', '2022-09-04'),
(21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do ei', 16, '2022-09-04 22:36:51', '2022-09-04'),
(22, 'tes\r\n', 16, '2022-09-05 02:21:00', '2022-09-05'),
(23, 's', 16, '2022-09-06 23:55:34', '2022-09-06'),
(24, 'TES LAPORAN\r\n', 35, '2022-09-07 00:01:32', '2022-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_masuk`
--

CREATE TABLE `tbl_masuk` (
  `id_masuk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `waktu_masuk` datetime NOT NULL,
  `foto_masuk` varchar(20) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_masuk`
--

INSERT INTO `tbl_masuk` (`id_masuk`, `nama`, `waktu_masuk`, `foto_masuk`, `prodi`, `kategori`) VALUES
(1, 'James', '2022-07-11 15:30:05', 'pic.png', 'Fakultas Teknik', 'Dosen'),
(2, 'James euy', '2022-07-11 15:30:14', 'pic.png', 'Fakultas Teknik', 'Dosen'),
(3, 'Thomas Slebew', '2022-07-11 15:30:42', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa'),
(4, 'James euy', '2022-07-11 15:30:42', 'pic.png', 'Fakultas Teknik', 'Dosen'),
(5, 'Thomas Slebew', '2022-07-11 15:30:42', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa'),
(6, 'Thomas Slebew', '2022-07-11 15:30:42', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa'),
(7, 'Thomas Slebew', '2022-07-11 15:30:42', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa'),
(8, 'Thomas Slebew', '2022-07-11 15:30:42', 'pic.png', ' Fakultas Agama Islam ', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `id_pengunjung` int(11) NOT NULL,
  `no_kartu` int(20) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `no_induk` int(25) NOT NULL,
  `fakultas` varchar(50) DEFAULT NULL,
  `kategori` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `plat_nomor` varchar(12) NOT NULL,
  `saldo` decimal(20,0) NOT NULL,
  `date_add` datetime NOT NULL,
  `tipe_pgj` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`id_pengunjung`, `no_kartu`, `nama`, `no_induk`, `fakultas`, `kategori`, `status`, `plat_nomor`, `saldo`, `date_add`, `tipe_pgj`) VALUES
(73, 88, 'mhs 2', 2, '4', '3', 'non', '', '0', '0000-00-00 00:00:00', 0),
(74, 99, 'mhs 1', 10, NULL, '3', '1', 'F 1119 FF', '0', '0000-00-00 00:00:00', 0),
(101, 54321, 'Muhammad Rifqi Fadhilah', 2147483647, NULL, '3', '1', 'F 1114 FF', '0', '2022-08-17 20:26:00', 0),
(102, 54322, 'Tamu 1', 92, NULL, '4', '1', '12', '0', '2022-08-18 00:06:40', 0),
(103, 5433, 'Tamu 2', 91, NULL, '4', '1', '11', '0', '2022-08-18 00:07:08', 0),
(104, 123123, 'Dede', 321321, NULL, '2', '1', 'F 1111 FF', '0', '2022-08-28 16:49:53', 0),
(105, 0, 'Riki', 312123123, NULL, '3', '1', 'F 1450 DD', '0', '2022-09-22 18:41:11', 0),
(107, 2147483647, 'qiqi', 3612313, NULL, '3', '1', '3c 123', '34000', '2022-09-27 02:51:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekap_pgj`
--

CREATE TABLE `tbl_rekap_pgj` (
  `id_rekap` int(11) NOT NULL,
  `no_induk` int(20) NOT NULL,
  `status` int(2) DEFAULT NULL,
  `tipe_pgj` int(5) NOT NULL,
  `waktu_masuk` datetime NOT NULL,
  `waktu_keluar` datetime DEFAULT NULL,
  `foto_masuk` varchar(20) DEFAULT NULL,
  `foto_keluar` varchar(20) DEFAULT NULL,
  `plat_masuk` varchar(12) NOT NULL,
  `plat_keluar` varchar(12) NOT NULL,
  `transaksi` decimal(20,0) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekap_pgj`
--

INSERT INTO `tbl_rekap_pgj` (`id_rekap`, `no_induk`, `status`, `tipe_pgj`, `waktu_masuk`, `waktu_keluar`, `foto_masuk`, `foto_keluar`, `plat_masuk`, `plat_keluar`, `transaksi`, `keterangan`) VALUES
(74, 2147483647, 1, 0, '2022-10-03 23:41:08', '2022-10-03 23:56:11', NULL, NULL, 'F 25 TES', 'F 25 TES', '0', '1000'),
(76, 321321, 1, 0, '2022-10-03 23:41:18', '2022-10-03 23:41:41', NULL, NULL, 'F 25 TES', 'F 25 TES', '0', '1000'),
(79, 3612313, 1, 1, '2022-10-04 00:32:48', '2022-10-04 00:32:50', NULL, NULL, 'F 25 TES', 'F 25 TES', '1000', ''),
(80, 321321, 1, 0, '2022-10-04 00:32:58', '2022-10-04 01:05:09', NULL, NULL, 'F 25 TES', 'F 25 TES', '0', '1000'),
(81, 3612313, 1, 1, '2023-01-30 13:49:56', '2023-01-30 13:50:01', NULL, NULL, 'F 25 TES', 'F 25 TES', '1000', ''),
(82, 321321, 1, 0, '2023-01-30 13:54:25', '2023-01-30 13:59:08', NULL, NULL, 'F 25 TES', 'F 25 TES', '0', '1000');

--
-- Triggers `tbl_rekap_pgj`
--
DELIMITER $$
CREATE TRIGGER `saldo_berkurang` BEFORE UPDATE ON `tbl_rekap_pgj` FOR EACH ROW BEGIN
	UPDATE tbl_pengunjung SET saldo=saldo-NEW.transaksi
	WHERE no_induk = NEW.no_induk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekap_transaksi`
--

CREATE TABLE `tbl_rekap_transaksi` (
  `id_rekap` int(11) NOT NULL,
  `ket` varchar(25) DEFAULT NULL,
  `transaksi_masuk` decimal(20,2) NOT NULL,
  `transaksi_keluar` decimal(20,2) NOT NULL,
  `date` datetime NOT NULL,
  `id_user` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekap_transaksi`
--

INSERT INTO `tbl_rekap_transaksi` (`id_rekap`, `ket`, `transaksi_masuk`, `transaksi_keluar`, `date`, `id_user`) VALUES
(17, '0', '20000.00', '5000.00', '2022-09-04 19:07:53', 16),
(20, '0', '55000.00', '0.00', '2022-09-05 13:20:34', 16),
(21, '0', '0.00', '0.00', '2022-09-06 23:00:25', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(11) NOT NULL,
  `kode_status` int(2) DEFAULT NULL,
  `nama_status` text NOT NULL,
  `ket` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `kode_status`, `nama_status`, `ket`) VALUES
(1, NULL, '<button class=\"btn btn-sm btn-primary1\">Aktif</button>', NULL),
(2, NULL, '<button class=\"btn btn-sm btn-danger\">Non Aktif</button>', NULL),
(3, 0, '<button class=\"btn btn-sm btn-primary3\"><i class=\"fas fa-sign-in-alt\"></i> Belum keluar</button>', 'Masuk'),
(4, 1, '<button class=\"btn btn-sm btn-secondary\"><i class=\"fas fa-sign-out-alt\"></i> Sudah Keluar</button>\r\n      ', 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_total_pgj`
--

CREATE TABLE `tbl_total_pgj` (
  `id_rekap` int(12) NOT NULL,
  `total_masuk` int(20) DEFAULT NULL,
  `total_keluar` int(20) DEFAULT NULL,
  `id_user` int(12) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_total_pgj`
--

INSERT INTO `tbl_total_pgj` (`id_rekap`, `total_masuk`, `total_keluar`, `id_user`, `date`) VALUES
(2, 5, NULL, 16, '2022-09-02 18:38:53'),
(3, 4, NULL, 16, '2022-09-04 20:39:41'),
(6, 6, NULL, 16, '2022-09-05 02:14:44'),
(7, 4, NULL, 16, '2022-09-06 23:00:13'),
(8, 0, NULL, 16, '2022-09-10 12:15:06'),
(9, 1, NULL, 16, '2022-09-20 11:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `no_induk` int(20) NOT NULL,
  `transaksi` decimal(20,0) NOT NULL,
  `saldo_before` decimal(20,2) NOT NULL,
  `date_transaksi` datetime NOT NULL,
  `id_user` int(11) NOT NULL,
  `tipe` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `no_induk`, `transaksi`, `saldo_before`, `date_transaksi`, `id_user`, `tipe`) VALUES
(56, 107, '5000', '5000.00', '2022-10-02 16:30:48', 16, 1),
(57, 3612313, '5000', '8000.00', '2022-10-03 22:54:34', 16, 1),
(58, 3612313, '5000', '8000.00', '2022-10-03 22:54:34', 16, 1),
(59, 3612313, '20000', '15000.00', '2022-10-04 00:43:51', 16, 1);

--
-- Triggers `tbl_transaksi`
--
DELIMITER $$
CREATE TRIGGER `transaksi_tambah` BEFORE INSERT ON `tbl_transaksi` FOR EACH ROW BEGIN
	UPDATE tbl_pengunjung SET saldo=saldo+NEW.transaksi
	WHERE no_induk = NEW.no_induk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_out`
--

CREATE TABLE `tbl_transaksi_out` (
  `id_transaksi` int(11) NOT NULL,
  `no_induk` int(20) NOT NULL,
  `transaksi` decimal(20,0) NOT NULL,
  `saldo_before` decimal(20,2) NOT NULL,
  `date_transaksi` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `tbl_transaksi_out`
--
DELIMITER $$
CREATE TRIGGER `transaksi_berkurang` BEFORE INSERT ON `tbl_transaksi_out` FOR EACH ROW BEGIN
	UPDATE tbl_pengunjung SET saldo=saldo-NEW.transaksi
	WHERE no_indukg = NEW.no_induk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(16, 'M Rifqi Fadhilah', 'sadmin', 'image_2022-09-22_221412527.png', '$2y$10$9kiGmdT7Yp1asqqrUNv7re0Obk.gGevh61iue8sgwtPitsnTnlIMm', 1, 1, '0000-00-00 00:00:00'),
(31, 'admin2', 'admin2', 'default', '$2y$10$wLcO8BgrDR9nCiVQi/9m9ewzWVrBhFjFUZ9HA.RTdh187jkhJ.EdG', 2, 1, '2022-08-27 18:36:47'),
(32, 'Dudun', 'admin3', 'image_2022-08-28_145435769.png', '$2y$10$4.344ACpzSgwE470baVjtuu58muJ9C6FZiKClp0c4QSk9fe1DSRdC', 2, 1, '2022-08-28 13:54:18'),
(33, 'admin 4', 'admin4', 'default', '$2y$10$WhkPnh.9De/6S3tIU1B.C.eBoIf7QPaA5Ih/Zzc.L6W58vIqb/ee.', 2, 1, '2022-08-28 15:00:59'),
(34, 'tess', 'tess', 'default', '$2y$10$TaPOLt/lJHXnzgUZeNluvuVPyb2teoy/wqpS17T4T2lw182Fl5KGW', 2, 1, '2022-08-28 17:03:12'),
(35, 'rifqi', 'rifqi', 'alerts2.png', '$2y$10$85GbyUdWtY5c3MRrVgO8DOVelcBQoRKeQU2xCi7R/Z.9lgN7u0cVm', 2, 1, '2022-09-07 00:01:01'),
(37, 'admin', 'admin', 'default', '$2y$10$IUKrBXqKGDBfbd.G7EGlYeuoUh0bWPDDuZ0UYrz.m1qbQgrk8J0yy', 2, 1, '2022-10-04 00:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(7, 2, 5),
(8, 1, 4),
(44, 1, 14),
(47, 1, 15),
(48, 2, 14),
(49, 1, 17),
(50, 2, 1),
(51, 2, 15),
(52, 2, 15),
(53, 1, 15),
(54, 1, 15),
(55, 1, 18),
(56, 2, 18),
(57, 1, 19),
(58, 2, 19),
(59, 1, 20),
(60, 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Menu'),
(3, 'Dashboard'),
(4, 'Akun'),
(14, 'Manajemen'),
(15, 'Pembayaran'),
(17, 's_admin'),
(18, 'Alat'),
(19, 'Kategori'),
(20, 'Laporan');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Super Admin'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(4, 2, 'Menu Manajemen', 'menu', ' fas fa-fw fa-folder', 1),
(5, 2, 'Submenu Manajemen', 'menu/submenu', ' fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', ' fas fa-fw  fa-user-secret', 1),
(9, 3, 'Dashboard User', 'dashboard', 'fas fa-fw  fa-home', 1),
(12, 4, 'Profil', 'akun', ' fas fa-fw  fa-user', 1),
(13, 1, 'User Manajemen', 'admin/userm', 'fas fa-fw fa-users', 1),
(14, 4, 'Edit Profil', 'akun/edit', ' fas fa-fw  fa-edit', 1),
(15, 14, 'Manajemen Mata Pelajaran', 'manajemen/mapel', 'fas fa-fw fa-book', 1),
(27, 15, 'Profil Sekolah', 'websitecontrol/profilsekolah', ' fas fa-fw  fa-user', 1),
(28, 15, 'Manajemen Guru', 'websitecontrol/guru', 'fas fa-chalkboard-teacher', 1),
(29, 15, 'Berita', 'websitecontrol/berita', 'fas fa-fw fa-newspaper', 1),
(30, 15, 'Galeri', 'websitecontrol/galeri', 'far fa-images', 1),
(31, 15, 'File', 'websitecontrol/file', 'fas fa-file-alt', 1),
(32, 15, 'Kontak Kami', 'websitecontrol/kontakkami', 'fas fa-address-card', 1),
(33, 15, 'Slideshow', 'websitecontrol/slideshow', 'fas fa-fw fa-image', 1),
(35, 15, 'Foto Galeri', 'websitecontrol/foto', 'far fa-images', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_alat`
--
ALTER TABLE `tbl_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_keluar`
--
ALTER TABLE `tbl_keluar`
  ADD PRIMARY KEY (`id_keluar`);

--
-- Indexes for table `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `tbl_masuk`
--
ALTER TABLE `tbl_masuk`
  ADD PRIMARY KEY (`id_masuk`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`id_pengunjung`),
  ADD UNIQUE KEY `no_kartu` (`no_kartu`);

--
-- Indexes for table `tbl_rekap_pgj`
--
ALTER TABLE `tbl_rekap_pgj`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `tbl_rekap_transaksi`
--
ALTER TABLE `tbl_rekap_transaksi`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_total_pgj`
--
ALTER TABLE `tbl_total_pgj`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_transaksi_out`
--
ALTER TABLE `tbl_transaksi_out`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_alat`
--
ALTER TABLE `tbl_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  MODIFY `id_fakultas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_keluar`
--
ALTER TABLE `tbl_keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  MODIFY `id_laporan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_masuk`
--
ALTER TABLE `tbl_masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `id_pengunjung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `tbl_rekap_pgj`
--
ALTER TABLE `tbl_rekap_pgj`
  MODIFY `id_rekap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tbl_rekap_transaksi`
--
ALTER TABLE `tbl_rekap_transaksi`
  MODIFY `id_rekap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_total_pgj`
--
ALTER TABLE `tbl_total_pgj`
  MODIFY `id_rekap` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_transaksi_out`
--
ALTER TABLE `tbl_transaksi_out`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
