<?php

use Core\Response;

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



/**
 * @param $value
 * @return bool
 */
function urlIs($value) {
    return $_SERVER['REQUEST_URI'] === $value;
}


/**
 * @param int $code
 * @return void
 */
function abort(int $code = Response::NOT_FOUND): void{

    http_response_code($code);

    view("{$code}.php");

    exit;
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