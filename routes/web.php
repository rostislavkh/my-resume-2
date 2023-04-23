<?php

use App\Http\Controllers\AboutMe;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/more-projects', function () {
    return view('pages.more-projects');
})->name('more-projects');

Route::get('/project', function () {
    return view('pages.project');
})->name('project');

Route::get('/projects-witch-tag', function () {
    return view('pages.projects-witch-tag');
})->name('projects-witch-tag');


Route::post('/create-about-me', [AboutMe::class, 'create'])->name('create-about-me');
Route::post('/set-about-me', [AboutMe::class, 'update'])->name('set-about-me');