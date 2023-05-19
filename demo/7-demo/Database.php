<?php

class Database
{

    /**
     * @var PDO
     */
    public PDO $connection;


    /**
     * @param array $config
     * @param string $username
     * @param string|null $password
     */
    public function __construct(array $config, string $username = 'root', string $password = null)
    {
        $dsn = 'mysql:'. http_build_query($config, '', ';');
        $this->connection = new PDO($dsn, 'root', 'secret123456!',[
           PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    }


    /**
     * @param string $sql
     * @return PDOStatement
     */
    public function query(string $sql): PDOStatement
    {
        $statement = $this->connection->prepare($sql);

        $statement->execute();

        return $statement;
    }
}