<?php
require "functions.php";
# require "router.php";
require "Database.php";


$config = require('config.php');
$db = new Database($config['database']);

/**
 * SQL Injection from URL
 * http://localhost:8888/?id=1
 * select * from posts where id = 1;
 *
 * http://localhost:8888/?id=1 or id=2
 * select * from posts where id = 1 or id = 2;
 *
 * http://localhost:8888/?id=1; delete table users
 * select * from posts where id = 1; delete table users;
*/
$id = abs((int)($_GET['id'] ?? 0));
$sql = "SELECT * FROM posts WHERE id = {$id}";

$post = $db->query($sql)->fetch();

dd($post);