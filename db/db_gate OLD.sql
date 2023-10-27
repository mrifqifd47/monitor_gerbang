-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 04:27 AM
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
  `nama` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_alat`
--

INSERT INTO `tbl_alat` (`id`, `nama`, `status`, `ket`) VALUES
(1, 'gerbang_masuk', 0, NULL),
(2, 'gerbang_keluar', 1, NULL),
(3, 'running text', 1, 'Halo gaes david disini');

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
  `no_induk` int(15) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `saldo` decimal(20,0) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`id_pengunjung`, `no_kartu`, `nama`, `no_induk`, `prodi`, `kategori`, `status`, `saldo`, `date_add`) VALUES
(12, NULL, 'Rifqi', 11, 'Fakultas Teknik', 'Mahasiswa', '3', '0', '0000-00-00 00:00:00'),
(18, NULL, 'gas', 1233, ' Fakultas Agama Islam ', 'Dosen', '', '0', '0000-00-00 00:00:00'),
(19, NULL, 'gas', 1234, ' Fakultas Agama Islam ', 'Dosen', '', '0', '0000-00-00 00:00:00'),
(20, 555, 'gasken', 2, ' Fakultas Agama Islam ', 'Dosen', '1', '10000', '0000-00-00 00:00:00'),
(69, 8010203, 'Thomas', 12, 'Fakultas Teknik', 'Mahasiswa', '2', '0', '0000-00-00 00:00:00'),
(71, 5550, 'TU', 101, 'Fakultas Teknik', 'Staff TU', '1', '0', '0000-00-00 00:00:00'),
(72, NULL, 'akuh', 1919, 'Fakultas Teknik', 'Staff TU', '', '0', '0000-00-00 00:00:00'),
(73, NULL, 'aa', 2, 'Fakultas Teknik', 'Staff TU', 'non', '0', '0000-00-00 00:00:00'),
(74, NULL, 'aku', 10, 'Fakultas Ekonomi', 'Dosen', 'Aktif', '0', '0000-00-00 00:00:00'),
(75, NULL, 'a', 101, 'Fakultas Teknik', 'Dosen', 'Non-Aktif', '0', '0000-00-00 00:00:00'),
(76, 123, 'Rifqi', 1919, 'Fakultas Teknik', 'Mahasiswa', '1', '0', '0000-00-00 00:00:00'),
(77, 15, 'akuar', 1919, 'Fakultas Teknik', 'Dosen', '1', '0', '2022-07-14 00:00:00'),
(89, 69, 'WWW', 698, 'Fakultas Teknik', 'Dosen', '1', '0', '2022-07-22 20:16:46'),
(90, 3, 'SSer', 31, 'Fakultas Teknik', 'Mahasiswa', '2', '0', '2022-07-24 00:58:24'),
(91, 5, 'Rifqi', 312, 'Fakultas Teknik', 'Mahasiswa', '1', '0', '2022-07-24 01:01:02'),
(92, 41, 'AA', 11, 'Fakultas Teknik', 'Mahasiswa', '1', '0', '2022-07-29 12:02:31'),
(93, 55, '25', 25, 'Fakultas Teknik', 'Mahasiswa', '1', '0', '2022-07-29 12:17:13'),
(94, 2147483647, 'Uwu', 2147483647, 'Fakultas Teknik', 'Mahasiswa', '1', '0', '2022-07-31 12:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekap`
--

