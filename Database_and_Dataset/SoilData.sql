-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 16, 2023 at 05:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SoilData`
--

-- --------------------------------------------------------

--
-- Table structure for table `dht11`
--

CREATE TABLE `dht11` (
  `Id` int(11) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `temperature` varchar(255) NOT NULL,
  `humidity` varchar(255) NOT NULL,
  `moisture` varchar(255) NOT NULL,
  `Nitrogen` varchar(100) NOT NULL,
  `Phosphorous` varchar(100) NOT NULL,
  `Potassium` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dht11`
--

INSERT INTO `dht11` (`Id`, `DateTime`, `temperature`, `humidity`, `moisture`, `Nitrogen`, `Phosphorous`, `Potassium`) VALUES
(1, '2023-10-25 10:28:43', '24', '80', '1024', '85', '39', '38'),
(2, '2023-10-25 10:28:49', '26', '81', '1024', '89', '44', '42'),
(3, '2023-10-25 10:28:54', '24', '82', '1024', '90', '37', '39'),
(4, '2023-10-25 10:29:00', '26', '82', '1024', '91', '41', '37'),
(5, '2023-10-25 10:29:06', '26', '80', '1024', '88', '37', '36'),
(6, '2023-10-25 10:29:11', '24', '80', '1024', '95', '43', '40'),
(7, '2023-12-11 12:40:44', '24', '81', '', '87', '38', '35'),
(8, '2023-12-11 12:42:32', '25', '81', '1024', '86', '38', '35'),
(9, '2023-12-11 12:42:37', '25', '80', '1024', '85', '38', '36'),
(10, '2023-12-11 12:42:42', '24', '81', '1024', '85', '37', '35'),
(11, '2023-12-11 12:42:47', '24', '81', '1024', '85', '37', '37'),
(12, '2023-12-11 12:42:52', '25', '81', '1024', '85', '38', '38'),
(13, '2023-12-11 12:43:03', '24', '81', '1024', '87', '38', '35'),
(14, '2023-12-11 12:43:08', '25', '80', '1024', '86', '38', '36'),
(15, '2023-12-16 11:43:20', '25', '80', '996', '87', '38', '36'),
(16, '2023-12-16 11:43:26', '25', '81', '993', '87', '38', '37'),
(17, '2023-12-16 11:43:31', '25', '80', '994', '87', '37', '36'),
(18, '2023-12-16 11:43:37', '24', '80', '991', '87', '38', '36'),
(19, '2023-12-16 11:43:42', '24', '80', '991', '86', '38', '38'),
(20, '2023-12-16 11:43:47', '24', '80', '989', '85', '37', '36'),
(21, '2023-12-16 11:43:53', '24', '80', '988', '87', '38', '36'),
(22, '2023-12-16 11:43:58', '25', '80', '988', '85', '38', '38'),
(23, '2023-12-16 11:44:03', '24', '81', '989', '86', '38', '35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dht11`
--
ALTER TABLE `dht11`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dht11`
--
ALTER TABLE `dht11`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
