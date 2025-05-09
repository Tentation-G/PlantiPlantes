<?php
require_once('dbModels.php');

function addProductToDB($name, $image, $description, $price, $category_id) {
    $pdo = dbConnect();
    $pdoStatement = $pdo->prepare('INSERT INTO products (name, image, description, price, category_id) VALUES (:name, :image, :description, :price, :category_id)');

    $pdoStatement->bindParam(':name', $name, PDO::PARAM_STR);
    $pdoStatement->bindParam(':image', $image, PDO::PARAM_STR);
    $pdoStatement->bindParam(':description', $description, PDO::PARAM_STR);
    $pdoStatement->bindParam(':price', $price, PDO::PARAM_STR);
    $pdoStatement->bindParam(':category_id', $category_id, PDO::PARAM_INT);

    $pdoStatement->execute();
}

function getRandomProducts($limit = 12) {
    $pdo = dbConnect();
    $query = 'SELECT * FROM products ORDER BY RAND() LIMIT :limit';
    $pdoStatement = $pdo->prepare($query);
    $pdoStatement->bindParam(':limit', $limit, PDO::PARAM_INT);
    $pdoStatement->execute();
    return $pdoStatement->fetchAll(PDO::FETCH_ASSOC);
}

// Récupération de tous les prodcuts
function getAllProducts() {
    $pdo = dbConnect();
    $pdoStatement = $pdo->query('SELECT * FROM products order by category_id');
    return $pdoStatement->fetchAll();
}