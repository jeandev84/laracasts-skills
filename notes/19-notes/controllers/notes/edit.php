<?php

use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$currentUserId = 1;


$note = $db->query('SELECT * FROM notes where id = :id', [
    'id'   => $_GET['id']
])->findOrFail();


view("notes/edit.view.php", [
    'heading' => 'Edit Note',
    'note' => $note,
    'errors'  => []
]);



