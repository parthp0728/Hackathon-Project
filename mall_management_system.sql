-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 06:17 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mall_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `BRAND_ID` varchar(5) NOT NULL,
  `BRAND_NAME` varchar(20) NOT NULL,
  `TYPE` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `female`
--

CREATE TABLE `female` (
  `F_ID` int(5) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `SIZE` int(2) NOT NULL,
  `PRICE` int(6) NOT NULL,
  `QUANTITY` int(5) NOT NULL,
  `ENTRY_DATE` date NOT NULL,
  `BRAND_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `BRAND_ID` varchar(5) NOT NULL,
  `PRICE` int(10) NOT NULL,
  `EXP_DATE` date NOT NULL,
  `FOOD_NAME` varchar(20) NOT NULL,
  `ENTRY_DATE` date NOT NULL,
  `QUANTITY` int(5) NOT NULL,
  `PRODUCT_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `male`
--

CREATE TABLE `male` (
  `M_ID` int(5) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `SIZE` int(2) NOT NULL,
  `PRICE` int(6) NOT NULL,
  `QUANTITY` int(5) NOT NULL,
  `BRAND_ID` varchar(5) NOT NULL,
  `ENTRY_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`BRAND_ID`);

--
-- Indexes for table `female`
--
ALTER TABLE `female`
  ADD PRIMARY KEY (`F_ID`),
  ADD KEY `BRAND_ID` (`BRAND_ID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `BRAND_ID` (`BRAND_ID`);

--
-- Indexes for table `male`
--
ALTER TABLE `male`
  ADD PRIMARY KEY (`M_ID`),
  ADD KEY `BRAND_ID` (`BRAND_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `female`
--
ALTER TABLE `female`
  MODIFY `F_ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `male`
--
ALTER TABLE `male`
  MODIFY `M_ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`BRAND_ID`) REFERENCES `brand` (`BRAND_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
