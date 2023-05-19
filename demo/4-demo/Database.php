<?php

class Database
{

    /**
     * @var PDO
     */
    public PDO $connection;


    public function __construct()
    {
        $dsn = "mysql:host=localhost;port=3306;dbname=laracasts_app;user=root;password=secret123456!;charset=utf8";
        $this->connection = new PDO($dsn, 'root', 'secret123456!');
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