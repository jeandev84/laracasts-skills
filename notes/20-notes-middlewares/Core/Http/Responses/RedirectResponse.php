<?php
namespace Core\Http\Responses;

class RedirectResponse extends Response
{


    /**
     * @var string
     */
     protected string $path;


     /**
      * @param string $path
      * @param int $status
     */
     public function __construct(string $path, int $status = 302)
     {
          parent::__construct(null, $status);
          $this->path = $path;
     }



     /**
      * @return string
     */
     public function getPath(): string
     {
         return $this->path;
     }

     /**
      * @return void
     */
     public function send()
     {
         header("Location: $this->path");
     }
}