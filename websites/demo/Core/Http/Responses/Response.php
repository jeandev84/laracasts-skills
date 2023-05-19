<?php
namespace Core\Http\Responses;


class Response
{
     const NOT_FOUND = 404;
     const FORBIDDEN = 403;


     public function __construct(
         protected ?string $body,
         protected int $status = 200,
         protected array $headers = [])
     {
     }


    /**
     * @return string|null
     */
    public function getBody(): ?string
    {
        return $this->body;
    }


    /**
     * @return int
     */
    public function getStatus(): int
    {
        return $this->status;
    }


    /**
     * @return array
     */
    public function getHeaders(): array
    {
        return $this->headers;
    }


    public function send()
    {
         http_response_code($this->status);

         foreach ($this->headers as $name => $value) {
             header("$name: $value");
         }
    }
}