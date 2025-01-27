<?php

// This is the entry point of your application, all your application must be executed in
// the "index.php", in such a way that you must include the controller passed by the URL
// dynamically so that it ends up including the view.

include_once "config/constants.php";
include_once "config/db.php";

// TODO Implement the logic to include the controller passed by the URL dynamically
// In the event that the controller passed by URL does not exist, you must show the error view.

if(isset($_GET["controller"])){
    $controller=getPath($_GET["controller"]);
    if(file_exists($controller)){
        require_once($controller);
        
    }else{
        require_once(VIEWS."/error/error.php");
    }

}else{
    require_once(VIEWS."/main/main.php");
}


function getPath($a){
    return CONTROLLERS.$a."Controller.php";
}