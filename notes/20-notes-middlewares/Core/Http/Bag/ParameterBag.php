<?php
namespace Core\Http\Bag;

class ParameterBag
{

     public function __construct(protected array $params)
     {
     }


    /**
     * @param string $name
     * @param $value
     * @return $this
     */
     public function set(string $name, $value): static
     {
         $this->params[$name] = $value;

         return $this;
     }


    /**
     * @param string $name
     * @return bool
     */
     public function has(string $name): bool
     {
          return isset($this->params[$name]);
     }


    /**
     * @param string $name
     * @param $default
     * @return mixed|null
     */
     public function get(string $name, $default = null)
     {
         return $this->params[$name] ?? $default;
     }


    /**
     * @param string $name
     * @param $default
     * @return int
     */
     public function getInt(string $name, $default = 0)
     {
          return (int)$this->get($name, $default);
     }


    /**
     * @param string $name
     * @param $default
     * @return float
     */
     public function getFloat(string $name, $default = 0)
     {
          return (float)$this->get($name, $default);
     }



     /**
      * @param string $name
      *
      * @param $default
      *
      * @return bool
     */
     public function getBoolean(string $name, $default = false)
     {
          return (bool)$this->get($name, $default);
     }
}