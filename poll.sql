-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2015 at 05:25 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poll`
--

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE IF NOT EXISTS `link` (
  `id` int(11) NOT NULL,
  `place` varchar(20) NOT NULL,
  `link` varchar(300) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `place`, `link`, `likes`) VALUES
(1, 'hampi', 'https://en.wikipedia.org/wiki/Hampi', 34),
(2, 'hampi', 'http://www.newworldencyclopedia.org/entry/Hampi', 11),
(3, 'hampi', 'http://travel.india.com/articles/9-lesser-known-facts-hampi/', 23),
(4, 'hampi', 'http://hampi.in/', 98),
(5, 'hampi', 'http://www.karnataka.com/hampi/', 73),
(6, 'agra', 'https://en.wikipedia.org/wiki/Agra', 45),
(7, 'agra', 'http://www.tripadvisor.in/Tourism-g297683-Agra_Uttar_Pradesh-Vacations.html', 67),
(8, 'agra', 'http://www.mapsofindia.com/agra/', 123),
(9, 'agra', 'http://www.tajmahal.gov.in/tours.html', 99),
(10, 'agra', 'http://www.tourism-of-india.com/agra/', 55),
(11, 'darjeeling', 'https://en.wikipedia.org/wiki/Darjeeling', 45),
(12, 'darjeeling', 'http://www.darjeeling-tourism.com/', 78),
(13, 'darjeeling', 'http://www.tripadvisor.in/Tourism-g304557-Darjeeling_West_Bengal-Vacations.html', 23),
(14, 'darjeeling', 'http://www.pnhzp.gov.in/', 2),
(15, 'darjeeling', 'http://www.lonelyplanet.com/india/west-bengal/darjeeling', 11),
(16, 'goa', 'https://en.wikipedia.org/wiki/Goa', 3),
(17, 'goa', 'http://goa-tourism.com/', 22),
(18, 'goa', 'http://www.tripadvisor.in/Tourism-g297604-Goa-Vacations.html', 20),
(19, 'goa', 'http://www.goatourism.gov.in/', 54),
(20, 'goa', 'http://www.lonelyplanet.com/india/goa', 34),
(21, 'lek', 'https://en.wikipedia.org/wiki/Ladakh', 87),
(22, 'lek', 'http://leh.nic.in/', 112),
(23, 'lek', 'http://www.lonelyplanet.com/india/jammu-and-kashmir/ladakh', 56),
(24, 'lek', 'http://www.ladakh.com/', 67),
(25, 'lek', 'http://www.lehladakhindia.com/', 89),
(26, 'varanasi', 'http://varanasi.nic.in/', 45),
(27, 'varanasi', 'https://en.wikipedia.org/wiki/Varanasi', 12),
(28, 'varanasi', 'http://www.varanasicity.com/', 87),
(29, 'varanasi', 'http://varanasiwalks.com/', 34),
(30, 'varanasi', 'http://www.lonelyplanet.com/india/uttar-pradesh/varanasi', 37);

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `id` int(11) NOT NULL,
  `agra` int(11) NOT NULL DEFAULT '0',
  `varanasi` int(11) NOT NULL DEFAULT '0',
  `lek` int(11) NOT NULL DEFAULT '0',
  `hampi` int(11) NOT NULL DEFAULT '0',
  `darjeeling` int(11) NOT NULL DEFAULT '0',
  `goa` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `agra`, `varanasi`, `lek`, `hampi`, `darjeeling`, `goa`, `total`) VALUES
(1, 27, 46, 59, 36, 78, 10, 256);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `name`, `dob`, `password`, `phone`) VALUES
(3, 'shreyas', 'shreyas', '03-11-1995', 'shrey', '9902532426'),
(4, 'vikram', 'vikram', '04-12-1994', 'qwerty', '7760047372');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
