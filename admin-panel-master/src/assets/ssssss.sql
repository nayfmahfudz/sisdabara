-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table bencana.foto: ~0 rows (approximately)
DELETE FROM `foto`;

-- Dumping data for table bencana.masyarakat: ~0 rows (approximately)
DELETE FROM `masyarakat`;

-- Dumping data for table bencana.survey: ~1 rows (approximately)
DELETE FROM `survey`;
INSERT INTO `survey` (`no`, `wilayah_sungai`, `latitude`, `longtitude`, `nama_Petugas`, `jenis_kejadian`, `nama_sungai`, `daerah_aliran_sungai`, `kewenangan`, `desa`, `kecamatan`, `kota`, `provinsi`, `penyebab`, `kronologis`, `dampak_permukiman`, `dampak_sarana`, `foto`, `dampak_korban`, `tinggi_genangan`, `lama_genangan`, `tanggal`) VALUES
	(1, 'dsadad', '-7.31316', '112.6889918', 'adad', 'adadasd', 'adadsad', 'adasad', 'adasdsa', '7.5360639', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000-01-01');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
