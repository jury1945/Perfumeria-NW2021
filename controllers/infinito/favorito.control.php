<?php

/**
 * Controloador del favorito de Insignias
 * 
 * @return void
 */

 require_once "models/mantenimientos/productos.model.php";
 
 function run()
 {
    $arrViewData = array();

    $usuario = $_SESSION["userCode"];

    /***** TENGO QUE MANDAR ADEMAS DEL $usuario LA CATEGORIA A BUSCAR, UN LLAMADO POR CADA CATEGORIA
           PARA HACER LO DE hasInsignia POR CADA CATEGORIA 
           Y MOSTRAR EN EL VIEW CADA CATEGORIA EN UN CICLO foreach CON EL NOMBRE DE SU LLAMADO
         ******/

    //$arrViewData["productos"] = getInsigniasfavorito($usuario); //ProductoCatalogo();
   //Tomar productos comprados de cada categoria
    $arrViewData["masculino"] = getInsigniasfavorito($usuario, "M");
    $arrViewData["femenino"] = getInsigniasfavorito($usuario, "F");
    

    renderizar("infinito/favorito", $arrViewData); 
 }

 run();

?>