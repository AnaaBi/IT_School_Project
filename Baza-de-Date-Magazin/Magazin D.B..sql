-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for magazin
CREATE DATABASE IF NOT EXISTS `magazin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `magazin`;

-- Dumping structure for table magazin.clienti
CREATE TABLE IF NOT EXISTS `clienti` (
  `ID` int NOT NULL,
  `Nume` varchar(255) NOT NULL,
  `Prenume` varchar(255) DEFAULT NULL,
  `Oras` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table magazin.clienti: ~10 rows (approximately)
INSERT INTO `clienti` (`ID`, `Nume`, `Prenume`, `Oras`) VALUES
	(1, 'Popescu', 'Ion', 'Bucuresti'),
	(2, 'Popa', 'Dumitru', 'Arad'),
	(3, 'Ionescu', 'Ilie', 'Cluj'),
	(4, 'Stoica', 'Mihai', 'Iasi'),
	(5, 'Moise', 'Iulia', 'Brasov'),
	(6, 'Stanciu', 'Gheorghe', 'Oradea'),
	(7, 'Ionescu', 'Adrian', 'Timisoara'),
	(8, 'Mihaiescu', 'Domnica', 'Craiova'),
	(9, 'Belehuz', 'Ana', 'Suceava'),
	(10, 'Suciu', 'Mihaela', 'Bucuresti'),
	(11, 'Ion', 'Ghita', 'Cluj');

-- Dumping structure for table magazin.stoc
CREATE TABLE IF NOT EXISTS `stoc` (
  `IDprodus` int DEFAULT NULL,
  `listaproduse` varchar(100) DEFAULT NULL,
  `inventar` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table magazin.stoc: ~10 rows (approximately)
INSERT INTO `stoc` (`IDprodus`, `listaproduse`, `inventar`) VALUES
	(1, 'Pantaloni', 50),
	(2, 'Sosete', 40),
	(3, 'Bluza', 95),
	(4, 'Geaca', 26),
	(5, 'Caciula', 12),
	(6, 'Fusta', 32),
	(7, 'Tricou', 120),
	(8, 'Pantaloni scurti', 15),
	(9, 'Pijama', 12),
	(10, 'Camasa', 8);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
