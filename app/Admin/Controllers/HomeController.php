<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Widgets\Form;
use OpenAdmin\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use App\Models\AboutMe;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        $info = AboutMe::get()->last();

        $form = new Form($info);

        $form->divider('Meta block');
        $form->image('meta_img', 'Meta img')->required();
        $form->text('meta_author_uk', 'Author [UK]')->required();
        $form->text('meta_author_en', 'Author [EN]')->required();
        $form->text('meta_title_uk', 'Title [UK]')->required();
        $form->text('meta_title_en', 'Title [EN]')->required();
        $form->text('meta_desc_uk', 'Description [UK]')->required();
        $form->text('meta_desc_en', 'Description [EN]')->required();
        $form->text('meta_keywords', 'Keywords')->placeholder('HTML, CSS, JavaScript')->required();


        $form->divider('Main block');
        $form->image('cv', 'CV')->required();
        $form->image('img', 'Image')->required();
        $form->text('name_en', 'Name [EN]')->required();
        $form->text('name_uk', 'Name [UK]');
        $form->table('positions', function ($form) {
            $form->text('position_en', 'Position [EN]')->required();
            $form->text('position_uk', 'Position [UK]');
        })->required();
        $form->divider('About block');
        $form->ckeditor('description_en', 'Description [EN]')->required();
        $form->ckeditor('description_uk', 'Description [UK]');
        $form->divider('Contacts');
        $form->table('socials', function ($form) {
            $form->textarea('icon', 'Icon (SVG code)')->rows(10)->required();
            $form->text('label', 'Label')->required();
            $form->text('url', 'URL')->required();
        })->required();
        $form->phonenumber('phone_number', 'Phone number')->options(['mask' => '+38 (099) 999-99-99'])->required();
        $form->text('address_en', 'Address [EN]')->required();
        $form->text('address_uk', 'Address [UK]')->required();
        $form->text('address_url', 'Address URL')->required();
        $form->email('email', 'Email')->required();

        $form->disableReset();

        if ($info) {
            $form->action(route('set-about-me'));
        } else {
            $form->action(route('create-about-me'));
        }

        return $content
        ->title('About me')
        ->body($form->render());
    }
}
