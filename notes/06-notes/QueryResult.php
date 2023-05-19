<?php

class QueryResult
{

    protected $mapping;

    public function __construct(protected PDOStatement $statement)
    {
    }


    public function map(string $class): static
    {
       $this->mapping = $class;

       return $this;
    }


    public function all()
    {

    }


    public function one()
    {

    }


    public function object()
    {

    }


    public function assoc()
    {

    }


    public function column()
    {

    }


    public function columns()
    {

    }


    public function both()
    {

    }

}