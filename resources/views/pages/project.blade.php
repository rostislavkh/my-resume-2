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
@endsection