<?php

namespace App\Admin\Controllers;

use App\Models\Skills;
use \App\Models\Project;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use OpenAdmin\Admin\Widgets\Table;
use OpenAdmin\Admin\Controllers\AdminController;

class ProjectController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Project';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Project());

        $grid->sortable();

        $grid->column('id', __('Id'));
        $grid->column('titule_img', __('Titule img'))->image('', 100, 100);
        $grid->column('is_view_main', __('Is view to main'))->switch();
        $grid->column('name_en', 'Name');
        // $grid->column('name_uk', __('Name uk'));
        // $grid->column('short_desc_en', __('Short desc en'));
        // $grid->column('short_desc_uk', __('Short desc uk'));
        // $grid->column('desc_en', __('Desc en'));
        // $grid->column('desc_uk', __('Desc uk'));
        $grid->column('skills', __('Tags'))->display(function ($model) {

            $model = array_map(function ($model) {
                return "<span class='label label-success'>{$model['label']}</span>";
            }, $model);

            return join(', ', $model);
        });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Project::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('titule_img', __('Titule img'))->image('', 100, 100);
        $show->field('order', __('Order'));
        $show->field('is_view_main', __('Is view to main'));
        $show->field('name_en', __('Name en'));
        $show->field('name_uk', __('Name uk'));
        $show->field('short_desc_en', __('Short desc en'));
        $show->field('short_desc_uk', __('Short desc uk'));
        $show->field('desc_en', __('Desc en'));
        $show->field('desc_uk', __('Desc uk'));
        $show->field('images', __('Images'))->image('', 100, 100);
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Project());

        $form->image('titule_img', __('Titule img'))->required();
        $form->number('order', __('Order'))->default(Project::all()->count())->required();
        $form->switch('is_view_main', __('Is view to main'));
        $form->text('name_en', __('Name en'))->required();
        $form->text('name_uk', __('Name uk'))->required();
        $form->multipleSelect('skills', __('Tags'))->options(Skills::all()->pluck('label', 'id'))->required();
        $form->ckeditor('short_desc_en', __('Short desc en'))->required();
        $form->ckeditor('short_desc_uk', __('Short desc uk'))->required();
        $form->ckeditor('desc_en', __('Desc en'))->required();
        $form->ckeditor('desc_uk', __('Desc uk'))->required();
        $form->multipleImage('images', __('Images'));

        return $form;
    }
}
