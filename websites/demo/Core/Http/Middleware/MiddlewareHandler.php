<?php
namespace Core\Http\Middleware;

class MiddlewareHandler
{

     /**
      * @var array
     */
     protected const MAP = [

     ];



     /**
      * @param string $name
      * @return mixed
     */
     public function resolve(string $name)
     {
          $middleware = static::MAP[$name];

          return call_user_func_array([new $middleware, 'handle'], []);
     }

}