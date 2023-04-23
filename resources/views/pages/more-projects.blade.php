@extends('layouts.app')

@section('styles')
    <link rel="stylesheet" href="{{ mix('css/more-projects.css') }}">
@endsection

@section('title', 'Rostytlav Khorolskyi | ' . __('More project'))

@section('content')
<div id="inact-h"></div>
    <section>
        <div class="title" data-aos="fade-down">{{ __('Projects') }}</div>
        <div class="portfolio container">
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/1.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.Lorem ipsum dolor sit
                        amet consectetur adipisicing elit. Numquam molestiae commodi repellendus consequatur incidunt
                        explicabo suscipit laudantium, rerum pariatur consequuntur porro non magnam autem, placeat dolores
                        mollitia asperiores dignissimos illum.Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Numquam molestiae commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum
                        pariatur consequuntur porro non magnam autem, placeat dolores mollitia asperiores dignissimos
                        illum.</span>
                    <a href="{{ route('project') }}">{{ __('See More') }} -></a>
                </div>
            </div>
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/2.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">{{ __('See More') }} -></a>
                </div>
            </div>
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/3.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">{{ __('See More') }} -></a>
                </div>
            </div>
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/4.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">{{ __('See More') }} -></a>
                </div>
            </div>
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/5.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">{{ __('See More') }} -></a>
                </div>
            </div>
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/6.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">{{ __('See More') }} -></a>
                </div>
            </div>
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/2.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">{{ __('See More') }} -></a>
                </div>
            </div>
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/3.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">{{ __('See More') }} -></a>
                </div>
            </div>
            <div class="portfolio__block" data-aos="zoom-in-up">
                <img src="./img/works/4.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">{{ __('See More') }} -></a>
                </div>
            </div>
        </div>
            <nav class="pagination" data-aos="fade-up">
                <ul class="pagination-list">
                    {{-- Previous Page Link --}}
                    <li class="pagination-item disable" aria-disabled="true">
                        <span class="pagination-link" aria-hidden="true">
                            <svg width="9" height="13" viewBox="0 0 9 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <line x1="1.4" y1="6.8" x2="7.8" y2="11.6" stroke="#7B7B7B" stroke-width="2" stroke-linecap="round"/>
                                <line x1="1" y1="-1" x2="9" y2="-1" transform="matrix(-0.8 0.6 0.6 0.8 9 2)" stroke="#7B7B7B" stroke-width="2" stroke-linecap="round"/>
                            </svg>
                        </span>
                    </li>
                    {{-- "Three Dots" Separator --}}
                    <li class="pagination-item disable" aria-disabled="true">
                        <span class="pagination-link">1</span>
                    </li>

                    <li class="pagination-item">
                        <a class="pagination-link" href="№">2</a>
                    </li>

                    <li class="pagination-item dots" aria-disabled="true">
                        <span class="pagination-link">...</span>
                    </li>

                    <li class="pagination-item">
                        <a class="pagination-link" href="№">8</a>
                    </li>

                    {{-- Next Page Link --}}
                    <li class="pagination-item">
                        <a class="pagination-link" href="№" rel="next">
                            <svg width="9" height="13" viewBox="0 0 9 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <line x1="1" y1="-1" x2="9" y2="-1" transform="matrix(-0.8 0.6 0.6 0.8 9 7)" stroke="#7B7B7B" stroke-width="2" stroke-linecap="round"/>
                                <line x1="1.4" y1="1.8" x2="7.8" y2="6.6" stroke="#7B7B7B" stroke-width="2" stroke-linecap="round"/>
                            </svg>
                        </a>
                    </li>
                </ul>
            </nav>
    </section>
@endsection