<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\Skills;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function query(Request $request) {
        $projects = Project::where('name_en', 'LIKE', "%{$request->q}%")
        ->orWhere('name_uk', 'LIKE', "%{$request->q}%")
        ->orWhere('desc_en', 'LIKE', "%{$request->q}%")
        ->orWhere('desc_uk', 'LIKE', "%{$request->q}%")
        ->get();
        $projects_res = [];

        foreach($projects as $project) {
            $projects_res[] = [
                'img' => url('/') . '/uploads/' . $project->titule_img,
                'name' => $project->getTranslate('name'),
                'url' => route('project', ['project' => $project->slug]),
                'short_desc' => strip_tags($project->getTranslate('short_desc'))
            ];
        }

        $tags = Skills::where('label', 'LIKE', "%{$request->q}%")
        ->orWhere('tag', 'LIKE', "%{$request->q}%")
        ->get();
        $tags_res = [];

        foreach ($tags as $tag) {
            $tags_res[] = [
                'tag' => $tag->tag,
                'url' => route('projects-witch-tag', ['skill' => $tag->tag]),
            ];
        }

        return response()->json([
            'label_1' => __('Projects'),
            'label_2' => __('Tags'),
            'projects' => $projects_res,
            'tags' => $tags_res
        ]);
    }
}
