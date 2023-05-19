<?php

class Database
{

    /**
     * @var PDO
    */
    protected PDO $connection;



    /**
     * @var PDOStatement
    */
    protected PDOStatement $statement;



    /**
     * @param array $config
     * @param string $username
     * @param string $password
     */
    public function __construct(array $config, string $username = 'root', string $password = 'secret123456!')
    {
        $dsn = 'mysql:'. http_build_query($config, '', ';');
        $this->connection = new PDO($dsn, $username, $password,[
           PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    }




    /**
     * @param string $sql
     *
     * @param array $params
     *
     * @return $this
    */
    public function query(string $sql, array $params = []): static
    {
        $this->statement = $this->connection->prepare($sql);

        $this->statement->execute($params);

        return $this;
    }



    public function get(): bool|array
    {
        return $this->statement->fetchAll();
    }


    public function find(): mixed
    {
        return $this->statement->fetch();
    }



    public function findOrFail()
    {
         $result = $this->find();

         if (! $result) {
             abort();
         }

         return $result;
    }


    public function insert(array $params)
    {

    }
}