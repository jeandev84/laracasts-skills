<?php
namespace Middleware;



use Core\Http\Middleware\Contract\MiddlewareInterface;
use Core\Http\Requests\Request;

/**
 * Middleware for Authenticated user
 */
class Authenticated implements MiddlewareInterface
{

    public function handle(Request $request)
    {
        if (! isset($_SESSION['user'])) {
            header('location: /');
            exit;
        }
    }
}