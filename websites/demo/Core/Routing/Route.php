<?php
namespace Core\Routing;

class Route
{


     /**
      * @var array
     */
     protected array $middlewares = [];




     /**
      * @var array
     */
     protected array $namedMiddlewares = [];




     /**
      * @param array $methods
      *
      * @param string $path
      *
      * @param $handler
     */
     public function __construct(protected array $methods, protected string $path, protected $handler)
     {
     }


     /**
      * @return array
     */
     public function getMethods(): array
     {
        return $this->methods;
     }


    /**
     * @return string
     */
    public function getPath(): string
    {
        return $this->path;
    }


    /**
     * @return mixed
     */
    public function getHandler()
    {
        return $this->handler;
    }


    /**
     * @param string $path
     *
     * @return bool
     */
    public function matchPath(string $path)
    {
         return $this->path === $path;
    }


    /**
     * @param string $method
     *
     * @return bool
    */
    public function matchMethod(string $method)
    {
         return in_array(strtoupper($method), $this->methods);
    }


    /**
     * @param string $method
     * @param string $path
     * @return bool
     */
    public function match(string $method, string $path): bool
    {
         return  $this->matchMethod($method) && $this->matchPath($path);
    }




    /**
     * @param array $middlewares
     * @return $this
    */
    public function namedMiddlewares(array $middlewares)
    {
        $this->namedMiddlewares = $middlewares;

        return $this;
    }





    /**
     * @param string|array $middlewares
     *
     * @return $this
    */
    public function middleware(string|array $middlewares): static
    {
         $this->middlewares = array_merge($this->middlewares, (array) $middlewares);

         return $this;
    }




    /**
     * Middleware
     *
     * @param string $name
     *
     * @return $this
    */
    public function only(string $name): static
    {
         if (array_key_exists($name, $this->namedMiddlewares)) {
             $this->middleware($this->namedMiddlewares[$name]);
         }

         return $this;
    }


    /**
     * @return array
    */
    public function getMiddlewares(): array
    {
        return $this->middlewares;
    }




    /**
     * @return bool
    */
    public function hasMiddlewares(): bool
    {
         return ! empty($this->middlewares);
    }


    
    /**
     * @param string $name
     * 
     * @return string
    */
    public function getMiddlewareByName(string $name): string
    {
         return $this->namedMiddlewares[$name] ?? $name;
    }




    /**
     * @param string $name
     *
     * @return bool
    */
    public function hasNamedMiddleware(string $name): bool
    {
         return array_key_exists($name, $this->namedMiddlewares);
    }

    
    
    /**
     * @param string $middleware
     *
     * @return bool
    */
    public function hasMiddleware(string $middleware): bool
    {
         return in_array($middleware, $this->getMiddlewares());
    }




    /**
     * @param callable $callback
     *
     * @param array $arguments
     *
     * @return mixed
    */
    public function call(callable $callback, array $arguments = []): mixed
    {
         return call_user_func_array($callback, $arguments);
    }
}