<?php
namespace Middleware;


use Core\Http\Middleware\Contract\MiddlewareInterface;
use Core\Http\Request;


/**
 * Middleware for Guest Only
*/
class Guest implements MiddlewareInterface
{

    public function handle(Request $request)
    {
        if (isset($_SESSION['user'])) {
            header('location: /');
            exit;
        }
    }
}