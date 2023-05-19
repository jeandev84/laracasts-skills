<?php
namespace Core\Http\Storage;

class Session
{

    /**
     * @var string
     */
    protected string $flashKey = 'session.flash';


    /**
     * @param Cookie $cookie
    */
    public function __construct(protected Cookie $cookie)
    {
         if (session_status() === PHP_SESSION_NONE) {
             session_start();
         }
    }


    /**
     * @param string $name
     *
     * @param $value
     *
     * @return $this
    */
    public function set(string $name, $value): static
    {
        $_SESSION[$name] = $value;

        return $this;
    }



    /**
     * @param string $name
     *
     * @return bool
    */
    public function has(string $name)
    {
         return isset($_SESSION[$name]);
    }


    /**
     * @param string $name
     * @param null $default
     * @return mixed|null
    */
    public function get(string $name, $default = null): mixed
    {
        return $_SESSION[$name] ?? $default;
    }



    /**
     * @param string $name
     * @return void
    */
    public function remove(string $name)
    {
         unset($_SESSION[$name]);
    }
}