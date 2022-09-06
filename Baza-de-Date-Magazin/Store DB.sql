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


-- Dumping database structure for store
CREATE DATABASE IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `store`;

-- Dumping structure for table store.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table store.customer: ~3 rows (approximately)
INSERT INTO `customer` (`CustomerID`, `CustomerName`, `Address`) VALUES
	(24221, 'Bob', '123 East Street'),
	(24222, 'Alice', '223 Main Street'),
	(24223, 'Martha', '465 North Street'),
	(24224, 'Marie', '856 8th Street'),
	(24225, 'John', '122 Oxford Street'),
	(24226, 'Jake', '58 Ln. Drive'),
	(24227, 'Peter', '05 West Blv.'),
	(24228, 'David', 'Bloom 7566'),
	(24229, 'Amanda', '46 Spring Street'),
	(24230, 'Silvia', '522 7th Street');

-- Dumping structure for table store.product
CREATE TABLE IF NOT EXISTS `product` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Price` double(10,2) NOT NULL,
  `StockNumber` int NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table store.product: ~3 rows (approximately)
INSERT INTO `product` (`ProductID`, `ProductName`, `Price`, `StockNumber`) VALUES
	(9, 'Avocado', 1.50, 300),
	(8977, 'Banana', 0.79, 100),
	(8978, 'TV', 400.00, 20),
	(8979, 'Watch', 50.00, 10),
	(8980, 'Milk', 2.99, 230),
	(8981, 'Cottage Cheese', 4.59, 150),
	(8982, 'T-Shirt', 8.99, 85),
	(8983, 'Cookies', 5.25, 20),
	(8984, 'Potatoes', 1.25, 550),
	(8985, 'Pillowcase', 1.79, 40);

-- Dumping structure for table store.purchase
CREATE TABLE IF NOT EXISTS `purchase` (
  `TransactionID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `ProductID` int NOT NULL,
  `PurchaseDate` varchar(20) NOT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table store.purchase: ~3 rows (approximately)
INSERT INTO `purchase` (`TransactionID`, `CustomerID`, `ProductID`, `PurchaseDate`) VALUES
	(1112, 24221, 8977, '03-22-2010'),
	(1113, 24222, 8978, '03-22-2010'),
	(1114, 24223, 8979, '03-22-2012'),
	(1115, 24224, 8983, '06-09-2022'),
	(1116, 24225, 8984, '03-05-2021'),
	(1117, 24226, 8978, '08-25-2022'),
	(1118, 24227, 8979, '04-15-2022'),
	(1119, 24228, 8985, '02-28-2021'),
	(1120, 24229, 8980, '09-05-2022');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;