<?php
namespace Middleware;


use Middleware\Contract\MiddlewareInterface;

/**
 * Middleware for Authenticated user
 */
class Authenticated implements MiddlewareInterface
{

    public function handle()
    {
        if (! isset($_SESSION['user'])) {
            header('location: /');
            exit;
        }
    }
}