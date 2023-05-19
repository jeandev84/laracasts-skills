<?php
namespace Core\Routing;

class Route
{

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
}