<?php

use Middleware\Authenticated;
use Middleware\ConfirmedEmailAddress;
use Middleware\Guest;

session_start();

const BASE_PATH = __DIR__.'/../';

require BASE_PATH. "Core/functions.php";

spl_autoload_register(function ($class) {
    $resource = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require base_path("$resource.php");
});


require base_path('bootstrap.php');

$router = new \Core\Routing\Router([
    'auth'      => Authenticated::class,
    'guest'     => Guest::class,
    'confirmed' => ConfirmedEmailAddress::class
]);

$router->path("routes/web.php");

$request = \Core\Http\Requests\Request::createFromGlobals();
$router->dispatch($request);





