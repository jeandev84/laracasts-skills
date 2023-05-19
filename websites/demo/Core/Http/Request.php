<?php
namespace Core\Http;

use Core\Http\Bag\InputBag;
use Core\Http\Bag\ParameterBag;
use Core\Http\Bag\ServerBag;

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


     /**
      * @return static
     */
     public static function createFromGlobals(): static
     {
          return new static($_GET, [], $_POST, $_SERVER);
     }


     /**
      * @param $value
      * @return bool
     */
     public function urlIs($value) {
        return $this->getRequestUri() === $value;
     }


    /**
     * @return mixed
    */
    public function getPath()
    {
        return parse_url($this->getRequestUri())['path'];
    }


    /**
     * @return mixed|null
    */
    public function getRequestUri()
    {
         return $this->server->get('REQUEST_URI', '');
    }


    /**
     * @param string $method
     *
     * @return $this
    */
    public function setMethod(string $method): static
    {
         $this->server->set('REQUEST_METHOD', $method);

         return $this;
    }



    /**
     * @return mixed|null
    */
    public function getMethod(): mixed
    {
        if ($this->request->has('_method')) {
            $this->setMethod($this->request->get('_method'));
        }

        return $this->server->get('REQUEST_METHOD', '');
    }


    /**
     * @param string $name
     * @return bool
     */
    public function isMethod(string $name): bool
    {
        return $this->getMethod() === strtolower($name);
    }
}