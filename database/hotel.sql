-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 05:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingdetails`
--

CREATE TABLE `bookingdetails` (
  `bookid` int(11) NOT NULL,
  `checkindate` varchar(50) DEFAULT NULL,
  `checkoutdate` varchar(50) DEFAULT NULL,
  `roomtype` varchar(50) DEFAULT NULL,
  `halltype` varchar(50) DEFAULT NULL,
  `nogroom` varchar(50) DEFAULT NULL,
  `noghall` varchar(50) DEFAULT NULL,
  `cmail` varchar(50) DEFAULT NULL,
  `cphono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `c_details`
--

CREATE TABLE `c_details` (
  `cid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `dobd` varchar(50) DEFAULT NULL,
  `dobm` varchar(50) DEFAULT NULL,
  `doby` varchar(50) DEFAULT NULL,
  `cusername` varchar(50) DEFAULT NULL,
  `cmail` varchar(50) DEFAULT NULL,
  `cphono` varchar(50) DEFAULT NULL,
  `cpass` varchar(50) DEFAULT NULL,
  `confpass` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `c_details`
--

INSERT INTO `c_details` (`cid`, `title`, `fullname`, `dobd`, `dobm`, `doby`, `cusername`, `cmail`, `cphono`, `cpass`, `confpass`, `gender`) VALUES
(1, 'Ms', 'cheroshena', '16', '10', '1955', NULL, 'chera@gmail.com', '0774546786', NULL, '123', 'on'),
(2, 'Ms', 'cheroshena', '01', '02', '1941', NULL, 'chera123@gmail.com', '0778956456', NULL, '12345', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingdetails`
--
ALTER TABLE `bookingdetails`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `c_details`
--
ALTER TABLE `c_details`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingdetails`
--
ALTER TABLE `bookingdetails`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_details`
--
ALTER TABLE `c_details`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
