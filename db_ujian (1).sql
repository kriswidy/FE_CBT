-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 18 Jan 2019 pada 18.03
-- Versi Server: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `nama_mapel`) VALUES
(1001, 'Matematika'),
(1002, 'IPA'),
(1003, 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id_soal` varchar(55) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `pertanyaan` longtext NOT NULL,
  `pilihan_a` longtext NOT NULL,
  `pilihan_b` longtext NOT NULL,
  `pilihan_c` longtext NOT NULL,
  `pilihan_d` longtext NOT NULL,
  `skor_a` double NOT NULL,
  `skor_b` double NOT NULL,
  `skor_c` double NOT NULL,
  `skor_d` double NOT NULL,
  `kunci` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_soal`
--

INSERT INTO `tbl_soal` (`id_soal`, `id_mapel`, `pertanyaan`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `skor_a`, `skor_b`, `skor_c`, `skor_d`, `kunci`) VALUES
('123', 1001, 'Harga dua buku dan dua pensil Rp. 8.800,00. jika harga sebuah buku Rp. 600,00 lebih murah dari harga pensil, maka harga sebuah buku adalah …', 'Rp.1.200 ', 'Rp. 3.100 ', 'Rp. 8.800', 'Rp. 2.500', 0, 0, 0, 2, 'Rp. 2.500'),
('5', 1001, 'Harga beli satu lusin buku kwitansi adalah Rp. 50.000,00 dan dijual dengan harga Rp. 5.000,00 tiap buah. Persentase keuntungannya adalah….', '10%', '15%', '18%', '20%', 0, 0, 0, 0, '20%'),
('5c3d88c401ee6', 1001, 'Harga dua buku dan dua pensil Rp. 8.800,00. jika harga sebuah buku Rp. 600,00 lebih murah dari harga pensil, maka harga sebuah buku adalah …', 'Rp.1.200 ', 'Rp.  3.100    ', 'Rp.  8.800', 'Rp. 2.500', 0, 0, 0, 2, 'Rp. 2.500'),
('5c3d8afc8eebf', 1001, 'Siswa kelas VI SD Sukamaju terdiri dari 15 siswa laki-laki dan 20 siswa perempuan. Perbandingan siswa laki-laki dan perempuan adalah ....', '2:3', '3:4', '4:5', '1:2', 0, 2, 0, 0, '3:4'),
('5c3d8c7a9067b', 1002, 'Pada pernapasan dada bila otot antar tulang rusuk berkontraksi hingga rongga dada membesar disebut.......', 'inspirasi', 'ekspirasi', 'sekresi', 'filtrasi', 3, 2, 1, 0, 'inpirasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ujian_peserta`
--

CREATE TABLE `tbl_ujian_peserta` (
  `id_ujian` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `pilihan_user` longtext NOT NULL,
  `kunci(FK)` longtext NOT NULL,
  `skor_ujian` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `username`, `password`, `level`) VALUES
(103, 'siswa teladan', 'sisteladan@ymail.com', 'siswatel', '061cb6e44db6233b6927e828be082574', 'admin'),
(104, 'admin baik', 'admin@ymail.com', 'admin', '25d55ad283aa400af464c76d713c07ad', 'admin'),
(123, 'siswa', 'siswa@ddu.com', 'siswa', 'siswa', 'siswa'),
(124, 'admin', 'admin@gmail.com', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tbl_ujian_peserta`
--
ALTER TABLE `tbl_ujian_peserta`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;
--
-- AUTO_INCREMENT for table `tbl_ujian_peserta`
--
ALTER TABLE `tbl_ujian_peserta`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
