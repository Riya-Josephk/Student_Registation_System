-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2020 at 05:31 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `email` varchar(110) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `type_id`, `name`, `email`, `phone`, `username`, `password`, `created_at`, `created_by`) VALUES
(1, 1, 'admin', 'admin@gmail.com', 9999988888, 'admin', 'admin11', '2020-01-16 11:23:37', ''),
(2, 8, 'kpm', 'kpm@gmail.com', 123456789, 'kpm', '123', '2020-01-17 10:30:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `student_id` int(20) NOT NULL,
  `mobile` bigint(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `name`, `student_id`, `mobile`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'george', 222, 9632104578, 'george@gmail.com', 'george', '12345', '2020-01-16 14:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `mark_list`
--

CREATE TABLE `mark_list` (
  `s_id` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark_list`
--

INSERT INTO `mark_list` (`s_id`, `reg_no`, `name`, `course`, `dept`, `sub`, `mark`) VALUES
(1, 222, 'Riya', 'BCA', 'CSE', 'DS', 62);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `index_no` int(11) NOT NULL,
  `reg_no` int(20) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `mobile` bigint(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dept_name` varchar(60) NOT NULL,
  `course_name` varchar(60) NOT NULL,
  `sem_no` varchar(30) NOT NULL,
  `year` int(15) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `created_by` varchar(60) NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_by` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`index_no`, `reg_no`, `fname`, `lname`, `mobile`, `email`, `dept_name`, `course_name`, `sem_no`, `year`, `username`, `password`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(5, 123, 'Riya', 'Joseph', 8592074946, 'riyajoseph@gmail.com', 'btech', 'cse', '1', 0, 'riya', '999', '2020-01-17 12:18:20.099225', '', '2020-01-17 12:18:20.099225', ''),
(6, 124, 'Amritha', 'S', 9874561230, 'amrita@gmail.com', 'btech', 'cse', '1', 0, 'ammu', '123', '2020-01-17 12:21:04.830504', '', '2020-01-17 12:21:04.830504', ''),
(7, 126, 'Jitty', 'John', 9946541237, 'jitty@gmail.com', 'mtech', 'eee', '5', 0, 'jitty', '123', '2020-01-17 12:32:16.851995', '', '2020-01-17 12:32:16.851995', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_add`
--

CREATE TABLE `sub_add` (
  `id` int(11) NOT NULL,
  `sem` varchar(60) NOT NULL,
  `year` int(20) NOT NULL,
  `sem_name` varchar(60) NOT NULL,
  `sub_code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_add`
--

INSERT INTO `sub_add` (`id`, `sem`, `year`, `sem_name`, `sub_code`) VALUES
(1, '4', 2, 'CS102', '0'),
(2, '5', 0, '', ''),
(3, '6', 0, '', ''),
(4, '6', 4, 'ML123', 'ML');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_list`
--
ALTER TABLE `mark_list`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`index_no`);

--
-- Indexes for table `sub_add`
--
ALTER TABLE `sub_add`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mark_list`
--
ALTER TABLE `mark_list`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `index_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_add`
--
ALTER TABLE `sub_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
