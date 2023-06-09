<?php

$config = require('config.php');
$db = new Database($config['database']);

$heading = 'Create Note';


if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $errors = [];

    # validation data
    if (strlen($_POST['body']) === 0) {
        $errors['body'] = "A body is required";
    }


    if (strlen($_POST['body']) > 100) {
        $errors['body'] = "The body cannot be more than 100 characters";
    }

    # insert data to the database
    if (empty($errors)) {
       $db->query('INSERT INTO notes(body, user_id) VALUES(:body, :user_id)', [
           'body' => $_POST['body'],
           'user_id' => 1
       ]);
    }
}


require "views/note-create.view.php";



