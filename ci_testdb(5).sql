-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 27, 2017 at 04:24 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `counter` int(11) NOT NULL,
  `food` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `a_id`, `counter`, `food`, `status`, `timestamp`) VALUES
(10, 4, 3, 'rava', 'approve', '2017-05-27 08:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `role`, `dept`) VALUES
(4, 'test', 'mgr', 'testmgr@test.com', '123456', 'manager', 'cse'),
(10, 'sahil', 'mulik', 'sahil@gmail.com', '123456', 'employee', 'cse'),
(11, 'kiran', 'mulik', 'kiran@gmail.com', '123456', 'employee', 'mech'),
(12, 'test', 'usr', 'testusr@test.com', '123456', 'employee', 'cse'),
(13, 'shruti', 'gebise', 'shruti@gmail.com', '123456', 'employee', 'mech'),
(14, 'poonam', 'mulik', 'poonam@gmail.com', '123456', 'employee', 'mech'),
(15, 'poonam', 'mulik', 'poonam@gmail.com', '123456', 'employee', 'mech'),
(16, 'ghdh', 'gfhf', 'gfh', 'ghfhfg', 'employee', 'cse'),
(17, 'sahili', 'desai', 'sahili@gmail.com', '123456', 'employee', 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `usr_id`, `usr_name`, `likes`, `dislike`, `ts`) VALUES
(55, 10, 'sahil', 1, 0, '2017-05-27 06:21:06'),
(56, 11, 'kiran', 1, 0, '2017-05-27 06:21:57'),
(57, 13, 'shruti', 0, 1, '2017-05-27 06:23:09'),
(58, 4, NULL, 1, 0, '2017-05-27 08:12:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
