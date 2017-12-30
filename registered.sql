-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2015 at 01:31 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
CREATE TABLE IF NOT EXISTS `registered` (
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `res_address` varchar(150) NOT NULL,
  `balance` int(5) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  PRIMARY KEY (`user_name`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`first_name`, `last_name`, `user_name`, `password`, `email`, `address`, `balance`, `phone_no`) VALUES
('Ajinkya', 'Gawali', 'ajinkya', 'ajinkyagawali', 'ajinkya.gawali@gmail.com', '401, Winterfell, Seven Kingdoms.', 500, 6763459860),
('Juilee', 'Paranjpe', 'juilee', 'juileeparanjpe', 'juilee.paranjpe@gmail.com', '204, Evergreen hills, Westeros.', 500, 2147483647),
('Pranali', 'Loke', 'pranali', 'pranaliloke', 'pranali.loke@gmail.com', '640, Kings Landing, Westeros.', 500, 8983459870),
('Sayli', 'Bhabal', 'sayli', 'saylibhabal', 'sayli.bhabal@gmail.com', '245, Malabar hills, Mumbai.', 500, 6475676890),
('Wasiq', 'Rumaney', 'wasiq', 'wasiqrumaney', 'wasiq.rumaney@gmail.com', '546, Paradise Villa, Lonavala.', 500, 8897560987);
