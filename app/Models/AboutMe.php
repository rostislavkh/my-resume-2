<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutMe extends Model
{
    use HasFactory;

    protected $fillable = [
        'img',
        'name_en',
        'name_uk',
        'positions',
        'description_en',
        'description_uk',
        'socials',
        'phone_number',
        'address',
        'address_url'
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
