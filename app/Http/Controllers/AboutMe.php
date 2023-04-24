<?php

namespace App\Http\Controllers;

use App\Helpers\Translation;
use App\Models\AboutMe as ModelsAboutMe;
use Exception;
use Illuminate\Http\Request;

class AboutMe extends Controller
{
    public function create(Request $request) {
        $filename = time() . '.' . $request->img->getClientOriginalExtension();
        $request->img->move(public_path('uploads'), $filename);

        $cvname = time() . '.' . $request->cv->getClientOriginalExtension();
        $request->cv->move(public_path('uploads'), $cvname);

        ModelsAboutMe::create([
            'img' => $filename,
            'cv' => $cvname,
            'name_en' => $request->name_en,
            'name_uk' => $request->name_uk,
            'positions' => $request->positions,
            'description_en' => $request->description_en,
            'description_uk' => $request->description_uk,
            'socials' => $request->socials,
            'phone_number' => $request->phone_number,
            'address_en' => $request->address_en,
            'address_uk' => $request->address_uk,
            'address_url' => $request->address_url,
            'email' => $request->email
        ]);

        admin_toastr('Information created!', 'success');

        return redirect(route('admin.home'));
    }
    
    public function update(Request $request) {
        $model = \App\Models\AboutMe::get()->last();

        $filename = $model->img;

        if ($request->img) {
            try {
                unlink(public_path('uploads/' . $model->img));
            } catch (Exception $e) {}

            $filename = time() . '.' . $request->img->getClientOriginalExtension();
            $request->img->move(public_path('uploads'), $filename);
        }

        $cvname = $model->cv;

        if ($request->cv) {
            try {
                unlink(public_path('uploads/' . $model->img));
            } catch (Exception $e) {}

            $cvname = time() . '.' . $request->cv->getClientOriginalExtension();
            $request->cv->move(public_path('uploads'), $cvname);
        }

        $model->update([
            'cv' => $cvname,
            'img' => $filename,
            'name_en' => $request->name_en,
            'name_uk' => $request->name_uk,
            'positions' => $request->positions,
            'description_en' => $request->description_en,
            'description_uk' => $request->description_uk,
            'socials' => $request->socials,
            'phone_number' => $request->phone_number,
            'address_en' => $request->address_en,
            'address_uk' => $request->address_uk,
            'address_url' => $request->address_url,
            'email' => $request->email
        ]);

        admin_toastr('Information updated!', 'success');

        return redirect(route('admin.home'));
    }
}
