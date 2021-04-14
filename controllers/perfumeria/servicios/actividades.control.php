<?php

/**
 * Controlador Pagina Servicios Actividades Liturgicas
 * 
 * @return void
 */

 function run()
 {
    $arrViewData = array();

    $arrViewData['page_title'] = "Actividades";
    
    addJsRef("public/js/main.js");
    addJsRef('public/js/mainindex.js');

    //Añadir linea debajo de la pestaña que esta seleccionada en el menu
    addToContext("index","");
    addToContext("nosotros","");
    addToContext("mujeres","");
    addToContext("hombres","");
    addToContext("servicios","active");
    addToContext("home","");
    addToContext("login","");
    addToContext("register","");
    addToContext("cart","");

    renderizar("perfumeria/servicios/actividades", $arrViewData);
 }  

 run();

?>