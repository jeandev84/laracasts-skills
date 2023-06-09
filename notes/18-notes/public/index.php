<?php

const BASE_PATH = __DIR__.'/../';

require BASE_PATH. "Core/functions.php";

spl_autoload_register(function ($class) {
    $resource = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require base_path("$resource.php");
});


require base_path('bootstrap.php');

$router = new \Core\Routing\Router();
$router->path("routes/web.php");

$request = \Core\Http\Requests\Request::createFromGlobals();

$router->dispatchRoute($request->getMethod(), $request->getPath());





