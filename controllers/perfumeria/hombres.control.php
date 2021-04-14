<?php

/**
 * Controlador Pagina Hombres
 * 
 * @return void
 */

 function run()
 {
    $arrViewData = array();

    $arrViewData['page_title'] = "Hombres";
    addJsRef("public/js/main.js");
    addJsRef('public/js/mainindex.js');

    //Añadir linea debajo de la pestaña que esta seleccionada en el menu
    addToContext("index","");
    addToContext("nosotros","");
    addToContext("mujeres","");
    addToContext("hombres","active");
    addToContext("servicios","");
    addToContext("home","");
    addToContext("login","");
    addToContext("register","");

    renderizar("perfumeria/hombres", $arrViewData); 
 }  

 run();

?>