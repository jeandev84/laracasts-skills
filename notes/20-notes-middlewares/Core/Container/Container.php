<?php
namespace Core\Container;

use Closure;
use Exception;

class Container
{

     /**
      * @var array
     */
     protected $bindings = [];



     /**
      * @param string $id
      *
      * @param Closure $resolver
      *
      * @return $this
     */
     public function bind(string $id, Closure $resolver): static
     {
          $this->bindings[$id] = $resolver;

          return $this;
     }


     /**
      * @param string $id
      *
      * @return void
     */
     public function remove(string $id)
     {
         unset($this->bindings[$id]);
     }



     /**
      * @param string $id
      * @return void
     */
     public function get(string $id)
     {

     }


     /**
      * @param string $id
      * @return mixed
      * @throws Exception
     */
     public function resolve(string $id): mixed
     {
         if (! array_key_exists($id, $this->bindings)) {
              throw new Exception("No matching binding found for $id");
         }

         $resolver = $this->bindings[$id];

         return call_user_func($resolver);
     }
}