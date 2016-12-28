-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 28, 2016 alle 13:14
-- Versione del server: 5.7.14
-- Versione PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solunibo`
--
CREATE DATABASE IF NOT EXISTS `solunibo` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `solunibo`;

-- --------------------------------------------------------

--
-- Struttura della tabella `appelli_esami`
--

CREATE TABLE IF NOT EXISTS `appelli_esami` (
  `id_apello` int(5) NOT NULL,
  `descrizione` varchar(500) COLLATE utf8_bin NOT NULL,
  `fk_esami` int(20) NOT NULL,
  PRIMARY KEY (`id_apello`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `appelli_esami`
--

INSERT INTO `appelli_esami` (`id_apello`, `descrizione`, `fk_esami`) VALUES
(1, 'Discussione elaborati (SALOMONI PAOLA) \r\n16/01/2017 ore 10:00 \r\niscrizioni da: 09/12/2016 a: 09/01/2017', 41731),
(2, 'Prova pratica (SALOMONI PAOLA) \r\n17/01/2017 ore 12:00 \r\niscrizioni da: 09/12/2016 a: 15/01/2017', 41731),
(3, 'Discussione elaborati (SALOMONI PAOLA) \r\n31/01/2017 ore 10:00 \r\niscrizioni da: 09/12/2016 a: 25/01/2017', 41731),
(4, '1° Prova Pratica in Laboratorio (GHINI VITTORIO) \r\n09/01/2017 ore 09:00 \r\niscrizioni da: 25/12/2016 a: 07/01/2017', 8574);

-- --------------------------------------------------------

--
-- Struttura della tabella `esami`
--

CREATE TABLE IF NOT EXISTS `esami` (
  `id_esame` int(10) NOT NULL,
  `nome_esame` char(20) COLLATE utf8_bin NOT NULL,
  `nome_cognome_docente` char(30) COLLATE utf8_bin NOT NULL,
  `cfu` int(2) NOT NULL,
  `anno` int(1) NOT NULL,
  PRIMARY KEY (`id_esame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `esami`
--

