<?php

declare(strict_types=1);

session_start();

use Uav\app\Handler;

require_once __DIR__. '/../vendor/autoload.php';

$app = new Handler;

$uri = strpos($_SERVER['REQUEST_URI'], '?');

$uri = $uri ? substr($_SERVER['REQUEST_URI'], 0, $uri) : $_SERVER['REQUEST_URI'];

switch ($uri) {
    case '/':
        $app->home();
        break;
    case '/register':
        $app->create();
        break;
    case '/login':
        $app->authenticate();
        break;
    case '/movies':
        $app->getMovies();
        break;
    case '/movie':
        $app->getMovie();
        break;
    case '/shows':
        $title = 'Shows';
        require_once __DIR__. '/../views/index.php';
        break;
    case '/search':
        $app->search();
        break;
    case '/favorites/add':
        $app->addFavoriteMovie();
        break;
    case '/favorites':
        $app->showAllFavoriteMovies();
        break;
    case '/favorites/delete':
        $app->deleteFavoriteMovie();
        break;
    case '/profile':
        $title = 'Profile';
        require_once __DIR__. '/../views/index.php';
        break;
    case '/settings':
        $title = 'Settings';
        require_once __DIR__. '/../views/index.php';
        break;
    case '/logout':
        $app->logout();
        break;
    default:
        echo '404 page not found';
}