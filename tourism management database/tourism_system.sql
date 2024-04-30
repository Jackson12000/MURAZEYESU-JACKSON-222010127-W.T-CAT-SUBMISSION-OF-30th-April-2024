-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 01:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `residental` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `arriveIn` varchar(100) NOT NULL,
  `arriveOut` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `createAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`id`, `firstname`, `lastname`, `dob`, `gender`, `email`, `telephone`, `residental`, `nationality`, `arriveIn`, `arriveOut`, `room`, `createAt`) VALUES
(1, 'Murazeyesu', 'Jackson', '2024-05-09 00:00:00', 'Male', 'murazeyesujackson1@gmail.com', '0789654321', 'Rwanda', 'Rwanda', '2024-04-09', '2024-05-08', 'flowsix', '2024-04-22 11:30:34'),
(2, 'Imanirafasha', 'Diogenne', '2020-09-02 00:00:00', 'male', 'diogenne@gmail.com', '0789654321', 'german', 'soutafrica', '2024-04-02', '2024-06-06', 'flowtree', '2024-04-22 11:33:34'),
(5, 'habumugisha', 'morice', '2024-04-30 00:00:00', 'female', 'karori@gmail.com', '0783387931', 'german', 'austraria', '2024-04-04', '2024-05-10', 'flowsix', '2024-04-26 10:11:00'),
(8, 'veve', 'mwiza', '2024-04-03 00:00:00', 'female', 'veve@gmail.com', '0783387931', 'Rwanda', 'Rwanda', '2024-04-17', '2024-05-10', 'flowone', '2024-04-30 11:29:39'),
(9, 'murazeyesu', 'jackson', '2024-04-03 00:00:00', 'female', 'gatobazi@gmail.com', '0783387931', 'Usa', 'Rwanda', '2024-04-10', '2024-05-09', 'flowone', '2024-04-30 11:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `email`, `telephone`, `position`) VALUES
(5, 'murazeyesu', 'jackson', 'murazeyesujackson1@gmail.com', '0783387931', 'Programmer');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `tourname` varchar(50) NOT NULL,
  `timeVisit` varchar(50) NOT NULL,
  `createAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `tourname`, `timeVisit`, `createAt`) VALUES
(1, 'Nyungwe', '2024-04-29', '2024-04-29 21:41:06'),
(2, 'Nyungwe', '2024-04-10', '2024-04-29 23:39:53'),
(3, 'Nyungwe', '2024-04-10', '2024-04-29 23:54:49'),
(4, 'lake kivu', '2024-04-30', '2024-04-29 23:55:20'),
(5, 'lake kivu', '2024-04-30', '2024-04-29 23:56:10'),
(6, 'lake kivu', '2024-04-10', '2024-04-29 23:57:34'),
(7, 'lake kivu', '2024-04-09', '2024-04-30 08:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `payeesname` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `createAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `firstname`, `lastname`, `payeesname`, `amount`, `payment_date`, `payment_method`, `createAt`) VALUES
(1, 'Murazeyesu', 'Jackson', 'Employees', '12345678', '2024-05-02', '2024-04-24', '2024-04-29 19:08:12'),
(2, 'Munez', 'Eric', 'Employees', '200000000000000', '2024-04-29', 'mobile money', '2024-04-29 21:07:06'),
(3, 'Uwurukundo', 'Albert', 'Employees', '1000000000', '2024-05-02', 'Bank', '2024-04-30 12:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `firstname` varchar(220) NOT NULL,
  `lastname` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `username` varchar(220) NOT NULL,
  `password` varchar(220) NOT NULL,
  `creatAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `creatAt`) VALUES
(1, 'Murazeyesu', 'Jackson', 'murazeyesujackson1@gmail.com', 'bobo', '$2y$10$xlo1PNIfOAJwtNuW1LnaS.VR23rXn1K0j33A.36WafBbSO5YfgqjC', '2024-04-22 10:14:15'),
(2, 'muneza', 'eric', 'eric@gmail.com', 'muneza', '$2y$10$Jpx.VhhFl3LF8.mgIB9SYO8Ddsst.YWTJqR2uNQqAexqwCG3g.DkO', '2024-04-30 07:05:51'),
(3, 'murazeyesu', 'jackson', 'mama@gmail.com', 'mama', '$2y$10$9o9vwpnA3DrvqgF9kW4szul/jOqA8IXIk6/z.EJNu5HALzVoCtlvq', '2024-04-30 07:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `id` int(11) NOT NULL,
  `firstnane` varchar(220) NOT NULL,
  `lastname` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `telephone` varchar(90) NOT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `createAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourist`
--

INSERT INTO `tourist` (`id`, `firstnane`, `lastname`, `email`, `telephone`, `nationality`, `createAt`) VALUES
(1, 'Murazeyesu', 'Jackson', 'murazeyesujackson1@gmail.com', '0789654321', 'Canada-City', '2024-04-22 10:37:02'),
(2, 'jack', 'jackson', 'son@gmail.com', '0783387931', 'Rwanda', '2024-04-25 21:12:01'),
(3, 'jack', 'mu', 'mu@gmail.com', '0783387931', 'USA', '2024-04-25 21:14:06'),
(8, 'murazeyesu', 'jackson', 'soso@gmail.com', '0783387931', 'DRC', '2024-04-30 10:10:54'),
(9, 'uwizeye', 'karara', 'karara@gmail.com', '0783387931', 'German', '2024-04-30 12:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `companiesName` varchar(200) NOT NULL,
  `time_arrival` varchar(200) NOT NULL,
  `tourist_residental` varchar(200) NOT NULL,
  `createAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `firstname`, `lastname`, `email`, `telephone`, `companiesName`, `time_arrival`, `tourist_residental`, `createAt`) VALUES
(1, 'Murazeyesu', 'Jackson', 'murazeyesujackson@gmail.com', '0789654321', 'Horizon', '23:00PM', 'SUDAN', '2024-04-22 11:01:08'),
(2, 'Diogene', 'Imanirafasha', 'cheriseirahari@gmail.com', '0789654321', 'Volcanoes', '2024-04-16', 'congo', '2024-04-22 11:16:15'),
(3, 'dodos', 'murekezi', 'murekezi@dmail.com', '0783387931', 'rftc', '2024-05-07', 'Tanzania', '2024-04-25 17:22:38'),
(4, 'MURAZEYESU', 'JACKSON', 'jey@gmail.com', '0783387931', 'Horizon', '2024-04-27', 'Rwanda', '2024-04-25 17:34:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tourist`
--
ALTER TABLE `tourist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
