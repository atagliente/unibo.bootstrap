-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Mar 08, 2017 alle 10:16
-- Versione del server: 10.1.19-MariaDB
-- Versione PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solunibo`
--
CREATE DATABASE IF NOT EXISTS `solunibo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `solunibo`;

-- --------------------------------------------------------

--
-- Struttura della tabella `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(160) COLLATE utf8_bin DEFAULT 'this is a simple string',
  `DataInizio` datetime NOT NULL,
  `DataFine` datetime NOT NULL,
  `student___fk` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7315800 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `DataInizio`, `DataFine`, `student___fk`) VALUES
(7315798, 'Appello prenotato', 'Architetture degli Elaboratori', '2017-01-01 23:00:00', '2017-01-01 00:00:00', 731579);

-- --------------------------------------------------------

--
-- Struttura della tabella `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `numberID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `cfu` int(11) NOT NULL,
  `year` int(1) NOT NULL,
  `teacher___fk` int(11) NOT NULL,
  PRIMARY KEY (`numberID`),
  KEY `teacher___fk` (`teacher___fk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `exam`
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
-- Struttura della tabella `logattemps`
--

DROP TABLE IF EXISTS `logattemps`;
CREATE TABLE IF NOT EXISTS `logattemps` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `logattemps`
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
('antonio.tagliente@studio.unibo.it', '1483534740'),
('antonio.tagliente@studio.unibo.it', '1483783751'),
('antonio.tagliente@studio.unibo.it', '1483784155'),
('antonio.tagliente@studio.unibo.it', '1483784211'),
('antonio.tagliente@studio.unibo.it', '1483784658'),
('antonio.tagliente@studio.unibo.it', '1483785224'),
('antonio.tagliente@studio.unibo.it', '1483786585'),
('antonio.tagliente@studio.unibo.it', '1483786590'),
('antonio.tagliente@studio.unibo.it', '1483786597'),
('antonio.tagliente@studio.unibo.it', '1483786640'),
('antonio.tagliente@studio.unibo.it', '1483786816'),
('antonio.tagliente@studio.unibo.it', '1483786823'),
('antonio.tagliente@studio.unibo.it', '1483786861'),
('antonio.tagliente@studio.unibo.it', '1483786903'),
('antonio.tagliente@studio.unibo.it', '1483786921'),
('antonio.tagliente@studio.unibo.it', '1483787213'),
('antonio.tagliente@studio.unibo.it', '1483787588'),
('antonio.tagliente@studio.unibo.it', '1483787936'),
('antonio.tagliente@studio.unibo.it', '1483787941'),
('antonio.tagliente@studio.unibo.it', '1483787998'),
('antonio.tagliente@studio.unibo.it', '1483788037'),
('antonio.tagliente@studio.unibo.it', '1483788247'),
('antonio.tagliente@studio.unibo.it', '1483788375'),
('antonio.tagliente@studio.unibo.it', '1483788425'),
('antonio.tagliente@studio.unibo.it', '1483788468');

-- --------------------------------------------------------

