<?php

$config = require('config.php');
$db = new Database($config['database']);

$heading = 'Note';

$note = $db->query('SELECT * FROM notes where id = :id', [
    'id'   => $_GET['id']
])->fetch();

# Page not found
if (! $note) {
    abort();
}


$currentUserId = 1;
$forbidden = 403;

# Unauthorized user
if ($note['user_id'] !== $currentUserId) {
    abort($forbidden);
}

require "views/note.view.php";