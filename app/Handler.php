<?php

declare(strict_types=1);

namespace Uav\app;

use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;
use Uav\app\UserModel;

class Handler
{
    public function __construct()
    {
        ob_start();
    }

    public function home(): void
    {
        header('Location: /movies');
        exit;

        // require_once '../views/index.php.php';
    }

    public function create()
    {
        $this->isAuthenticated();

        $title = 'Register';

        $errors = [
            'username' => '',
            'email' => '',
            'password' => '',
            'password_confirm' => ''
        ];

        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            require_once '../views/register.php';
            return;
        }

        $username = $_POST['username'] ?? '';
        $email = $_POST['email'] ?? '';
        $password = $_POST['password'] ?? '';
        $password_confirm = $_POST['password_confirm'] ?? '';

        $user = new UserModel;

        if (!$password_confirm)
            $errors['password_confirm'] = 'Password confirmation is required';

        $errors = $this->getErrors($username, $email, $password, $errors);

        if ($password !== $password_confirm)
            $errors['password_confirm'] = 'Please confirm your password';

        if ($user->checkUser($email))
            $errors['email'] = 'Email already exists';

        if ($user->checkUser($username))
            $errors['username'] = 'Username already exists';

        if (empty($errors['email']) && empty($errors['password']) && empty($errors['password_confirm'] && empty($errors['username']))) {
            $user->createUser($username, $email, $password) ? header('Location: /login') : header('Location: /404');
            return;
        }

