<?php
namespace src\Http;

use Framework\Http\Bag\InputBag;
use Framework\Http\Bag\ParameterBag;
use Framework\Http\Bag\ServerBag;

class Request
{

     public ParameterBag $queries;

     public InputBag $request;

     public ParameterBag $attributes;

     public ServerBag $server;


     public function __construct(array $queries, array $attributes, array $request, array $server)
     {
         $this->queries = new ParameterBag($queries);
         $this->attributes = new ParameterBag($attributes);
         $this->request   = new InputBag($request);
         $this->server   = new ServerBag($server);
     }



     public static function createFromGlobals(): static
     {
          return new static($_GET, [], $_POST, $_SERVER);
     }


    public function urlIs($value) {
        return $this->getRequestUri() === $value;
    }




    public function getPath()
    {
        return parse_url($this->getRequestUri())['path'];
    }



    public function getRequestUri()
    {
         return $this->server->get('REQUEST_URI');
    }

    public function getMethod()
    {
        return $this->server->get('REQUEST_METHOD');
    }
}