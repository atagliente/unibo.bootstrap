<?php

/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 25.12.16
 * Time: 15:33
 */
abstract class StandardMessages
{
    const USER_WRONG = "Lo user non esiste";
    const PW_WRONG = "La password non corrisponde";
    const MAX_ATTEPS = "Tentativi massimi raggiunti, l'evento sarà notificato all'amministratore";
    const SUCCESS_REDIRECT = "../../../Home/index.html";
    const ALERT_MAIL = "Sono stati superati 5 tentativi d'accesso al account: ";
    const INSUCCESS_REDIRECT = 'Location: ../../Login/login.html';
}