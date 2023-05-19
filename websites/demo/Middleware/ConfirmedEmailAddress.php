<?php
namespace Middleware;


use Core\Http\Middleware\Contract\MiddlewareInterface;
use Core\Http\Requests\Request;

class ConfirmedEmailAddress implements MiddlewareInterface
{

    public function handle(Request $request)
    {
        // TODO: Implement handle() method.
    }
}