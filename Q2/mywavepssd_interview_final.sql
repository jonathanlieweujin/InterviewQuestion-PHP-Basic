-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 01:03 PM
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
-- Database: `mywavepssd_interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_job_table`
--

CREATE TABLE `employee_job_table` (
  `employee_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `effective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_job_table`
--

INSERT INTO `employee_job_table` (`employee_id`, `job_id`, `effective_date`) VALUES
(1, 2, '2019-01-01'),
(2, 2, '2018-01-01'),
(3, 3, '2017-05-14'),
(3, 4, '2020-01-01'),
(4, 1, '2019-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `employee_profile_table`
--

CREATE TABLE `employee_profile_table` (
  `employee_id` int(11) NOT NULL,
  `employee_no` int(11) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `ic_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_profile_table`
--

INSERT INTO `employee_profile_table` (`employee_id`, `employee_no`, `employee_name`, `ic_no`) VALUES
(1, 1000, 'Ali', '1234'),
(2, 1001, 'Ahmad', '2345'),
(3, 1002, 'Koay', '3456'),
(4, 1003, 'Lau', '4567');

-- --------------------------------------------------------

--
-- Table structure for table `job_profile_table`
--

CREATE TABLE `job_profile_table` (
  `job_id` int(11) NOT NULL,
  `job_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_profile_table`
--

INSERT INTO `job_profile_table` (`job_id`, `job_name`) VALUES
(1, 'Finance'),
(2, 'Developer'),
(3, 'Admin'),
(4, 'Senior Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_job_table`
--
ALTER TABLE `employee_job_table`
  ADD PRIMARY KEY (`employee_id`,`job_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `employee_profile_table`
--
ALTER TABLE `employee_profile_table`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `job_profile_table`
--
ALTER TABLE `job_profile_table`
  ADD PRIMARY KEY (`job_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_job_table`
--
ALTER TABLE `employee_job_table`
  ADD CONSTRAINT `employee_job_table_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_profile_table` (`employee_id`),
  ADD CONSTRAINT `employee_job_table_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job_profile_table` (`job_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
