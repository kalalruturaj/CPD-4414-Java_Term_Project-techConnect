-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2016 at 11:53 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dialever_user_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `biz_name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(22) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `catagory` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `biz_name`, `address`, `first_name`, `last_name`, `email`, `contact_no`, `image`, `catagory`) VALUES
(1, 'CIBC Bank', '7807 Fremont Trail', 'Lois', 'Patterson', 'lpatterson0@cafepress.com', '86-(961)413-0733', 'img/cibc.jpg', 'Banks'),
(2, 'Scotia Bank', '9040 Northland Parkway', 'Susan', 'Carter', 'scarter1@domainmarket.com', '66-(485)484-3226', 'img/scotiabank.jpg', 'Banks'),
(3, 'CIBC Bank', '4498 Marcy Alley', 'Shawn', 'Lawrence', 'slawrence2@trellian.com', '86-(133)922-8159', 'img/cibc.jpg', 'Banks'),
(4, 'Tim Hortons', '33 Troy Center', 'Virginia', 'Thomas', 'vthomas3@xinhuanet.com', '64-(865)904-4958', 'img/Timhortons.jpg', 'Coffee Shops'),
(5, 'Starbucks', '5265 Westerfield Hill', 'Evelyn', 'Harrison', 'eharrison4@sciencedirect.com', '507-(456)387-3191', 'img/starbucks.jpg', 'Coffee Shops'),
(6, 'Hampton ', '512 Crescent Oaks Point', 'Scott', 'Frazier', 'sfrazier5@usa.gov', '358-(130)231-6578', 'img/hampton.jpg', 'Hotels'),
(7, 'Holiday Inn', '72 Mallard Hill', 'Lillian', 'Hamilton', 'lhamilton6@ox.ac.uk', '49-(217)119-3471', 'img/holidayinn.jpg', 'Hotels'),
(8, 'Drawbridge', '9 Spenser Crossing', 'Juan', 'Watkins', 'jwatkins7@unc.edu', '57-(694)128-3903', 'img/drawbridge.jpg', 'Hotels'),
(9, 'Brightdog', '9498 Valley Edge Hill', 'Mary', 'Stephens', 'mstephens8@clickbank.net', '86-(159)680-3950', 'Realbuzz', 'Livetube'),
(10, 'Rooxo', '9 Darwin Point', 'James', 'Medina', 'jmedina9@github.com', '66-(585)742-9469', 'Kwimbee', 'Innojam');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `rooms`, `description`, `price`) VALUES
(1, 20, 'ALK-Abello, Inc.', 286),
(31, 96, 'CareFusion 213 LLC', 405),
(100, 95, 'Wakefern Food Corporation', 588),
(83, 78, 'Apotheca Company', 240),
(50, 86, 'Laboratoires Clarins S.A', 685),
(31, 33, 'Lake Erie Medical DBA Quality Care Products LLC', 514),
(78, 33, 'H.J. Harkins Company, Inc.', 372),
(21, 74, 'Respiratory Home Care Specialists, Inc.', 515),
(78, 37, 'safeHands LLC', 210),
(25, 14, 'Amneal-Agila, LLC', 498),
(72, 65, 'Preferred Pharmaceuticals, Inc.', 416),
(9, 45, 'Wong To Yick Wood Lock Ointment Ltd', 373),
(11, 75, 'L''Oreal USA Products Inc', 834),
(44, 17, 'Precision Dose Inc.', 329),
(11, 52, 'Sam''s West Inc', 268),
(46, 66, 'Energique, Inc.', 829),
(88, 35, 'Amneal Pharmaceuticals of New York, LLC', 498),
(23, 99, 'Tender Corp dba Adventure Medical Kits', 516),
(21, 85, 'REMEDYREPACK INC.', 998),
(85, 67, 'H and P Industries, Inc. dba Triad Group', 246);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `uname` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`uname`, `pass`) VALUES
('java', 'beans'),
('aaa', 'aaa'),
('aaa', 'aaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
