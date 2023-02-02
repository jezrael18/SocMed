-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 02:22 PM
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
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` varchar(100) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `rom` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `user_id`, `product_name`, `price`, `ram`, `rom`, `status`) VALUES
(31, 4, 'Iphone 12', '$99.99', '12Gb', '1000Tb', 'Sold'),
(32, 4, 'Iphone 12', '$99.99', '12Gb', '1000Tb', 'Sold'),
(33, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(34, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(35, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(36, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(37, 6, 'REDMI 10s', '$65.99', '8Gb', '64Gb', 'Sold'),
(38, 6, 'REDMI 10s', '$65.99', '8Gb', '64Gb', 'Sold'),
(39, 6, 'REDMI 10s', '$65.99', '8Gb', '64Gb', 'Sold'),
(40, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(41, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(42, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(43, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(44, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(45, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(46, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(47, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(48, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(49, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(50, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(51, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(52, 6, 'HUAWEI P30 pro', '$99.99', '8Gb', '500Gb', 'Sold'),
(53, 6, 'CHERRY MOBILE', '$45.99', '8Gb', '64Gb', 'Sold');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_ password` varchar(100) NOT NULL,
  `isLocked` int(1) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `username`, `email`, `password`, `confirm_ password`, `isLocked`, `role`) VALUES
(1, 'test123', 'test123', 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 0, 0),
(2, 'ranel soliano', 'user1', 'ranel@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 0, 0),
(3, 'test123', 'test123', 'test2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 0, 0),
(4, 'test123', 'test123', 'ranel.soliano@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 0, 0),
(5, 'test2', 'test2', 'dasdas@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 0, 0),
(6, 'tes', 'tes', 'tes@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 0, 0),
(7, 'admin', 'admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 0, 1),
(8, 'test123', 'test123', 'test123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
