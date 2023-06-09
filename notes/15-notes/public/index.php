<?php

const BASE_PATH = __DIR__.'/../';

require BASE_PATH. "Core/functions.php";

spl_autoload_register(function ($class) {
    $resource = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require base_path("$resource.php");
});


$router = new \Core\Router();

$routes = require base_path("routes.php");

$request = \Core\Http\Request::createFromGlobals();

$router->dispatch($request->getMethod(), $request->getPath());





