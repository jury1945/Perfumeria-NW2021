<?php

/**
 * Controlador de Home - Catalogo de perfumeria
 * 
 * @return void
 */

require_once "models/mantenimientos/productos.model.php";

function run()
{
    $arrDataView = array();

    $arrDataView['page_title'] = "Catálogo";
    addJsRef("public/js/main.js");
    addJsRef('public/js/mainindex.js');

    //Tomar productos de cada categoria
    $arrDataView["masculino"] = categoriaCatalogo("M");
    $arrDataView["femenino"] = categoriaCatalogo("F");
    

    //Añadir linea debajo de la pestaña que esta seleccionada en el menu
    addToContext("index","");
    addToContext("nosotros","");
    addToContext("mujeres","");
    addToContext("hombres","");
    addToContext("servicios","");
    addToContext("home","active");
    addToContext("login","");
    addToContext("register","");
    addToContext("cart","");

    renderizar("home", $arrDataView); 
}

run();

?>
