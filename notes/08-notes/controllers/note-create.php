<?php

$config = require('config.php');
$db = new Database($config['database']);

$heading = 'Note Create';


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    dd($_POST);
}


require "views/note-create.view.php";