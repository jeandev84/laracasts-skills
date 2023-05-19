<?php

/*
 * https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
*/

$uri = parse_url($_SERVER['REQUEST_URI'])['path'];


$routes = [
    '/' => 'controllers/index.php',
    '/about' => 'controllers/about.php',
    '/notes' => 'controllers/notes.php',
    '/note' => 'controllers/note.php',
    '/contact' => 'controllers/contact.php',
];



function routeToController($uri, $routes) {
    if (array_key_exists($uri, $routes)) {
        require $routes[$uri];
    } else {
        abort();
    }
}


function abort(int $code = 404) {
    http_response_code($code);
    require "views/{$code}.php";
    exit;
}


# Call route handler
routeToController($uri, $routes);