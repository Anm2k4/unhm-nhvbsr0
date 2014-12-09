-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2014 at 07:27 PM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nhvbsr`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesssite`
--

CREATE TABLE IF NOT EXISTS `accesssite` (
  `SiteName` varchar(75) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `State` char(2) NOT NULL,
  `Notes` varchar(1000) NOT NULL,
  `Waterbody` varchar(50) NOT NULL,
  `Ownership` varchar(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emergencycontact`
--

CREATE TABLE IF NOT EXISTS `emergencycontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LakeHostID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Relationship` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `PrimaryPhone` varchar(20) NOT NULL,
  `SecondaryPhone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lakehost`
--

CREATE TABLE IF NOT EXISTS `lakehost` (
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `LakeHostStatus` varchar(20) NOT NULL,
  `DateTrained` datetime NOT NULL,
  `Trainer` varchar(20) NOT NULL,
  `TrainingManualStatus` tinyint(1) NOT NULL,
  `MinorContact` int(11) NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `SummerContactID` int(11) NOT NULL,
  `WinterContactID` int(11) NOT NULL,
  `HourlyRate` decimal(10,2) NOT NULL,
  `MinorContactID` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lakehostgroup`
--

CREATE TABLE IF NOT EXISTS `lakehostgroup` (
  `LakeHostGroupName` varchar(25) NOT NULL,
  `Notes` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lakehostmember`
--

CREATE TABLE IF NOT EXISTS `lakehostmember` (
  `LakeHostID` int(11) NOT NULL,
  `LakeHostGroupID` int(11) NOT NULL,
  PRIMARY KEY (`LakeHostID`,`LakeHostGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailingaddress`
--

CREATE TABLE IF NOT EXISTS `mailingaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address1` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `SummerContactID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `minorinfo`
--

CREATE TABLE IF NOT EXISTS `minorinfo` (
  `id` int(11) NOT NULL,
  `LakeHostID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Relationship` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `PrimaryPhone` varchar(20) NOT NULL,
  `SecondaryPhone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LakeHostID` (`LakeHostID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `summercontact`
--

CREATE TABLE IF NOT EXISTS `summercontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LakeHostID` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `PrimaryPhone` varchar(20) NOT NULL,
  `SecondaryPhone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `MailingAddressID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `LakeHostID` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `InputDate` date NOT NULL,
  `InspectionTime` time NOT NULL,
  `SiteID` int(11) NOT NULL,
  `LaunchStatus` varchar(10) NOT NULL,
  `RegistrationState` char(2) NOT NULL,
  `BoatType` varchar(30) NOT NULL,
  `PreviousInteraction` tinyint(1) NOT NULL,
  `LastSiteVisited` varchar(20) NOT NULL,
  `LastTownVisited` varchar(20) NOT NULL,
  `LastStateVisited` char(2) NOT NULL,
  `Drained` tinyint(1) NOT NULL,
  `Rinsed` tinyint(1) NOT NULL,
  `DryForFiveDays` tinyint(1) NOT NULL,
  `BoaterAwareness` varchar(10) NOT NULL,
  `SpecimenFound` tinyint(1) NOT NULL,
  `BowNumber` int(11) NOT NULL,
  `SentToDES` tinyint(1) NOT NULL,
  `Notes` varchar(1000) NOT NULL,
  `Active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`LakeHostID`, `id`, `InputDate`, `InspectionTime`, `SiteID`, `LaunchStatus`, `RegistrationState`, `BoatType`, `PreviousInteraction`, `LastSiteVisited`, `LastTownVisited`, `LastStateVisited`, `Drained`, `Rinsed`, `DryForFiveDays`, `BoaterAwareness`, `SpecimenFound`, `BowNumber`, `SentToDES`, `Notes`, `Active`) VALUES
(1, 1, '2014-10-10', '22:27:25', 123, 'launched', 'nh', 'stingray', 1, 'manch', 'manch', 'ma', 1, 1, 1, 'true', 1, 112234, 1, 'these are notes', 1),
(1, 2, '2014-10-10', '22:31:38', 123, 'launched', 'NH', 'stingray', 1, 'manch', 'manch', 'NH', 1, 1, 1, 'yes', 1, 12456, 1, 'these are notes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `LakeHostID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `SiteID` int(11) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Username` char(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wintercontact`
--

CREATE TABLE IF NOT EXISTS `wintercontact` (
  `LakeHostID` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `PrimaryPhone` varchar(20) NOT NULL,
  `SecondaryPhone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `minorinfo`
--
ALTER TABLE `minorinfo`
  ADD CONSTRAINT `minorinfo_ibfk_1` FOREIGN KEY (`LakeHostID`) REFERENCES `lakehost` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