INSERT INTO `esami` (`id_esame`, `nome_esame`, `nome_cognome_docente`, `cfu`, `anno`) VALUES
(8574, 'Sistemi Operativi', 'Vittorio Ghini', 12, 2),
(41731, 'Tecnologie Web', 'Paola Salomoni', 6, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `evento`
--

CREATE TABLE IF NOT EXISTS `evento` (
  `numero_progressivo` int(11) NOT NULL,
  `fk_studente` int(20) NOT NULL,
  `giorno` int(2) NOT NULL,
  `mese` int(2) NOT NULL,
  `anno` int(4) NOT NULL,
  `descrizione_impegno` char(100) COLLATE utf8_bin NOT NULL,
  `ora` int(2) NOT NULL,
  `minuti` int(2) NOT NULL,
  PRIMARY KEY (`numero_progressivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `evento`
--

INSERT INTO `evento` (`numero_progressivo`, `fk_studente`, `giorno`, `mese`, `anno`, `descrizione_impegno`, `ora`, `minuti`) VALUES
(1, 123456, 9, 1, 2017, 'Esame di Programmazione di Reti', 10, 0),
(2, 654321, 16, 1, 2017, 'Esame di Tecnologie Web (discussione elaborati)', 14, 0),
(3, 123456, 25, 1, 2017, 'Spostata la lezione di Programmazione di Sistemi Embedded dalle ore 21 alle ore 23:55', 23, 55),
(4, 123456, 31, 1, 2017, 'Ricordati di compilare il piano di studi!', 9, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `insegnamenti`
--

CREATE TABLE IF NOT EXISTS `insegnamenti` (
  `id_insegnamenti` int(10) NOT NULL,
  `nome_insegnamento` char(50) COLLATE utf8_bin NOT NULL,
  `docenti` char(50) COLLATE utf8_bin NOT NULL,
  `fk_studente` int(20) NOT NULL,
  PRIMARY KEY (`id_insegnamenti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `insegnamenti`
--

INSERT INTO `insegnamenti` (`id_insegnamenti`, `nome_insegnamento`, `docenti`, `fk_studente`) VALUES
(405, 'Fisica', 'Luca Pasquini', 654321),
(10906, 'Basi di Dati', 'Dario Maio', 654321),
(70219, 'Programmazione ad Oggetti', 'Mirko Viroli', 123456),
(72775, 'Sistemi Embedded', 'Alessandro Ricci', 123456);

-- --------------------------------------------------------

--
-- Struttura della tabella `logattemps`
--

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
('antonio.tagliente@studio.unibo.it', '1482833629');

-- --------------------------------------------------------

--
-- Struttura della tabella `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` char(128) COLLATE utf8_bin NOT NULL,
  `fk_studente` int(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `login`
--

INSERT INTO `login` (`username`, `password`, `fk_studente`) VALUES
('antonio.tagliente@studio.unibo.it', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09', 0),
('rossella.spada@studio.unibo.it', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `materiale_insegnamenti`
--

CREATE TABLE IF NOT EXISTS `materiale_insegnamenti` (
  `numero_progressivo` int(11) NOT NULL,
  `nome_materiale` char(50) COLLATE utf8_bin NOT NULL,
  `link_materiale` char(200) COLLATE utf8_bin NOT NULL,
  `fk_insegnamenti` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `materiale_insegnamenti`
--

INSERT INTO `materiale_insegnamenti` (`numero_progressivo`, `nome_materiale`, `link_materiale`, `fk_insegnamenti`) VALUES
(1, 'Slide Introduzione', 'http://campus.unibo.it/241234/7/presentazione.pdf', 72775),
(2, 'Slide Modulo-1.1', 'http://campus.unibo.it/241235/25/modulo-1.1%20-%20Introduzione%20ai%20Sistemi%20Embedded.pdf', 72775),
(3, 'Introduzione', 'http://bias.csr.unibo.it/maio/courses/bd/lucidi_2010/Introduzione.zip', 10906),
(4, 'WebDB', 'http://bias.csr.unibo.it/maio/courses/bd/lucidi_2010/WebDB.zip', 10906),
(5, 'Sito Ufficiale', 'https://www.unibo.it/sitoweb/luca.pasquini/', 405),
(6, 'Introduzione alla programmazione OO, pt 2', 'http://campus.unibo.it/241791/1/week02.zip', 70219);

-- --------------------------------------------------------

--
-- Struttura della tabella `notifiche`
--

CREATE TABLE IF NOT EXISTS `notifiche` (
  `numero_progressivo` int(100) NOT NULL,
  `descrizione` varchar(500) COLLATE utf8_bin NOT NULL,
  `letta` tinyint(1) NOT NULL,
  `nome_cognome_docente` varchar(30) COLLATE utf8_bin NOT NULL,
  `fk_studente` int(20) NOT NULL,
  PRIMARY KEY (`numero_progressivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struttura della tabella `studente`
--

CREATE TABLE IF NOT EXISTS `studente` (
  `matricola` int(12) NOT NULL,
  `nome` char(30) COLLATE utf8_bin NOT NULL,
  `cognome` char(30) COLLATE utf8_bin NOT NULL,
  `data_di_nascita` char(20) COLLATE utf8_bin NOT NULL,
  `fk_login` char(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`matricola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `studente`
--

INSERT INTO `studente` (`matricola`, `nome`, `cognome`, `data_di_nascita`, `fk_login`) VALUES
(123456, 'Piermenti', 'Sfracellozzi', '01/01/01', 'antonio.tagliente@studio.unibo.it'),
(654321, 'Ubaldo', 'Sterchi', '31/12/2016', 'rossella.spada@studio.unibo.it');

-- --------------------------------------------------------

--
-- Struttura della tabella `tasse`
--

CREATE TABLE IF NOT EXISTS `tasse` (
  `numero_progressivo` int(5) NOT NULL,
  `anno_di_corso` char(20) COLLATE utf8_bin NOT NULL,
  `monorata` char(200) COLLATE utf8_bin NOT NULL,
  `prima_rata` char(200) COLLATE utf8_bin NOT NULL,
  `seconda_rata` char(200) COLLATE utf8_bin NOT NULL,
  `terza_rata` char(200) COLLATE utf8_bin NOT NULL,
  `mora` char(200) COLLATE utf8_bin NOT NULL,
  `fk_studente` int(11) NOT NULL,
  PRIMARY KEY (`numero_progressivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `tasse`
--

INSERT INTO `tasse` (`numero_progressivo`, `anno_di_corso`, `monorata`, `prima_rata`, `seconda_rata`, `terza_rata`, `mora`, `fk_studente`) VALUES
(1, '1', 'Iscrizione con monorata\r\nImporto €1980.15\r\nScadenza 30/09/2011\r\nPagata 29/09/2011', 'Prima rata\r\nImporto €600.00\r\nScadenza 30/09/2011\r\nPagata', 'Seconda rata\r\nImporto €728.00\r\nScadenza 29/12/2011\r\nPagata', 'Terza rata\r\nImporto €252.00\r\nScadenza 18/05/2012\r\nPagata', '', 123456),
(2, '2', 'Iscrizione con monorata\r\nImporto €1890.00\r\nScadenza 30/09/2012\r\nPagata', 'Seconda rata\r\nImporto €600.00\r\nScadenza 30/09/2012\r\nPagata 30/09/2012', 'Seconda rata\r\nImporto €724.00\r\nScadenza 30/12/2012\r\nPagata 30/12/2012', 'Terza rata\r\nImporto €201.00\r\nScadenza 30/09/2012\r\nPagata 30/05/2012', '', 123456),
(3, '3', 'Iscrizione con monorata\r\nImporto €1744.00\r\nScadenza 30/09/2013\r\nPagata', 'Prima rata\r\nImporto €600.00\r\nScadenza 30/09/2013\r\nPagata 30/09/2013', 'Seconda rata\r\nImporto €744.00\r\nScadenza 30/12/2013\r\nPagata 15/12/2013', 'Terza rata\r\nImporto €231.00\r\nScadenza 30/05/2014\r\nPagata 22/05/2014', 'Mora per pagamento in ritardo\r\nImporto €100.00\r\nPagata 01/01/2014', 123456);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
