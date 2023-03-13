-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 06:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_registration`
--

CREATE TABLE `cust_registration` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `password` varchar(200) NOT NULL,
  `repeat_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_registration`
--

INSERT INTO `cust_registration` (`id`, `name`, `email`, `phone_number`, `password`, `repeat_password`) VALUES
(12, 'Suman Poojary', 'sumanpoojary296@gmail.com', '07411660024', 'Sitar123', 'Sitar123'),
(13, 'Suman Poojary', 'sumanpoojary296@gmail.com', '07411660024', 'Suman123', 'Suman123');

-- --------------------------------------------------------

--
-- Table structure for table `onlineinvoice`
--

CREATE TABLE `onlineinvoice` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onlineinvoice`
--

INSERT INTO `onlineinvoice` (`id`, `userid`, `PostingDate`) VALUES
(18, 519185758, '2022-05-30 10:26:18'),
(19, 754716684, '2022-05-30 11:37:48'),
(20, 655024021, '2022-05-30 11:40:02'),
(21, 754716684, '2022-05-30 16:06:20'),
(22, 234103813, '2022-05-30 16:23:42'),
(23, 701925991, '2022-06-04 11:04:45'),
(24, 745391178, '2022-06-06 08:44:40'),
(25, 745391178, '2022-06-06 08:46:18'),
(26, 478289060, '2022-06-06 08:48:33'),
(27, 779189578, '2022-06-06 11:27:00'),
(28, 912168803, '2022-06-06 12:15:29'),
(29, 696913919, '2022-06-06 15:02:00'),
(30, 172980160, '2022-06-08 18:00:44'),
(31, 566575099, '2022-06-08 18:09:06'),
(32, 655965933, '2022-06-08 18:14:28'),
(33, 833576214, '2022-06-08 18:15:45'),
(34, 465855133, '2022-06-08 18:38:45'),
(35, 510198316, '2022-06-08 18:40:30'),
(36, 597283665, '2022-06-08 18:47:47'),
(37, 570943845, '2022-06-08 18:53:21'),
(38, 898728090, '2022-06-09 02:55:52'),
(39, 460287632, '2022-06-09 15:21:56'),
(40, 266495828, '2022-06-09 15:34:00'),
(41, 600408279, '2022-06-17 12:08:21'),
(42, 962931926, '2022-06-17 12:57:09'),
(43, 897740089, '2022-06-17 13:21:04'),
(44, 428491937, '2022-06-17 13:27:23'),
(45, 108876729, '2022-06-17 13:32:25'),
(46, 916651988, '2022-06-17 14:41:44'),
(47, 377292506, '2022-06-25 09:11:46'),
(48, 183785080, '2022-06-25 09:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `sid` int(11) NOT NULL,
  `oname` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `salon_name` varchar(100) NOT NULL,
  `saddress` varchar(200) NOT NULL,
  `document1` varchar(200) NOT NULL,
  `document2` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cpassword` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`sid`, `oname`, `email`, `salon_name`, `saddress`, `document1`, `document2`, `phone`, `password`, `cpassword`, `status`) VALUES
(35, 'Bunny', 'sumanpoojary296@gmail.com', 'Krop Salons', 'Sudharshan House, Subhashith Nagar, Surathkal -575014', 'Screenshot (24).png', 'Screenshot (23).png', '7411660024', '123', '123', '1'),
(39, 'Bunny', 'sumanpoojary296@gmail.com', 'Just Trim', 'Sudharshan House, Subhashith Nagar, Surathkal -575014', 'Screenshot (23).png', 'Screenshot (8).png', '7411660024', '123', '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'admin', 'admin', 0, NULL, '21232f297a57a5a743894a0e4a801fc3', '2022-05-23 05:17:33'),
(35, 'Bunny', 'SID35', 7411660024, 'sumanpoojary296@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-06-06 14:57:04'),
(36, 'sitara devi', 'SID36', 7411660024, 'sumanpoojary296@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-06-08 18:13:05'),
(38, 'sitara devi', 'SID38', 7411660024, 'sumanpoojary296@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2022-06-09 15:57:16'),
(39, 'Bunny', 'SID39', 7411660024, 'sumanpoojary296@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-06-18 14:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `sid` varchar(10000) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `stylist` varchar(30) NOT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'PAYMENT PENDING',
  `RemarkDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gender` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `sid`, `cid`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `stylist`, `ApplyDate`, `Remark`, `Status`, `payment_status`, `RemarkDate`, `gender`) VALUES
(448, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'bunny haircut', 'Any Available', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(449, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'bunny haircut', 'cheeku', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(450, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'bunny haircut', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(451, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'bunny haircut', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(452, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'bunny haircut', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(453, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Haircut', 'Any Available', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(454, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Haircut', 'cheeku', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(455, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Haircut', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(456, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Haircut', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(457, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Haircut', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(458, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Tatto', 'Any Available', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(459, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Tatto', 'cheeku', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(460, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Tatto', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(461, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Tatto', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', ''),
(462, '35', '13', NULL, NULL, NULL, NULL, NULL, NULL, 'Tatto', '', '2022-06-25 12:08:00', '', '', 'PAYMENT PENDING', '2022-06-25 12:08:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `sid`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(14, '20', 'Suman Poojary', 'sumanpoojary296@gmail.com', 7411660024, 'Male', 'qd', '2022-06-06 08:53:44', NULL),
(15, '21', 'bunny', 'sumanpoojary296@gmail.com', 7411660024, 'Male', 'jv', '2022-06-06 08:55:52', NULL),
(16, '35', 'ef', 'sumanpoojary296@gmail.com', 7411660024, 'Male', 'ef', '2022-06-14 13:12:52', NULL),
(17, '35', 'CHEEKU', 'sumanpoojary296@gmail.com', 7411660024, 'Male', 'S', '2022-06-14 14:08:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(11, 11, 8, 603816201, '2022-05-23 15:17:17'),
(12, 11, 8, 853838773, '2022-05-24 12:09:44'),
(13, 17, 33, 169497047, '2022-06-14 14:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '                Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.<div>vasdsf</div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'TESTING', 'info@gmail.com', 9999999999, NULL, '10:30 am to 8:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `s_type` varchar(50) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `sid`, `s_type`, `ServiceName`, `Description`, `Cost`, `CreationDate`) VALUES
(33, '35', 'hair_styling', 'Haircut', 'Testing !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 200, '2022-06-06 14:58:10'),
(34, '35', 'hair_styling', 'Tatto', 'nka', 2000, '2022-06-17 13:31:24'),
(35, '39', 'pedicure', 'Bunny', 'test test', 200, '2022-06-18 14:48:18'),
(36, '35', 'hair_styling', 'Tatto1', 'ad', 2000, '2022-06-25 06:12:11'),
(37, '35', 'pedicure', 'varshith', 'rer', 2000, '2022-06-25 06:15:08'),
(39, '35', 'waxing', 'bunny haircut', 'wrewr', 400, '2022-06-25 10:04:53'),
(40, '35', 'bleaching', 'bunny haircut', 'qwedw', 200, '2022-06-25 10:06:12'),
(41, '35', 'other', 'Bunny', 'rg', 100, '2022-06-25 10:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblstylist`
--

CREATE TABLE `tblstylist` (
  `id` int(11) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `s_type` varchar(50) NOT NULL,
  `stylist_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstylist`
--

INSERT INTO `tblstylist` (`id`, `sid`, `s_type`, `stylist_name`) VALUES
(36, '35', 'waxing', 'vars1'),
(39, '35', 'pedicure', 'test 1'),
(40, '35', 'waxing', 'test 2'),
(41, '35', 'hair_styling', 'cheeku'),
(42, '35', 'hair_styling', 'Any Available'),
(43, '35', 'waxing', 'Any Available'),
(44, '35', 'bleaching', 'Any Available'),
(45, '35', 'other', 'Any Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_registration`
--
ALTER TABLE `cust_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlineinvoice`
--
ALTER TABLE `onlineinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstylist`
--
ALTER TABLE `tblstylist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust_registration`
--
ALTER TABLE `cust_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `onlineinvoice`
--
ALTER TABLE `onlineinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblstylist`
--
ALTER TABLE `tblstylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
