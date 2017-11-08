-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2017 at 11:41 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pan_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `pan_data`
--

CREATE TABLE `pan_data` (
  `id` int(11) NOT NULL COMMENT 'Primary Key for the table',
  `pan_number` varchar(10) NOT NULL COMMENT 'PAN Card Number',
  `pan_name` varchar(30) NOT NULL COMMENT 'Name on PAN card',
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT 'Status for Avtive/InActive data. With Enumerated 0 or 1: Default Active(1)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pan_data`
--

INSERT INTO `pan_data` (`id`, `pan_number`, `pan_name`, `status`) VALUES
(1, 'CSHPS2996E', 'Manish Kumar Srivastava', '1'),
(2, 'FGTGH9897E', 'John Doe', '1'),
(3, 'HJYHS8786T', 'Ram Kumar', '1'),
(4, 'GHTGH6765F', 'Dipak Prasad', '1'),
(5, 'HJHBN6764H', 'Sam Roy', '1'),
(6, 'LKJVF6567F', 'Vijay Singh', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pan_data`
--
ALTER TABLE `pan_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pan_data`
--
ALTER TABLE `pan_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key for the table', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
