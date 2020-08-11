-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2020 at 12:26 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `comments` text NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `phone`, `comments`, `create_datetime`) VALUES
(1, 'Hariom malviya', 'gurjarhariom3114@gmail.com', '9685640396', 'great work buddy.keep it up.', '0000-00-00 00:00:00'),
(2, 'om', 'gurjarharsh3114@gmail.com', '9340012366', 'good to go.its working fine.', '0000-00-00 00:00:00'),
(3, 'om', 'gurjarharsh3114@gmail.com', '9340012366', 'good to go.its working fine.', '0000-00-00 00:00:00'),
(4, 'sid', 'rupaligurjar1234@gmail.com', '0987654321', 'encrypted he bro...u cant guess.', '0000-00-00 00:00:00'),
(5, 'john ', 'rupaligurjar1234@gmail.com', '0987654321', 'chill bro.all will be fine.', '2020-06-20 21:22:39'),
(6, 'Ankur Sodhi', 'Ankursodhi123@gmail.com', '0987654321', 'hello buddy...after long time', '2020-08-11 14:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `doct`
--

CREATE TABLE `doct` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doct`
--

INSERT INTO `doct` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'Harsh', '', '$2y$10$6He7ncQ8bDzUadwJ4aHGb.Er6vpJwXyYdFAmAZjNKGAaoqEuTsamu', '2020-06-18 15:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `doct2`
--

CREATE TABLE `doct2` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doct2`
--

INSERT INTO `doct2` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'Harsh', 'gurjarhariom3114@gmail.com', '789f215f55165cb68d8cd7d1ac2868a7', '2020-06-18 13:05:01'),
(2, 'hariom', 'gurjarhariom3114@gmail.com', '3b779a9a19a2b5f60cb4975e8d9bb40f', '2020-06-18 13:09:01'),
(3, 'omi', 'gurjarharsh3114@gmail.com', 'a04ffb78969eeec882b19c938337db1a', '2020-06-19 10:27:57'),
(4, 'ohm123', 'gurjarhariom3114@gmail.com', '789f215f55165cb68d8cd7d1ac2868a7', '2020-07-28 08:14:32'),
(5, 'Hari123', 'gurjarhariom3114@gmail.com', '789f215f55165cb68d8cd7d1ac2868a7', '2020-08-11 13:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--


-- --------------------------------------------------------


--


-- --------------------------------------------------------

--
-- Table structure for table `rdoct2`
--

CREATE TABLE `rdoct2` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rdoct2`
--

INSERT INTO `rdoct2` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'om', 'rupaligurjar1234@gmail.com', '3b779a9a19a2b5f60cb4975e8d9bb40f', '2020-06-18 14:07:33'),
(2, 'mottii', 'gurjarharsh3114@gmail.com', '25b547e67f824ea3bdbd885fbeccf248', '2020-06-19 10:42:29'),
(3, 'om', 'gurjarhariom3114@gmail.com', 'a04ffb78969eeec882b19c938337db1a', '2020-06-19 10:49:06');

-- --------------------------------------------------------


--



--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doct`
--
ALTER TABLE `doct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `doct2`
--
ALTER TABLE `doct2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rdoct2`
--
ALTER TABLE `rdoct2`
  ADD PRIMARY KEY (`id`);

--

--

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doct`
--
ALTER TABLE `doct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doct2`
--
ALTER TABLE `doct2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 
-- AUTO_INCREMENT for table `rdoct2`
--
ALTER TABLE `rdoct2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
