-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2016 at 02:34 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aled_aircraft`
--
DROP DATABASE `aled_aircraft`;
CREATE DATABASE IF NOT EXISTS `aled_aircraft` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aled_aircraft`;

-- --------------------------------------------------------

--
-- Table structure for table `msairbase`
--
-- Creation: May 20, 2016 at 01:17 PM
--

DROP TABLE IF EXISTS `msairbase`;
CREATE TABLE IF NOT EXISTS `msairbase` (
  `RowId` text NOT NULL,
  `AirBaseId` varchar(50) NOT NULL,
  `BaseName` varchar(255) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  PRIMARY KEY (`AirBaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `msairbase`:
--

--
-- Dumping data for table `msairbase`
--

INSERT INTO `msairbase` (`RowId`, `AirBaseId`, `BaseName`, `Latitude`, `Longitude`) VALUES
('687e528b-09ae-431a-907d-2c2a94ef951d', 'BDJ', 'Syamsudin Noor Airport', '-3.4380022', '114.7519213'),
('afefab68-8bc1-4599-8e99-99f2f13068a1', 'BTH', 'Hang Nadim Airport', '1.1219253', '104.1161085'),
('9bbfa2b4-55b9-46eb-9f79-2334cbae278e', 'BTJ', 'Sultan Iskandar Muda International Airport', '5.517899', '95.4150374'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a93', 'CGK', 'Soekarno Hatta AirPort', '-6.1274979', '106.5913319'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a94', 'DPS', 'Ngurah Rai AirPort', '-8.7467119', '115.1645983'),
('eebd536c-e42e-4e73-8bde-8dc9027cedc4', 'JOG', 'Adisucipto International Airport', '-7.7876785', '110.4295726'),
('45ee8f25-1741-458f-9dc5-1dee0ae3e899', 'KNO', 'Kualanamu International Airport', '3.6401534', '98.875983'),
('f8e383f2-3061-4cdd-be2d-7cc1e6db2fd5', 'MDC', 'Sam Ratulangi International Airport', '1.5435158', '124.9204731'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a93', 'PDG', 'Minangkabau AirPort', '-0.8709233', '100.3033497'),
('bec95964-430f-4330-b16e-7cb6a672fb09', 'PKU', 'Sultan Syarif Kasim II International Airport', '0.4640191', '101.446333'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a96', 'PKY', 'Tjilik Riwut AirPort', '-2.2266616', '113.9419783'),
('b4cb9679-73c8-4c36-bb3c-9d5fa7ea180d', 'PLM', 'Sultan Mahmud Badaruddin II International Airport', '-2.8978506', '104.6992043'),
('ad0b3f4e-15ac-4e59-bfa4-ba76196133e8', 'SRG', 'Achmad Yani International Airport', '-6.9788786', '110.37617'),
('3bf0b1fa-edb5-4df3-baee-5ee8c98c98b5', 'SUB', 'Juanda International Airport', '-7.3788851', '112.7851004'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a97', 'UPG', 'Sultan Hasanuddin AirPort', '-5.0777417', '119.5472957');

-- --------------------------------------------------------

--
-- Table structure for table `msmaintenance`
--
-- Creation: May 20, 2016 at 01:26 PM
--

DROP TABLE IF EXISTS `msmaintenance`;
CREATE TABLE IF NOT EXISTS `msmaintenance` (
  `RowId` varchar(255) NOT NULL,
  `MaintenanceCode` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`MaintenanceCode`),
  UNIQUE KEY `RowIdMaint` (`RowId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `msmaintenance`:
--

--
-- Dumping data for table `msmaintenance`
--

INSERT INTO `msmaintenance` (`RowId`, `MaintenanceCode`, `Description`) VALUES
('6135984b-9186-4ccf-bd59-d0ec62bc053a', 'ADD', 'Apa aja deh'),
('6135984b-9186-4ccf-b559-d0ec62bc053a', 'DMI', 'DMI');

-- --------------------------------------------------------

--
-- Table structure for table `msregplane`
--
-- Creation: May 20, 2016 at 01:18 PM
--

DROP TABLE IF EXISTS `msregplane`;
CREATE TABLE IF NOT EXISTS `msregplane` (
  `RowId` varchar(255) NOT NULL,
  `RegCode` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`RowId`),
  UNIQUE KEY `RegCode` (`RegCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `msregplane`:
--

--
-- Dumping data for table `msregplane`
--

INSERT INTO `msregplane` (`RowId`, `RegCode`, `Description`) VALUES
('54779064-31a0-4260-af58-d5b665ab18f2', 'PKY3', 'PKY-000003'),
('5f821c69-18a9-4c85-b7d5-f52829ab0ce4', 'PKY1', 'PKY-000001'),
('92dc4d8a-dd8c-4c8e-a9dc-75e0bb5a50d0', 'PKY4', 'PKY-000004'),
('9e6c71ce-fb60-4df4-9cfb-ca26d8fd65f0', 'PKY2', 'PKY-000002'),
('b4c44894-343d-4a78-b513-957998ab89b5', 'PKY5', 'PKY-000005'),
('f48cad8c-2776-4277-a13c-1a70d3bd0d58', 'PKY6', 'PKY-000006');

-- --------------------------------------------------------

--
-- Table structure for table `msstatus`
--
-- Creation: May 20, 2016 at 01:18 PM
--

DROP TABLE IF EXISTS `msstatus`;
CREATE TABLE IF NOT EXISTS `msstatus` (
  `RowId` varchar(255) NOT NULL,
  `StatusCode` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`RowId`),
  UNIQUE KEY `StatusCode` (`StatusCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `msstatus`:
--

--
-- Dumping data for table `msstatus`
--

INSERT INTO `msstatus` (`RowId`, `StatusCode`, `Description`) VALUES
('199e3f18-8cf4-4281-82e1-64f655bedc77', 'G', 'Good'),
('199e3f18-8cf4-4281-82e1-64f655bedc78', 'Y', 'Middle Risk'),
('6135983b-9186-4ccf-b559-d0ec62bc053a', 'H', 'High Risk');

-- --------------------------------------------------------

--
-- Table structure for table `txaircraft`
--
-- Creation: May 20, 2016 at 01:23 PM
--

DROP TABLE IF EXISTS `txaircraft`;
CREATE TABLE IF NOT EXISTS `txaircraft` (
  `RowId` varchar(255) NOT NULL,
  `Enginner` varchar(50) NOT NULL,
  `Plane` varchar(20) NOT NULL,
  `RegCode` varchar(20) NOT NULL,
  `StatusCode` varchar(20) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `AirBaseId` varchar(50) NOT NULL,
  `Remark` text NOT NULL,
  `TimeSinceNew` varchar(255) NOT NULL,
  `CycleSinceNew` varchar(255) NOT NULL,
  `SerialNumber` varchar(255) NOT NULL,
  `ModifiedAt` datetime NOT NULL,
  PRIMARY KEY (`RegCode`),
  UNIQUE KEY `RegCode` (`RegCode`),
  UNIQUE KEY `RowId` (`RowId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `txaircraft`:
--

--
-- Dumping data for table `txaircraft`
--

INSERT INTO `txaircraft` (`RowId`, `Enginner`, `Plane`, `RegCode`, `StatusCode`, `Latitude`, `Longitude`, `AirBaseId`, `Remark`, `TimeSinceNew`, `CycleSinceNew`, `SerialNumber`, `ModifiedAt`) VALUES
('6135984b-9186-4ccf-b559-d0ec62bc053a', 'fery', 'BOING 737 N6', 'PKY1', 'H', '-6.112876', '106.655960', 'CGK', '', '0001-01-01 00:00:00', '0001-01-01 00:00:00', 'gdgdd', '2016-06-11 07:31:52'),
('d77fba80-afaf-4af2-bbc0-5defa5f9fdb9', 'CGK', 'BOING 737 N6', 'PKY2', 'Y', '-6.154793', '106.7029031', 'CGK', 'Air flap zero response, please control exactly on PPCAir flap zero response, please control exactly on PPCAir flap zero response, please control exactly on PPCAir flap zero response, please control exactly on PPCAir flap zero response, please control exactly on PPCAir flap zero response, please control exactly on PPC', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sfdfd', '2016-03-20 07:59:15'),
('434590a9-37db-4e29-be3e-49555fd6b904', 'Capt. Rafiq Elino', 'BOING 737 N6', 'PKY3', 'G', '1.6784677', '101.4549085', 'PKU', 'Air flap zero response, please control exactly on PPC', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2016-03-23 05:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `txmaintenance`
--
-- Creation: May 20, 2016 at 01:21 PM
--

DROP TABLE IF EXISTS `txmaintenance`;
CREATE TABLE IF NOT EXISTS `txmaintenance` (
  `RowId` varchar(255) NOT NULL,
  `AirCraftId` varchar(255) NOT NULL,
  `MaintenanceCode` varchar(20) NOT NULL,
  `Component` text NOT NULL,
  `DueDate` datetime NOT NULL,
  UNIQUE KEY `RowId` (`RowId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `txmaintenance`:
--

--
-- Dumping data for table `txmaintenance`
--

INSERT INTO `txmaintenance` (`RowId`, `AirCraftId`, `MaintenanceCode`, `Component`, `DueDate`) VALUES
('5cf4c032-0e10-44dc-8a30-2728660b8c14', '6135984b-9186-4ccf-b559-d0ec62bc053a', 'DMI', 'AAA  ', '0000-00-00 00:00:00'),
('bd1fcf5e-8eb0-45c2-854c-6743676f32a1', '6135984b-9186-4ccf-b559-d0ec62bc053a', 'DMI', 'ssdsdsds ', '2016-06-14 00:00:00'),
('d962121b-6988-42cd-b1f2-78c115da181b', '6135984b-9186-4ccf-b559-d0ec62bc053a', 'DMI', 'ALEDDD ', '2016-06-14 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
