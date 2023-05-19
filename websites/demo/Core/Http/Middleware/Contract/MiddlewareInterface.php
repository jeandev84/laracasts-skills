<?php
namespace Core\Http\Middleware\Contract;

use Core\Http\Requests\Request;

interface MiddlewareInterface
{
      public function handle(Request $request);
}