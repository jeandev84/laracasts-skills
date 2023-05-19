<?php

class Database
{

    /**
     * @var PDO
     */
    public PDO $connection;


    public function __construct()
    {
        $config = [
            'host' => 'localhost',
            'port' => 3306,
            'dbname' => 'laracasts_app',
            'charset' => 'utf8mb4',
            'user' => 'root',
            'password' => 'secret123456!'
        ];

        # "mysql:host=localhost;port=3306;dbname=laracasts_app;user=root;password=secret123456!;charset=utf8";
        $dsn = 'mysql:'. http_build_query($config, '', ';');
        $this->connection = new PDO($dsn, 'root', 'secret123456!', [
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