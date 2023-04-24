<?php

namespace App\Models;

use App\Helpers\Translation;
use Illuminate\Support\Str;
use Spatie\EloquentSortable\Sortable;
use Illuminate\Database\Eloquent\Model;
use Spatie\EloquentSortable\SortableTrait;

class Project extends Model implements Sortable
{
    use SortableTrait;
    use Translation;

    public $sortable = [
        'order_column_name' => 'order',
        'sort_when_creating' => true,
    ];

    public function skills() {
        return $this->belongsToMany(Skills::class);
    }

    public function setNameEnAttribute($value)
    {
        $this->attributes['slug'] = Str::slug($value);
    }

    public function setImagesAttribute($pictures)
    {
        if (is_array($pictures)) {
            $this->attributes['images'] = json_encode($pictures);
        }
    }

    public function getImagesAttribute($pictures)
    {
        return json_decode($pictures, true);
    }
}
