<?php

namespace App\Models;

use App\Helpers\Translation;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutMe extends Model
{
    use HasFactory;
    use Translation;

    protected $fillable = [
        'img',
        'cv',
        'name_en',
        'name_uk',
        'positions',
        'description_en',
        'description_uk',
        'socials',
        'phone_number',
        'address_en',
        'address_uk',
        'address_url',
        'email',

        'meta_author_uk',
        'meta_author_en',
        'meta_title_en',
        'meta_title_uk',
        'meta_desc_uk',
        'meta_desc_en',
        'meta_keywords',
        'meta_img'
    ];

    public function getPositionsAttribute($value)
    {
        return array_values(json_decode($value, true) ?: []);
    }

    public function setPositionsAttribute($value)
    {
        $arr = array_values($value);

        foreach ($value as $key => $item) {
            unset($arr[$key]['_remove_']);
        }

        $this->attributes['positions'] = json_encode($arr);
    }

    public function getSocialsAttribute($value)
    {
        return array_values(json_decode($value, true) ?: []);
    }

    public function setSocialsAttribute($value)
    {
        $arr = array_values($value);

        foreach ($value as $key => $item) {
            unset($arr[$key]['_remove_']);
        }

        $this->attributes['socials'] = json_encode($arr);
    }
}
