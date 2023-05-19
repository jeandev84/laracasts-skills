<?php
namespace Core\Routing;


use Core\Http\Responses\Response;
use Middleware\Authenticated;
use Middleware\Guest;



class Router
{

     /**
      * @var Route[]
     */
     protected $routes = [];




     /**
      * @var array
     */
     protected $middlewares = [];



     /**
      * @param array $middlewares
     */
     public function __construct(array $middlewares = [])
     {
          $this->middlewares($middlewares);
     }





    /**
      * @param string $path
      *
      * @return $this
     */
     public function path(string $path): static
     {
         $router = $this;

         require base_path($path);

         return $this;
     }



     /**
      * @param array $middlewares
      * @return static
     */
     public function middlewares(array $middlewares): static
     {
          $this->middlewares = array_merge($this->middlewares, $middlewares);

          return $this;
     }




     /**
      * @param string $methods
      *
      * @param string $uri
      *
      * @param $controller
      *
      * @return Route
     */
     public function map(string $methods, string $uri, $controller): Route
     {
         $route = new Route(explode('|', $methods), $uri, $controller);
         $route->middlewareStack($this->middlewares);

         $this->routes[] = $route;

         return $route;
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return Route
     */
     public function get($uri, $controller): Route
     {
         return $this->map('GET', $uri, $controller);
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return Route
     */
     public function post($uri, $controller): Route
     {
         return $this->map('POST', $uri, $controller);
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return Route
     */
     public function patch($uri, $controller): Route
     {
         return $this->map('PATCH', $uri, $controller);
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return Route
     */
     public function put($uri, $controller): Route
     {
         return $this->map('PUT', $uri, $controller);
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return Route
     */
     public function delete($uri, $controller): Route
     {
         return $this->map('DELETE', $uri, $controller);
     }





     /**
      * @return array
     */
     public function getRoutes(): array
     {
         return $this->routes;
     }




     /**
      * @param string $method
      * @param string $uri
      * @return bool|Route
     */
     public function match(string $method, string $uri): bool|Route
     {
         foreach ($this->routes as $route) {
             if ($route->match($method, $uri)) {
                 return $route;
             }
         }

         return false;
     }




     /**
      * @param string $uri
      * @param string $method
      * @return mixed|void
     */
     public function dispatch(string $method, string $uri)
     {
         foreach ($this->routes as $route) {

             // match route
             if ($route->match($method, $uri)) {

                 // apply the middleware
                 foreach ($route->getMiddlewares() as $middleware) {
                     $route->call([new $middleware, 'handle']);
                 }

                 // call handler
                 return require base_path($route->getHandler());
             }
         }

         $this->abort();
     }




     /**
      * @param int $code
      *
      * @return void
     */
     protected function abort(int $code = Response::NOT_FOUND): void
     {
        http_response_code($code);

        view("{$code}.php");

        exit;
    }
}