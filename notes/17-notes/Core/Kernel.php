<?php
namespace Core;

use Core\Http\Request;

class Kernel
{

    public function __construct()
    {
    }


    /**
     * @param Request $request
     *
     * @return Response
    */
    public function handle(Request $request): Response
    {
         return new Response("OK");
    }
}