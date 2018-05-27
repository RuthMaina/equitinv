-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2018 at 07:23 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `einventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `emailconfig`
--

CREATE TABLE `emailconfig` (
  `id` int(11) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `fromid` varchar(200) NOT NULL,
  `toid` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `port` varchar(200) DEFAULT NULL,
  `smtp` varchar(200) DEFAULT NULL,
  `pref` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailconfig`
--

INSERT INTO `emailconfig` (`id`, `Type`, `fromid`, `toid`, `password`, `port`, `smtp`, `pref`) VALUES
(1, 'GMAIL', 'badyokita@gmail.com', 'Bady.Okita@strathmore.edu', 'hawi12345', NULL, NULL, 'GMAIL'),
(2, 'WEB', 'info@lifestyleelectronics.co.ke', 'Bady.Okita@strathmore.edu', 'TaK2s15fw8', '0000', 'www.life', 'GMAIL');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `Iname` varchar(300) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(300) NOT NULL,
  `perunit` int(11) NOT NULL,
  `low` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `Iname`, `quantity`, `unit`, `perunit`, `low`) VALUES
(3, 'Pencils', 50, 'Pouches', 12, 10),
(4, 'Branches', 40, 'fold', 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `time`, `userid`, `action`) VALUES
(1, '2018-05-26 20:46:17', 2, 'Logged In'),
(2, '2018-05-26 21:01:06', 2, 'Logged In'),
(3, '2018-05-26 21:01:16', 2, 'Logged In'),
(4, '2018-05-26 21:04:03', 2, 'Logged In'),
(5, '2018-05-26 21:04:05', 2, 'Logged Out'),
(6, '2018-05-26 21:09:40', 2, 'Logged In'),
(7, '2018-05-26 21:11:02', 2, 'Logged In'),
(8, '2018-05-26 21:11:42', 2, 'Logged In'),
(9, '2018-05-26 21:11:51', 2, 'Logged Out'),
(10, '2018-05-26 21:11:56', 3, 'Logged In'),
(11, '2018-05-26 21:30:55', 3, 'Logged In'),
(12, '2018-05-26 21:32:38', 3, 'Logged In'),
(13, '2018-05-26 21:35:04', 3, 'Logged In'),
(14, '2018-05-26 21:35:51', 3, 'Logged In'),
(15, '2018-05-26 21:37:11', 2, 'Logged In'),
(16, '2018-05-26 21:38:05', 5, 'Logged In'),
(17, '2018-05-26 21:40:32', 5, 'Logged In'),
(18, '2018-05-26 21:42:45', 5, 'Logged In'),
(19, '2018-05-26 21:45:37', 2, 'Logged In'),
(20, '2018-05-27 08:14:42', 2, 'Logged In'),
(21, '2018-05-27 10:04:04', 2, 'Logged In'),
(22, '2018-05-27 10:10:55', 5, 'Logged In'),
(23, '2018-05-27 10:10:57', 5, 'Logged Out'),
(24, '2018-05-27 10:11:03', 5, 'Logged In'),
(25, '2018-05-27 10:13:14', 3, 'Logged In'),
(26, '2018-05-27 10:15:32', 3, 'Logged In'),
(27, '2018-05-27 10:17:19', 3, 'Logged In'),
(28, '2018-05-27 10:21:04', 5, 'Logged In'),
(29, '2018-05-27 10:23:59', 5, 'Logged In'),
(30, '2018-05-27 10:24:58', 5, 'Logged In'),
(31, '2018-05-27 10:38:37', 2, 'Logged In'),
(32, '2018-05-27 10:39:15', 2, 'Logged In'),
(33, '2018-05-27 10:39:46', 2, 'Logged In'),
(34, '2018-05-27 10:45:16', 2, 'Logged In'),
(35, '2018-05-27 10:46:09', 2, 'Logged In'),
(36, '2018-05-27 10:59:59', 2, 'Logged In'),
(37, '2018-05-27 11:07:38', 5, 'Logged In'),
(38, '2018-05-27 11:08:24', 5, 'Logged In'),
(39, '2018-05-27 11:11:07', 2, 'Logged In'),
(40, '2018-05-27 11:12:14', 2, 'Logged In'),
(41, '2018-05-27 11:14:42', 2, 'Logged In'),
(42, '2018-05-27 11:41:11', 2, 'Logged In'),
(43, '2018-05-27 11:42:48', 2, 'Logged In'),
(44, '2018-05-27 11:47:15', 2, 'Logged In'),
(45, '2018-05-27 11:55:20', 2, 'Logged In'),
(46, '2018-05-27 11:55:42', 2, 'Logged In'),
(47, '2018-05-27 11:55:48', 2, 'Logged Out'),
(48, '2018-05-27 12:03:12', 2, 'Logged In'),
(49, '2018-05-27 12:18:57', 2, 'Logged In'),
(50, '2018-05-27 12:21:32', 5, 'Logged In'),
(51, '2018-05-27 12:24:50', 2, 'Logged In'),
(52, '2018-05-27 12:28:23', 2, 'Logged In'),
(53, '2018-05-27 12:36:53', 2, 'Logged In'),
(54, '2018-05-27 12:37:39', 2, 'Logged In'),
(55, '2018-05-27 14:00:32', 2, 'Logged In'),
(56, '2018-05-27 14:00:58', 2, 'Logged In'),
(57, '2018-05-27 14:01:25', 2, 'Logged In'),
(58, '2018-05-27 14:03:13', 2, 'Logged In'),
(59, '2018-05-27 14:13:37', 2, 'Logged In'),
(60, '2018-05-27 14:15:56', 2, 'Logged In'),
(61, '2018-05-27 14:30:46', 2, 'Logged In'),
(62, '2018-05-27 14:32:24', 2, 'Logged In'),
(63, '2018-05-27 14:34:32', 5, 'Logged In'),
(64, '2018-05-27 14:36:53', 2, 'Logged In'),
(65, '2018-05-27 15:18:25', 5, 'Logged In'),
(66, '2018-05-27 15:22:50', 3, 'Logged In'),
(67, '2018-05-27 15:23:48', 5, 'Logged In'),
(68, '2018-05-27 15:30:24', 5, 'Logged In'),
(69, '2018-05-27 15:31:38', 2, 'Logged In'),
(70, '2018-05-27 15:32:34', 2, 'Logged In'),
(71, '2018-05-27 15:33:48', 2, 'Logged In'),
(72, '2018-05-27 15:34:22', 2, 'Logged In'),
(73, '2018-05-27 15:36:04', 2, 'Logged In'),
(74, '2018-05-27 15:38:07', 2, 'Logged In'),
(75, '2018-05-27 15:42:10', 2, 'Logged In'),
(76, '2018-05-27 15:50:22', 2, 'Logged In'),
(77, '2018-05-27 15:50:59', 2, 'Logged In'),
(78, '2018-05-27 15:51:14', 2, 'Logged In'),
(79, '2018-05-27 15:51:41', 2, 'Logged In'),
(80, '2018-05-27 15:54:23', 5, 'Logged In'),
(81, '2018-05-27 15:56:34', 2, 'Logged In'),
(82, '2018-05-27 16:26:32', 5, 'Logged In'),
(83, '2018-05-27 16:26:59', 5, 'Logged In'),
(84, '2018-05-27 16:37:12', 2, 'Logged In'),
(85, '2018-05-27 16:37:39', 2, 'Logged In'),
(86, '2018-05-27 16:53:39', 2, 'Logged In'),
(87, '2018-05-27 16:54:09', 2, 'Added User brent'),
(88, '2018-05-27 16:54:15', 2, 'Added User brody'),
(89, '2018-05-27 16:54:21', 2, 'Added User hawi'),
(90, '2018-05-27 16:54:56', 2, 'Deleted User brody'),
(91, '2018-05-27 16:54:59', 2, 'Deleted User brent'),
(92, '2018-05-27 16:59:48', 8, 'Logged In'),
(93, '2018-05-27 17:00:36', 8, 'Logged In'),
(94, '2018-05-27 17:05:24', 8, 'Logged In'),
(95, '2018-05-27 17:06:37', 8, 'Logged In'),
(96, '2018-05-27 17:06:46', 8, 'Logged Out'),
(97, '2018-05-27 17:10:17', 8, 'Logged In'),
(98, '2018-05-27 17:10:23', 8, 'Logged Out'),
(99, '2018-05-27 17:10:29', 2, 'Logged In'),
(100, '2018-05-27 17:10:56', 2, 'Logged In'),
(101, '2018-05-27 17:11:03', 2, 'Logged Out'),
(102, '2018-05-27 17:17:11', 2, 'Logged In'),
(103, '2018-05-27 17:17:15', 2, 'Logged Out'),
(104, '2018-05-27 17:17:45', 8, 'Logged In'),
(105, '2018-05-27 17:17:48', 8, 'Logged Out'),
(106, '2018-05-27 17:18:14', 2, 'Logged In'),
(107, '2018-05-27 17:19:58', 2, 'Logged In'),
(108, '2018-05-27 17:20:01', 2, 'Logged Out'),
(109, '2018-05-27 17:21:05', 8, 'Logged In'),
(110, '2018-05-27 17:21:27', 8, 'Logged In'),
(111, '2018-05-27 17:21:29', 8, 'Logged Out'),
(112, '2018-05-27 17:21:33', 2, 'Logged In'),
(113, '2018-05-27 17:21:38', 2, 'Logged Out');

