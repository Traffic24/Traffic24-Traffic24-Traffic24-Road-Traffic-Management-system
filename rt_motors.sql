-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 05:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rt_motors`
--

-- --------------------------------------------------------

--
-- Table structure for table `dlreg`
--

CREATE TABLE `dlreg` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `nicnum` varchar(20) NOT NULL,
  `bloodgrp` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dlreg`
--

INSERT INTO `dlreg` (`id`, `fullname`, `address`, `gender`, `contact`, `nicnum`, `bloodgrp`, `category`) VALUES
(1, 'Mohamed Mohamed Irfan', 'Kinniya', 'Male', 713606909, '890540368V', 'B-', 'Light Vehicle'),
(2, 'Vijay Darsihan', 'Trincomalee', 'Male', 753439623, '9907820145', 'AB+', 'Heavy Vehicle');


-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `email`, `password`) VALUES
('admin', 'admin@gmail.com', 'Admin'),
('mail.iree', 'irfan@esoft.lk', '0967789'),
('irfanmm', 'irfan@gmail.com', 'myName'),
('', 'mail.iree@gmail.com', ''),
('', 'mohamed.irfan@esoft.lk', ''),
('testUser', 'test@gmail.com', 'TestPasswor');

-- --------------------------------------------------------

--
-- Table structure for table `vechiclereg`
--

CREATE TABLE `vechiclereg` (
  `id` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `VehicleType` varchar(50) NOT NULL,
  `Make` varchar(50) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `ManufYear` int(5) NOT NULL,
  `Orgin` varchar(50) NOT NULL,
  `ChassisNo` varchar(100) NOT NULL,
  `EngNo` varchar(100) NOT NULL,
  `Colour` varchar(25) NOT NULL,
  `Fuel` varchar(50) NOT NULL,
  `Tyre` int(10) NOT NULL,
  `EngCC` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vechiclereg`
--

INSERT INTO `vechiclereg` (`id`, `Name`, `NIC`, `Address`, `VehicleType`, `Make`, `Model`, `ManufYear`, `Orgin`, `ChassisNo`, `EngNo`, `Colour`, `Fuel`, `Tyre`, `EngCC`) VALUES
(1, 'Mohamed Irfan', '890540368V', 'Colombo', 'Motor Car', 'Honda', 'Vitz', 2016, 'German', '12356TTY', '148VC', 'Maron', 'Petrol', 4, 1000),
(2, 'Sakeep A.M.', '7895564E', 'Akkaraipattu', 'Car', 'Honda', 'Vitz', 2005, 'Japan', 'ChaSSi123', '237NN', 'Maroon', 'Petrol', 4, 1800),
(3, 'M.M.Irfan', '890540368V', 'Addalaichecnai', 'Motor Cycle', 'Hero', 'Passion Pro', 2015, 'India', 'AS456FG', 'DD4566', 'Black', 'Petrol', 2, 100),
(4, 'Minhaj', '789456123V', 'Ampara', 'Car', 'Toyota', 'Vitz', 2020, 'Jappan', 'WE89HHTB', 'RT3MP7812X', 'White', 'Petrol', 4, 1100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dlreg`
--
ALTER TABLE `dlreg`
  ADD PRIMARY KEY (`nicnum`),
  ADD UNIQUE KEY `uniq` (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `vechiclereg`
--
ALTER TABLE `vechiclereg`
  ADD PRIMARY KEY (`EngNo`),
  ADD UNIQUE KEY `uni` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dlreg`
--
ALTER TABLE `dlreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vechiclereg`
--
ALTER TABLE `vechiclereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
