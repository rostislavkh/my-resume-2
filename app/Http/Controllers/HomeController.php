<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index() {
        $about = AboutMe::get()->last();
        $locale = \Illuminate\Support\Facades\App::getLocale();

        // dd($about->socials);

        return view('pages.welcome', [
            'about' => $about,
            'locale' => $locale
        ]);
    }
}
