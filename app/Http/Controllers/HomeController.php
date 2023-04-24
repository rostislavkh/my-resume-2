<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Skills;
use App\Models\AboutMe;
use App\Models\Project;
use App\Models\Eexperience;
use Illuminate\Http\Request;
use App\Notifications\ContactMeNotify;
use App\Models\Request as ModelsRequest;
use Illuminate\Support\Facades\Notification;

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

    public function makeRequest(Request $request) {
        ModelsRequest::create([
            'name' => $request->name,
            'email' => $request->email,
            'contact' => $request->contact,
            'text' => $request->text
        ]);

        $user = User::find(1);

        Notification::send( $user,  new ContactMeNotify(config('app.my_telegram_id'), [
            'name' => $request->name,
            'email' => $request->email,
            'phone_number' => $request->contact,
            'msg' => $request->text
        ]));

        return true;
    }
}
