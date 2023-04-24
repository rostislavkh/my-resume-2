<?php

use Illuminate\Routing\Router;
use OpenAdmin\Admin\Facades\Admin;
use Illuminate\Support\Facades\Route;
use App\Admin\Controllers\SkillsController;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('skills', SkillsController::class);
    $router->resource('projects', ProjectController::class);
    $router->resource('eexperiences', ExperienceController::class);
});
