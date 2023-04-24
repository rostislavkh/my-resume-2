<?php

use App\Http\Controllers\AboutMe;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProjectsController;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
], function () {

    Route::get('/', [HomeController::class, 'index'])->name('home');

    Route::get('/more-projects', [ProjectsController::class, 'index'])->name('more-projects');

    Route::get('/project/{project:slug}', [ProjectsController::class, 'project'])->name('project');

    Route::get('/projects-witch-tag/{skill:tag}', [ProjectsController::class, 'projectsWithTag'])->name('projects-witch-tag');
});


Route::post('/create-about-me', [AboutMe::class, 'create'])->name('create-about-me');
Route::post('/set-about-me', [AboutMe::class, 'update'])->name('set-about-me');