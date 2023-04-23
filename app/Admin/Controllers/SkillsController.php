<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Skills;

class SkillsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Skills';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Skills());

        $grid->filter(function ($filter) {

            // Remove the default id filter
            $filter->disableIdFilter();

            // Add a column filter
            $filter->like('tag', 'Tag');
            $filter->like('label', 'label');

            //... additional filter options
        });

        $grid->column('id', __('Id'));
        $grid->column('image', __('Image'))->image('', 100, 100);
        $grid->column('tag', __('Tag'))->text();
        $grid->column('label', __('Label'))->text();
        $grid->column('order', __('Order'))->integer()->sortable();

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
        $show = new Show(Skills::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'))->image();
        $show->field('tag', __('Tag'));
        $show->field('label', __('Label'));
        $show->field('order', __('Order'));
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
        $form = new Form(new Skills());

        $form->image('image', __('Image'))->required();
        $form->text('tag', __('Tag'))->required();
        $form->text('label', __('Label'))->required();
        $form->number('order', __('Order'))->default(Skills::get()->count())->required();

        return $form;
    }
}
