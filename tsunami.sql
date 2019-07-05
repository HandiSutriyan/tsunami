-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2019 at 02:17 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsunami`
--

-- --------------------------------------------------------

--
-- Table structure for table `log_input`
--

CREATE TABLE `log_input` (
  `id` int(11) NOT NULL,
  `lintang` varchar(5) NOT NULL,
  `bujur` varchar(5) NOT NULL,
  `titik` int(2) NOT NULL,
  `magnitudo` varchar(5) NOT NULL,
  `kedalaman` int(3) NOT NULL,
  `origin_time` varchar(10) NOT NULL,
  `asset_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_input`
--

INSERT INTO `log_input` (`id`, `lintang`, `bujur`, `titik`, `magnitudo`, `kedalaman`, `origin_time`, `asset_id`) VALUES
(1, '0', '99', 3, '9.0', 10, '20:17:37', 48);

-- --------------------------------------------------------

--
-- Table structure for table `titik`
--

CREATE TABLE `titik` (
  `id` int(10) NOT NULL,
  `titik` int(2) DEFAULT NULL,
  `lintang` varchar(4) DEFAULT NULL,
  `bujur` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `titik`
--

INSERT INTO `titik` (`id`, `titik`, `lintang`, `bujur`) VALUES
(1, 1, '0', '99,5'),
(2, 2, '-0,5', '100'),
(3, 3, '0', '99'),
(4, 4, '-0,5', '99,5'),
(5, 5, '-1', '100'),
(6, 6, '-1,5', '100,5'),
(7, 7, '-0,5', '99'),
(8, 8, '-1', '99,5'),
(9, 9, '-1,5', '100'),
(10, 10, '-2', '100,5'),
(11, 11, '-2,5', '101'),
(12, 12, '-0,5', '98'),
(13, 13, '-1', '99'),
(14, 14, '-1,5', '99,5'),
(15, 15, '-2', '100'),
(16, 16, '-2,5', '100,5'),
(17, 17, '-3', '101'),
(18, 18, '-3,5', '101,5'),
(19, 19, '0,5', '98'),
(20, 20, '-1', '98,5'),
(21, 21, '-2', '99,5'),
(22, 22, '-2,5', '100'),
(23, 23, '-3', '100,5'),
(24, 24, '-3,5', '101'),
(25, 25, '-0,5', '97,5'),
(26, 26, '-1', '98'),
(27, 27, '-1,5', '98,5'),
(28, 28, '-2', '99'),
(29, 29, '-2,5', '99,5'),
(30, 30, '-3', '100'),
(31, 31, '-3,5', '100,5'),
(32, 32, '-1', '97,5'),
(33, 33, '-1,5', '98'),
(34, 34, '-2', '98,5'),
(35, 35, '-2,5', '99'),
(36, 36, '-3', '99,5'),
(37, 37, '-3,5', '100'),
(38, 38, '-2,5', '98,5'),
(39, 39, '-3', '99'),
(40, 40, '-3,5', '99,5'),
(41, 41, '0', '98,5'),
(42, 42, '0', '98'),
(43, 43, '0', '97,5'),
(44, 44, '0', '97');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_input`
--
ALTER TABLE `log_input`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titik`
--
ALTER TABLE `titik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_input`
--
ALTER TABLE `log_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `titik`
--
ALTER TABLE `titik`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
