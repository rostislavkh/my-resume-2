<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use App\Models\Eexperience;
use App\Models\Project;
use App\Models\Skills;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index() {
        $about = AboutMe::get()->last();
        $locale = \Illuminate\Support\Facades\App::getLocale();
        $skills = Skills::orderBy('order')->get();
        $projects = Project::where('is_view_main', true)->orderBy('order')->get();
        $exp = Eexperience::orderBy('order')->get();

        return view('pages.welcome', [
            'about' => $about,
            'locale' => $locale,
            'skills' => $skills,
            'projects' => $projects,
            'exp' => $exp
        ]);
    }
}