CREATE TABLE `tbl_rekap` (
  `id_rekap` int(11) NOT NULL,
  `no_kartu` varchar(20) NOT NULL,
  `status` int(2) DEFAULT NULL,
  `waktu_masuk` datetime NOT NULL,
  `waktu_keluar` datetime DEFAULT NULL,
  `foto_masuk` varchar(20) DEFAULT NULL,
  `foto_keluar` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekap`
--

INSERT INTO `tbl_rekap` (`id_rekap`, `no_kartu`, `status`, `waktu_masuk`, `waktu_keluar`, `foto_masuk`, `foto_keluar`) VALUES
(10, '123', 1, '2022-07-31 11:29:39', '2022-07-31 11:30:45', NULL, NULL),
(12, '2147483647', 1, '2022-07-31 12:19:54', '2022-08-01 14:21:51', NULL, NULL),
(18, '5', 1, '2022-08-02 02:16:06', '2022-08-02 02:22:28', NULL, NULL),
(19, '5', 1, '2022-08-02 02:25:12', '2022-08-02 02:26:26', NULL, NULL),
(20, '8010203', 1, '2022-08-02 06:52:44', '2022-08-02 07:00:24', NULL, NULL),
(21, '3', 1, '2022-08-02 07:07:03', '2022-08-02 07:07:16', NULL, NULL),
(22, '2147483647', 0, '2022-08-03 23:20:19', NULL, NULL, NULL);

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
(3, 0, '<button class=\"btn btn-sm btn-primary3\"><i class=\"fas fa-sign-in-alt\"></i> Masuk</button>', 'Masuk'),
(4, 1, '<button class=\"btn btn-sm btn-secondary\"><i class=\"fas fa-sign-out-alt\"></i> Sudah Keluar</button>\r\n      ', 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `no_kartu` varchar(20) NOT NULL,
  `transaksi` decimal(20,0) NOT NULL,
  `date_transaksi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `no_kartu`, `transaksi`, `date_transaksi`) VALUES
(1, '555', '5000', '2022-07-27 12:44:42'),
(2, '321', '5000', '2022-07-27 00:00:00'),
(5, '555', '1', '2022-07-27 09:09:20'),
(6, '555', '5000', '2022-07-27 10:35:44'),
(7, '555', '5000', '2022-07-27 10:58:44'),
(8, '8010203', '15000', '2022-07-27 11:20:02'),
(9, '8010203', '15000', '2022-07-27 11:21:58'),
(10, '123', '10000', '2022-07-27 11:23:43'),
(11, '555', '5000', '2022-08-03 23:26:48');

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
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(16, 'admin', 'admin', 'pp.jpg', '$2y$10$ecrBsGzK8W2sDwa0hlRYpOa/6Y1EuGxZ9Jh4pn6Nh3vf.n2LB65UW', 1, 1, '0000-00-00 00:00:00'),
(29, 'aku', 'aku', 'aku', 'aku', 2, 1, '0000-00-00 00:00:00'),
(32, 'admin5', 'admin5', NULL, '$2y$10$2oarEudMUvFgbOZcJz6bxu0MpRu1Ftt9WT3WqZTWyfiPEGY4blGCS', 2, 1, '0000-00-00 00:00:00'),
(33, 'Aku', 'admin2', NULL, '$2y$10$hoT0WIc.5kPiYR9IIwkZIeLUIVfv30.gPVc7mglFqvD60Ur6Stm4K', 2, 1, '0000-00-00 00:00:00'),
(34, 'admin3', 'admin3', NULL, '$2y$10$bMP0.7fGqyvbY36OUhPmG.zgfPvBIg34Ylqma2FKU5CkfEIY5dYPe', 2, 1, '0000-00-00 00:00:00'),
(35, 'admin61', 'admin61', NULL, '$2y$10$XC2U8Dla8ytaKeGiEVngh.VoLVJQ2Lo.gYPkDiUB6DcIW0H0A5il2', 2, 1, '0000-00-00 00:00:00');

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
(56, 2, 18);

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
(18, 'Alat');

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
-- Indexes for table `tbl_keluar`
--
ALTER TABLE `tbl_keluar`
  ADD PRIMARY KEY (`id_keluar`);

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
-- Indexes for table `tbl_rekap`
--
ALTER TABLE `tbl_rekap`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_keluar`
--
ALTER TABLE `tbl_keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_masuk`
--
ALTER TABLE `tbl_masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `id_pengunjung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbl_rekap`
--
ALTER TABLE `tbl_rekap`
  MODIFY `id_rekap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
