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
     * @return PDOStatement
    */
    public function query(string $sql, array $params = []): PDOStatement
    {
        $statement = $this->connection->prepare($sql);

        $statement->execute($params);

        return $statement;
    }
}