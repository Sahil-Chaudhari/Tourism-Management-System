-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 08:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `srNo` int(11) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`srNo`, `useremail`, `fullname`, `email`, `message`) VALUES
(1, 'sahil@gmail.com', 'Sahil', 'sahil@gmail.com', 'Great Website'),
(5, 'aditi1@gmail.com', 'Aditi', 'aditi1@gmail.com', 'OP Website');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(19, 5, 'amandesh2002@gmail.com', '2021-11-28', '2021-11-30', 'Great Place', '2021-11-27 05:39:48', 1, NULL, '2021-11-27 05:45:16'),
(20, 6, 'amandesh2002@gmail.com', '2021-11-27', '2021-11-30', 'Nice Place', '2021-11-27 05:54:17', 0, NULL, NULL),
(21, 6, 'amandesh2002@gmail.com', '2021-11-27', '2021-11-30', 'Nice Place', '2021-11-27 05:58:40', 0, NULL, NULL),
(22, 2, 'amandesh2002@gmail.com', '2021-11-28', '2021-11-30', 'Best Place', '2021-11-27 05:59:07', 0, NULL, NULL),
(23, 4, 'amandesh2002@gmail.com', '2021-12-03', '2021-12-15', 'Great Place ', '2021-12-02 09:36:19', 0, NULL, NULL),
(24, 6, 'amandesh2002@gmail.com', '2021-12-08', '2021-12-10', 'OP Place', '2021-12-08 16:05:04', 0, NULL, NULL),
(25, 1, 'sahil2@gmail.com', '2021-12-12', '2021-12-14', 'Lets GO', '2021-12-09 13:56:26', 0, NULL, NULL),
(26, 4, 'purvaja@gmail.com', '2021-12-10', '2021-12-12', 'Best Place', '2021-12-09 15:42:00', 0, NULL, NULL),
(27, 5, 'purvaja@gmail.com', '2021-12-10', '2021-12-12', 'Best Place In the World', '2021-12-09 15:44:35', 0, NULL, NULL),
(28, 4, 'sahil@gmail.com', '2021-12-12', '2021-12-13', 'Great Place', '2021-12-09 15:53:01', 0, NULL, NULL),
(29, 4, 'aditi@gmail.com', '2021-12-10', '2021-12-13', 'Great Place Excited', '2021-12-10 02:10:31', 0, NULL, NULL),
(30, 6, 'amandesh2002@gmail.com', '2021-12-11', '2021-12-13', 'Great Place', '2021-12-10 05:43:39', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Kondulam Beach', 'Summer Holidays', 'Goa, India', 18000, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'goa.jpg', '2017-05-13 14:23:44', '2021-12-02 05:30:45'),
(2, 'Nainital', 'Natural Beauty', 'Nainital, Uttarakhand, India', 15433, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'At lorem Ipsum available, but the majority have suffered alteration in some form by injected humour. At lorem Ipsum available, but the majority have suffered alteration in some form by injected humour.At lorem Ipsum available, but the majority have suffered alteration in some form by injected humour.', 'nainital.jpg', '2017-05-13 15:24:26', '2021-12-02 05:32:27'),
(3, 'Raigad Fort', 'Historical Places', 'Raigad, Maharashtra, India', 8000, '2N/3D', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.', 'raigad.jpg', '2017-05-13 16:00:58', '2021-12-02 05:35:16'),
(4, 'Ramoji Film City', 'Familty and Couple', 'Hyderabad, India', 11000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'ramoji.jpg', '2017-05-13 22:39:37', '2021-12-02 05:36:56'),
(5, 'Ooty and Maisur', 'Family', 'OOty, Tamil Nadu', 13000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'ooty.jpg', '2017-05-13 22:42:10', '2021-12-02 05:38:56'),
(6, 'Maldives', 'Solo and Friends', 'Male, Maldives Island', 35000, 'Free wifi, pickup and drop etc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'maldives.jpg', '2017-05-14 08:01:08', '2021-12-02 05:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(17, 'Aman Deshpande', '8956393974', 'amandesh2002@gmail.com', '9e5dcd30be053beffb3445002307ab3c', '2021-11-27 05:36:48', NULL),
(18, 'Prathmesh Deo', '8956393974', 'prathmesh123@gmail.com', '519cada2e7317114feb76a7fba83aba8', '2021-12-08 16:07:17', NULL),
(19, 'Sahil', '8956393974', 'sahil2@gmail.com', '1006f0ae5a7ece19828a67ac62288e05', '2021-12-09 13:22:51', NULL),
(20, 'Purvaja', '8956393974', 'purvaja@gmail.com', '628bf9d7a43098300b03014ea2b23d69', '2021-12-09 13:57:45', NULL),
(21, 'Purvaja', '8956393974', 'purvaja@gmail.com', '628bf9d7a43098300b03014ea2b23d69', '2021-12-09 13:58:17', NULL),
(22, 'Sahil Chaudari', '8956393974', 'sahil@gmail.com', '1006f0ae5a7ece19828a67ac62288e05', '2021-12-09 15:51:37', NULL),
(30, 'Aman', '8956393974', 'aman@gmail.com', 'ccda1683d8c97f8f2dff2ea7d649b42c', '2021-12-10 04:59:07', NULL),
(31, 'Aman Deshpande', '8956393974', 'amandesh2002@gmail.com', 'ccda1683d8c97f8f2dff2ea7d649b42c', '2021-12-10 05:42:26', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`srNo`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `srNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
