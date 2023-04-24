@extends('layouts.app')

@section('styles')
    <link rel="stylesheet" href="{{ mix('css/home.css') }}">
@endsection
@section('scripts')
    <script src="https://unpkg.com/typed.js@2.0.15/dist/typed.umd.js"></script>
    <script src="{{ mix('js/home.js') }}"></script>
@endsection

@section('title', 'Rostytlav Khorolskyi | ' . __('Resume'))

@section('content')
    <section class="main-block block-1">
        <div class="titule container">
            <div class="titule__text" data-aos="fade-right" data-aos-delay="400">
                <p><span>{{ __("I'M") }}</span> <span class="titule__name">{{ $about?->getTranslate('name') }}</span></p>
                <div class="profession">
                    <ul id="proff">
                        @if($about?->positions)
                            @foreach ($about->positions as $item)
                                <li>{{ $item['position_' . $locale] }}</li>
                            @endforeach
                        @endif
                    </ul>
                    <p id="profession"></p>
                </div>
                <a href="#contact-me">{{ __('Contact Me') }}</a>
            </div>
            <div class="titule__img" data-aos="fade-left" data-aos-delay="400">
                <img src="./img/avatar.png" alt="avatar">
            </div>
            <ul class="social" data-aos="fade-up" data-aos-delay="400">

                @if($about?->socials)
                    @foreach ($about->socials as $item)
                        <li>
                            <a href="{{ $item['url'] }}" target="_blank">
                                {!! $item['icon'] !!}
                            </a>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>
    </section>
    <section id="about-me">
        <div class="block-2 about container oh" data-aos="fade-up">
            <h1 class="title about__title">{{ __('About me') }}</h1>
            <div class="about__text text">
                {!! $about?->getTranslate('description') !!}
            </div>
        </div>
        <h1 class="title" data-aos="fade-down">{{ __('My skills') }}</h1>
        <div class="skills container oh">
            @foreach ($skills as $skill)
                <a href="{{ route('projects-witch-tag', ['skill' => $skill->tag]) }}" class="skills__block" data-aos="zoom-out-up">
                    <img src="{{ './uploads/' . $skill->image }}" alt="logo">
                    <span>{{ $skill->label }}</span>
                </a>
            @endforeach
            <img class="skills__dots" src="./img/dots.png" alt="dots">
        </div>
    </section>
    <h1 class="title" data-aos="fade-down">{{ __('Portfilo') }}</h1>
    <section id="portfolio">
        <div class="portfolio container">
            @foreach ($projects as $project)
                <div class="portfolio__block" data-aos="zoom-in-up">
                    <img src="./uploads/{{ $project->titule_img }}" alt="work">
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
        <a class="more-projects" href="{{ route('more-projects') }}" data-aos="zoom-in-up">{{ __('View More') }}</a>
        <div class="container pr">
            <h1 class="title exp-title" data-aos="fade-right">{{ __('Experience') }}</h1>
        </div>
        <div class="experience oh">
            <div class="experience__content container">
                <div class="exp__items">
                    @foreach ($exp as $experience)
                        <div class="exp__item">
                            <span class="exp__date text" data-aos="fade-right">{{ date('m.Y', strtotime($experience->date_from)) }} - <span class="{{ $experience->is_today ? 'yellow' : '' }}">{{ !$experience->is_today ? date('m.Y', strtotime($experience->date_to)) : __('now') }}</span></span>
                            <div class="exp__position" data-aos="fade-left">{{ $experience->getTranslate('position') }}</div>
                            <div class="exp__company" data-aos="fade-left" data-aos-delay="100">{{ $experience->getTranslate('company_name') }}</div>
                            <div class="text exp__description" data-aos="fade-up" data-aos-delay="200">
                                {!! $experience->getTranslate('text') !!}
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <section class="container contact-me oh" id="contact-me">
        <img src="./img/dots.png" alt="dots">
        <h1 class="title" data-aos="fade-down">{{ __('Contact Me') }}</h1>
        <form action="#" method="post">
            <input type="text" placeholder="{{ __('Name') }}" required data-aos="fade-right">
            <input type="email" placeholder="{{ __('Email') }}" required data-aos="fade-left">
            <input type="text" placeholder="{{ __('Phone') }}, Telegram {{ __('or') }} Viber" required data-aos="fade-right">
            <textarea name="text" rows="4" required data-aos="fade-left"></textarea>
            <button type="submit" data-aos="fade-up">{{ __('Send') }}</button>
        </form>
    </section>
    <section class="my-contacts">
        <div class="up">
            <span></span>
            <h1 class="title" data-aos="fade-down">{{ __('My Contacts') }}</h1>
            <span></span>
        </div>
        <div class="contacts container">
            <div data-aos="zoom-in-up">
                <a href="{{ $about?->email }}" class="contacts__item" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"><path d="M0 3v18h24v-18h-24zm21.518 2l-9.518 7.713-9.518-7.713h19.036zm-19.518 14v-11.817l10 8.104 10-8.104v11.817h-20z"/></svg>
                    <span>{{ $about?->email }}</span>
                </a>
            </div>
            
            <div data-aos="zoom-in-up" data-aos-delay="100">
                <a href="tel:{{ str_replace(['+', ' ', '(', ')', '-'], "", $about?->phone_number) }}" class="contacts__item" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"><path d="M6.176 1.322l2.844-1.322 4.041 7.89-2.724 1.341c-.538 1.259 2.159 6.289 3.297 6.372.09-.058 2.671-1.328 2.671-1.328l4.11 7.932s-2.764 1.354-2.854 1.396c-7.862 3.591-19.103-18.258-11.385-22.281zm1.929 1.274l-1.023.504c-5.294 2.762 4.177 21.185 9.648 18.686l.971-.474-2.271-4.383-1.026.5c-3.163 1.547-8.262-8.219-5.055-9.938l1.007-.497-2.251-4.398z"/></svg>
                    <span>{{ $about?->phone_number }}</span>
                </a>
            </div>
            <div data-aos="zoom-in-up" data-aos-delay="200">
                <a href="{{ $about?->address_url }}" class="contacts__item" target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"><path d="M12 3c2.131 0 4 1.73 4 3.702 0 2.05-1.714 4.941-4 8.561-2.286-3.62-4-6.511-4-8.561 0-1.972 1.869-3.702 4-3.702zm0-2c-3.148 0-6 2.553-6 5.702 0 3.148 2.602 6.907 6 12.298 3.398-5.391 6-9.15 6-12.298 0-3.149-2.851-5.702-6-5.702zm0 8c-1.105 0-2-.895-2-2s.895-2 2-2 2 .895 2 2-.895 2-2 2zm12 14h-24l4-8h3.135c.385.641.798 1.309 1.232 2h-3.131l-2 4h17.527l-2-4h-3.131c.435-.691.848-1.359 1.232-2h3.136l4 8z"/></svg>
                    <span>{{ $about?->getTranslate('address') }}</span>
                </a>
            </div>
        </div>
        <div class="down">
            <span></span>
            <ul class="social" data-aos="fade-up">
                @if($about?->socials)
                    @foreach ($about->socials as $item)
                        <li>
                            <a href="{{ $item['url'] }}" target="_blank">
                                {!! $item['icon'] !!}
                            </a>
                        </li>
                    @endforeach
                @endif
            </ul>
            <span></span>
        </div>
    </section>
@endsection
