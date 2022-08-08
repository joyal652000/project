-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2022 at 08:48 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travelogue_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE IF NOT EXISTS `club` (
  `clid` int(11) NOT NULL AUTO_INCREMENT,
  `clname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `pin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`clid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`clid`, `clname`, `email`, `phone`, `district`, `address`, `reg_no`, `pin`) VALUES
(4, 'Vis', 'vis@mail.com', '9999999999', 'Ernakulam', 'Vis\r\nAdrs', 'VISREG12', '678678');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `email`, `phone`, `gender`, `age`, `district`, `address`) VALUES
(1, 'Akil V', 'ak@mail.com', '9090909090', 'Male', 24, 'Ernakulam', 'Ak Adrs\r\nVVV');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lid`, `uid`, `username`, `password`, `usertype`, `status`) VALUES
(1, 1, 'ak@mail.com', '12345', 'Customer', 'Active'),
(2, 0, 'admin@gmail.com', 'admin', 'Admin', 'Active'),
(3, 4, 'vis@mail.com', '12345', 'Club', 'Active'),
(4, 1, 'ss@mail.com', '12345', 'Shop', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `shop` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `pin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`sid`, `shop`, `district`, `address`, `phone`, `email`, `reg_no`, `pin`) VALUES
(1, 'SS', 'Ernakulam', 'SS\r\nAdrs', '9999999998', 'ss@mail.com', 'SSREG22', '678678');
