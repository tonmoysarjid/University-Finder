-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2019 at 03:36 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `univfindr`
--

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `univname` varchar(40) NOT NULL,
  `ssc` double NOT NULL,
  `hsc` double NOT NULL,
  `region` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`univname`, `ssc`, `hsc`, `region`) VALUES
('BUET', 5, 5, 'Dhaka'),
('DU', 4, 4.5, 'Dhaka'),
('JU', 4, 4.25, 'Dhaka'),
('MIST', 4.25, 4.5, 'Dhaka'),
('RUET', 4.5, 4.25, 'Rajshahi'),
('CUET', 4.5, 4.25, 'Chittagong'),
('KUET', 4.5, 4.75, 'Khulna'),
('KU', 4.25, 4.5, 'Khulna'),
('SUST', 4.25, 4.25, 'shylhet'),
('RU', 4.25, 4.6, 'Rajshahi'),
('CU', 3.5, 4, 'Chittagong'),
('CU', 3.5, 4, 'Chittagong'),
('CU', 3.5, 4, 'Chittagong'),
('CU', 3.5, 4, 'Chittagong'),
('IUT', 4.5, 4.8, 'Dhaka');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
