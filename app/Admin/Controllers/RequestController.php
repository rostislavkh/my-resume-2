<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Request;

class RequestController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Request';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Request());

        $grid->tags()->display(function () {
            $str = '';

            if ($this['is_processed']) {
                $str .= '<span class="badge rounded-pill bg-success">Processed</span> ';
            } else {
                $str .= '<span class="badge rounded-pill bg-warning">Waiting</span> ';
            }
            
            return $str;
        });
        $grid->column('is_processed', __('Is processed'))->switch();
        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('email', __('Email'));
        $grid->column('contact', __('Contact'));
        $grid->column('text', __('Text'));
        $grid->column('created_at', __('Created at'))->display(function () {
            return date('d-m-Y', strtotime($this['created_at']));
        })->sortable();
        $grid->column('updated_at', __('Updated at'))->display(function () {
            return date('d-m-Y', strtotime($this['updated_at']));
        })->sortable();

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
        $show = new Show(Request::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('email', __('Email'));
        $show->field('contact', __('Contact'));
        $show->field('text', __('Text'));
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
        $form = new Form(new Request());

        $form->text('name', __('Name'))->required();
        $form->email('email', __('Email'))->required();
        $form->text('contact', __('Contact'))->required();
        $form->textarea('text', __('Text'))->required();
        $form->switch('is_processed', __('Is processed'))->required();

        return $form;
    }
}