--
-- Struttura della tabella `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` char(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('antonio.tagliente@studio.unibo.it', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09'),
('estebanDoNascimiento@test.com', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09'),
('rossella.spada@studio.unibo.it', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09');

-- --------------------------------------------------------

--
-- Struttura della tabella `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL,
  `ristorante___fk` int(11) NOT NULL,
  `primo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `secondo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dolce` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bibita` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `ristorante___fk` (`ristorante___fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `numberID` int(11) NOT NULL,
  `payDay` date NOT NULL,
  `tax___fk` int(11) NOT NULL,
  `student___fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`numberID`),
  KEY `tax___fk` (`tax___fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `payment`
--

INSERT INTO `payment` (`numberID`, `payDay`, `tax___fk`, `student___fk`) VALUES
(1, '2014-09-25', 4, 123456),
(2, '2015-09-27', 5, 123456),
(3, '2015-12-29', 6, 123456),
(4, '2016-05-12', 7, 123456),
(5, '2016-09-22', 9, 123456),
(6, '2016-12-23', 10, 123456);

-- --------------------------------------------------------

--
-- Struttura della tabella `ristorante`
--

DROP TABLE IF EXISTS `ristorante`;
CREATE TABLE IF NOT EXISTS `ristorante` (
  `id_ristorante` int(11) NOT NULL,
  `nome` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `indirizzo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_ristorante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `storyboard`
--

DROP TABLE IF EXISTS `storyboard`;
CREATE TABLE IF NOT EXISTS `storyboard` (
  `numberID` int(11) NOT NULL AUTO_INCREMENT,
  `prenotation` tinyint(1) NOT NULL DEFAULT '0',
  `vote` int(2) NOT NULL DEFAULT '0',
  `student___fk` int(11) NOT NULL,
  `test___fk` int(11) NOT NULL,
  PRIMARY KEY (`numberID`),
  KEY `student___fk` (`student___fk`),
  KEY `test___fk` (`test___fk`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `storyboard`
--

INSERT INTO `storyboard` (`numberID`, `prenotation`, `vote`, `student___fk`, `test___fk`) VALUES
(2, 1, 23, 731579, 6),
(3, 0, 0, 123456, 7),
(4, 0, 0, 731579, 9),
(5, 1, 30, 731579, 1),
(6, 0, 0, 731579, 2),
(7, 1, 0, 731579, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `matricola` int(12) NOT NULL,
  `nome` char(30) COLLATE utf8_bin NOT NULL,
  `cognome` char(30) COLLATE utf8_bin NOT NULL,
  `data_di_nascita` char(20) COLLATE utf8_bin NOT NULL,
  `year` int(1) NOT NULL DEFAULT '1',
  `fk_login` char(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`matricola`),
  UNIQUE KEY `fk_login` (`fk_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `student`
--

INSERT INTO `student` (`matricola`, `nome`, `cognome`, `data_di_nascita`, `year`, `fk_login`) VALUES
(123456, 'Piermenti', 'Sfracellozzi', '01/01/01', 3, 'antonio.tagliente@studio.unibo.it'),
(654321, 'Ubaldo', 'Sterchi', '31/12/2016', 3, 'rossella.spada@studio.unibo.it'),
(731579, 'Antonio', 'Tagliente', '25/00/00', 2, 'estebanDoNascimiento@test.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `tax`
--

DROP TABLE IF EXISTS `tax`;
CREATE TABLE IF NOT EXISTS `tax` (
  `numberID` int(11) NOT NULL,
  `descrizione` text COLLATE utf8_bin NOT NULL,
  `dateOpen` date NOT NULL,
  `dateClose` date NOT NULL,
  `amount` float NOT NULL,
  `delayFee` float NOT NULL,
  `year` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`numberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `tax`
--

INSERT INTO `tax` (`numberID`, `descrizione`, `dateOpen`, `dateClose`, `amount`, `delayFee`, `year`) VALUES
(1, 'Rata 1', '2014-09-01', '2014-09-30', 600, 100, 1),
(2, 'Rata 2', '2014-12-01', '2014-12-30', 744, 100, 1),
(3, 'Rata 3', '2015-05-01', '2015-05-30', 246, 100, 1),
(4, 'Monorata', '2014-09-01', '2014-09-30', 1874, 100, 1),
(5, 'Rata 1', '2015-09-01', '2015-09-30', 600, 100, 2),
(6, 'Rata 2', '2015-12-01', '2015-12-30', 744, 100, 2),
(7, 'Rata 3', '2016-05-01', '2016-05-30', 247, 100, 2),
(8, 'Monorata', '2015-09-01', '2015-09-30', 1895, 100, 2),
(9, 'Rata 1', '2016-09-01', '2016-09-30', 600, 100, 3),
(10, 'Rata 2', '2016-12-01', '2016-12-30', 757, 100, 3),
(11, 'Rata 3', '2017-05-01', '2017-05-30', 248, 100, 3),
(12, 'Monorata', '2016-09-01', '2016-09-30', 1899, 100, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `numberID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `firstName` varchar(30) COLLATE utf8_bin NOT NULL,
  `lastName` varchar(30) COLLATE utf8_bin NOT NULL,
  `dateOfBirth` date NOT NULL,
  `nationality` varchar(50) COLLATE utf8_bin NOT NULL,
  `curriculum` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`numberID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `teacher`
--

INSERT INTO `teacher` (`numberID`, `email`, `firstName`, `lastName`, `dateOfBirth`, `nationality`, `curriculum`) VALUES
(1, 'ghini@unibo.it', 'Vittorio', 'Ghini', '2017-01-01', 'Italy', NULL),
(2, 'viroli@unibo.it', 'Mirko', 'Viroli', '2017-01-25', 'Italy', NULL),
(3, 'paolo.albano@unibo.it', 'Paolo', 'Albano', '2017-01-02', 'Italy', NULL),
(4, 'paola.salomoni@unibo.it', 'Paola', 'Salomoni', '2017-01-01', 'Italy', NULL),
(5, 'davide.maltoni@unibo.it', 'Davide', 'Maltoni', '2017-01-01', 'Italy', NULL),
(6, 'stefano.rizzi@unibo.it', 'Stefano', 'Rizzi', '2017-01-01', 'Italy', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `teachingdoc`
--

DROP TABLE IF EXISTS `teachingdoc`;
CREATE TABLE IF NOT EXISTS `teachingdoc` (
  `teachingID` int(11) NOT NULL AUTO_INCREMENT,
  `teachingTitle` char(50) COLLATE utf8_bin NOT NULL,
  `typology` text COLLATE utf8_bin NOT NULL,
  `url` char(200) COLLATE utf8_bin NOT NULL,
  `teacher___fk` int(11) NOT NULL,
  PRIMARY KEY (`teachingID`),
  KEY `teacher___fk` (`teacher___fk`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `teachingdoc`
--

INSERT INTO `teachingdoc` (`teachingID`, `teachingTitle`, `typology`, `url`, `teacher___fk`) VALUES
(1, 'Slide HTML 1', 'Teoria', 'https://elearning-cds.unibo.it/pluginfile.php/101054/mod_resource/content/1/5_html1.pdf', 4),
(2, 'Slide HTML 2', 'Teoria', 'https://elearning-cds.unibo.it/pluginfile.php/103938/mod_resource/content/2/7_html2.pdf', 4),
(3, 'Slide Bootstrap', 'Seminari', 'https://elearning-cds.unibo.it/pluginfile.php/105347/mod_resource/content/1/bootstrap.pdf', 4),
(4, 'Slide Mobilita''', 'Seminari', 'https://elearning-cds.unibo.it/pluginfile.php/99844/mod_resource/content/3/In%20movimento.pdf', 4),
(5, 'Settimana 1', '', 'http://campus.unibo.it/240126/3/week01.zip', 2),
(6, 'Settimana 2', '', 'http://campus.unibo.it/245677/1/week04.zip', 2),
(7, 'Settimana 3', '', 'http://campus.unibo.it/247502/', 2),
(8, 'Slide del corso', 'Teoria', 'http://campus.unibo.it/237286/61/IngSW.zip', 6),
(9, 'Esercizi svolti', 'Laboratorio', 'http://campus.unibo.it/237286/62/CompitiIS.pdf', 6),
(10, 'Testi dei compiti', 'Esami', 'http://campus.unibo.it/237286/49/Esercizi%20Risolti.pdf', 6),
(11, 'Introduzione', 'Teoria', 'http://www.cs.unibo.it/~ghini/didattica/sistemioperativi/3_introSistemaOperativo.pdf', 1),
(12, 'Esercizi sulla concorrenza', 'Laboratorio', 'http://www.cs.unibo.it/~ghini/didattica/sistemioperativi/6g_EserciziConcorrenzaEVari.pdf', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `numberID` int(11) NOT NULL AUTO_INCREMENT,
  `dateStart` date NOT NULL,
  `time` time NOT NULL,
  `classroom` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `exam___fk` int(11) NOT NULL,
  `teacher___fk` int(11) NOT NULL,
  `dateFinish` date NOT NULL,
  PRIMARY KEY (`numberID`),
  KEY `teacher___fk` (`teacher___fk`),
  KEY `exam___fk` (`exam___fk`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `test`
--

INSERT INTO `test` (`numberID`, `dateStart`, `time`, `classroom`, `exam___fk`, `teacher___fk`, `dateFinish`) VALUES
(1, '2017-01-01', '02:00:00', 'Lab 3', 1, 4, '2017-01-01'),
(2, '2017-01-01', '04:00:00', 'Alua D', 4, 3, '2017-01-01'),
(6, '2017-01-01', '12:00:00', 'Aula A', 3, 1, '2017-01-04'),
(7, '2017-01-31', '11:00:00', 'Aula Magna', 2, 2, '2017-02-07'),
(8, '2017-01-01', '23:00:00', 'Aula Magna', 5, 5, '2017-01-01'),
(9, '2017-01-01', '03:00:00', 'Aula Magna', 6, 6, '2017-01-01');

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `teacher___fk` FOREIGN KEY (`teacher___fk`) REFERENCES `teacher` (`numberID`);

--
-- Limiti per la tabella `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `ristorante___fk` FOREIGN KEY (`ristorante___fk`) REFERENCES `ristorante` (`id_ristorante`);

--
-- Limiti per la tabella `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `tax___fk` FOREIGN KEY (`tax___fk`) REFERENCES `tax` (`numberID`);

--
-- Limiti per la tabella `storyboard`
--
ALTER TABLE `storyboard`
  ADD CONSTRAINT `student___fk` FOREIGN KEY (`student___fk`) REFERENCES `student` (`matricola`),
  ADD CONSTRAINT `test___fk` FOREIGN KEY (`test___fk`) REFERENCES `test` (`numberID`);

--
-- Limiti per la tabella `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `exam___fk` FOREIGN KEY (`exam___fk`) REFERENCES `exam` (`numberID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
