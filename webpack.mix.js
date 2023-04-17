const mix = require('laravel-mix');

//========================================================= JS file ===========================================================

// default
mix.js('resources/js/default.js', 'js');

//========================================================= SCSS file ===========================================================


// default
mix.sass('resources/scss/reset.scss', 'css');
mix.sass('resources/scss/style.scss', 'css');
mix.sass('resources/scss/fonts.scss', 'css');
mix.sass('resources/scss/variables.scss', 'css');

// components
mix.sass('resources/scss/components/header.scss', 'css');

// lib
// mix.styles([
//     'resources/scss/libs/slick.css',
// ], 'public/css/all-lib.css');

mix.setPublicPath('public')
mix.version();