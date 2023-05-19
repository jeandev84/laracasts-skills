<?php

const BASE_PATH = __DIR__.'/../';

require BASE_PATH. "Core/functions.php";

spl_autoload_register(function ($class) {
    $resource = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require base_path("$resource.php");
});

require base_path('Core/router.php');





