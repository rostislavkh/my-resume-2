@extends('layouts.app')

@section('styles')
    <link rel="stylesheet" href="{{ mix('css/project.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/css/lightbox.min.css" integrity="sha512-ZKX+BvQihRJPA8CROKBhDNvoc2aDMOdAlcm7TUQY+35XYtrd3yh95QOOhsPDQY9QnKE0Wqag9y38OIgEvb88cA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
@endsection
@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/js/lightbox.min.js" integrity="sha512-Ixzuzfxv1EqafeQlTCufWfaC6ful6WFqIz4G+dWvK0beHw0NVJwvCKSgafpy5gwNqKmgUfIBraVwkKI+Cz0SEQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@endsection

@section('content')
<section class="titule oh">
    <div class="main-block container">
        <div class="info">
            <div class="title">Hvosting</div>
            <div class="short-desc">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sit blanditiis, explicabo, debitis exercitationem.</div>
        </div>
        <img src="./img/works/1.png" alt="img">
    </div>
</section>
<section class="tags container">
    <h1 class="title">Tags</h1>
    <ul class="tag-list">
        <li><a href="#"><span>#</span>php</a></li>
        <li><a href="#"><span>#</span>yii2</a></li>
        <li><a href="#"><span>#</span>gulp</a></li>
        <li><a href="#"><span>#</span>git</a></li>
        <li><a href="#"><span>#</span>html&css</a></li>
        <li><a href="#"><span>#</span>js</a></li>
        <li><a href="#"><span>#</span>jquery</a></li>
    </ul>
    <img class="dots" src="./img/dots.png" alt="dots">
</section>
<section class="desc bg">
    <div class="container description">
        <h1 class="title">Description</h1>
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
@endsection