        require_once '../views/register.php';
    }

    public function authenticate(): void
    {
        $this->isAuthenticated();

        $title = 'Login';

        $errors = [
            'email' => '',
            'password' => ''
        ];

        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            require_once  '../views/login.php';
            return;
        }

        $email = $_POST['email'] ?? '';
        $password = $_POST['password'] ?? '';

        $errors = $this->getErrors('optional', $email, $password, $errors);

        $user = new UserModel;

        $data = $user->checkUser($email);

        if (!$data || !password_verify($password, $data['password'])) {
            $errors['email'] = 'Email or password is incorrect';
            $errors['password'] = 'Email or password is incorrect';
        }

        if (empty($errors['email']) && empty($errors['password'])) {

            session_regenerate_id();

            $_SESSION['id'] = $data['id'];
            $_SESSION['username'] = $data['username'];
            $_SESSION['email'] = $data['email'];

            header("Location: {$this->returnRequestedUri()}");
        }
        require_once '../views/login.php';
    }

    public function getErrors(string $username, string $email, string $password, array $errors): array
    {

        if ($username !== 'optional') {
            if(!preg_match('/^[a-z0-9]+/i', $username))
                $errors['username'] = 'Username can only contain alphanumeric characters';

            if (strlen($username) < 4)
                $errors['username'] = 'Username has to be at least 4 characters';

            if (strlen($username) > 16)
                $errors['username'] = 'Username cannot be more then 16 characters';
        }

        if (strlen($email) >= 64)
            $errors['email'] = 'Email cannot be more then 64 characters';

        if (!preg_match('/^[a-z0-9_.]+[@gmail.com|@outlook.com|@hotmail.com]+$/i', $email))
            $errors['email'] = 'Email must be one of the following domains. gmail.com, outlook.com, or hotmail.com';

        if (strlen($password) >= 128)
            $errors['password'] = 'Password cannot be more then 128 characters';

        if (!preg_match('/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/', $password))
            $errors['password'] = 'Password must contain at least one uppercase letter, lowercase letter, one digit, one special character and be at least 8 characters';

        return $errors;
    }

    public function getMovies(): void
    {
        $getPage = $_GET['page'] ?? 1;

        $title = 'Movies';

        if (!is_numeric($getPage) || $getPage <= '0' || $getPage > '500') {
            header('Location: /movies');
            exit;
        }

        $movies = new MovieModel;

        $favoriteId = $this->getFavoriteIds();

        $movieResults = $movies->getMovies($getPage);

        if(!$movieResults && $getPage > 1) {
            header('Location: /movies');
            exit;
        }

        $count = count($movieResults) >= 40;

        require_once '../views/movies.php';
    }

    public function getMovie()
    {
        $getMovie = $_GET['id'] ?? '';

        if (!$getMovie) {
            header('Location: /movies');
            exit;
        }

        $movieResult = new MovieModel;

        $movie = $movieResult->getSingleMovie($getMovie);

        $title = 'Watching ' . $movie->original_title;

        if (!$movie) {
            header('Location: /movies');
            exit;
        }

        require_once '../views/movie.php';
    }

    private function storeMovies($storeMovies = new MovieModel)
    {
        $client = new Client;

        // 40866 pages

        for ($i = 1; $i <= 50; $i++) {
            try {
                $response = $client->request('GET', "https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc&api_key=a2536abf8d25ed268c9f5f8905ce518a&page=$i", [
                    'headers' => [
                        'accept' => 'application/json',
                    ],
                ]);

                foreach (json_decode($response->getBody()->getContents())->results as $movie) {
                    // movie_id, poster_path, release_date, vote_average, original_title,
                    $response = $client->request('GET', "https://api.themoviedb.org/3/movie/{$movie->id}?language=en-US&api_key=a2536abf8d25ed268c9f5f8905ce518a&include_adult=false", [
                        'headers' => [
                            'accept' => 'application/json',
                        ],
                    ]);

                    $movie = json_decode($response->getBody()->getContents());

                    try {
                        $client->request('GET', "https://vidsrc.to/embed/movie/{$movie->id}");
                    } catch (\Exception $exception) {
                        continue;
                    }

                    $storeMovies->storeMovie($movie);
                }
            } catch (\Exception $exception) {
                continue;
            }
        }
    }

    public function search()
    {
        $search = $_GET['query'] ?? '';

        $title = 'Movies';

        if (strlen($search) < 3) {
            header('Location: /movies');
            exit;
        }

        if (!$search) {
            header('Location: /movies');
            exit;
        }

        $getPage = $_GET['page'] ?? 1;

        if (!is_numeric($getPage) || $getPage <= '0') {
            header("Location: /search?query={$search}");
            exit;
        }

        $movies = new MovieModel;

        $favoriteId = $this->getFavoriteIds();

        // $movieResults = $movies->searchMovie($getPage, $search);
        $movieResults = $movies->searchMovie($getPage, $search);

        // todo add a count of exisiting movies and all movies

        $count = count($movieResults) >= 40;

        require_once '../views/search.php';
    }

    public function logout(): void
    {
        $_SESSION = array();

        if (ini_get("session.use_cookies")) {
            $params = session_get_cookie_params();
            setcookie(session_name(), '', time() - 42000,
                $params["path"], $params["domain"],
                $params["secure"], $params["httponly"]
            );
        }

        session_destroy();

        header('Location: /login');
    }

    private function isAuthenticated()
    {
        if (isset($_SESSION['id'])) {
            header('Location: /movies');
            exit;
        }
    }

    private function isNotAuthenticated()
    {
        if (!isset($_SESSION['id'])) {
            $this->saveRequestedUri();
            header('Location: /login');
            exit;
        }
    }

    public function addFavoriteMovie(): void
    {
        $this->isNotAuthenticated();

        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            header('Location: /movies');
            return;
        }

        $favorite = $_POST['favorite'] ?? 1;

        $getPage = $_GET['page'] ?? 1;

        if (!is_numeric($getPage) || $getPage <= '0' || $getPage > '500') {
            header('Location: /movies');
            exit;
        }

        if (!$favorite) {
            header('Location: /movies');
            exit;
        }

        if (!is_numeric($favorite)) {
            header('Location: /movies');
            exit;
        }

        $movies = new MovieModel;

        if ($movies->checkMovieById($favorite)) {
            header('Location: /favorites');
            exit;
        }

        if ($movies->addFavoriteMovie($favorite)) {

        }
    }

    private function searchIfMovieExsist(string $search, $storeMovies = new MovieModel): void
    {
        $client = new Client();

        $response = $client->request('GET', "https://api.themoviedb.org/3/search/movie?query={$search}&include_adult=false&language=en-US&page=1&api_key=a2536abf8d25ed268c9f5f8905ce518a", [
            'headers' => [
                'accept' => 'application/json',
            ],
        ]);

        $movies = json_decode($response->getBody()->getContents())->results;

        if (!$movies) {
            header('Location: /movies');
            exit;
        }

        $insertedMovieCount = 0;

        foreach ($movies as $movie) {
            // movie_id, poster_path, release_date, vote_average, original_title,
            $response = $client->request('GET', "https://api.themoviedb.org/3/movie/{$movie->id}?language=en-US&api_key=a2536abf8d25ed268c9f5f8905ce518a&include_adult=false", [
                'headers' => [
                    'accept' => 'application/json',
                ],
            ]);

            $movie = json_decode($response->getBody()->getContents());

            try {
                $response = $client->request('GET', "https://vidsrc.to/embed/movie/{$movie->id}");
            } catch (\GuzzleHttp\Exception\ClientException $e) {
                if (empty($response->getBody()->getContents())) continue;
            }

            try {
               $storeMovies->storeMovie($movie); $insertedMovieCount++;
           } catch (\PDOException $exception) {
               continue;
           }
        }
       // $insertedMovieCount > 0 ? header("Location: /search?query={$search}") : header('Location: /movies');
        $insertedMovieCount > 0 ? header("Location: /search?query={$search}") : header('Location: /movies');
    }

    public function showAllFavoriteMovies(): void
    {
        $this->isNotAuthenticated();

        $getPage = $_GET['page'] ?? 1;

        $title = 'Favorites';

        if (!is_numeric($getPage) || $getPage <= '0' || $getPage > '500') {
            header('Location: /movies');
            exit;
        }

        $movies = new MovieModel;

        $movieResults = $movies->showFavoriteMoviesById($getPage);

        if (!$movieResults) {
            header('Location: /movies');
            exit;
        }

        $count = count($movieResults) >= 40;

        require_once '../views/favorites.php';
    }

    public function deleteFavoriteMovie()
    {
        $this->isNotAuthenticated();

        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            header('Location: /movies');
            return;
        }

        $favorite = $_POST['favorite'] ?? 1;

        if (!$favorite) {
            header('Location: /movies');
            exit;
        }

        if (!is_numeric($favorite)) {
            header('Location: /movies');
            exit;
        }

        $movies = new MovieModel;

        $movies->deleteMovieById($favorite) ? header('Location: /favorites') : header('Location: /movies');
    }

    private function getFavoriteIds($movies = new MovieModel()): string
    {
        $favorites = $movies->showFavoriteMoviesById();

        $favoriteArrayIds = array_map(function($favorite){
            return $favorite->movie_id;
        }, $favorites);

        return isset($_SESSION['id']) ? implode(', ', $favoriteArrayIds) : '';
    }

    private function saveRequestedUri(): string
    {
       return $_SESSION['uri'] = $_SERVER['REQUEST_URI'];
    }

    private function returnRequestedUri(): string
    {
        return $_SESSION['uri'] ?? '/movies';
    }
}