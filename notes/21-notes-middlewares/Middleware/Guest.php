<?php
namespace Middleware;


use Middleware\Contract\MiddlewareInterface;

/**
 * Middleware for Guest Only
*/
class Guest implements MiddlewareInterface
{

    public function handle()
    {
        if (isset($_SESSION['user'])) {
            header('location: /');
            exit;
        }
    }
}