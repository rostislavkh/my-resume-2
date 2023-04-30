@php
    $about_me = \App\Models\AboutMe::get()->last();
    $cv = $about_me->cv;
@endphp

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Meta tags -->
        <meta name="theme-color" content="#3d3e42" />
        <meta name="description" content="{{ $about_me->getTranslate('meta_desc') }}">
        <meta name="keywords" content="{{ $about_me->meta_keywords }}">
        <meta name="author" content="{{ $about_me->getTranslate('meta_author') }}">
        <meta property="og:site_name" content="{{ $about_me->getTranslate('meta_author') }}">
        <meta property="og:title" content="{{ $about_me->getTranslate('meta_title') }}" />
        <meta property="og:description" content="{{ $about_me->getTranslate('meta_desc') }}" />
        <meta property="og:image" content="{{ url('/') }}/uploads/{{ $about_me->meta_img }}" />

        <title>@yield('title')</title>

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/png" href="{{ url('/') }}/img/logo.png">

        <link rel="stylesheet" href="{{ mix('css/reset.css') }}">
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="stylesheet" href="{{ mix('css/style.css') }}">
        <link rel="stylesheet" href="{{ mix('css/header.css') }}">
        @yield('styles')
    </head>
    <body class="oh">
        {{-- loaded --}}
        <div class="preloader" id="preloader">
            <div class="preloader-bg">
                <div class="bg-line"></div>
                <div class="bg-line"></div>
                <div class="bg-line"></div>
                <div class="bg-line"></div>
            </div>

            <div class="preload">
                <div class="lines">
                    <div class="line line-1"></div>
                    <div class="line line-2"></div>
                    <div class="line line-3"></div>
                </div>
                <div class="loading-text">{{ __('Завантаження') }}</div>
            </div>
        </div>
        <header data-aos="fade-down">
            <a href="/" class="logo"><img src="{{ url('/') }}/img/logo.png" alt="logo"></a>
            <ul class="links">
                <li><a href="{{ \Request::route()->getName() != 'home' ? route('home') : '' }}#about-me">{{ __('About me') }}</a></li>
                <li><a href="{{ \Request::route()->getName() != 'home' ? route('home') : '' }}#portfolio">{{ __('Portfolio') }}</a></li>
                <li><a href="{{ \Request::route()->getName() != 'home' ? route('home') : '' }}#contact-me">{{ __('Contact') }}</a></li>
                <li><a class="yellow tsh-h-y" target="_blank" href="{{ url('/') . '/uploads/' . $cv }}">{{ __('Download') }}</a></li>
            </ul>
            <div class="search">
                <input type="text" name="search" placeholder="{{ __('Search') }}" autocomplete="off" required>
                <a class="lang" href="{{  (\Illuminate\Support\Facades\App::getLocale() == 'uk') ? LaravelLocalization::getLocalizedURL('en', null, [], true) : LaravelLocalization::getLocalizedURL('uk', null, [], true) }}">{{ \Illuminate\Support\Facades\App::getLocale() == 'uk' ? 'EN' : 'UK' }}</a>
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                    <metadata> Svg Vector Icons : http://www.onlinewebfonts.com/icon </metadata>
                    <g><g transform="translate(0.000000,511.000000) scale(0.100000,-0.100000)"><path d="M3055.5,4990.2c-95.3-10.1-290.1-50.7-436.1-87.2C1799.9,4692,1104.1,4197,647.7,3499.2C81.8,2633.1-52.1,1582.3,276.5,588.3C615.3-442.1,1507.8-1279.9,2568.7-1565.9c1523.4-407.7,3123.9,296.2,3842,1691.8c148.1,288,251.5,576.1,318.5,892.5c38.5,180.5,46.7,277.9,46.7,628.8c2,357-4,448.3-44.6,645.1C6378.2,4030.7,4808.2,5184.9,3055.5,4990.2z M4049.5,4470.9c1018.3-239.4,1793.2-937.2,2117.7-1910.8c170.4-515.2,192.7-1048.7,60.8-1578.2C6007,85.3,5372.1-651.1,4526.2-991.9c-659.3-265.7-1387.5-281.9-2038.6-46.7C1536.2-697.7,850.6,93.4,629.5,1101.5c-54.8,239.4-54.8,886.4-2,1129.9c125.8,572,383.4,1044.7,793.1,1456.5c407.7,407.7,862.1,657.2,1409.8,778.9c253.6,54.8,282,56.8,681.6,50.7C3787.8,4511.4,3919.7,4501.3,4049.5,4470.9z"/><path d="M1376,2898.8c-93.3-99.4-253.6-511.2-310.4-795.2c-42.6-208.9-36.5-707.9,10.1-923C1321.2,40.6,2290.8-746.4,3451.1-746.4c233.3,0,545.7,42.6,636.9,87.2c121.7,58.8,131.9,213,20.3,275.9c-46.7,26.4-75,26.4-243.4-4c-288-50.7-403.7-56.8-610.6-34.5c-279.9,28.4-486.8,89.2-736.3,213c-722.1,357-1164.4,1065-1166.4,1858.1c0,363.1,60.9,628.8,223.1,961.5c60.9,123.7,79.1,184.6,69,223.1C1615.3,2945.4,1457.1,2984,1376,2898.8z"/><path d="M6270.7-430c-32.5-16.2-213-182.6-397.6-369.2c-367.1-371.2-391.5-409.7-334.7-543.6c40.6-99.4,142-158.2,243.4-146.1c71,8.1,117.7,46.7,442.2,371.2c393.5,393.5,417.9,432.1,355,565.9C6522.2-432,6384.3-377.2,6270.7-430z"/><path d="M6564.8-1044.6c-357-123.7-535.5-511.2-403.7-872.2c40.6-111.6,113.6-188.7,1365.2-1442.3c1486.9-1490.9,1415.9-1432.1,1706-1432.1c144-2,178.5,6.1,298.2,64.9c154.2,75.1,243.4,166.3,318.5,328.6c42.6,91.3,52.7,140,50.7,273.8c0,290.1,58.8,219.1-1432.1,1706C7213.9-1166.3,7136.9-1093.3,7025.3-1052.7C6885.4-1002,6696.7-997.9,6564.8-1044.6z"/></g></g>
                </svg>
                <div class="result-search" id="search-res-list">
                    <div class="loading"></div>
                    <ul class="list"></ul>
                </div>
            </div>
            <button class="burger-btn" type="button">
                <div class="burger"></div>
            </button>
        </header>
        <div class="mobile-header">
            <div class="search mobile-search">
                <input type="text" name="search" placeholder="{{ __('Search') }}" autocomplete="off" required>
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                    <metadata> Svg Vector Icons : http://www.onlinewebfonts.com/icon </metadata>
                    <g><g transform="translate(0.000000,511.000000) scale(0.100000,-0.100000)"><path d="M3055.5,4990.2c-95.3-10.1-290.1-50.7-436.1-87.2C1799.9,4692,1104.1,4197,647.7,3499.2C81.8,2633.1-52.1,1582.3,276.5,588.3C615.3-442.1,1507.8-1279.9,2568.7-1565.9c1523.4-407.7,3123.9,296.2,3842,1691.8c148.1,288,251.5,576.1,318.5,892.5c38.5,180.5,46.7,277.9,46.7,628.8c2,357-4,448.3-44.6,645.1C6378.2,4030.7,4808.2,5184.9,3055.5,4990.2z M4049.5,4470.9c1018.3-239.4,1793.2-937.2,2117.7-1910.8c170.4-515.2,192.7-1048.7,60.8-1578.2C6007,85.3,5372.1-651.1,4526.2-991.9c-659.3-265.7-1387.5-281.9-2038.6-46.7C1536.2-697.7,850.6,93.4,629.5,1101.5c-54.8,239.4-54.8,886.4-2,1129.9c125.8,572,383.4,1044.7,793.1,1456.5c407.7,407.7,862.1,657.2,1409.8,778.9c253.6,54.8,282,56.8,681.6,50.7C3787.8,4511.4,3919.7,4501.3,4049.5,4470.9z"/><path d="M1376,2898.8c-93.3-99.4-253.6-511.2-310.4-795.2c-42.6-208.9-36.5-707.9,10.1-923C1321.2,40.6,2290.8-746.4,3451.1-746.4c233.3,0,545.7,42.6,636.9,87.2c121.7,58.8,131.9,213,20.3,275.9c-46.7,26.4-75,26.4-243.4-4c-288-50.7-403.7-56.8-610.6-34.5c-279.9,28.4-486.8,89.2-736.3,213c-722.1,357-1164.4,1065-1166.4,1858.1c0,363.1,60.9,628.8,223.1,961.5c60.9,123.7,79.1,184.6,69,223.1C1615.3,2945.4,1457.1,2984,1376,2898.8z"/><path d="M6270.7-430c-32.5-16.2-213-182.6-397.6-369.2c-367.1-371.2-391.5-409.7-334.7-543.6c40.6-99.4,142-158.2,243.4-146.1c71,8.1,117.7,46.7,442.2,371.2c393.5,393.5,417.9,432.1,355,565.9C6522.2-432,6384.3-377.2,6270.7-430z"/><path d="M6564.8-1044.6c-357-123.7-535.5-511.2-403.7-872.2c40.6-111.6,113.6-188.7,1365.2-1442.3c1486.9-1490.9,1415.9-1432.1,1706-1432.1c144-2,178.5,6.1,298.2,64.9c154.2,75.1,243.4,166.3,318.5,328.6c42.6,91.3,52.7,140,50.7,273.8c0,290.1,58.8,219.1-1432.1,1706C7213.9-1166.3,7136.9-1093.3,7025.3-1052.7C6885.4-1002,6696.7-997.9,6564.8-1044.6z"/></g></g>
                </svg>
                <div class="result-search result-search-mobile" id="search-res-list-mobile">
                    <div class="loading"></div>
                    <ul class="list"></ul>
                </div>
            </div>
            <ul class="links">
                <li><a href="{{ \Request::route()->getName() != 'home' ? route('home') : '' }}#about-me">{{ __('About me') }}</a></li>
                <li><a href="{{ \Request::route()->getName() != 'home' ? route('home') : '' }}#portfolio">{{ __('Portfolio') }}</a></li>
                <li><a href="{{ \Request::route()->getName() != 'home' ? route('home') : '' }}#contact-me">{{ __('Contact') }}</a></li>
                <li><a class="yellow tsh-h-y" target="_blank" href="{{ url('/') . '/uploads/' . $cv }}">{{ __('Download') }}</a></li>
            </ul>
            <div class="lang">
                {{ __('Language') }}: <a class="{{ \Illuminate\Support\Facades\App::getLocale() == 'uk' ? 'active' : '' }}" href="{{ LaravelLocalization::getLocalizedURL('uk', null, [], true) }}">UK</a> | <a class="{{ \Illuminate\Support\Facades\App::getLocale() == 'en' ? 'active' : '' }}" href="{{ LaravelLocalization::getLocalizedURL('en', null, [], true) }}">EN</a>
            </div>
        </div>
        <main>
            @yield('content')
        </main>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script src="{{ mix('js/default.js') }}"></script>
        @yield('scripts')
        <footer>
           Copyright © <a href="#">Rosyslav Khorolskyi</a>
        </footer>
        <div class="notify" id="thx">
            <svg clip-rule="evenodd" fill-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="2" xmlns="http://www.w3.org/2000/svg"><path d="m11.998 2.005c5.517 0 9.997 4.48 9.997 9.997 0 5.518-4.48 9.998-9.997 9.998-5.518 0-9.998-4.48-9.998-9.998 0-5.517 4.48-9.997 9.998-9.997zm0 1.5c-4.69 0-8.498 3.807-8.498 8.497s3.808 8.498 8.498 8.498 8.497-3.808 8.497-8.498-3.807-8.497-8.497-8.497zm-5.049 8.886 3.851 3.43c.142.128.321.19.499.19.202 0 .405-.081.552-.242l5.953-6.509c.131-.143.196-.323.196-.502 0-.41-.331-.747-.748-.747-.204 0-.405.082-.554.243l-5.453 5.962-3.298-2.938c-.144-.127-.321-.19-.499-.19-.415 0-.748.335-.748.746 0 .205.084.409.249.557z" fill-rule="nonzero"/></svg>
            <span class="content">{{ __('Thank you! Your review has been sent!') }}</span>
        </div>
    </body>
</html>
