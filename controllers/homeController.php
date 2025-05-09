<?php
require_once('models/productModels.php');

function home() {

    $products = getRandomProducts(13);
    require('views/home/home.php');
}

?>