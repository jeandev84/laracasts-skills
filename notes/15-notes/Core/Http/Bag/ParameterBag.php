<?php
namespace Core\Http\Bag;

class ParameterBag
{

     public function __construct(protected array $params)
     {
     }


     public function set(string $name, $value): static
     {
         $this->params[$name] = $value;

         return $this;
     }


     public function has(string $name): bool
     {
          return isset($this->params[$name]);
     }



     public function get(string $name, $default = null)
     {
         return $this->params[$name] ?? $default;
     }


     public function getInt(string $name, $default = 0)
     {
          return (int)$this->get($name, $default);
     }
}