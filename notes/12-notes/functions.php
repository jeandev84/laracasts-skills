<?php

/**
 * @param ...$args
 * @return void
*/
function dd(...$args) {
    echo '<pre>';
    var_dump($args);
    echo '</pre>';
    die;
}


/**
 * @param $value
 * @return bool
*/
function urlIs($value) {
    return $_SERVER['REQUEST_URI'] === $value;
}



/**
 * @param $condition
 * @param int $status
 * @return void
*/
function authorize($condition, int $status = Response::FORBIDDEN) {
    if (! $condition) {
        abort($status);
    }
}


/**
 * @param string $path
 * @return string
*/
function base_path(string $path) {
    return BASE_PATH . $path;
}


/**
 * @param string $path
 * @param array $attributes
 * @return void
 */
function view(string $path, array $attributes = []) {

    extract($attributes);

    require base_path("views/$path");
}