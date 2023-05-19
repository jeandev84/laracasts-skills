<?php
namespace Core;

use Core\Container\Container;

class App
{


      protected static Container $container;


      /**
       * @param Container $container
       * @return void
     */
     public static function setContainer(Container $container)
     {
           self::$container = $container;
     }


     /**
      * @return Container
     */
     public static function container(): Container
     {
         return static::$container;
     }



     /**
      * @param string $id
      * @param $resolver
      * @return void
     */
     public static function bind(string $id, $resolver)
     {
         static::container()->bind($id, $resolver);
     }



     /**
      * @param string $id
      * @return mixed
      * @throws \Exception
     */
     public static function resolve(string $id)
     {
         return static::container()->resolve($id);
     }
}

