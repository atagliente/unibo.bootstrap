-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2017 at 03:14 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solunibo`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(160) COLLATE utf8_bin DEFAULT 'this is a simple string',
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `matricola___fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `time_start`, `time_finish`, `matricola___fk`) VALUES
(2, 'test', 'test of a simple join', NULL, NULL, 731579);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `numberID` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `cfu` int(11) NOT NULL,
  `year` int(1) NOT NULL,
  `teacher___fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`numberID`, `title`, `cfu`, `year`, `teacher___fk`) VALUES
(1, 'Tecnologie Web', 6, 3, 4),
(2, 'SO', 12, 2, 1),
(3, 'OOP', 12, 2, 2),
(4, 'Analisi 1', 12, 1, 3),
(5, 'Architetture degli Elaboratori', 12, 1, 5),
(6, 'Ingegneria del SW', 6, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `logattemps`
--

CREATE TABLE `logattemps` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `logattemps`
--

INSERT INTO `logattemps` (`username`, `time`) VALUES
('antonio.tagliente@studio.unibo.it', '1482758822'),
('antonio.tagliente@studio.unibo.it', '1482779287'),
('antonio.tagliente@studio.unibo.it', '1482829023'),
('antonio.tagliente@studio.unibo.it', '1482833571'),
('antonio.tagliente@studio.unibo.it', '1482833577'),
('antonio.tagliente@studio.unibo.it', '1482833622'),
('antonio.tagliente@studio.unibo.it', '1482833629'),
('antonio.tagliente@studio.unibo.it', '1483008795'),
('antonio.tagliente@studio.unibo.it', '1483010573'),
('antonio.tagliente@studio.unibo.it', '1483534740');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` char(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('antonio.tagliente@studio.unibo.it', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09'),
('rossella.spada@studio.unibo.it', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `numberID` int(11) NOT NULL,
  `payDay` date NOT NULL,
  `student___fk` int(11) NOT NULL,
  `tax___fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `storyBoard`
--

CREATE TABLE `storyBoard` (
  `numberID` int(11) NOT NULL,
  `prenotation` tinyint(1) NOT NULL DEFAULT '0',
  `vote` int(2) NOT NULL DEFAULT '0',
  `student___fk` int(11) NOT NULL,
  `test___fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `storyBoard`
--

INSERT INTO `storyBoard` (`numberID`, `prenotation`, `vote`, `student___fk`, `test___fk`) VALUES
(2, 0, 23, 123456, 6),
(3, 1, 0, 123456, 6),
(4, 1, 0, 123456, 6),
(5, 1, 0, 123456, 6),
(6, 1, 0, 123456, 7),
(7, 1, 0, 123456, 6),
(8, 1, 0, 123456, 6),
(9, 1, 26, 123456, 1),
(10, 1, 5, 123456, 9);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `matricola` int(12) NOT NULL,
  `nome` char(30) COLLATE utf8_bin NOT NULL,
  `cognome` char(30) COLLATE utf8_bin NOT NULL,
  `data_di_nascita` char(20) COLLATE utf8_bin NOT NULL,
  `fk_login` char(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`matricola`, `nome`, `cognome`, `data_di_nascita`, `fk_login`) VALUES
(123456, 'Piermenti', 'Sfracellozzi', '01/01/01', 'antonio.tagliente@studio.unibo.it'),
(654321, 'Ubaldo', 'Sterchi', '31/12/2016', 'rossella.spada@studio.unibo.it'),
(731579, 'Antonio', 'Tagliente', '25/00/00', 'estebanDoNascimiento@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `numberID` int(11) NOT NULL,
  `dateOpen` date NOT NULL,
  `dateClose` date NOT NULL,
  `amount` float NOT NULL,
  `delayFee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `numberID` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `firstName` varchar(30) COLLATE utf8_bin NOT NULL,
  `lastName` varchar(30) COLLATE utf8_bin NOT NULL,
  `dateOfBirth` date NOT NULL,
  `nationality` varchar(50) COLLATE utf8_bin NOT NULL,
  `curriculum` varchar(80) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`numberID`, `email`, `firstName`, `lastName`, `dateOfBirth`, `nationality`, `curriculum`) VALUES
(1, 'ghini@unibo.it', 'Vittorio', 'Ghini', '2017-01-01', 'Italy', 'none'),
(2, 'viroli@unibo.it', 'Mirko', 'Viroli', '2017-01-25', 'Italy', 'none'),
(3, 'paolo.albano@unibo.it', 'Paolo', 'Albano', '2017-01-02', 'Italy', NULL),
(4, 'paola.salomoni@unibo.it', 'Paola', 'Salomoni', '2017-01-01', 'Italy', NULL),
(5, 'davide.maltoni@unibo.it', 'Davide', 'Maltoni', '2017-01-01', 'Italy', NULL),
(6, 'stefano.rizzi@unibo.it', 'Stefano', 'Rizzi', '2017-01-01', 'Italy', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachingDoc`
--

CREATE TABLE `teachingDoc` (
  `numberID` int(11) NOT NULL,
  `title` char(50) COLLATE utf8_bin NOT NULL,
  `url` char(200) COLLATE utf8_bin NOT NULL,
  `teacher___fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `teachingDoc`
--

INSERT INTO `teachingDoc` (`numberID`, `title`, `url`, `teacher___fk`) VALUES
(1, 'Slide Introduzione', 'http://campus.unibo.it/241234/7/presentazione.pdf', 72775),
(2, 'Slide Modulo-1.1', 'http://campus.unibo.it/241235/25/modulo-1.1%20-%20Introduzione%20ai%20Sistemi%20Embedded.pdf', 72775),
(3, 'Introduzione', 'http://bias.csr.unibo.it/maio/courses/bd/lucidi_2010/Introduzione.zip', 10906),
(4, 'WebDB', 'http://bias.csr.unibo.it/maio/courses/bd/lucidi_2010/WebDB.zip', 10906),
(5, 'Sito Ufficiale', 'https://www.unibo.it/sitoweb/luca.pasquini/', 405),
(6, 'Introduzione alla programmazione OO, pt 2', 'http://campus.unibo.it/241791/1/week02.zip', 70219);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `numberID` int(11) NOT NULL,
  `dateStart` date NOT NULL,
  `time` time NOT NULL,
  `classroom` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `exam___fk` int(11) NOT NULL,
  `teacher___fk` int(11) NOT NULL,
  `dateFinish` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`numberID`, `dateStart`, `time`, `classroom`, `exam___fk`, `teacher___fk`, `dateFinish`) VALUES
(1, '2017-01-01', '02:00:00', 'Lab 3', 1, 4, '2017-01-01'),
(2, '2017-01-01', '04:00:00', 'Alua D', 4, 3, '2017-01-01'),
(6, '2017-01-01', '12:00:00', 'Aula A', 3, 1, '2017-01-04'),
(7, '2017-01-31', '11:00:00', 'Aula Magna', 2, 2, '2017-02-07'),
(8, '2017-01-01', '23:00:00', 'Aula Magna', 5, 5, '2017-01-01'),
(9, '2017-01-01', '03:00:00', 'Aula Magna', 6, 6, '2017-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_matricola___fk_uindex` (`matricola___fk`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`numberID`),
  ADD KEY `teacher___fk` (`teacher___fk`);

--
-- Indexes for table `logattemps`
--
ALTER TABLE `logattemps`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`numberID`),
  ADD KEY `tax___fk` (`tax___fk`);

--
-- Indexes for table `storyBoard`
--
ALTER TABLE `storyBoard`
  ADD PRIMARY KEY (`numberID`),
  ADD KEY `student___fk` (`student___fk`),
  ADD KEY `test___fk` (`test___fk`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`matricola`),
  ADD UNIQUE KEY `fk_login` (`fk_login`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`numberID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`numberID`);

--
-- Indexes for table `teachingDoc`
--
ALTER TABLE `teachingDoc`
  ADD PRIMARY KEY (`numberID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`numberID`),
  ADD KEY `teacher___fk` (`teacher___fk`),
  ADD KEY `exam___fk` (`exam___fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `storyBoard`
--
ALTER TABLE `storyBoard`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `matricola___fk` FOREIGN KEY (`matricola___fk`) REFERENCES `student` (`matricola`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `teacher___fk` FOREIGN KEY (`teacher___fk`) REFERENCES `teacher` (`numberID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `tax___fk` FOREIGN KEY (`tax___fk`) REFERENCES `tax` (`numberID`);

--
-- Constraints for table `storyBoard`
--
ALTER TABLE `storyBoard`
  ADD CONSTRAINT `student___fk` FOREIGN KEY (`student___fk`) REFERENCES `student` (`matricola`),
  ADD CONSTRAINT `test___fk` FOREIGN KEY (`test___fk`) REFERENCES `test` (`numberID`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `exam___fk` FOREIGN KEY (`exam___fk`) REFERENCES `exam` (`numberID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
