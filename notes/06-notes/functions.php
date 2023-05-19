<?php

function dd(...$args) {
    echo '<pre>';
    var_dump($args);
    echo '</pre>';
    die;
}


function urlIs($value) {
    return $_SERVER['REQUEST_URI'] === $value;
}