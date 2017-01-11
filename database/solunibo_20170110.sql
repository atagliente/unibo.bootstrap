-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 10, 2017 alle 22:50
-- Versione del server: 5.7.14
-- Versione PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almaservizi`
--
CREATE DATABASE IF NOT EXISTS `almaservizi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `almaservizi`;

-- --------------------------------------------------------

--
-- Struttura della tabella `docenti`
--

CREATE TABLE `docenti` (
  `Matricola` int(6) UNSIGNED NOT NULL,
  `Nome` varchar(15) NOT NULL,
  `Cognome` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Pw` varchar(15) NOT NULL,
  `Codice_materia` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `docenti`
--

INSERT INTO `docenti` (`Matricola`, `Nome`, `Cognome`, `Email`, `Pw`, `Codice_materia`) VALUES
(145637, 'Catia', 'Prandi', 'catia.prandi2@unibo.it', '1234', 5346),
(165432, 'Aldo', 'Campi', 'aldo.campi@unibo.it', '', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `notifiche`
--

CREATE TABLE `notifiche` (
  `ID` int(6) NOT NULL,
  `Matricola_mit` int(6) UNSIGNED NOT NULL,
  `Matricola_dest` int(6) UNSIGNED NOT NULL,
  `Commento` varchar(140) NOT NULL,
  `Orario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Materia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `notifiche`
--

INSERT INTO `notifiche` (`ID`, `Matricola_mit`, `Matricola_dest`, `Commento`, `Orario`, `Materia`) VALUES
(1, 145637, 234567, 'Informo che il laboratorio di martedi\' 11 novembre sara\' molto interessante', '2016-11-09 15:02:49', 'Tec Web'),
(2, 165432, 234567, 'Avviso Seminario, ore 16, venerdi\' 16 dicembre', '2016-12-12 17:06:05', 'Telecomunicazioni'),
(3, 145637, 234567, 'Informo che il laboratorio del 13 dicembre sara\' super interessante', '2016-12-12 07:14:21', 'Tec Web');

-- --------------------------------------------------------

--
-- Struttura della tabella `studenti`
--

CREATE TABLE `studenti` (
  `Matricola` int(6) UNSIGNED NOT NULL,
  `Nome` varchar(15) NOT NULL,
  `Cognome` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Pw` varchar(15) NOT NULL,
  `Codice_corso_di_studio` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `studenti`
--

INSERT INTO `studenti` (`Matricola`, `Nome`, `Cognome`, `Email`, `Pw`, `Codice_corso_di_studio`) VALUES
(234567, 'Gino', 'Pino', 'gino.pino@studio.unibo.it', '1234', 4567),
(245637, 'Cippa', 'Lippa', 'cippa.lippa@studio.unibo.it', '1234', 5346);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `docenti`
--
ALTER TABLE `docenti`
  ADD PRIMARY KEY (`Matricola`);

--
-- Indici per le tabelle `notifiche`
--
ALTER TABLE `notifiche`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`Matricola`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `notifiche`
--
ALTER TABLE `notifiche`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `cibo`
--
CREATE DATABASE IF NOT EXISTS `cibo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cibo`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dump dei dati per la tabella `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'solunibo_20161228', '{"quick_or_custom":"quick","what":"sql","allrows":"1","output_format":"sendit","filename_template":"@TABLE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struttura della tabella @TABLE@","latex_structure_continued_caption":"Struttura della tabella @TABLE@ (continua)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Contenuto della tabella @TABLE@","latex_data_continued_caption":"Contenuto della tabella @TABLE@ (continua)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}'),
(2, 'root', 'table', 'solunibo', '{"quick_or_custom":"quick","what":"sql","allrows":"1","output_format":"sendit","filename_template":"@TABLE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struttura della tabella @TABLE@","latex_structure_continued_caption":"Struttura della tabella @TABLE@ (continua)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Contenuto della tabella @TABLE@","latex_data_continued_caption":"Contenuto della tabella @TABLE@ (continua)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}'),
(4, 'root', 'database', 'solunibo_20161228', '{"quick_or_custom":"quick","what":"sql","structure_or_data_forced":"0","table_select[]":["appelli_esami","esami","evento","insegnamenti","logattemps","login","materiale_insegnamenti","notifiche","studente","tasse"],"table_structure[]":["appelli_esami","esami","evento","insegnamenti","logattemps","login","materiale_insegnamenti","notifiche","studente","tasse"],"table_data[]":["appelli_esami","esami","evento","insegnamenti","logattemps","login","materiale_insegnamenti","notifiche","studente","tasse"],"output_format":"sendit","filename_template":"@DATABASE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struttura della tabella @TABLE@","latex_structure_continued_caption":"Struttura della tabella @TABLE@ (continua)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Contenuto della tabella @TABLE@","latex_data_continued_caption":"Contenuto della tabella @TABLE@ (continua)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"structure_and_data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"structure_and_data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_create_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}'),
(5, 'root', 'server', 'solunibo_20160110', '{"quick_or_custom":"quick","what":"sql","db_select[]":["almaservizi","cibo","phpmyadmin","solunibo","test"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struttura della tabella @TABLE@","latex_structure_continued_caption":"Struttura della tabella @TABLE@ (continua)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Contenuto della tabella @TABLE@","latex_data_continued_caption":"Contenuto della tabella @TABLE@ (continua)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","yaml_structure_or_data":"data","":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}'),
(6, 'root', 'server', 'solunibo_20170110', '{"quick_or_custom":"quick","what":"sql","db_select[]":["almaservizi","cibo","phpmyadmin","solunibo","test"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struttura della tabella @TABLE@","latex_structure_continued_caption":"Struttura della tabella @TABLE@ (continua)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Contenuto della tabella @TABLE@","latex_data_continued_caption":"Contenuto della tabella @TABLE@ (continua)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","yaml_structure_or_data":"data","":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dump dei dati per la tabella `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"solunibo","table":"tax"},{"db":"solunibo","table":"payment"},{"db":"solunibo","table":"events"},{"db":"solunibo","table":"menu"},{"db":"solunibo","table":"ristorante"},{"db":"solunibo","table":"student"},{"db":"solunibo","table":"storyboard"},{"db":"solunibo","table":"teacher"},{"db":"solunibo","table":"login"},{"db":"solunibo","table":"exam"}]');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dump dei dati per la tabella `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('solunibo', 'studente', 'fk_login');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dump dei dati per la tabella `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'solunibo', 'teachingdoc', '{"sorted_col":"`teachingdoc`.`numberID` ASC"}', '2017-01-07 09:16:09');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dump dei dati per la tabella `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-12-29 09:26:31', '{"collation_connection":"utf8mb4_unicode_ci","lang":"it"}');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indici per le tabelle `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indici per le tabelle `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indici per le tabelle `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indici per le tabelle `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indici per le tabelle `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indici per le tabelle `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indici per le tabelle `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indici per le tabelle `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indici per le tabelle `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indici per le tabelle `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `solunibo`
--
CREATE DATABASE IF NOT EXISTS `solunibo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `solunibo`;

