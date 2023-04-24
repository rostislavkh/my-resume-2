<?php

namespace App\Models;

use App\Helpers\Translation;
use Illuminate\Database\Eloquent\Model;
use Spatie\EloquentSortable\Sortable;
use Spatie\EloquentSortable\SortableTrait;

class Eexperience extends Model implements Sortable
{
    use Translation;
    use SortableTrait;

    public $sortable = [
        'order_column_name' => 'order',
        'sort_when_creating' => true,
    ];
    protected $table = 'experiences';
}
