-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2019 at 07:36 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prison`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_name`, `admin_password`) VALUES
('admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE `court` (
  `CourtID` int(11) NOT NULL,
  `CourtName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `court`
--

INSERT INTO `court` (`CourtID`, `CourtName`) VALUES
(1, 'High Court'),
(2, 'Supreme Court'),
(3, 'Judge Court');

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE `crime` (
  `Prisoner_ID` int(11) NOT NULL,
  `Crime_Name` varchar(255) NOT NULL,
  `Crime_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicalservice`
--

CREATE TABLE `medicalservice` (
  `Prisoner_ID` int(11) NOT NULL,
  `S_Date` date NOT NULL,
  `Doctors_Name` varchar(255) NOT NULL,
  `Reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalservice`
--

INSERT INTO `medicalservice` (`Prisoner_ID`, `S_Date`, `Doctors_Name`, `Reason`) VALUES
(2, '2019-02-14', 'Someone', 'Fever');

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

CREATE TABLE `prisoner` (
  `pid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `bloodgroup` varchar(255) NOT NULL,
  `entryDate` date NOT NULL,
  `dateofbirth` date NOT NULL,
  `punishmentDuration` int(11) NOT NULL,
  `CellNo` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prisoner`
--

INSERT INTO `prisoner` (`pid`, `name`, `nid`, `bloodgroup`, `entryDate`, `dateofbirth`, `punishmentDuration`, `CellNo`, `address`) VALUES
(2, 'Nahin Akhtar', '123456789', 'A+', '2018-05-12', '1996-06-15', 10, 2, 'Kishoreganj');

-- --------------------------------------------------------

--
-- Table structure for table `prisonpolice`
--

CREATE TABLE `prisonpolice` (
  `Police_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `WorkingArea` varchar(255) NOT NULL,
  `DutyStarts` time NOT NULL,
  `DutyEnds` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prisonpolice`
--

INSERT INTO `prisonpolice` (`Police_ID`, `Name`, `PhoneNumber`, `WorkingArea`, `DutyStarts`, `DutyEnds`) VALUES
(1, 'Abdul Kader', '01715556665', 'PB101', '10:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sents`
--

CREATE TABLE `sents` (
  `Court_Number` int(11) NOT NULL,
  `Prisoner_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sents`
--

INSERT INTO `sents` (`Court_Number`, `Prisoner_ID`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `Prisoner_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Relation` varchar(255) NOT NULL,
  `MeetingDate` date NOT NULL,
  `MeetingDuration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`Prisoner_ID`, `Name`, `Relation`, `MeetingDate`, `MeetingDuration`) VALUES
(0, ' Someone', 'Friend', '2018-05-02', 10),
(0, ' Nijhum', 'Friend', '2018-12-12', 30),
(1, 'Someone', 'Fff', '2018-05-05', 20),
(1, ' Nijhum', 'Friend', '2019-01-01', 15),
(2, ' Nijhum', 'sdfsad', '2018-06-14', 11),
(2, ' sdfsadf', 'sdfa', '2019-02-02', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`CourtID`,`CourtName`),
  ADD KEY `CourtID` (`CourtID`,`CourtName`);

--
-- Indexes for table `crime`
--
ALTER TABLE `crime`
  ADD PRIMARY KEY (`Prisoner_ID`),
  ADD KEY `Prisoner_ID` (`Prisoner_ID`);

--
-- Indexes for table `medicalservice`
--
ALTER TABLE `medicalservice`
  ADD PRIMARY KEY (`Prisoner_ID`),
  ADD KEY `Prisoner_ID` (`Prisoner_ID`);

--
-- Indexes for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `prisonpolice`
--
ALTER TABLE `prisonpolice`
  ADD PRIMARY KEY (`Police_ID`),
  ADD KEY `Police_ID` (`Police_ID`);

--
-- Indexes for table `sents`
--
ALTER TABLE `sents`
  ADD PRIMARY KEY (`Court_Number`,`Prisoner_ID`),
  ADD KEY `Court_Number` (`Court_Number`,`Prisoner_ID`),
  ADD KEY `sents_ibfk_1` (`Prisoner_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prisoner`
--
ALTER TABLE `prisoner`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prisonpolice`
--
ALTER TABLE `prisonpolice`
  MODIFY `Police_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crime`
--
ALTER TABLE `crime`
  ADD CONSTRAINT `crime_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicalservice`
--
ALTER TABLE `medicalservice`
  ADD CONSTRAINT `medicalservice_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sents`
--
ALTER TABLE `sents`
  ADD CONSTRAINT `sents_ibfk_1` FOREIGN KEY (`Prisoner_ID`) REFERENCES `prisoner` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sents_ibfk_2` FOREIGN KEY (`Court_Number`) REFERENCES `court` (`CourtID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
