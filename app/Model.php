<?php

declare(strict_types=1);

namespace Uav\app;

abstract class Model
{
    private \PDO $conn;

    public function __construct()
    {
        $servername = 'localhost';
        $username = 'root';
        $password = '';
        $database = 'movieapp';

        try {
            $this->conn = new \PDO("mysql:host=$servername;port=3306;dbname=$database", $username, $password);
            $this->conn->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        } catch (\PDOException $e) {
            echo "Connection failed {$e->getMessage()}";
            exit;
        }
    }

    protected function getConnection(): \PDO
    {
        return $this->conn;
    }
}