-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 06 Des 2018 pada 00.36
-- Versi server: 5.6.38
-- Versi PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pencatatan_ta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `judul_ta`
--

CREATE TABLE `judul_ta` (
  `kode_ta` int(11) NOT NULL,
  `nama_ta` varchar(30) NOT NULL,
  `keterangan` text NOT NULL,
  `metode` varchar(35) NOT NULL,
  `id_user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `judul_ta`
--

INSERT INTO `judul_ta` (`kode_ta`, `nama_ta`, `keterangan`, `metode`, `id_user`) VALUES
(1, 'M', 'Applikasi ini Dapat Memancing Online', 'Metode Laskar Pelangi', 'risky');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama_depan` varchar(20) NOT NULL,
  `nama_belakang` varchar(20) NOT NULL,
  `kuliah` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `jumlah_sks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama_depan`, `nama_belakang`, `kuliah`, `alamat`, `jumlah_sks`) VALUES
('risky', 'risky', 'Risky', 'Feryansyah Pribadi', 'STIKI MALANG', 'Jln Gadang Gang 5c', 140),
('shnsaraswati', 'shania', 'Shania', 'Sarawati', 'STIKI MALANG', 'JLN sem', 120),
('teuku', 'teuku123', 'Teuku ', 'Rionaldi', 'STIKI MALANG', 'Jln Perusahaan		', 142);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `judul_ta`
--
ALTER TABLE `judul_ta`
  ADD PRIMARY KEY (`kode_ta`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `judul_ta`
--
ALTER TABLE `judul_ta`
  MODIFY `kode_ta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
