<?php
/**
 * Export to PHP Array plugin for PHPMyAdmin
 * @version 4.6.4
 */

/**
 * Database `solunibo`
 */

/* `solunibo`.`appelli_esami` */
$appelli_esami = array(
  array('id_apello' => '1','descrizione' => 'Discussione elaborati (SALOMONI PAOLA) 
16/01/2017 ore 10:00 
iscrizioni da: 09/12/2016 a: 09/01/2017','fk_esami' => '41731'),
  array('id_apello' => '2','descrizione' => 'Prova pratica (SALOMONI PAOLA) 
17/01/2017 ore 12:00 
iscrizioni da: 09/12/2016 a: 15/01/2017','fk_esami' => '41731'),
  array('id_apello' => '3','descrizione' => 'Discussione elaborati (SALOMONI PAOLA) 
31/01/2017 ore 10:00 
iscrizioni da: 09/12/2016 a: 25/01/2017','fk_esami' => '41731'),
  array('id_apello' => '4','descrizione' => '1° Prova Pratica in Laboratorio (GHINI VITTORIO) 
09/01/2017 ore 09:00 
iscrizioni da: 25/12/2016 a: 07/01/2017','fk_esami' => '8574')
);

/* `solunibo`.`esami` */
$esami = array(
  array('id_esame' => '8574','nome_esame' => 'Sistemi Operativi','nome_cognome_docente' => 'Vittorio Ghini','cfu' => '12','anno' => '2'),
  array('id_esame' => '41731','nome_esame' => 'Tecnologie Web','nome_cognome_docente' => 'Paola Salomoni','cfu' => '6','anno' => '3')
);

/* `solunibo`.`evento` */
$evento = array(
  array('numero_progressivo' => '1','fk_studente' => '123456','giorno' => '9','mese' => '1','anno' => '2017','descrizione_impegno' => 'Esame di Programmazione di Reti','ora' => '10','minuti' => '0'),
  array('numero_progressivo' => '2','fk_studente' => '654321','giorno' => '16','mese' => '1','anno' => '2017','descrizione_impegno' => 'Esame di Tecnologie Web (discussione elaborati)','ora' => '14','minuti' => '0'),
  array('numero_progressivo' => '3','fk_studente' => '123456','giorno' => '25','mese' => '1','anno' => '2017','descrizione_impegno' => 'Spostata la lezione di Programmazione di Sistemi Embedded dalle ore 21 alle ore 23:55','ora' => '23','minuti' => '55'),
  array('numero_progressivo' => '4','fk_studente' => '123456','giorno' => '31','mese' => '1','anno' => '2017','descrizione_impegno' => 'Ricordati di compilare il piano di studi!','ora' => '9','minuti' => '0')
);

/* `solunibo`.`insegnamenti` */
$insegnamenti = array(
  array('id_insegnamenti' => '405','nome_insegnamento' => 'Fisica','docenti' => 'Luca Pasquini','fk_studente' => '654321'),
  array('id_insegnamenti' => '10906','nome_insegnamento' => 'Basi di Dati','docenti' => 'Dario Maio','fk_studente' => '654321'),
  array('id_insegnamenti' => '70219','nome_insegnamento' => 'Programmazione ad Oggetti','docenti' => 'Mirko Viroli','fk_studente' => '123456'),
  array('id_insegnamenti' => '72775','nome_insegnamento' => 'Sistemi Embedded','docenti' => 'Alessandro Ricci','fk_studente' => '123456')
);

/* `solunibo`.`logattemps` */
$logattemps = array(
  array('username' => 'antonio.tagliente@studio.unibo.it','time' => '1482758822'),
  array('username' => 'antonio.tagliente@studio.unibo.it','time' => '1482779287'),
  array('username' => 'antonio.tagliente@studio.unibo.it','time' => '1482829023'),
  array('username' => 'antonio.tagliente@studio.unibo.it','time' => '1482833571'),
  array('username' => 'antonio.tagliente@studio.unibo.it','time' => '1482833577'),
  array('username' => 'antonio.tagliente@studio.unibo.it','time' => '1482833622'),
  array('username' => 'antonio.tagliente@studio.unibo.it','time' => '1482833629')
);

/* `solunibo`.`login` */
$login = array(
  array('username' => 'antonio.tagliente@studio.unibo.it','password' => 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09','fk_studente' => '0'),
  array('username' => 'rossella.spada@studio.unibo.it','password' => 'dXFlS3FVMWJ4U2s1UTJTZmIzcmdLQT09','fk_studente' => '0')
);

/* `solunibo`.`materiale_insegnamenti` */
$materiale_insegnamenti = array(
  array('numero_progressivo' => '1','nome_materiale' => 'Slide Introduzione','link_materiale' => 'http://campus.unibo.it/241234/7/presentazione.pdf','fk_insegnamenti' => '72775'),
  array('numero_progressivo' => '2','nome_materiale' => 'Slide Modulo-1.1','link_materiale' => 'http://campus.unibo.it/241235/25/modulo-1.1%20-%20Introduzione%20ai%20Sistemi%20Embedded.pdf','fk_insegnamenti' => '72775'),
  array('numero_progressivo' => '3','nome_materiale' => 'Introduzione','link_materiale' => 'http://bias.csr.unibo.it/maio/courses/bd/lucidi_2010/Introduzione.zip','fk_insegnamenti' => '10906'),
  array('numero_progressivo' => '4','nome_materiale' => 'WebDB','link_materiale' => 'http://bias.csr.unibo.it/maio/courses/bd/lucidi_2010/WebDB.zip','fk_insegnamenti' => '10906'),
  array('numero_progressivo' => '5','nome_materiale' => 'Sito Ufficiale','link_materiale' => 'https://www.unibo.it/sitoweb/luca.pasquini/','fk_insegnamenti' => '405'),
  array('numero_progressivo' => '6','nome_materiale' => 'Introduzione alla programmazione OO, pt 2','link_materiale' => 'http://campus.unibo.it/241791/1/week02.zip','fk_insegnamenti' => '70219')
);

/* `solunibo`.`notifiche` */
$notifiche = array(
);

/* `solunibo`.`studente` */
$studente = array(
  array('matricola' => '123456','nome' => 'Piermenti','cognome' => 'Sfracellozzi','data_di_nascita' => '01/01/01','fk_login' => 'antonio.tagliente@studio.unibo.it'),
  array('matricola' => '654321','nome' => 'Ubaldo','cognome' => 'Sterchi','data_di_nascita' => '31/12/2016','fk_login' => 'rossella.spada@studio.unibo.it')
);

/* `solunibo`.`tasse` */
$tasse = array(
  array('numero_progressivo' => '1','anno_di_corso' => '1','monorata' => 'Iscrizione con monorata
Importo €1980.15
Scadenza 30/09/2011
Pagata 29/09/2011','prima_rata' => 'Prima rata
Importo €600.00
Scadenza 30/09/2011
Pagata','seconda_rata' => 'Seconda rata
Importo €728.00
Scadenza 29/12/2011
Pagata','terza_rata' => 'Terza rata
Importo €252.00
Scadenza 18/05/2012
Pagata','mora' => '','fk_studente' => '123456'),
  array('numero_progressivo' => '2','anno_di_corso' => '2','monorata' => 'Iscrizione con monorata
Importo €1890.00
Scadenza 30/09/2012
Pagata','prima_rata' => 'Seconda rata
Importo €600.00
Scadenza 30/09/2012
Pagata 30/09/2012','seconda_rata' => 'Seconda rata
Importo €724.00
Scadenza 30/12/2012
Pagata 30/12/2012','terza_rata' => 'Terza rata
Importo €201.00
Scadenza 30/09/2012
Pagata 30/05/2012','mora' => '','fk_studente' => '123456'),
  array('numero_progressivo' => '3','anno_di_corso' => '3','monorata' => 'Iscrizione con monorata
Importo €1744.00
Scadenza 30/09/2013
Pagata','prima_rata' => 'Prima rata
Importo €600.00
Scadenza 30/09/2013
Pagata 30/09/2013','seconda_rata' => 'Seconda rata
Importo €744.00
Scadenza 30/12/2013
Pagata 15/12/2013','terza_rata' => 'Terza rata
Importo €231.00
Scadenza 30/05/2014
Pagata 22/05/2014','mora' => 'Mora per pagamento in ritardo
Importo €100.00
Pagata 01/01/2014','fk_studente' => '123456')
);
