@extends('layouts.app')

@section('styles')
    <link rel="stylesheet" href="{{ mix('css/project.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/css/lightbox.min.css" integrity="sha512-ZKX+BvQihRJPA8CROKBhDNvoc2aDMOdAlcm7TUQY+35XYtrd3yh95QOOhsPDQY9QnKE0Wqag9y38OIgEvb88cA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
@endsection
@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/js/lightbox.min.js" integrity="sha512-Ixzuzfxv1EqafeQlTCufWfaC6ful6WFqIz4G+dWvK0beHw0NVJwvCKSgafpy5gwNqKmgUfIBraVwkKI+Cz0SEQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@endsection

@section('title', 'Rostytlav Khorolskyi | Hvosting')

@section('content')
<section class="titule oh">
    <div class="main-block container">
        <div class="info">
            <div class="title" data-aos="fade-right" data-aos-delay="400">Hvosting</div>
            <div class="short-desc" data-aos="fade-right" data-aos-delay="700">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sit blanditiis, explicabo, debitis exercitationem.</div>
        </div>
        <img src="./img/works/1.png" alt="img">
    </div>
</section>
<section class="tags container">
    <h1 class="title" data-aos="fade-down">{{ __('Tags') }}</h1>
    <ul class="tag-list">
        <li data-aos="fade-up" data-aos-delay="100"><a href="#"><span>#</span>php</a></li>
        <li data-aos="fade-up" data-aos-delay="200"><a href="#"><span>#</span>yii2</a></li>
        <li data-aos="fade-up" data-aos-delay="300"><a href="#"><span>#</span>gulp</a></li>
        <li data-aos="fade-up" data-aos-delay="400"><a href="#"><span>#</span>git</a></li>
        <li data-aos="fade-up" data-aos-delay="500"><a href="#"><span>#</span>html&css</a></li>
        <li data-aos="fade-up" data-aos-delay="600"><a href="#"><span>#</span>js</a></li>
        <li data-aos="fade-up" data-aos-delay="700"><a href="#"><span>#</span>jquery</a></li>
    </ul>
    <img class="dots" src="./img/dots.png" alt="dots">
</section>
<section class="desc bg">
    <div class="container description" data-aos="fade-down">
        <h1 class="title">{{ __('Description') }}</h1>
        <p>Lorem ipsum dolor sit amet <b>consectetur</b> adipisicing elit. Illo eligendi excepturi dolorem eveniet adipisci assumenda quae, enim non tenetur commodi nobis culpa nemo repellat et, at alias aperiam, distinctio modi.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo eligendi excepturi dolorem eveniet adipisci assumenda quae, enim non tenetur commodi nobis culpa nemo repellat et, at alias aperiam, distinctio modi.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo eligendi excepturi dolorem eveniet adipisci assumenda quae, enim non tenetur commodi nobis culpa nemo repellat et, at alias aperiam, distinctio modi.</p>
        <p>Lorem ipsum dolor sit amet <b>consectetur</b> adipisicing elit. Illo eligendi excepturi dolorem eveniet adipisci assumenda quae, enim non tenetur commodi nobis culpa nemo repellat et, at alias aperiam, distinctio modi.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo eligendi excepturi dolorem eveniet adipisci assumenda quae, enim non tenetur commodi nobis culpa nemo repellat et, at alias aperiam, distinctio modi.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo eligendi excepturi dolorem eveniet adipisci assumenda quae, enim non tenetur commodi nobis culpa nemo repellat et, at alias aperiam, distinctio modi.</p>
        <ul>
            <li>Test</li>
            <li>T123</li>
            <li>Tegge5ft</li>
            <li>Test3fkt4fb </li>
        </ul>
    </div>
    <img src="./img/dots.png" alt="dots" class="desc__dots">
</section>
<section class="container">
    <div class="images">
        <h1 class="title" data-aos="fade-down">{{ __('Images') }}</h1>
        <a data-aos="fade-up" href="./img/works/proj.webp" data-lightbox="./img/works/proj.webp">
            <img src="./img/works/proj.webp" alt="img">
        </a>
        <a data-aos="fade-up" href="./img/works/proj.webp" data-lightbox="./img/works/prfgjoj.webp">
            <img src="./img/works/proj.webp" alt="img">
        </a>
        <a data-aos="fade-up" href="./img/works/proj.webp" data-lightbox="./img/works/profghjj.webp">
            <img src="./img/works/proj.webp" alt="img">
        </a>
        <a data-aos="fade-up" href="./img/works/proj.webp" data-lightbox="./img/works/proghjj.webp">
            <img src="./img/works/proj.webp" alt="img">
        </a>
    </div>
</section>
@endsection