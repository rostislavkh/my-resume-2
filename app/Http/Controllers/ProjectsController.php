<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;

class ProjectsController extends Controller
{
    public function index() {
        $projects = Project::orderBy('order')->paginate(9);

        return view('pages.more-projects', [
            'projects' => $projects
        ]);
    }

    public function project(Project $project) {

        return view('pages.project', [
            'project' => $project
        ]);
    }
}
