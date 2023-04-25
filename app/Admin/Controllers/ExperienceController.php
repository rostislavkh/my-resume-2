<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Eexperience;

class ExperienceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Eexperience';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Eexperience());

        $grid->sortable();

        $grid->column('id', __('Id'));
        $grid->column('company_name_en', __('Company name [EN]'))->text();
        $grid->column('company_name_uk', __('Company name [UK]'))->text();
        $grid->column('position_en', __('Position [EN]'))->text();
        $grid->column('position_uk', __('Position [UK]'))->text();
        $grid->column('date_from', __('Date from'))->date();
        $grid->column('date_to', __('Date to'))->date();
        $grid->column('is_today', __('Is today'))->bool();

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
        $show = new Show(Eexperience::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('company_name_en', __('Company name [EN]'));
        $show->field('company_name_uk', __('Company name [UK]'));
        $show->field('position_en', __('Position [EN]'));
        $show->field('position_uk', __('Position [UK]'));
        $show->field('text_en', __('Text [EN]'));
        $show->field('text_uk', __('Text [UK]'));
        $show->field('date_from', __('Date from'));
        $show->field('date_to', __('Date to'));
        $show->field('is_today', __('Is today'));
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
        $form = new Form(new Eexperience());

        $form->number('order', __('Order'))->required()->default(0);
        $form->text('company_name_en', __('Company name [EN]'))->required();
        $form->text('company_name_uk', __('Company name [UK]'))->required();
        $form->text('position_en', __('Position [EN]'))->required();
        $form->text('position_uk', __('Position [UK]'))->required();
        $form->ckeditor('text_en', __('Text [EN]'))->required();
        $form->ckeditor('text_uk', __('Text [UK]'))->required();
        $form->date('date_from', 'Date from')->required();
        $form->date('date_to', 'Date to');
        $form->switch('is_today', 'Is today');

        return $form;
    }
}
