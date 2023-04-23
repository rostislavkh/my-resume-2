<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;

class Skills extends Model
{
    public function setTagAttribute($value)
    {
        $this->attributes['tag'] = Str::slug($value);
    }
}