-- --------------------------------------------------------

--
-- Struttura della tabella `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(160) COLLATE utf8_bin DEFAULT 'this is a simple string',
  `DataInizio` datetime NOT NULL,
  `DataFine` datetime NOT NULL,
  `student___fk` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `DataInizio`, `DataFine`, `student___fk`) VALUES
(2, 'Impegno 1', 'this is a simple string', '2017-01-04 10:00:00', '2017-01-04 13:00:00', 123456),
(3, 'Impegno 2', 'this is a simple string', '2017-01-05 05:00:00', '2017-01-06 11:00:00', 123456),
(4, 'Impegno 3', 'this is a simple string', '2017-01-18 10:00:00', '2017-01-18 11:00:00', 123456),
(5, 'Impegno 4', 'this is a simple string', '2017-02-01 09:00:00', '2017-02-02 11:00:00', 123456);

-- --------------------------------------------------------

--
-- Struttura della tabella `exam`
--

CREATE TABLE `exam` (
  `numberID` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `cfu` int(11) NOT NULL,
  `year` int(1) NOT NULL,
  `teacher___fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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

CREATE TABLE `logattemps` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` varchar(50) COLLATE utf8_bin NOT NULL
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

CREATE TABLE `login` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` char(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('antonio.tagliente@studio.unibo.it', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09'),
('rossella.spada@studio.unibo.it', 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09');

-- --------------------------------------------------------

--
-- Struttura della tabella `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `ristorante___fk` int(11) NOT NULL,
  `primo` text NOT NULL,
  `secondo` text NOT NULL,
  `dolce` text NOT NULL,
  `bibita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `payment`
--

CREATE TABLE `payment` (
  `numberID` int(11) NOT NULL,
  `payDay` date NOT NULL,
  `tax___fk` int(11) NOT NULL,
  `student___fk` int(11) DEFAULT NULL
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

CREATE TABLE `ristorante` (
  `id_ristorante` int(11) NOT NULL,
  `nome` text NOT NULL,
  `indirizzo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `storyboard`
--

CREATE TABLE `storyboard` (
  `numberID` int(11) NOT NULL,
  `prenotation` tinyint(1) NOT NULL DEFAULT '0',
  `vote` int(2) NOT NULL DEFAULT '0',
  `student___fk` int(11) NOT NULL,
  `test___fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `storyboard`
--

INSERT INTO `storyboard` (`numberID`, `prenotation`, `vote`, `student___fk`, `test___fk`) VALUES
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
-- Struttura della tabella `student`
--

CREATE TABLE `student` (
  `matricola` int(12) NOT NULL,
  `nome` char(30) COLLATE utf8_bin NOT NULL,
  `cognome` char(30) COLLATE utf8_bin NOT NULL,
  `data_di_nascita` char(20) COLLATE utf8_bin NOT NULL,
  `fk_login` char(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `student`
--

INSERT INTO `student` (`matricola`, `nome`, `cognome`, `data_di_nascita`, `fk_login`) VALUES
(123456, 'Piermenti', 'Sfracellozzi', '01/01/01', 'antonio.tagliente@studio.unibo.it'),
(654321, 'Ubaldo', 'Sterchi', '31/12/2016', 'rossella.spada@studio.unibo.it'),
(731579, 'Antonio', 'Tagliente', '25/00/00', 'estebanDoNascimiento@test.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `tax`
--

CREATE TABLE `tax` (
  `numberID` int(11) NOT NULL,
  `descrizione` text COLLATE utf8_bin NOT NULL,
  `dateOpen` date NOT NULL,
  `dateClose` date NOT NULL,
  `amount` float NOT NULL,
  `delayFee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `tax`
--

INSERT INTO `tax` (`numberID`, `descrizione`, `dateOpen`, `dateClose`, `amount`, `delayFee`) VALUES
(1, 'Rata 1', '2014-09-01', '2014-09-30', 600, 100),
(2, 'Rata 2', '2014-12-01', '2014-12-30', 744, 100),
(3, 'Rata 3', '2015-05-01', '2015-05-30', 246, 100),
(4, 'Monorata', '2014-09-01', '2014-09-30', 1874, 100),
(5, 'Rata 1', '2015-09-01', '2015-09-30', 600, 100),
(6, 'Rata 2', '2015-12-01', '2015-12-30', 744, 100),
(7, 'Rata 3', '2016-05-01', '2016-05-30', 247, 100),
(8, 'Monorata', '2015-09-01', '2015-09-30', 1895, 100),
(9, 'Rata 1', '2016-09-01', '2016-09-30', 600, 100),
(10, 'Rata 2', '2016-12-01', '2016-12-30', 757, 100),
(11, 'Rata 3', '2017-05-01', '2017-05-30', 248, 100),
(12, 'Monorata', '2016-09-01', '2016-09-30', 1899, 100);

-- --------------------------------------------------------

--
-- Struttura della tabella `teacher`
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
-- Dump dei dati per la tabella `teacher`
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
-- Struttura della tabella `teachingdoc`
--

CREATE TABLE `teachingdoc` (
  `numberID` int(11) NOT NULL,
  `title` char(50) COLLATE utf8_bin NOT NULL,
  `url` char(200) COLLATE utf8_bin NOT NULL,
  `teacher___fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `teachingdoc`
--

INSERT INTO `teachingdoc` (`numberID`, `title`, `url`, `teacher___fk`) VALUES
(1, 'Slide Introduzione', 'http://campus.unibo.it/241234/7/presentazione.pdf', 72775),
(2, 'Slide Modulo-1.1', 'http://campus.unibo.it/241235/25/modulo-1.1%20-%20Introduzione%20ai%20Sistemi%20Embedded.pdf', 72775),
(3, 'Introduzione', 'http://bias.csr.unibo.it/maio/courses/bd/lucidi_2010/Introduzione.zip', 10906),
(4, 'WebDB', 'http://bias.csr.unibo.it/maio/courses/bd/lucidi_2010/WebDB.zip', 10906),
(5, 'Sito Ufficiale', 'https://www.unibo.it/sitoweb/luca.pasquini/', 405),
(6, 'Introduzione alla programmazione OO, pt 2', 'http://campus.unibo.it/241791/1/week02.zip', 70219);

-- --------------------------------------------------------

--
-- Struttura della tabella `test`
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
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`numberID`),
  ADD KEY `teacher___fk` (`teacher___fk`);

--
-- Indici per le tabelle `logattemps`
--
ALTER TABLE `logattemps`
  ADD PRIMARY KEY (`time`);

--
-- Indici per le tabelle `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `ristorante___fk` (`ristorante___fk`);

--
-- Indici per le tabelle `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`numberID`),
  ADD KEY `tax___fk` (`tax___fk`);

--
-- Indici per le tabelle `ristorante`
--
ALTER TABLE `ristorante`
  ADD PRIMARY KEY (`id_ristorante`);

--
-- Indici per le tabelle `storyboard`
--
ALTER TABLE `storyboard`
  ADD PRIMARY KEY (`numberID`),
  ADD KEY `student___fk` (`student___fk`),
  ADD KEY `test___fk` (`test___fk`);

--
-- Indici per le tabelle `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`matricola`),
  ADD UNIQUE KEY `fk_login` (`fk_login`);

--
-- Indici per le tabelle `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`numberID`);

--
-- Indici per le tabelle `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`numberID`);

--
-- Indici per le tabelle `teachingdoc`
--
ALTER TABLE `teachingdoc`
  ADD PRIMARY KEY (`numberID`);

--
-- Indici per le tabelle `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`numberID`),
  ADD KEY `teacher___fk` (`teacher___fk`),
  ADD KEY `exam___fk` (`exam___fk`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `exam`
--
ALTER TABLE `exam`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `storyboard`
--
ALTER TABLE `storyboard`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT per la tabella `teacher`
--
ALTER TABLE `teacher`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `test`
--
ALTER TABLE `test`
  MODIFY `numberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedure
--
CREATE DEFINER=``@`%` PROCEDURE `AddGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64), `t_srid` INT)  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' ADD ', geometry_column,' GEOMETRY REF_SYSTEM_ID=', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

CREATE DEFINER=``@`%` PROCEDURE `DropGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64))  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' DROP ', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
