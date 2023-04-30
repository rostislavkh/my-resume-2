@extends('layouts.app')

@section('styles')
    <link rel="stylesheet" href="{{ mix('css/more-projects.css') }}">
@endsection

@section('title', '#' . $tag)

@section('content')
<div id="inact-h"></div>
    <section>
        <h1 class="title" data-aos="fade-down">{{ __('Projects witch tag') }} <span class="yellow">#{{ $tag }}</span></h1>
        <div class="portfolio container">
            @foreach ($projects as $project)
                <div class="portfolio__block" data-aos="zoom-in-up">
                    <img src="{{ url('/') }}/uploads/{{ $project->titule_img }}" alt="work">
                    <div>
                        <span class="work__title">{{ $project->getTranslate('name') }}</span>
                        <span class="work__text">{!! $project->getTranslate('short_desc') !!}</span>
                        <a href="{{ route('project', [
                            'project' => $project->slug
                        ]) }}">{{ __('See More') }} -></a>
                    </div>
                </div>
            @endforeach
        </div>
        {{ $projects->links('components.pagination') }}
    </section>
@endsection