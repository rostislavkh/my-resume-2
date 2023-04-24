<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Spatie\EloquentSortable\Sortable;
use Spatie\EloquentSortable\SortableTrait;

class Skills extends Model implements Sortable
{
    use SortableTrait;

    public $sortable = [
        'order_column_name' => 'order',
        'sort_when_creating' => true,
    ];
    
    public function setTagAttribute($value)
    {
        $this->attributes['tag'] = Str::slug($value);
    }

    public function projects()
    {
        return $this->belongsToMany(Project::class);
    }
}
