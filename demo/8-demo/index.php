<?php
require "functions.php";
# require "router.php";
require "Database.php";


$config = require('config.php');
$db = new Database($config['database']);

$id = abs((int)($_GET['id'] ?? 0));
$sql = "SELECT * FROM posts WHERE id =  ?";
$post = $db->query($sql, [$id])->fetch();

dd($post);

$sql = "SELECT * FROM posts WHERE id =  :id";
$post = $db->query($sql, compact('id'))->fetch();
$post = $db->query($sql, ['id' => $id])->fetch();
$post = $db->query($sql, [':id' => $id])->fetch();