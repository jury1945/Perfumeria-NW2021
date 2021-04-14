<?php
/**
 * Controlador de pagina principal
 * 
 * @return void
 */

 function run()
 {
     $arrViewData = array();
     $arrViewData['page_title'] = 'Inicio';
     addJsRef('public/js/mainindex.js');

     //Añadir linea debajo de la pestaña que esta seleccionada en el menu 
     addToContext("index","active");
     addToContext("nosotros","");
     addToContext("mujeres","");
     addToContext("hombres","");
     addToContext("servicios","");
     addToContext("home","");
     addToContext("login","");
     addToContext("register","");
     addToContext("cart","");

     renderizar("perfumeria/index",$arrViewData);
 }

 run();
?>