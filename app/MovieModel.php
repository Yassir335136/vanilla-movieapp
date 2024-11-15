<?php

declare(strict_types=1);

namespace Uav\app;

class MovieModel extends Model
{
    public function storeMovie(object $movie): array|bool
    {
        $genres = [];

        foreach ($movie->genres as $genre) {
            $genres[] = $genre->name;
        }

        $conn = $this->getConnection();
        $sql = "INSERT INTO movies (movie_id, poster_path, release_date, vote_average, original_title, runtime, status, genres, imdb_id, popularity) VALUES (:movie_id, :poster_path, :release_date, :vote_average, :original_title, :runtime, :status, :genres, :imdb_id, :popularity)";
        $stmt = $conn->prepare($sql);

       return $stmt->execute([
            ':movie_id' => $movie->id,
            ':poster_path' => $movie->poster_path,
            ':release_date' => $movie->release_date,
            ':vote_average' => $movie->vote_average,
            ':original_title' => $movie->original_title,
            ':runtime' => $movie->runtime,
            ':status' => $movie->status,
            ':imdb_id' => $movie->imdb_id,
            ':popularity' => $movie->popularity,
            ':genres' => implode(', ', $genres),
        ]);
    }

    public function getMovies(string|int $page = '1'): array|false
    {
        if ($page === '1' || $page === 1) {
            $page = 0;
        } else {
            $page--;
            $page *= 40;
        }

        $conn = $this->getConnection();
        $sql  = "SELECT * FROM movies WHERE status = 'Released' ORDER BY popularity DESC LIMIT 40 OFFSET :page";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':page', $page, \PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetchAll(\PDO::FETCH_OBJ);
    }

    public function getSingleMovie(string $id): object|bool
    {
        $conn = $this->getConnection();
        $sql  = "SELECT * FROM movies WHERE id = :id LIMIT 1";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':id' => $id
        ]);

        return $stmt->fetch(\PDO::FETCH_OBJ);
    }

    public function searchMovie(string|int $page = '1', string $search = '')
    {
        if ($page === '1' || $page === 1) {
            $page = 0;
        } else {
            $page--;
            $page *= 40;
        }

        $queries = [];

        $counter = 1;

        $search = explode(' ', $search);

        foreach ($search as $s) {
            $queries[] = "original_title LIKE :search$counter";
            $counter++;
        }

        $finalQuery = implode(' AND ', $queries);

        $conn = $this->getConnection();
        $sql  = "SELECT * FROM movies WHERE "; // :search ORDER BY original_title ASC LIMIT 40 OFFSET :page";
        $sql .= "$finalQuery ORDER BY original_title ASC LIMIT 40 OFFSET :page";
        $stmt = $conn->prepare($sql);
        $counter = 1;
        foreach ($search as $s) {
            $stmt->bindValue(":search$counter", "%$s%", \PDO::PARAM_STR);
            $counter++;
        }
        $stmt->bindParam(':page', $page, \PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetchAll(\PDO::FETCH_OBJ);
    }

    public function addFavoriteMovie(string $movie_id): bool
    {
        $conn = $this->getConnection();
        $sql = "INSERT INTO favorites (user_id, movie_id) VALUES (:user_id, :movie_id)";
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(':user_id', $_SESSION['id'], \PDO::PARAM_INT);
        $stmt->bindParam(':movie_id', $movie_id, \PDO::PARAM_STR);

        return $stmt->execute();
    }

    public function showFavoriteMoviesById(string|int $page = '1'): array|bool
    {
        if ($page === '1' || $page === 1) {
            $page = 0;
        } else {
            $page--;
            $page *= 40;
        }

        $conn = $this->getConnection();
        $sql = "SELECT * FROM movies
            JOIN favorites ON movies.id = favorites.movie_id
            WHERE favorites.user_id = :user_id ORDER BY created_at DESC LIMIT 40 OFFSET :page";
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(':user_id', $_SESSION['id'] ?? '', \PDO::PARAM_INT);
        $stmt->bindParam(':page', $page, \PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetchAll(\PDO::FETCH_OBJ);
    }

    public function checkMovieById(string $id): array|bool
    {
        $conn = $this->getConnection();
        $sql = "SELECT user_id, movie_id FROM favorites WHERE user_id = :user_id";
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(':user_id', $_SESSION['id'], \PDO::PARAM_STR);
        $stmt->execute();

        $results = $stmt->fetchAll();

        foreach ($results as $result) {
            if ($result['movie_id'] === (int) $id && $result)
                return true;
        }
        return false;
    }

    public function deleteMovieById(string $id)
    {
        $conn = $this->getConnection();
        $sql = 'DELETE FROM favorites WHERE id = :id';
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $id, \PDO::PARAM_STR);

        return $stmt->execute();
    }
}