-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 09:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallerygavel`
--

-- --------------------------------------------------------

--
-- Table structure for table `artwork`
--

CREATE TABLE `artwork` (
  `artworkID` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `artist` varchar(60) NOT NULL,
  `description` varchar(500) NOT NULL,
  `dimentions` varchar(50) NOT NULL,
  `medium` varchar(50) NOT NULL,
  `startingPrice` int(50) NOT NULL,
  `images` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artwork`
--

INSERT INTO `artwork` (`artworkID`, `title`, `artist`, `description`, `dimentions`, `medium`, `startingPrice`, `images`) VALUES
(59, 'testing', 'bdjsldbisjkiashjd', 'bdjisgdhsllvdsvdhb', '456*643', 'djsbjd', 1500, '663225b682586-logo.png'),
(60, 'testing3', 'mama', ' jfbkfbshj', '100*789', 'dsjhdhjs', 650, '66322a2556d80-9320888_Mesa de trabajo 1.png'),
(61, 'testing4', 'mama2', 'disldjsjddbsdbsd sd', '100*1000', 'aisjjap', 1400, '66322a7b2315b-SLIIT.png');

-- --------------------------------------------------------

--
-- Table structure for table `bidd`
--

CREATE TABLE `bidd` (
  `bidid` int(10) NOT NULL,
  `bidamount` int(8) NOT NULL,
  `auctionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidd`
--

INSERT INTO `bidd` (`bidid`, `bidamount`, `auctionid`) VALUES
(323, 1500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(10) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Rpassword` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `Fname`, `Lname`, `Email`, `Phone_no`, `DOB`, `Username`, `Gender`, `Password`, `Rpassword`, `role`) VALUES
(6, 'Sakith', 'Chanlaka', 'sakithchanlaka2004@gmail.com', '0769092755', '2024-05-08', 'sakith2004', 'male', '1234', '1234', 'buyer'),
(7, 'Sakith2', 'Chanlaka2', 'sakithchanlaka2004@gmail.com', '0769092755', '2024-05-08', 'sakith2004', 'male', '1234', '1234', 'seller'),
(9, 'sakith2', 'chan2', 'sakithchanlaka2004@gmail.com', '286354', '2024-05-16', 'seller1', 'male', '1234', '1234', 'seller'),
(10, 'sakith', 'Chan', 'sakithchanlaka2004@gmail.com', '0826253526', '2024-05-21', 'sakith12345', 'male', '1234', '1234', 'seller'),
(16, 'suyds', 'uwwjd', 'iudsd@guyuyh', '9475', '2024-05-07', 'seller1', 'male', '12345', '12345', 'seller'),
(17, 'suyds', 'uwwjd', 'iudsd@guyuyh', '9475', '2024-05-07', 'seller123', 'male', '12345', '12345', 'seller');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artwork`
--
ALTER TABLE `artwork`
  ADD PRIMARY KEY (`artworkID`);

--
-- Indexes for table `bidd`
--
ALTER TABLE `bidd`
  ADD PRIMARY KEY (`bidid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artwork`
--
ALTER TABLE `artwork`
  MODIFY `artworkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `bidd`
--
ALTER TABLE `bidd`
  MODIFY `bidid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
