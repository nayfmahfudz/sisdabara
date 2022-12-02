-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.10.102:3306
-- Waktu pembuatan: 02 Des 2022 pada 06.26
-- Versi server: 8.0.27-0ubuntu0.21.04.1
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `permohonan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int NOT NULL,
  `temp_min` varchar(20) DEFAULT NULL,
  `temp_avg` varchar(20) DEFAULT NULL,
  `temp_max` varchar(20) DEFAULT NULL,
  `temp_wtr` varchar(20) DEFAULT NULL,
  `uap_wtr` varchar(20) DEFAULT NULL,
  `angin` varchar(20) DEFAULT NULL,
  `radiasi_matahari` varchar(20) DEFAULT NULL,
  `sinar_matahari` varchar(20) DEFAULT NULL,
  `hujan` varchar(20) DEFAULT NULL,
  `gambar` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin`
--

CREATE TABLE `izin` (
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deskripsi` varchar(20) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `izin`
--

INSERT INTO `izin` (`nama`, `deskripsi`, `id`) VALUES
('Penggunaan SDA', 'Izin Penggunaan SDA', 20),
('Pengusahaan SDA', 'Izin Pengusahaan SDA', 21),
('Informasi Garis Sempadan', 'Info GSS', 22),
('Tambang', 'Izin Tambang', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan`
--

CREATE TABLE `permohonan` (
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL,
  `deskripsi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `noid` int NOT NULL,
  `createdAt` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sumber` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `keterangan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `longititude` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `latitude` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tujuan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NPWP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SK` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `debit_liter` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `debit_m3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lokasi` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `izin` int NOT NULL,
  `luas` varchar(20) NOT NULL,
  `komoditas` varchar(20) NOT NULL,
  `infrastruktur` varchar(20) NOT NULL,
  `tanggal_pemohon` varchar(200) NOT NULL,
  `no_pemohon` varchar(20) NOT NULL,
  `kabagtu` int NOT NULL,
  `rekomtek` int NOT NULL,
  `kabidop` int NOT NULL,
  `subkor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `permohonan`
--

INSERT INTO `permohonan` (`nama`, `status`, `deskripsi`, `noid`, `createdAt`, `modified`, `email`, `sumber`, `keterangan`, `longititude`, `latitude`, `tujuan`, `NPWP`, `SK`, `debit_liter`, `debit_m3`, `lokasi`, `izin`, `luas`, `komoditas`, `infrastruktur`, `tanggal_pemohon`, `no_pemohon`, `kabagtu`, `rekomtek`, `kabidop`, `subkor`) VALUES
('Marsella', 17, '', 4, '2021-09-15', '2022-04-13', '', 'Sungai Surabaya', '', '112 41 05', '7 20 51 ', '', '', '', '', '', 'Desa Ngelom Kecamatan Taman Kab. Sidoarjo', 22, '', '', 'Sempadan', '4 Januari 2022', 'adaa', 1, 1, 0, 0),
('UD. Anugerah', 17, '', 8, '2022-04-08', '2022-04-13', '', 'Sungai Brantas', '', '', '', '', '', '', '', '', 'Blitar', 22, '', '', 'sempadan', '4 Januari 2022', '', 0, 0, 0, 0),
('Yoke Candra', 17, '', 9, '2022-04-13', '2022-04-13', 'jayapelem@gmail.com', 'Saluran Pembuang Irigasi Bendo (Afvour Bendo DI Siman)', '', '112 10 01, 397 BT', '07 46 07, 652 LS', '', '07.863.9.70.5-643.000', '', '', '', 'Dsn Ngeblak, Ds Pelem, Kel. Pelem, Kec. Pare, Kab. Kediri', 20, '', '', 'Jembatan', '14-01-2022', '', 0, 0, 0, 0),
('PT. Kino Indonesia', 17, '', 23, '2022-04-19', '2022-04-19', '', 'Mata Air Tegalan Kandangan', '', 'BT / E 112 41 0,21', 'LS / S 7 42 17,80', '', '01.853.207.7-441.000', '267/KPTS/M/2021', '4,4', '', 'Desa Bulukandang, Kec. Prigen, Kab. Pasuruan', 21, '', '', 'Perpanjangan', '18-01-2022', '011/KI/PP_AL/I/2022', 0, 0, 0, 0),
('Yeni Kusmawarti', 17, '', 24, '2022-04-19', '2022-04-21', '', 'Saluran Afvour Tambak Oso', '', 'BT / E. 112 48 27,9 E', 'LS/S. 7 21 58,4 S', '', '', '', '', '', 'Kel. Tambak oso, Kec. Waru, Kab. Sidoarjo', 22, '', '', 'Sempadan', '24-01-2022', '', 0, 0, 0, 0),
('HJ. ABD Ghofur', 17, '', 25, '2022-04-19', '2022-04-21', '', 'Sungai Kali Porong', '', 'BT/E. 112 7969', 'LS/S. -7 53948', '', '', '', '', '', 'Desa Tambak Kali Sogo, Kec. Jabon, Kab. Sidoarjo', 22, '', '', 'Sempadan', '28-12-2021', '', 0, 0, 0, 0),
('Nurul Huda', 17, '', 26, '2022-04-19', '2022-04-21', '', 'Sungai Kali Peketingan', '', '112.8169', '-7.48381', '', '', '', '', '', 'Kel. Gebang, Kec. Sidoarjo, Kab. Sidoarjo', 22, '', '', 'Sempadan', '03-02-2022', '', 0, 0, 0, 0),
('BPN Kota Malang', 17, '', 27, '2022-04-19', '2022-04-21', '', 'Sungai Metro', '', '', '', '', '', '', '', '', 'Kel. Tanjungrejo, Kec. Sukun, Kota Malang', 22, '', '', 'Sempadan', '07-02-2022', '', 0, 0, 0, 0),
('PT. Prima Berkah', 16, '', 28, '2022-04-19', '2022-04-19', 'holdingprimaland@gmail.com', 'Sungai Brantas', '', '', '', '', '', '', '', '', 'Desa Jatimulyo, Kec. Lowokwaru, Kab. Malang', 22, '', '', 'Sempadan', '07-02-2022', '', 0, 0, 0, 0),
('Cuk Sindu', 17, '', 29, '2022-04-19', '2022-04-21', '', 'Sungai Kali Ngasinan Kiri', '', 'BT/E. 111.849729', 'LS/S. -8.09302', '', '', '', '', '', 'Desa Dukuh, Kec. Gondang, Kab. Tulungagung', 22, '', '', 'Sempadan', '07-02-2022', '600/24/415.04/2022', 0, 0, 0, 0),
('Ninik Sugiarti', 17, '', 30, '2022-04-19', '2022-04-21', '', 'Sungai Kali Getih', '', '112 41 45.1 E', '7 39 15.6 S', '', '', '', '', '', 'Kel. Pandaan, Kec. Pandaan, Kab. Pasuruan', 22, '', '', 'Sempadan', '11-02-2022', '007/PPAT/II/2022', 0, 0, 0, 0),
('Asna', 17, '', 31, '2022-04-19', '2022-04-21', '', 'Kali Greges', '', '', '', '', '', '', '', '', 'Kel. Greges Barat,  Kec. Asemrowo, Kota Surabaya', 22, '', '', 'Sempadan', '12-02-2022', '', 0, 0, 0, 0),
('Suyono', 17, '', 32, '2022-04-19', '2022-04-21', '', 'Kali Greges', '', '', '', '', '', '', '', '', 'Kel. Greges Barat,  Kec. Asemrowo, Kota Surabaya', 22, '', '', 'Sempadan', '12-02-2022', '', 0, 0, 0, 0),
('Rusmina Kepala Desa Gempolan Kab. Tulungagung', 17, '', 34, '2022-04-19', '2022-04-21', '', 'Sungai Kali Ngasinan Kanan', '', '111.857271', '8.114518', '', '', '', '', '', 'Desa Gempolan, Kec. Pakel, Kab. Tulungagung', 22, '', '', 'Sempadan', '16-02-2022', '170/16/413.19/2022', 0, 0, 0, 0),
('PTPN X PG Meritjan', 17, '', 35, '2022-04-19', '2022-04-19', 'pg.meritjan@ptpn10.co.id', 'Sungai Brantas', '', '112 00 12,41 BT', '7 46 58,50 LS', '', '01.061.130.9-622.004', '89/KPTS/M/2017', '180', '', 'Desa Mrican, Kec. Mojoroto, Kab. Kediri', 21, '', '', 'Perpanjangan', '17-02-2022', 'INSIP/22.000', 0, 0, 0, 0),
('Kepala Desa Tunggangri Kab. Tulungagung', 17, '', 36, '2022-04-19', '2022-04-19', '', 'Sungai Kedunglele', '', '111 57 46.59 E', '8 9 11.44 S', '', '00.076.970.3-629.000', '', '', '', 'Desa Tunggangri, Kec. Kalidawir, Kab. Tulungagung', 20, '', '', 'Eduwisata', '17-02-2022', '145/089/409.11/2022', 0, 0, 0, 0),
('Rudin', 16, '', 37, '2022-04-19', '2022-04-21', '', 'Kali Masangan', '', 'BT/E 112.807144', 'LS/S - 7.612985', '', '', '', '', '', 'Desa Mojoparon, Kec. Rembang, Kab. Pasuruan', 22, '', '', 'Sempadan', '18-02-2022', '', 0, 0, 0, 0),
('Indah', 17, '', 38, '2022-04-21', '2022-04-21', '', 'Kali Porong', '', '112.8403763', '-7.5454590', '', '', '', '', '', 'Desa Kedungpandan, Kec. Jabon, Kab. Sidoarjo', 22, '', '', 'Sempadan', '01-03-2022', '', 0, 0, 0, 0),
('PTPN X PG Modjopanggoong', 14, '', 39, '2022-04-21', '2022-04-21', 'pg.modjopanggoong@ptpn10.co.id', 'Sungai Song', '', '111° 52 , 25,8 \"', '8° 02 , 52,1 \"', '', '01.061.130.9-629.001', '60/KPTS/M/2017', '250', '', 'Desa Sidorejo, Kec. Kauman, Kab. Tulungagung', 21, '', '', 'Perpanjangan', '01-03-2022', 'BA-INSIP/220112.001', 0, 0, 0, 0),
('PT. Emdeki Utama', 17, '', 40, '2022-04-21', '2022-06-30', '', 'Kali Tengah', '', '112.5854878', '-7.36829', '', '', '', '', '', 'Desa Krikilan, Kec. Driyorejo, Kab. Gresik', 20, '', '', 'Jembatan', '04-03-2022', '', 0, 0, 0, 0),
('PT. Ambico', 17, '', 41, '2022-04-21', '2022-04-21', '', 'Sungai Kambeng', '', 'BT/E 112° 41\' 03,9\"', 'LS/S 07° 33\' 49,4\"', '', '01.108.172.6-607.000', '', '', '', 'Desa Carat, Kec. Gempol, Kab. Pasuruan', 20, '', '', 'Pipa ', '07-03-2022', '', 0, 0, 0, 0),
('PDAM Kota Surabaya', 14, '', 42, '2022-04-21', '2022-04-21', '', 'Kali Perbatasan', '', 'BT/E 112°78\'35\"', 'LS/S-7°34\'56\"', '', '01.137.244.8-631.000', '', '', '', 'Kel. Gunung Anyar, Kec. Gunung Anyar, Kota Surabaya', 20, '', '', 'Jembatan ', '07-03-2022', '693/10/PDAM/2022', 0, 0, 0, 0),
('PT. Surabaya Mekabox', 14, '', 43, '2022-04-21', '2022-04-21', '', 'Kali Tengah', '', '112°39\'16\'\' BT', '7°21\'9\'\' LS', '', '01.122.483.9-641.000', '', '', '', 'Desa Bambe, Kec. Driyorejo, Kab. Gresik', 20, '', '', 'Jembatan', '08-03-2022', '', 0, 0, 0, 0),
('PT. Steel Pipe Industry', 14, '', 46, '2022-04-21', '2022-04-21', '', 'Kali Surabaya', '', 'E 112°40\'17\'\'', 'S 7°21\'4\'\'', '', '01.001.732.5-092.000', '227/KPTS/M/2017', '23', '', 'Kel. Warugunung, Kec. Karangpilang, Kota Surabaya', 21, '', '', 'Perpanjangan', '14-03-2022', '', 0, 0, 0, 0),
('PT. Kedawung Setia', 14, '', 47, '2022-04-21', '2022-04-21', '', 'Sungai Surabaya', '', 'BT / E 112° 40\' 13,28\'\'', 'LS / S 7° 21\' 4,27\'\'', '', '01.132.928.1-054.000', '429/KPTS/M/2017', '10', '', 'Kel. Warugunung, Kec. Karangpilang, Kota Surabaya', 21, '', '', 'Perpanjangan', '16-03-2022', '', 0, 0, 0, 0),
('PT. Lessafre', 14, '', 48, '2022-04-21', '2022-04-21', '', 'Sungai Brantas', '', '', '', '', '93.781.450.7-048.000', '', '', '', 'Kel. Gading, Kec. Bululawang, Kab. Malang', 20, '', '', 'Pipa', '16-03-2022', '04/E/LSN/I/22', 0, 0, 0, 0),
('PT. Kedawung Setia CCB', 14, '', 49, '2022-04-21', '2022-04-21', '', 'Sungai Surabaya', '', 'BT / E 112° 40\' 13,28\'\'', 'LS / S 7° 21\' 4,27\'\'', '', '01.132.943.0-631.000', '428/KPTS/M/2017', '10', '', 'Kel. Warugunung, Kec. Karangpilang, Kota Surabaya', 21, '', '', 'Perpanjangan', '22-03-2022', '', 0, 0, 0, 0),
('CV. Tegal Ombo', 16, '', 50, '2022-04-21', '2022-04-21', 'tegalombolanggeng8@gmail.com', 'Saluran Irigasi Sekunder Pelem Payaman III', '', 'BT/E. 112°10\'19.9\'\'', 'LS/S. -7°45\'21.1\'\'', '', '', '', '', '', 'Desa Pelem, Kec. Pare, Kab. Kediri', 22, '', '', 'Sempadan', '23-03-2022', '', 0, 0, 0, 0),
('PT. Keramik Diamond', 14, '', 51, '2022-04-21', '2022-04-21', '', 'Sungai Surabaya', '', 'BT / E 112° 39\' 42,74\'\'', 'LS / S 07° 21\' 05,82\'\'', '', '01.466.162.3-642.001', '328/KPTS/M/2017', '28', '', 'Desa Bambe, Kec. Driyorejo, Kab. Gresik', 21, '', '', 'Perpanjangan', '25-03-2022', '', 0, 0, 0, 0),
('Hani', 16, '', 52, '2022-04-21', '2022-04-21', '', 'Sungai Brantas', '', '111°55\'03.0\'\'E', '-7°58\'55.6\'\'S', '', '', '', '', '', 'Desa Jeli, Kec. Karangrejo, Kab. Tulungagung', 22, '', '', 'Sempadan', '28-03-2022', '', 0, 0, 0, 0),
('CV. Mitrakarya Multiguna', 16, '', 53, '2022-04-21', '2022-04-21', '', 'Sungai Sememi', '', 'BT/E : 112.647034  BT/E : 112.641907', 'LS/S : -7.219051  LS/S : -7.224997', '', '', '', '', '', 'Kel. Tambak Osowilangun, Kec. Benowo, Kota Surabaya', 22, '', '', 'Sempadan', '01-04-2022', '', 0, 0, 0, 0),
('CV. Mitrakarya Multiguna', 16, '', 54, '2022-04-21', '2022-04-21', '', 'Sungai Romokalisari', '', 'BT/E : 112.639827  BT/E : 112.634056', 'LS/S : -7.209209  LS/S : -7.216387', '', '', '', '', '', 'Kel. Romokalisari, Kec. Benowo, Kota Surabaya', 22, '', '', 'Sempadan', '01-04-2022', '', 0, 0, 0, 0),
('CV. Dolie Indonesia', 16, '', 55, '2022-04-21', '2022-04-21', 'DOileindonesia@gmail.com', 'Sungai Song', '', 'BT/E. 111°55\'06.8\'\'', 'LS/S. 8°00\'51.1\'\'', '', '', '', '', '', 'Desa Ngujang, Kec. Kedungwaru, Kab. Tulungagung', 22, '', '', 'Sempadan', '01-04-2022', '', 0, 0, 0, 0),
('PT. Air Bersih Jatim', 16, '', 56, '2022-04-21', '2022-04-21', 'ptab@ptabjatim.id', 'Sungai Brantas', '', '112° 25 \' 44,0 \" BT', '7° 27 \' 31,0 \'\' LS', '', '94.202.690.7-615.000', '', '200', '', 'Kel. Terusan, Kec. Gedeg, Kab. Mojokerto', 21, '', '', 'Pengusahaan Baru', '05-04-2022', '521/123/III/503/2022', 0, 0, 0, 0),
('Ratna Dewi', 16, '', 57, '2022-04-21', '2022-04-21', '', 'Saluran Irigasi DI Molek', '', 'E 112°31\'21,28\'\'', 'S 8°8\'36,76\'\'', '', '', '', '', '', 'Kec. Slorok, Kec. Kromengan, Kab. Malang', 22, '', '', 'Sempadan', '06-04-2022', '', 0, 0, 0, 0),
('Perumda Tirta Kanjuruhan Kab. Malang', 16, '', 61, '2022-04-21', '2022-04-21', '', 'Coban Tengah', '', '112 28 35.18', '07 53 14.93', '', '', '477/KPTS/M/2017', '15', '', 'Ds. Pandesari, Kec. Pujon, Kab. Malang', 21, '', '', 'Perpanjangan', '13/04/2022', '', 0, 0, 0, 0),
('Perumda Tirta Kanjuruhan Kab. Malang', 16, '', 62, '2022-04-21', '2022-04-21', '', 'Jengglong', '', '112°48\'283\"', '08°01\'137\"', '', '', '', '130', '', 'Ds. Duwet Krajan, Kec. Tumpang, Kab. Malang', 21, '', '', 'Baru', '13/04/2022', '', 0, 0, 0, 0),
('Perumda Tirta Kanjuruhan Kab. Malang', 16, '', 63, '2022-04-21', '2022-04-21', '', 'Ndut', '', '112°34\'17.55\"', '08°00\'18.53\"', '', '', '', '25', '', 'Desa Gondowangi, Kec. Wagir, Kab. Malang', 21, '', '', 'Baru', '13/04/2022', '', 0, 0, 0, 0),
('Perumda Tirta Kanjuruhan Kab. Malang', 14, '', 64, '2022-04-21', '2022-04-21', '', 'Ubalan', '', '112°31\'41.5\"', '08°02\'53.3\"', '', '', '427/KPTS/M/2017', '175', '', 'Desa Balesari, Kec. Ngajum, Kab. Malang', 21, '', '', 'Perpanjangan', '13/04/2022', '', 0, 0, 0, 0),
('Perumda Tirta Kanjuruhan Kab. Malang', 14, '', 65, '2022-04-21', '2022-04-21', '', 'Dandang', '', '112°32\'48.63\"', '07°54\'37.8\"', '', '', '478/KPTS/M/2017', '20', '', 'Desa Junrejo, Kec. Junrejo, Kab. Batu', 21, '', '', 'Perpanjangan', '13/04/2022', '', 0, 0, 0, 0),
('Perumda Tirta Kanjuruhan Kab. Malang', 14, '', 66, '2022-04-21', '2022-04-21', '', 'Cinde', '', '112°32\'36.89\"', '07°5\'28.96\"', '', '', '487/KPTS/M/2017', '35', '', 'Desa Bumiaji, Kec. Bumiaji, Kab. batu', 21, '', '', 'Perpanjangan', '13/04/2022', '', 0, 0, 0, 0),
('PT. Jayaland', 16, '', 67, '2022-04-21', '2022-04-21', '', 'Saluran Mangetan Kanal IV', '', '112°70\'93.57\"', '07°39\'80.98\"', '', '01.000.316.8-643.001', '', '', '', 'Desa Kebonanom, Kec. Gedangan, Kab. Sidoarjo', 20, '', '', 'Jembatan', '14/04/2022', '09/JL/PRC/IV2022', 0, 0, 0, 0),
('PT. Jayaland', 16, '', 68, '2022-04-21', '2022-04-21', '', 'Saluran Sekunder Gambiranom', '', '112°70\'93.57\"', '07°39\'80.98\"', '', '01.000.316.8-643.001', '', '', '', 'Desa Kebonanom, Kec. Gedangan, Kab. Sidoarjo', 20, '', '', 'Jembatan', '14/04/2022', '10/JL/PRC/IV/2022', 0, 0, 0, 0),
('Syeh Bajuri Kubro', 17, '', 69, '2022-04-21', '2022-04-21', '', 'Kali Masangan', '', '112°80\'69.92\"', '07°61\'22.45\"', '', '', '', '', '', 'Desa Mojoparon, Kec. Rembang, Kab. Pasuruan', 22, '', '', 'Sempadan', '18/04/2022', '', 0, 0, 0, 0),
('Roda Lancar Abadi', 16, '', 70, '2022-04-21', '2022-04-21', '', 'Saluran Dungus', '', '112°67\'887.95\"', '07°57\'13\"', '', '06.597.219.2-603.001', '', '', '', 'Desa Sadang, Kec. Taman, Kab. Sidoarjo', 20, '', '', 'Jembatan', '19/04/2022', 'SK 01/IV/22/RLA', 0, 0, 0, 0),
('Dinas PUPR Kota Batu ', 17, '', 72, '2022-04-21', '2022-04-21', 'putataruang2017@gmail.com', 'Sungai Brantas', '', '112°32\'16.9\"', '7°52\'07.1\"', '', '00.309.252.5-628.000', '', '', '', 'Desa Sisir, Kec. Batu, Kota Batu', 20, '', '', 'Jembatan', '27/04/2022', '630/305/422.108/2022', 0, 0, 0, 0),
('PT. Great Wall Steel', 16, '', 73, '2022-04-21', '2022-04-21', 'ptgreatwallsteel@gmail.com', 'Afvour Buntung', '', '112°44\'33.03\"', '7°20\'54.93\"', '', '93.893.331.4-604.000', '', '41,7', '', 'Desa Janti, Kec. Waru, Kab. Sidoarjo', 21, '', '', 'Baru', '28/04/2022', '15/GWS/DIR/IV/2022', 0, 0, 0, 0),
('Balai Teknik Perkeretaapian (BH 153)', 16, '', 74, '2022-04-21', '2022-04-21', '', 'Saluran Sekunder Sidomukti', '', '112°34\'55.0\"', '7°24\'48.4\"', '', '', '', '', '', 'Desa Katerungan, Kec. Krian, Kab. Sidoarjo', 20, '', '', 'Jembatan', '28/04/2022', '', 0, 0, 0, 0),
('Balai Teknik Perkeretaapian (JPL 64)', 16, '', 75, '2022-04-21', '2022-04-21', 'balaikawijabagtim@gmail.com', 'Saluran Sekunder Sidomukti', '', '112°34\'54.7\"', '7°24\'47.7\"', '', '00.145.784.5-615.000', '', '', '', 'Desa Katerungan, Kec. Krian, Kab. Sidoarjo', 20, '', '', 'Jembatan', '28/04/2022', '', 0, 0, 0, 0),
('Andri Kurniawan', 16, '', 76, '2022-04-21', '2022-04-21', '', 'Sungai Seco', '', '112°57\'33.38\"', '8°12\'77.70\"', '', '', '', '', '', 'Desa Kepanjen, Kec. Kepanjen, Kab. Malang ', 22, '', '', 'Sempadan Kepanjen', '12/05/2022', '14/PIGS/2022', 0, 0, 0, 0),
('Toni Krisanto (PT Maropin Sinergi Utama)', 16, '', 77, '2022-04-21', '2022-04-21', '', 'Sungai Metro', '', '112°36\'56.5\"', '08°00\'37.9\"', '', '', '', '', '', 'Desa Sitirejo, Kec. Wagir, Kab. Malang', 22, '', '', 'Sempadan Malang', '20/05/2022', '017/DIR/MSU/V/2022', 0, 0, 0, 0),
('Teguh Soewandi', 17, '', 78, '2022-04-21', '2022-04-21', '', 'Sungai Surabaya', '', '112°69\'83.37\"', '7°33\'95.55\"', '', '', '', '', '', 'Desa Kebraon, Kec. Karang Pilang, Kota Surabaya', 22, '', '', 'Sempadan Surabaya', '23/05/2022', '', 0, 0, 0, 0),
('Perumdam Majapahit Mojokerto ', 16, '', 79, '2022-04-21', '2022-04-21', 'pdamkabmojokerto@gmail.com', 'Mata Air Sumber Bendungan', '', '112°32\'14.36\"', '07°41\'43.19\"', '', '01.438.739.3-602.000', '', '100', '', 'Desa Pacet, Kec. Pacet, Kab. Mojokerto', 21, '', '', 'Baru', '23/05/2022', '690/261/416-402/2022', 0, 0, 0, 0),
('Perumdam Majapahit Mojokerto ', 16, '', 80, '2022-04-21', '2022-04-21', 'pdamkabmojokerto@gmail.com', 'Mata Air Sumber Jubel', '', '112°34\'05.91\"', '07°39\'51.00\"', '', '01.438.739.3-602.000', '', '50', '', 'Desa Pacet, Kec. Pacet, Kab. Mojokerto', 21, '', '', 'Baru', '23/05/2022', '690/260/416-402/2022', 0, 0, 0, 0),
('Perumdam Majapahit Mojokerto ', 16, '', 81, '2022-04-21', '2022-04-21', 'pdamkabmojokerto@gmail.com', 'Mata Air Sumber Wonopolo', '', '112°32\'16.01\"', '07°42\'14.18\"', '', '01.438.739.3-602.000', '', '50', '', 'Desa Padusan, Kec. Pacet, Kab. Mojokerto', 21, '', '', 'Baru', '23/05/2022', '690/259/416-402/2022', 0, 0, 0, 0),
('PDAM Tirta Penataran Kab. Blitar ', 16, '', 82, '2022-04-21', '2022-04-21', '', 'Sumber Mata Air Tirtomoyo', '', '112°22\'23.47\"', '07°58\'28.86\"', '', '', '', '80 ', '', 'Desa Krisik, Kec. Gandusari, Kab. Blitar', 21, '', '', 'Izin Baru', '24/05/2022', '', 0, 0, 0, 0),
('PT. Mekabox International', 16, '', 83, '2022-04-21', '2022-04-21', '', 'Sungai Sadar', '', '112°35\'49.5\"', '07°30\'48.4\"', '', '', '', '', '', 'Desa Kedung Munggal, Kec. Pungging, Kab. Mojokerto', 20, '', '', 'Pembuangan Limbah', '24/05/2022', '', 0, 0, 0, 0),
('PT. Billboardindo Nusantara', 17, '', 84, '2022-04-21', '2022-04-21', '', 'Sungai Kali Perbatasan', '', '112°43\'45.0\"', '7°20\'53.3\"', '', '', '', '', '', 'Desa Dukuh Menanggal, Kec. Gayungan, Kab. Sidoarjo', 20, '', '', 'Reklame', '25/05/2022', '', 0, 0, 0, 0),
('Rendra Marsudiarto', 16, '', 85, '2022-04-21', '2022-04-21', '', 'Sungai Gondang', '', '111°50\'52.1\"', '08°04\'15.0\"', '', '', '', '', '', 'Desa Ngrendeng, Kec. Gondang, Kab. Tulungagung', 22, '', '', 'Sempadan Tulungagung', '29/05/2022', '', 0, 0, 0, 0),
('Lidya Mirawasari Susilo (PT. Wisma Mukti)', 16, '', 86, '2022-04-21', '2022-04-21', 'w-mukti@hotmail.com', 'Kali Makmur', '', '112°67\'16.52\"', '7°31\'71.49\"', '', '', '', '', '', 'Desa babatan, Kec. Wiyung, Kota Surabaya', 22, '', '', 'Sempadan Surabaya', '31/05/2022', '', 0, 0, 0, 0),
('PT. Kharisma ', 16, '', 87, '2022-04-21', '2022-04-21', '', 'Sungai Metro', '', '112°35\'23.5\"', '07°57\'43.5\"', '', '', '', '', '', 'Desa Kalisongo, Kec. Dau, Kab. Malang', 22, '', '', 'Sempadan Malang', '31/05/2022', '003/SP/CPTM/V/2022', 0, 0, 0, 0),
('PT. Jayaland ', 16, '', 88, '2022-04-21', '2022-04-21', '', 'Saluran Sekunder Gambiranom', '', '112°70\'93.57\"', '07°39\'80.98\"', '', '01.000.316.8-643.001', '', '', '', 'Desa Kebonanom, Kec. Gedangan, Kab. Sidoarjo', 20, '', '', 'Jembatan Sementara', '31/05/2022', '12/JL/PCR/V/2022', 0, 0, 0, 0),
('Jimmy', 16, '', 89, '2022-04-21', '2022-04-21', 'antiyobudi@gmail.com', 'Saluran Irigasi Kedungkandang', '', '112°37\'3.5\"', '08°10\'42.4\"', '', '06.987.051.7-654.000', '', '', '', 'Desa Gondanglegi Kulon, Kec. Gondanglegi, Kab. Malang', 20, '', '', 'Jembatan', '02/06/2022', '', 0, 0, 0, 0),
('PDAM Kab. Nganjuk', 16, '', 90, '2022-04-21', '2022-04-21', 'pdam_nganjuk@yahoo.com', 'Kali Kuncir', '', '112°45\'57.81\"', '07°46\'47.50\"', '', '01.480.341.5-655.000', '479/KPTS/M/2017', '18 Liter/Detik', '', 'Desa Ngeliman, Kec. Sawahan, Kab. Nganjuk', 21, '', '', 'Perpanjangan', '9 Juni 2022', '690/174/411.602/2022', 0, 0, 0, 0),
('PT. Ecco Indonesia', 16, '', 91, '2022-04-21', '2022-04-21', '', 'Afvour Kedung Uling', '', '112°71\'15.07\"', '07°47\'51.37\"', '', '', '', '', '', 'Desa Bligo, Kec. Candi, Kab. Sidoarjo', 20, '', '', 'Pipa Pembuangan', '10 Juni 2022', '', 0, 0, 0, 0),
('Triandy Gunawan', 16, '', 92, '2022-04-21', '2022-04-21', '', 'Sungai Surabaya', '', '', '', '', '', '', '', '', 'Desa Sawunggaling, Kec. Wonokromo, Kota Surabaya', 22, '', '', 'Sempadan', '14 Juni 2022', '', 0, 0, 0, 0),
('Rumadiono', 16, '', 93, '2022-04-21', '2022-04-21', '', 'Sungai Konto', '', '112°24\'43\"', '07°52\'11\"', '', '43.858.959.0-628.000', '', '', '', 'Desa Bendosari, Kec. Pujon, Kab. Malang', 20, '', '', 'Jembatan', '14 Juni 2022', '043/020/V/2022', 0, 0, 0, 0),
('PT. Sapta Persada', 15, '', 94, '2022-04-21', '2022-04-21', '', 'Sungai Konto', '', '112°25\'46.62\"', '07°51\'34.51\"', '', '', '', '', '', 'Desa Bendosari, Kec. Pujon, Kab. Malang', 20, '', '', 'PLT', '15 Juni 2022', '', 0, 0, 0, 0),
('PT. Balinan Energi', 15, '', 95, '2022-04-21', '2022-04-21', 'ksenergi@yahoo.co.id', 'Sungai Konto', '', '112°24\'21.81\"', '07°52\'24.48\"', '', '03.350.352.5-014.000', '', '', '', 'Desa Purworejo, Kec. Ngantang, Kab. Malang', 20, '', '', 'PLTM', '15 Juni 2022', '005/BE/VI/2022', 0, 0, 0, 0),
('PT. Semeru Cemerlang', 16, '', 96, '2022-04-21', '2022-04-21', '', 'Afvour Kalanganyar', '', '112°47\'59.21\"', '07°23\'55.85\"', '', '01.490.552.5-643.000', '', '', '', 'Desa Cemandi, Kec. Sedati, Kab. Sidoarjo', 20, '', '', 'Jembatan', '15 Juni 2022', '25/SC/VI/2022', 0, 0, 0, 0),
('PT. Billboardindo Nusantara', 16, '', 97, '2022-04-21', '2022-04-21', 'billboardindoadvertising@gmail.com', 'Sungai Kali Kedurus', '', '112°42\'08.5\"', '07°18\'49.5\"', '', '01.874.394.6-611.000', '', '', '', 'Desa Jajar Tunggal, Kec. Wiyung, Kota Surabaya', 20, '', '', 'Reklame', '28 Juni 2022', '', 0, 0, 0, 0),
('PT. Billboardindo Nusantara', 16, '', 98, '2022-04-21', '2022-04-21', 'billboardindoadvertising@gmail.com', 'Sungai kali Wonokromo', '', '112°46\'50.7\"', '07°18\'40.2\"', '', '01.874.394.6-611.000', '', '', '', 'Desa Kedung Baruk, Kec. Sukolilo, Kota Surabaya', 20, '', '', 'Reklame', '28 Juni 2022', '', 0, 0, 0, 0),
('PT. Billboardindo Nusantara', 16, '', 99, '2022-04-21', '2022-04-21', 'billboardindoadvertising@gmail.com', 'Kali Mas', '', '112°45\'01.1\"', '07°15\'57.8\"', '', '01.874.394.6-611.000', '', '', '', 'Desa Embong Kaliasin, Kec. Genteng, Kota Surabaya', 20, '', '', 'Reklame', '28 Juni 2022', '', 0, 0, 0, 0),
('PT. Baja Titian Utama', 16, '', 100, '2022-04-21', '2022-04-21', 'kontak@ptbtu.com', 'Bandar Ngalim', '', '112°0\'31.95\"', '07°49\'39.12\"', '', '53.314.511.6-017.000', '', '', '', 'Desa Kediri, Kec. Kediri, Kab. Kediri', 20, '', '', 'Jembatan', '28 Juni 2022', '', 0, 0, 0, 0),
('PT. Baja Titian Utama', 16, '', 101, '2022-04-21', '2022-04-21', 'kontak@ptbtu.com', 'Ngujang', '', '111°55\'29.31\"', '08°1\'3.74\"', '', '53.314.511.6-017.000', '', '', '', 'Desa Kedung Waru, Kec. Kedung Waru, Kab. Tulungagung', 20, '', '', 'Jembatan', '28 Juni 2022', '', 0, 0, 0, 0),
('PT. Baja Titian Utama', 16, '', 102, '2022-04-21', '2022-04-21', 'kontak@ptbtu.com', 'Munjungan', '', '111°44\'41.76\"', '08°5\'42.28\"', '', '53.314.511.6-017.000', '', '', '', 'Desa Pogalan, Kec. Pogalan, Kab. Trenggalek', 20, '', '', 'Jembatan', '28 Juni 2022', '', 0, 0, 0, 0),
('PT. Baja Titian Utama', 16, '', 103, '2022-04-21', '2022-04-21', 'kontak@ptbtu.com', 'Trisula ', '', '112°8\'42.70\"', '08°8\'25.70\"', '', '53.314.511.6-017.000', '', '', '', 'Desa Kademangan, Kec. Kademangan, Kab. Blitar', 20, '', '', 'Jembatan', '28 Juni 2022', '', 0, 0, 0, 0),
('Sri Setyowati', 16, '', 104, '2022-04-21', '2022-04-21', '', 'Kali Greges', '', '112°72\'35.12\"', '07°25\'92.84\"', '', '', '', '', '', 'Kelurahan Petemon, Kec. Sawahan, Kota Surabaya', 22, '', '', 'Sempadan', '29 Juni 2022', '', 0, 0, 0, 0),
('PT. Daesang Ingredients', 16, '', 105, '2022-04-21', '2022-04-21', '', 'Sungai Surabaya', '', '112°36\'30.23\"', '07°22\'9.74\"', '', '01.001.720.0-642.001', '901/KPTS/M/2017', '160', '', 'Desa Driyorejo, Kec. Driyorejo, Kab. Gresik', 21, '', '', 'Perpanjangan', '30 Juni 2022', '40/D03/DII/VI/2022', 0, 0, 0, 0),
('PT. Panda Indonesia', 14, '', 106, '2022-04-21', '2022-04-21', '', 'Sungai Brantas', '', '111°55\'31.71\"', '07°57\'53.03\"', '', '72.889.885.9-629.000', '', '', '', 'Desa Jeli, Kec. Karangrejo, Kab. Tulungagung', 20, '', '', 'Kontruksi', '30 Juni 2022', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(20) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `deskripsi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `nama`, `hari`, `deskripsi`) VALUES
(14, 'Cek Substansi', '2', ''),
(15, 'Ekspose', '2', ''),
(16, 'Tinjau Lapangan', '3', ''),
(17, 'Surat Terbit', '23', ''),
(19, 'Pengembalian Berkas', '14', ''),
(20, 'Non Aktif', '45', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `user` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `user`, `jabatan`, `password`) VALUES
(1, 'naif', '', 'dffc7d2247f02c518a186b49f97414a1'),
(3, 'admin', '', '82bb7aed3a5024997f9d229c7de94da7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_hidrologi`
--

CREATE TABLE `user_hidrologi` (
  `id` int NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pos` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permohonan`
--
ALTER TABLE `permohonan`
  ADD UNIQUE KEY `noid` (`noid`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_hidrologi`
--
ALTER TABLE `user_hidrologi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `permohonan`
--
ALTER TABLE `permohonan`
  MODIFY `noid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_hidrologi`
--
ALTER TABLE `user_hidrologi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
