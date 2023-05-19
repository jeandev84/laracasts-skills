<?php
namespace Core\Routing;


class Router
{

     /**
      * @var Route[]
     */
     protected $routes = [];



     /**
      * @param string $methods
      *
      * @param string $uri
      *
      * @param $controller
      *
      * @return $this
     */
     public function map(string $methods, string $uri, $controller): static
     {
         $this->routes[] = new Route(explode('|', $methods), $uri, $controller);

         return $this;
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return $this
     */
     public function get($uri, $controller): static
     {
         return $this->map('GET', $uri, $controller);
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return $this
     */
     public function post($uri, $controller): static
     {
         return $this->map('POST', $uri, $controller);
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return $this
     */
     public function patch($uri, $controller): static
     {
         return $this->map('PATCH', $uri, $controller);
     }



     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return $this
     */
     public function put($uri, $controller): static
     {
         return $this->map('PUT', $uri, $controller);
     }




     /**
      * @param $uri
      *
      * @param $controller
      *
      * @return $this
     */
     public function delete($uri, $controller): static
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
             if ($route->match($method, $uri)) {
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