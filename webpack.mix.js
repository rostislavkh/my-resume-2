const mix = require('laravel-mix');

//========================================================= JS file ===========================================================

// default
mix.js('resources/js/default.js', 'js');

// pages
mix.js('resources/js/pages/home.js', 'js');

//========================================================= SCSS file ===========================================================


// default
mix.sass('resources/scss/reset.scss', 'css');
mix.sass('resources/scss/style.scss', 'css');
mix.sass('resources/scss/fonts.scss', 'css');
mix.sass('resources/scss/variables.scss', 'css');

// components
mix.sass('resources/scss/components/header.scss', 'css');

// pages
mix.sass('resources/scss/pages/home.scss', 'css');
mix.sass('resources/scss/pages/more-projects.scss', 'css');
mix.sass('resources/scss/pages/project.scss', 'css');

// libs
// mix.styles([
//     'resources/css/libs/lightbox.css',
// ], 'public/css/all-lib.css');

mix.setPublicPath('public')
mix.version();