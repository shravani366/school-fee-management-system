-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 08:14 PM
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
-- Database: `schoolfeesys`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees_transaction`
--

CREATE TABLE `fees_transaction` (
  `id` int(255) NOT NULL,
  `stdid` varchar(255) NOT NULL,
  `paid` int(255) NOT NULL,
  `submitdate` datetime NOT NULL,
  `transcation_remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_transaction`
--

INSERT INTO `fees_transaction` (`id`, `stdid`, `paid`, `submitdate`, `transcation_remark`) VALUES
(1, '1', 20000, '2021-12-09 00:00:00', 'FIRST INSTALLMENT'),
(2, '2', 15000, '2021-12-14 00:00:00', 'first installment'),
(3, '3', 10000, '2021-12-22 00:00:00', '2nd installment'),
(4, '4', 20000, '2021-12-24 00:00:00', 'full payment'),
(5, '5', 20000, '2021-12-17 00:00:00', 'second installment'),
(6, '6', 30000, '2021-12-19 00:00:00', 'first installment'),
(7, '7', 5000, '2021-12-21 00:00:00', '1st installment'),
(8, '8', 20000, '2021-12-09 00:00:00', '2nd installment'),
(9, '9', 50000, '2021-12-23 00:00:00', 'full paid'),
(10, '10', 20000, '2021-12-16 00:00:00', '1st installment'),
(11, '11', 30000, '2021-12-04 00:00:00', '3rd installment'),
(12, '12', 10000, '2021-12-10 00:00:00', '1st installment'),
(13, '13', 2000, '2021-12-02 00:00:00', 'first installment');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `grade`, `detail`, `delete_status`) VALUES
(1, '1st standard', 'This is 1st standard', '0'),
(2, '2nd standard', 'this is 2nd standard', '0'),
(3, '3rd standard', 'this is 3rd standard', '0'),
(4, '4th standard', 'this is 4th standard', '0'),
(5, '5th standard', 'this is 5th standard', '0'),
(6, '6th standard', 'this is 6th standard', '0'),
(7, '7th standard', 'this is 7th standard', '0'),
(8, '8th standard', 'this is 8th standard', '0'),
(9, '9th standard', 'this is 9th standard', '0'),
(10, '10th standard', 'this is 10th standard', '0'),
(11, '11th standard', 'junior college first year', '0'),
(12, '12th standard', 'this is junior college 2nd year', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `joindate` datetime NOT NULL,
  `about` text NOT NULL,
  `contact` varchar(255) NOT NULL,
  `fees` int(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0',
  `transid` varchar(20) NOT NULL,
  `paid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `emailid`, `sname`, `joindate`, `about`, `contact`, `fees`, `grade`, `balance`, `delete_status`, `transid`, `paid`) VALUES
(1, 'pratiks@gmail.com', 'pratik salunkhe', '2021-12-09 00:00:00', 'general', '3547869725', 50000, '2', 30000, '0', 'BFG6969094 ', '20000'),
(2, 'sakshi@gmail.com', 'sakshi kadam', '2021-12-14 00:00:00', 'OBC', '9193696842', 30000, '1', 15000, '0', 'BFG6969768 ', '15000'),
(3, 'priyapatil@gmail.com', 'priyanka patil', '2021-12-22 00:00:00', 'general', '9657846525', 50000, '3', 40000, '0', 'BFG6969239 ', '10000'),
(4, 'ganesh@gmail.com', 'ganesh patil', '2021-12-24 00:00:00', 'sc', '9759351785', 20000, '4', 0, '1', 'BFG6969476 ', '20000'),
(5, 'mgaikwad@gmail.com', 'mayur pawar', '2021-12-17 00:00:00', 'OBC', '9473625892', 30000, '5', 10000, '0', 'BFG6969287 ', '20000'),
(6, 'rasika@gmail.com', 'rasika chavan', '2021-12-19 00:00:00', 'general', '7684307982', 50000, '7', 20000, '0', 'BFG6969321 ', '30000'),
(7, 'psalunkhe@gmail.com', 'pratik salunkhe', '2021-12-21 00:00:00', 'NT', '9876432769', 20000, '6', 15000, '0', 'BFG6969654 ', '5000'),
(8, 'karu@gmail.com', 'karishma baagwan', '2021-12-09 00:00:00', 'OBC', '9768572541', 30000, '8', 10000, '0', 'BFG6969876 ', '20000'),
(9, 'mubina76@gmail.com', 'mubina mujawar', '2021-12-23 00:00:00', 'general', '9856471374', 50000, '10', 0, '0', 'BFG6969876 ', '50000'),
(10, 'saniya@gmail.com', 'saniya patil', '2021-12-16 00:00:00', 'OBC', '9834275661', 30000, '9', 10000, '0', 'BFG6969987 ', '20000'),
(11, 'harshu@gmail.com', 'harshada  pathan', '2021-12-04 00:00:00', 'General', '9375625401', 50000, '11', 20000, '0', 'BFG6969512 ', '30000'),
(12, 'girija@gmail.com', 'girija kulkarni', '2021-12-10 00:00:00', 'NT', '9475613295', 20000, '12', 10000, '0', 'BFG6969764 ', '10000'),
(13, 'richa@gmail.com', 'richa suryvanshi', '2021-12-02 00:00:00', 'open', '2345671567', 40000, '6', 38000, '0', 'BFC6969321 ', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `emailid`, `lastlogin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@gmail.com', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees_transaction`
--
ALTER TABLE `fees_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fees_transaction`
--
ALTER TABLE `fees_transaction`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
