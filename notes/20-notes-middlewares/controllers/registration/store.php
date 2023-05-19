<?php
use Core\Validator;

$email = $_POST['email'];
$password = $_POST['password'];


// validate the form inputs
$errors = [];

if (! Validator::email($email)) {
     $errors['email'] = 'Please provide a valid email address.';
}


if (! Validator::string($password, 7, 255)) {
    $errors['password'] = 'Please provide a password of at least seven characters.';
}



if (! empty($errors)) {
   view('registration/create.view.php', [
       'errors' => $errors
   ]);
   exit;
}


$db = \Core\App::resolve(\Core\Database::class);


// check if the account already exists
$user = $db->query('SELECT * FROM users WHERE email = :email', [
   'email' => $email
])->find();


// if yes, redirect to a login page.
if ($user) {
    header('location: /');
} else {
    // If not, save one to the databases
    $db->query("INSERT INTO users(email, password) VALUES (:email, :password)", [
        'email'    => $email,
        'password' => $password
    ]);

    // make that user has logged in.
    # $_SESSION['logged_in'] = true;
    $_SESSION['user'] = [
        'email' => $email
    ];

    header('location: /');
    exit;
}


