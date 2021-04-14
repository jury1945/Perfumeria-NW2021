<?php

/**
 * Libreria de PayPal 
 */

//En modelos se llama este archivo, y este conecta con vendor donde esta la API
require_once "vendor/autoload.php";

/*die("<h1>Revisar el archivo libs/paypal.php</h1> 
       <h1>Comentar o eliminar lineas 10-12 despues de agregar las credenciales de sandbox de la cuenta de developer.paypal.com</h1>
       <h2><a href=\"index.php?page=dashboard\">Regresar</a></h2>");*/

/**
 * Retorna el API Context de Paypal
 * 
 * @return void
 */

 function getApiContext()
 {
    //// SI DESEAN HACER PRUEBAS AGREGAR SUS PROPIAS CREDENCIALES. EN SU CUENTA, EN ACCOUNTS, ESTAN LAS CUENTAS PARA HACER PRUEBAS

     $apiContext = new \PayPal\Rest\ApiContext(
         new \PayPal\Auth\OAuthTokenCredential(
             'AcsG6s_ULEe8638i_tnQ3L_ngwJTmugtYct5PEj1ihd782FNK-lM6cupN1PT7g88tTc4euWmwaRW65qK', //ClientID
             'EAhB2NiEapUESXHV4z7FclSdi2SnvnlogIfLELfvGKG0x8G6a1hHOfNuNlz6Db6nIM-mjjOaEioMFXiW'  //ClientSecret
         )
     ); 

     return $apiContext;
 }

?>