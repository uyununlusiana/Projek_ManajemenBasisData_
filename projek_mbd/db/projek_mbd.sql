-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2022 pada 13.29
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_mbd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_ekskul`
--

CREATE TABLE `tbl_detail_ekskul` (
  `id_detail_ekskul` int(11) NOT NULL,
  `id_ekskul` int(11) NOT NULL,
  `id_santri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_ekskul`
--

INSERT INTO `tbl_detail_ekskul` (`id_detail_ekskul`, `id_ekskul`, `id_santri`) VALUES
(1, 1, 1),
(2, 1, 12),
(3, 1, 13),
(4, 1, 14),
(5, 1, 15),
(6, 1, 16),
(7, 2, 13),
(8, 2, 15),
(9, 2, 16),
(10, 2, 17),
(11, 3, 13),
(12, 3, 14),
(13, 3, 17),
(14, 3, 18),
(15, 3, 21),
(16, 6, 13),
(17, 6, 15),
(18, 6, 16),
(19, 6, 17),
(20, 6, 19),
(21, 2, 12),
(22, 2, 14),
(23, 2, 18),
(24, 2, 22),
(25, 6, 24),
(26, 3, 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ekskul`
--

CREATE TABLE `tbl_ekskul` (
  `id_ekskul` int(11) NOT NULL,
  `id_jns_ekskul` int(11) NOT NULL,
  `id_pengasuh` int(11) NOT NULL,
  `jadwal` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ekskul`
--

INSERT INTO `tbl_ekskul` (`id_ekskul`, `id_jns_ekskul`, `id_pengasuh`, `jadwal`, `keterangan`) VALUES
(1, 1, 1, 'selasa,kamis', 'jam 4 sore'),
(2, 2, 6, 'Sabtu', 'Jam 09.00 Pagi'),
(3, 3, 4, 'Rabu, Kamis', 'Jam 04.00 Sore'),
(6, 4, 2, 'Minggu', 'Jam 09.00 Pagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jns_ekskul`
--

CREATE TABLE `tbl_jns_ekskul` (
  `id_jns_ekskul` int(11) NOT NULL,
  `nama_ekskul` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jns_ekskul`
--

INSERT INTO `tbl_jns_ekskul` (`id_jns_ekskul`, `nama_ekskul`, `status`) VALUES
(1, 'Pramuka', 0),
(2, 'Drumband', 0),
(3, 'Taekwondo', 0),
(4, 'Basket', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jns_seleksi`
--

CREATE TABLE `tbl_jns_seleksi` (
  `id_jns_seleksi` int(11) NOT NULL,
  `nama_seleksi` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jns_seleksi`
--

INSERT INTO `tbl_jns_seleksi` (`id_jns_seleksi`, `nama_seleksi`, `status`) VALUES
(1, 'Tahfidz', 0),
(2, 'Bahasa Arab', 0),
(3, 'Tilawah', 0),
(5, 'Pengetahuan Agama', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_rumah` varchar(50) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `thn_pembelajaran` int(11) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pendaftaran`
--

INSERT INTO `tbl_pendaftaran` (`id_pendaftaran`, `nama_lengkap`, `tmpt_lahir`, `tgl_lahir`, `alamat_rumah`, `no_tlp`, `nama_ibu`, `nama_ayah`, `pekerjaan_ayah`, `thn_pembelajaran`, `tgl_daftar`, `id_petugas`) VALUES
(3, 'Nurul Eziana Najwa', 'Pringgarata', '2003-05-07', 'Pringgarata', '081997882993', 'Asmawati', 'Burhan', '', 0, '0000-00-00', 3),
(4, 'Mirzabil', 'Pringgarata', '2002-07-11', 'Pringgarata', '087432111331', 'Hikmah', 'Ahmadi', '', 0, '0000-00-00', 3),
(5, 'Faota', 'Narmada', '2003-11-02', 'Narmada', '087118293761', 'Roh', 'Awan', '', 0, '0000-00-00', 3),
(6, 'Rahman', 'Praya', '2002-11-11', 'Praya', '082997376166', 'Rahmi', 'Radim', '', 0, '0000-00-00', 3),
(7, 'Iqbaal', 'Praya', '2002-12-12', 'Praya', '081997352816', 'Rike', 'Heri', '', 0, '0000-00-00', 3),
(8, 'Rasydan', 'Pringgarata', '2002-12-03', 'Pringgarata', '081783456111', 'Istiani', 'Sopian', '', 0, '0000-00-00', 3),
(9, 'kiki', 'Praya', '2003-11-02', 'Praya', '081997352812', 'ayu', 'rahim', '', 0, '0000-00-00', 3),
(10, 'fadil jaedi', 'mataram', '2002-05-01', 'mataram', '081930645521', 'rohmaniah', 'yusuf', '', 0, '0000-00-00', 3),
(11, 'nurlaili', 'juring', '1999-09-20', 'juring', '083119400723', 'munisah', 'abdullah', '', 0, '0000-00-00', 3),
(12, 'jeje', 'Praya', '2003-05-07', 'Pringgarata', '081930645521', 'Rike', 'rahim', '', 0, '0000-00-00', 3),
(13, 'atika', 'Pringgarata', '2002-09-08', 'Pringgarata', '098367654555', 'suhaini', 'wahid', '', 0, '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengasuh`
--

CREATE TABLE `tbl_pengasuh` (
  `id_pengasuh` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `kompetensi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengasuh`
--

INSERT INTO `tbl_pengasuh` (`id_pengasuh`, `nama_lengkap`, `alamat`, `email`, `no_tlp`, `kompetensi`) VALUES
(1, 'Hafizi', 'Pringgarata', 'hafizi25@gmail.com', '081997352444', 'Tahfiz'),
(2, 'Ahmad Solihin', 'Mataram', 'ahmad99@gmail.com', '081765387199', 'Baca Kitab'),
(4, 'Budi Satriawan', 'Pringgarata', 'budiawan@gmail.com', '087624111222', 'Olah Raga'),
(6, 'Fatmawati', 'Praya', 'fatmafatma11@gmail.com', '081997346118', 'English');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_petugas`
--

CREATE TABLE `tbl_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_petugas`
--

INSERT INTO `tbl_petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `status`) VALUES
(1, 'amirudin', 'amir', '63eefbd45d89e8c91f24b609f7539942', 1),
(3, 'Uyunun lusiana', 'uyun', 'a3c0e5c01bf16af3b5bb040a811e64a8', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_santri`
--

CREATE TABLE `tbl_santri` (
  `id_santri` int(11) NOT NULL,
  `id_seleksi` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_rumah` varchar(50) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_santri`
--

INSERT INTO `tbl_santri` (`id_santri`, `id_seleksi`, `nama_lengkap`, `tmpt_lahir`, `tgl_lahir`, `alamat_rumah`, `no_tlp`, `nama_ibu`, `nama_ayah`, `pekerjaan_ayah`, `tgl_masuk`) VALUES
(12, 1, 'Nurul Eziana Najwa', 'Pringgarata', '2003-05-07', 'Pringgarata', '081997882993', 'Asmawati', 'Burhan', '', '0000-00-00'),
(13, 4, 'Mirzabil', 'Pringgarata', '2002-07-11', 'Pringgarata', '087432111331', 'Hikmah', 'Ahmadi', '', '0000-00-00'),
(14, 7, 'Faota', 'Narmada', '2003-11-02', 'Narmada', '087118293761', 'Roh', 'Awan', '', '0000-00-00'),
(15, 10, 'Rahman', 'Praya', '2002-11-11', 'Praya', '082997376166', 'Rahmi', 'Radim', '', '0000-00-00'),
(16, 13, 'Iqbaal', 'Praya', '2002-12-12', 'Praya', '081997352816', 'Rike', 'Heri', '', '0000-00-00'),
(17, 16, 'Rasydan', 'Pringgarata', '2002-12-03', 'Pringgarata', '081783456111', 'Istiani', 'Sopian', '', '0000-00-00'),
(18, 19, 'kiki', 'Praya', '2003-11-02', 'Praya', '081997352812', 'ayu', 'rahim', '', '0000-00-00'),
(19, 22, 'fadil jaedi', 'mataram', '2002-05-01', 'mataram', '081930645521', 'rohmaniah', 'yusuf', '', '0000-00-00'),
(20, 26, 'nurlaili', 'juring', '1999-09-20', 'juring', '083119400723', 'munisah', 'abdullah', '', '0000-00-00'),
(21, 22, 'fadil jaedi', 'mataram', '2002-05-01', 'mataram', '081930645521', 'rohmaniah', 'yusuf', '', '0000-00-00'),
(22, 26, 'nurlaili', 'juring', '1999-09-20', 'juring', '083119400723', 'munisah', 'abdullah', '', '0000-00-00'),
(23, 30, 'atika', 'Pringgarata', '2002-09-08', 'Pringgarata', '098367654555', 'suhaini', 'wahid', '', '0000-00-00'),
(24, 30, 'atika', 'Pringgarata', '2002-09-08', 'Pringgarata', '098367654555', 'suhaini', 'wahid', '', '0000-00-00'),
(25, 4, 'Mirzabil', 'Pringgarata', '2002-07-11', 'Pringgarata', '087432111331', 'Hikmah', 'Ahmadi', '', '0000-00-00'),
(26, 1, 'Nurul Eziana Najwa', 'Pringgarata', '2003-05-07', 'Pringgarata', '081997882993', 'Asmawati', 'Burhan', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_seleksi`
--

CREATE TABLE `tbl_seleksi` (
  `id_seleksi` int(11) NOT NULL,
  `id_jns_seleksi` int(11) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `tgl_seleksi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `skor` varchar(10) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_seleksi`
--

INSERT INTO `tbl_seleksi` (`id_seleksi`, `id_jns_seleksi`, `id_pendaftaran`, `tgl_seleksi`, `skor`, `keterangan`) VALUES
(1, 1, 3, '2022-06-23 20:21:18', '100', 'Sangat Memuaskan'),
(2, 2, 3, '2022-06-23 20:21:18', '90', 'Sangat Memuaskan'),
(3, 3, 3, '2022-06-23 20:21:18', '100', 'Sangat Memuaskan'),
(4, 1, 4, '2022-06-23 20:21:48', '100', 'Sangat Memuaskan'),
(5, 2, 4, '2022-06-23 20:21:48', '90', 'Sangat Memuaskan'),
(6, 3, 4, '2022-06-23 20:21:49', '100', 'Sangat Memuaskan'),
(7, 1, 5, '2022-06-23 20:22:32', '85', 'Memuaskan'),
(8, 2, 5, '2022-06-23 20:22:32', '80', 'Memuaskan'),
(9, 3, 5, '2022-06-23 20:22:32', '95', 'Sangat Memuaskan'),
(10, 1, 6, '2022-06-23 20:22:58', '85', 'Memuaskan'),
(11, 2, 6, '2022-06-23 20:22:58', '80', 'Memuaskan'),
(12, 3, 6, '2022-06-23 20:22:58', '88', 'Memuaskan'),
(13, 1, 7, '2022-06-23 20:23:24', '100', 'Sangat Memuaskan'),
(14, 2, 7, '2022-06-23 20:23:25', '93', 'Sangat Memuaskan'),
(15, 3, 7, '2022-06-23 20:23:25', '100', 'Sangat Memuaskan'),
(16, 1, 8, '2022-06-24 11:12:55', '100', 'Sangat Memuaskan'),
(17, 2, 8, '2022-06-24 11:12:56', '90', 'Sangat Memuaskan'),
(18, 3, 8, '2022-06-24 11:12:56', '100', 'Sangat Memuaskan'),
(19, 1, 9, '2022-06-24 11:28:11', '100', 'Sangat Memuaskan'),
(20, 2, 9, '2022-06-24 11:28:12', '100', 'Sangat Memuaskan'),
(21, 3, 9, '2022-06-24 11:28:12', '100', 'Sangat Memuaskan'),
(22, 1, 10, '2022-07-01 18:04:16', '100', 'Sangat Memuaskan'),
(23, 2, 10, '2022-07-01 18:04:16', '85', 'Memuaskan'),
(24, 3, 10, '2022-07-01 18:04:16', '100', 'Sangat Memuaskan'),
(25, 5, 10, '2022-07-01 18:04:16', '90', 'Sangat Memuaskan'),
(26, 1, 11, '2022-07-01 18:04:55', '85', 'Memuaskan'),
(27, 2, 11, '2022-07-01 18:04:55', '85', 'Memuaskan'),
(28, 3, 11, '2022-07-01 18:04:55', '90', 'Sangat Memuaskan'),
(29, 5, 11, '2022-07-01 18:04:55', '90', 'Sangat Memuaskan'),
(30, 1, 13, '2022-07-12 16:21:39', '100', 'Sangat Memuaskan'),
(31, 2, 13, '2022-07-12 16:21:40', '100', 'Sangat Memuaskan'),
(32, 3, 13, '2022-07-12 16:21:40', '100', 'Sangat Memuaskan'),
(33, 5, 13, '2022-07-12 16:21:40', '100', 'Sangat Memuaskan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_detail_ekskul`
--
ALTER TABLE `tbl_detail_ekskul`
  ADD PRIMARY KEY (`id_detail_ekskul`),
  ADD KEY `id_ekskul` (`id_ekskul`),
  ADD KEY `id_santri` (`id_santri`);

--
-- Indeks untuk tabel `tbl_ekskul`
--
ALTER TABLE `tbl_ekskul`
  ADD PRIMARY KEY (`id_ekskul`),
  ADD KEY `jnss_ekskul` (`id_jns_ekskul`),
  ADD KEY `hb_pengasuh` (`id_pengasuh`);

--
-- Indeks untuk tabel `tbl_jns_ekskul`
--
ALTER TABLE `tbl_jns_ekskul`
  ADD PRIMARY KEY (`id_jns_ekskul`);

--
-- Indeks untuk tabel `tbl_jns_seleksi`
--
ALTER TABLE `tbl_jns_seleksi`
  ADD PRIMARY KEY (`id_jns_seleksi`);

--
-- Indeks untuk tabel `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `fk_pendaftaran` (`id_petugas`);

--
-- Indeks untuk tabel `tbl_pengasuh`
--
ALTER TABLE `tbl_pengasuh`
  ADD PRIMARY KEY (`id_pengasuh`);

--
-- Indeks untuk tabel `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tbl_santri`
--
ALTER TABLE `tbl_santri`
  ADD PRIMARY KEY (`id_santri`),
  ADD KEY `fk_santri` (`id_seleksi`);

--
-- Indeks untuk tabel `tbl_seleksi`
--
ALTER TABLE `tbl_seleksi`
  ADD PRIMARY KEY (`id_seleksi`),
  ADD KEY `id_jns_seleksi` (`id_jns_seleksi`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_ekskul`
--
ALTER TABLE `tbl_detail_ekskul`
  MODIFY `id_detail_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tbl_ekskul`
--
ALTER TABLE `tbl_ekskul`
  MODIFY `id_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_jns_ekskul`
--
ALTER TABLE `tbl_jns_ekskul`
  MODIFY `id_jns_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_jns_seleksi`
--
ALTER TABLE `tbl_jns_seleksi`
  MODIFY `id_jns_seleksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengasuh`
--
ALTER TABLE `tbl_pengasuh`
  MODIFY `id_pengasuh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_santri`
--
ALTER TABLE `tbl_santri`
  MODIFY `id_santri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tbl_seleksi`
--
ALTER TABLE `tbl_seleksi`
  MODIFY `id_seleksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_detail_ekskul`
--
ALTER TABLE `tbl_detail_ekskul`
  ADD CONSTRAINT `tbl_detail_ekskul_ibfk_1` FOREIGN KEY (`id_ekskul`) REFERENCES `tbl_ekskul` (`id_ekskul`),
  ADD CONSTRAINT `tbl_detail_ekskul_ibfk_2` FOREIGN KEY (`id_santri`) REFERENCES `tbl_santri` (`id_santri`);

--
-- Ketidakleluasaan untuk tabel `tbl_ekskul`
--
ALTER TABLE `tbl_ekskul`
  ADD CONSTRAINT `hb_pengasuh` FOREIGN KEY (`id_pengasuh`) REFERENCES `tbl_pengasuh` (`id_pengasuh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jnss_ekskul` FOREIGN KEY (`id_jns_ekskul`) REFERENCES `tbl_jns_ekskul` (`id_jns_ekskul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD CONSTRAINT `fk_pendaftaran` FOREIGN KEY (`id_petugas`) REFERENCES `tbl_petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `tbl_santri`
--
ALTER TABLE `tbl_santri`
  ADD CONSTRAINT `fk_santri` FOREIGN KEY (`id_seleksi`) REFERENCES `tbl_seleksi` (`id_seleksi`);

--
-- Ketidakleluasaan untuk tabel `tbl_seleksi`
--
ALTER TABLE `tbl_seleksi`
  ADD CONSTRAINT `tbl_seleksi_ibfk_3` FOREIGN KEY (`id_jns_seleksi`) REFERENCES `tbl_jns_seleksi` (`id_jns_seleksi`),
  ADD CONSTRAINT `tbl_seleksi_ibfk_4` FOREIGN KEY (`id_pendaftaran`) REFERENCES `tbl_pendaftaran` (`id_pendaftaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
