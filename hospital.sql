-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2017 at 10:21 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(10) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `email`, `phone`, `gender`, `age`, `specialization`, `date`, `status`) VALUES
(7, 'Delwar Hossain', 'abcdefghij@gmail.com', '01621339539', 'male', 28, 'Heart Surgery', '09/20/2017', 'pending'),
(10, 'Md Fatema Khatun', 'fatema@gmail.com', '01821339539', 'female', 17, 'Cardiology', '09/19/2017', 'pending'),
(11, 'Md Tanvir Rahman', 't.r.royel@gmail.com', '01923051581', 'male', 22, 'Diagnosis', '09/19/2017', 'pending'),
(12, 'Mizanur rahman', 'mizan@gmail.com', '01521339539', 'male', 32, 'Diagnosis', '09/26/2017', 'pending'),
(13, 'Md Tanvir Rahman', 't.r.royel@gmail.com', '01717295844', 'male', 22, 'Diagnosis', '10/26/2017', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `did` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `qualification` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `specialities` varchar(150) NOT NULL,
  `biodata` varchar(2000) NOT NULL,
  `checkup_fee` int(10) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `name`, `qualification`, `designation`, `specialities`, `biodata`, `checkup_fee`, `phone`, `email`) VALUES
(15, 'Israt Jahan', 'MBBS', 'Consultant', 'Diagnosis', 'mhf hweluhsruie hgfuytj gyu reyhug', 500, '01912868134', 'i.j.akhee@gmail.com'),
(16, 'Dr MD Jonab Ali Mustafiz', 'MBBS, BCS(Health)', 'Consultant', 'Cardiology', 'Village kasempur, Post: puthia, Thana: puthia, Disprict Rajshahi.', 500, '01717295844', 'jonabali2009@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(10) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `blood_group` char(4) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `joining_date` varchar(60) NOT NULL,
  `salary` int(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `name`, `father_name`, `address`, `gender`, `age`, `qualification`, `designation`, `blood_group`, `nid`, `joining_date`, `salary`, `phone`, `email`) VALUES
(3, 'Mizanur Rahman', 'Md kazem uddin', 'Palopara, Puthia, rajshahi, Bangladesh', 'Male', 35, 'H.S.C', 'Manager', 'AB+', '1993758768578', '08/11/1993', 20000, '01738243931', 'mizan@gmail.commm');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `mid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`mid`, `name`, `email`, `message`) VALUES
(1, 'royel', 't.r.royel@gmail.com', 'i Want success');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `pid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `gender` char(7) NOT NULL,
  `age` int(10) NOT NULL,
  `blood_group` char(4) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `disease` varchar(50) NOT NULL,
  `entry_date` varchar(50) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`pid`, `name`, `father_name`, `address`, `gender`, `age`, `blood_group`, `national_id`, `disease`, `entry_date`, `room_type`, `status`, `phone`, `email`) VALUES
(26, 'Md Tanvir Rahman', 'Md Abdul latif PM', 'Palopara, Puthia,Rajshahi', 'Male', 24, 'AB+', '13231040353453', 'Fever', '11/09/2017', 'Normal', 'Admitted', '07923051581', 't.r.royel@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `roombuilding`
--

CREATE TABLE `roombuilding` (
  `rid` int(10) NOT NULL,
  `room_no` int(10) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `building_name` varchar(50) NOT NULL,
  `room_price` int(10) NOT NULL,
  `no_of_bed` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombuilding`
--

INSERT INTO `roombuilding` (`rid`, `room_no`, `room_type`, `building_name`, `room_price`, `no_of_bed`, `status`) VALUES
(8, 102, 'Normal', 'A', 300, 4, 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `user_name` varchar(100) NOT NULL,
  `user_type` varchar(40) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`user_name`, `user_type`, `user_image`, `password`) VALUES
('royel', '', 'jhsfhjgas', 'royel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `roombuilding`
--
ALTER TABLE `roombuilding`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `did` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `roombuilding`
--
ALTER TABLE `roombuilding`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
