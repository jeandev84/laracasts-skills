<?php
require "functions.php";
# require "router.php";


# connect to our MYSQL database.

/*
$dsn = "mysql:host=localhost;port=3306;dbname=laracasts_app;user=root;password=secret123456!;charset=utf8";
$pdo = new PDO($dsn);
$statement = $pdo->prepare("SELECT * FROM posts");
$statement->execute();

$posts = $statement->fetchAll(PDO::FETCH_ASSOC);

dd($posts);
*/

$dsn      = "mysql:host=localhost;port=3306;dbname=laracasts_app;charset=utf8";
$username = "root";
$password = "secret123456!";

$pdo = new PDO($dsn, $username, $password);

$statement = $pdo->prepare("SELECT * FROM posts");

$statement->execute();

$posts = $statement->fetchAll(PDO::FETCH_ASSOC);


foreach ($posts as $post) {
    echo "<li>{$post['title']}</li>";
}