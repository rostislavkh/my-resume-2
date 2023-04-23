<?php

namespace App\Helpers;

trait Translation
{
    public function getTranslate($name)
    {
        $locale = \Illuminate\Support\Facades\App::getLocale();
        return $this[$name . '_' . $locale];
    }
}
