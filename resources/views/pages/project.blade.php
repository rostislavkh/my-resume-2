@extends('layouts.app')

@section('styles')
    <link rel="stylesheet" href="{{ mix('css/project.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/css/lightbox.min.css" integrity="sha512-ZKX+BvQihRJPA8CROKBhDNvoc2aDMOdAlcm7TUQY+35XYtrd3yh95QOOhsPDQY9QnKE0Wqag9y38OIgEvb88cA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
@endsection
@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.4/js/lightbox.min.js" integrity="sha512-Ixzuzfxv1EqafeQlTCufWfaC6ful6WFqIz4G+dWvK0beHw0NVJwvCKSgafpy5gwNqKmgUfIBraVwkKI+Cz0SEQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@endsection

@section('title', 'Rostytlav Khorolskyi | ' . $project->getTranslate('name'))

@section('content')
<section class="titule oh">
    <div class="main-block container">
        <div class="info">
            <div class="title" data-aos="fade-right" data-aos-delay="400">{{ $project->getTranslate('name') }}</div>
            <div class="short-desc" data-aos="fade-right" data-aos-delay="700">{!! $project->getTranslate('short_desc') !!}</div>
        </div>
        <img src="{{ url('/') . '/uploads/' . $project->titule_img }}" alt="img">
    </div>
</section>
<section class="tags container">
    <h1 class="title" data-aos="fade-down">{{ __('Tags') }}</h1>
    <ul class="tag-list">
        @foreach ($project->skills as $tag)
            <li data-aos="fade-up" data-aos-delay="100"><a href="{{ route('projects-witch-tag', ['skills' => $tag->tag]) }}"><span>#</span>{{ $tag->tag }}</a></li>
        @endforeach
    </ul>
    <img class="dots" src="{{ url('/') }}/img/dots.png" alt="dots">
</section>
<section class="desc bg">
    <div class="container description" data-aos="fade-down">
        <h1 class="title">{{ __('Description') }}</h1>
        {!! $project->getTranslate('desc') !!}
    </div>
    <img src="{{ url('/') }}/img/dots.png" alt="dots" class="desc__dots">
</section>
<section class="container">
    <div class="images">
        <h1 class="title" data-aos="fade-down">{{ __('Images') }}</h1>
        @foreach ($project->images as $img)
            <a data-aos="fade-up" href="{{ url('/') }}/uploads/{{ $img }}" data-lightbox="$img">
                <img src="{{ url('/') }}/uploads/{{ $img }}" alt="img">
            </a>
        @endforeach
    </div>
</section>
@endsection