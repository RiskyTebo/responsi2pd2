-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 13 Jan 2019 pada 13.01
-- Versi server: 5.6.38
-- Versi PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pencatatan_ta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` int(11) NOT NULL,
  `nama_bidang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `nama_bidang`) VALUES
(1, 'Robotika'),
(2, 'Artificial Intelegence'),
(3, 'Sistem Pengambilan Keputusan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` varchar(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenjang_pendidikan` varchar(18) NOT NULL,
  `bidang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `nama`, `jenjang_pendidikan`, `bidang`) VALUES
('4', 'Basuki Besmara', 'S3', 2),
('KD001', 'Sri Fatmawati', 'S3', 1),
('KD002', 'Ken Soetanto', 'S3', 2),
('KD003', 'I Made Andi Arsana', 'S2', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `judul_ta`
--

CREATE TABLE `judul_ta` (
  `kode_ta` int(11) NOT NULL,
  `nama_ta` varchar(30) NOT NULL,
  `abstrak` text NOT NULL,
  `dosen_pembimbing` varchar(30) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Seminar I',
  `tgl_pengambilan` varchar(25) NOT NULL,
  `tgl_seminar1` varchar(25) NOT NULL,
  `tgl_seminar2` varchar(25) NOT NULL,
  `id_user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `judul_ta`
--

INSERT INTO `judul_ta` (`kode_ta`, `nama_ta`, `abstrak`, `dosen_pembimbing`, `status`, `tgl_pengambilan`, `tgl_seminar1`, `tgl_seminar2`, `id_user`) VALUES
(1, 'Classification Berita Hoax', 'Artificial Intelegence', 'Basuki Besmara', 'Seminar I', '18/12/2018', '17/01/2019', '16/02/2019', 'risky');

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
('luqman', 'luqman', 'Luqman', 'Al-Hakim', 'STIKI', 'Jln jalanan', 129),
('risky', 'risky', 'Risky', 'Feryansyah Pribadi', 'STIKI MALANG', 'Jln Gadang Gang 5c', 140),
('shnsaraswati', 'shania', 'Shania', 'Sarawati', 'STIKI MALANG', 'JLN sem', 120),
('steven', 'steven123', 'steven', 'lorentius', 'STIKI', 'jln lorentius', 141),
('tebo', 'tebo123', 'Tebo', 'Steven', 'STIKI MALANG', 'Jln jalan', 142),
('teuku', 'teuku123', 'Teuku ', 'Rionaldi', 'STIKI MALANG', 'Jln Perusahaan		', 142);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

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
