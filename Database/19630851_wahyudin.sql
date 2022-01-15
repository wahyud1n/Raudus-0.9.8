-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2022 pada 02.14
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `19630851_wahyudin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_guru_piket`
--

CREATE TABLE `data_guru_piket` (
  `Id_Gurupiket` varchar(8) NOT NULL,
  `Id_tindakan` varchar(15) NOT NULL,
  `Nama_Gurupiket` varchar(15) NOT NULL,
  `Jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_guru_piket`
--

INSERT INTO `data_guru_piket` (`Id_Gurupiket`, `Id_tindakan`, `Nama_Gurupiket`, `Jadwal`) VALUES
('001', 'T001', 'APOY', 'SENIN'),
('002', 'T002', 'IPA', 'SELASA'),
('003', 'T003', 'JK', 'KAMIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_hasil_pemeriksaan`
--

CREATE TABLE `data_hasil_pemeriksaan` (
  `Id_Periksa` varchar(10) NOT NULL,
  `Id_Siswa` varchar(8) NOT NULL,
  `Id_petugas` varchar(8) NOT NULL,
  `Tinggi` varchar(6) NOT NULL,
  `Berat` varchar(15) NOT NULL,
  `TTV` varchar(15) NOT NULL,
  `Diagnosis` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_hasil_pemeriksaan`
--

INSERT INTO `data_hasil_pemeriksaan` (`Id_Periksa`, `Id_Siswa`, `Id_petugas`, `Tinggi`, `Berat`, `TTV`, `Diagnosis`) VALUES
('12', '21', '21', '170', '56', 'normal', 'flu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_petugas`
--

CREATE TABLE `data_petugas` (
  `Nama_Petugas` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `Id_Petugas` varchar(8) NOT NULL,
  `Jabatan` varchar(15) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_petugas`
--

INSERT INTO `data_petugas` (`Nama_Petugas`, `password`, `Id_Petugas`, `Jabatan`, `Alamat`, `No_Telp`) VALUES
('Jamal', '1111', '1102', 'Admin', 'Jl.Veteran', '082256227822'),
('Candra', '1000', '1103', 'Umum', 'Jl. Bata Merah', '087856784678');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_puskesmas`
--

CREATE TABLE `data_puskesmas` (
  `Id_puskesmas` varchar(15) NOT NULL,
  `Id_tindakan` varchar(15) NOT NULL,
  `Id_siswa` varchar(8) NOT NULL,
  `nama_puskesmas` varchar(15) NOT NULL,
  `nama_petugas` varchar(15) NOT NULL,
  `Alamat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `Id_Siswa` varchar(8) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tempat_Lahir` varchar(20) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` varchar(9) NOT NULL,
  `Kelas` varchar(8) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`Id_Siswa`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Kelas`, `Alamat`) VALUES
('0851', 'Nasih', 'Sampit', '2021-11-03', 'Laki', '5H', 'Kapuas'),
('1963', 'Wahyu', 'Kampung', '2021-11-02', 'Laki', '5A', 'HKSN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_terapi`
--

CREATE TABLE `data_terapi` (
  `Id_terapi` varchar(8) NOT NULL,
  `Id_tindakan` varchar(15) NOT NULL,
  `Nama_terapi` varchar(15) NOT NULL,
  `Jumlah` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_terapi`
--

INSERT INTO `data_terapi` (`Id_terapi`, `Id_tindakan`, `Nama_terapi`, `Jumlah`) VALUES
('001', 'T01', 'PIJAT', '2'),
('002', 'T02', 'LULUR', '5'),
('003', 'T03', 'URUT', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tindak_lanjut`
--

CREATE TABLE `data_tindak_lanjut` (
  `Id_tindakan` varchar(15) NOT NULL,
  `Diagnosis` varchar(15) NOT NULL,
  `Terapi` varchar(15) NOT NULL,
  `Rujukan` varchar(15) NOT NULL,
  `Izin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_wali`
--

CREATE TABLE `data_wali` (
  `Id_Wali` varchar(8) NOT NULL,
  `Id_Siswa` varchar(8) NOT NULL,
  `Nama_Wali` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_hasil_pemeriksaan`
--
ALTER TABLE `data_hasil_pemeriksaan`
  ADD PRIMARY KEY (`Id_Periksa`),
  ADD KEY `Id_Siswa` (`Id_Siswa`,`Id_petugas`),
  ADD KEY `Diagnosis` (`Diagnosis`),
  ADD KEY `Id_petugas` (`Id_petugas`);

--
-- Indeks untuk tabel `data_petugas`
--
ALTER TABLE `data_petugas`
  ADD PRIMARY KEY (`Id_Petugas`);

--
-- Indeks untuk tabel `data_puskesmas`
--
ALTER TABLE `data_puskesmas`
  ADD PRIMARY KEY (`Id_puskesmas`),
  ADD KEY `Id_tindakan` (`Id_tindakan`,`Id_siswa`),
  ADD KEY `Id_siswa` (`Id_siswa`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`Id_Siswa`);

--
-- Indeks untuk tabel `data_tindak_lanjut`
--
ALTER TABLE `data_tindak_lanjut`
  ADD PRIMARY KEY (`Id_tindakan`),
  ADD KEY `Diagnosis` (`Diagnosis`);

--
-- Indeks untuk tabel `data_wali`
--
ALTER TABLE `data_wali`
  ADD PRIMARY KEY (`Id_Wali`),
  ADD KEY `Id_Siswa` (`Id_Siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
