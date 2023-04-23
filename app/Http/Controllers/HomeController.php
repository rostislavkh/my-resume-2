<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index() {
        $about = AboutMe::get()->last();

        return view('pages.welcome', [
            'about' => $about
        ]);
    }
}
