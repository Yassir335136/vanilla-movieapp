<?php

declare(strict_types=1);

namespace Uav\app;

class UserModel extends Model
{
    public function createUser(string $username, string $email, string $password): bool
    {
        $conn = $this->getConnection();
        $sql = "INSERT INTO users (username, email, password, is_active) VALUES (:username, :email, :password, :is_active)";
        $stmt = $conn->prepare($sql);

        return $stmt->execute([
            'username' => $username,
            ':email' => $email,
            ':password' => password_hash($password, PASSWORD_DEFAULT),
            ':is_active' => 0
        ]);
    }

    public function checkUser(string $email): array|false
    {
        $conn = $this->getConnection();
        $sql = "SELECT username, id, email, password FROM users WHERE email = :email";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':email' => $email
        ]);

        return $stmt->fetch();
    }
}