-- --------------------------------------------------------

--
-- Table structure for table `removal`
--

CREATE TABLE `removal` (
  `id` int(11) NOT NULL,
  `removedate` date NOT NULL,
  `itemid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `isRemoved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `removal`
--

INSERT INTO `removal` (`id`, `removedate`, `itemid`, `quantity`, `userid`, `status`, `isRemoved`) VALUES
(1, '2018-05-26', 3, 1, 2, 'Used', 1),
(3, '2018-05-26', 4, 5, 3, 'Used', 1),
(4, '2018-05-27', 3, 1, 2, 'Used', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `id` int(11) NOT NULL,
  `shipdate` date NOT NULL,
  `itemid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`id`, `shipdate`, `itemid`, `quantity`, `userid`, `status`) VALUES
(9, '2018-05-26', 4, 2, 2, 1),
(10, '2018-05-26', 3, 20, 2, 1),
(11, '2018-05-26', 4, 15, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `type`, `username`, `password`) VALUES
(2, 'Administrator', 'bady', '1234'),
(3, 'Administrator', 'mzee', '1234'),
(5, 'User', 'rino', '1234'),
(8, 'User', 'hawi', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emailconfig`
--
ALTER TABLE `emailconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `removal`
--
ALTER TABLE `removal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emailconfig`
--
ALTER TABLE `emailconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `removal`
--
ALTER TABLE `removal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `removal`
--
ALTER TABLE `removal`
  ADD CONSTRAINT `removal_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `removal_ibfk_2` FOREIGN KEY (`itemid`) REFERENCES `items` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `items` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
