@extends('layouts.app')

@section('styles')
    <link rel="stylesheet" href="{{ mix('css/home.css') }}">
@endsection
@section('scripts')
    <script src="https://unpkg.com/typed.js@2.0.15/dist/typed.umd.js"></script>
    <script src="{{ mix('js/home.js') }}"></script>
@endsection

@section('content')
    <section class="main-block block-1">
        <div class="titule container">
            <div class="titule__text">
                <p><span>I'M</span> <span class="titule__name">Rostyslav Khorolskyi</span></p>
                <div class="profession">
                    <ul id="proff">
                        <li>PHP Back-end developer.</li>
                        <li>Web developer.</li>
                    </ul>
                    <p id="profession"></p>
                </div>
                <a href="#">Contact Me</a>
            </div>
            <div class="titule__img">
                <img src="./img/avatar.png" alt="avatar">
            </div>
            <ul class="social">
                <li><a href="#"><svg width="40px" height="40px" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 30 30">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm0 7.082c1.602 0 1.792.006 2.425.035 1.627.074 2.385.845 2.46 2.459.028.633.034.822.034 2.424s-.006 1.792-.034 2.424c-.075 1.613-.832 2.386-2.46 2.46-.633.028-.822.035-2.425.035-1.602 0-1.792-.006-2.424-.035-1.63-.075-2.385-.849-2.46-2.46-.028-.632-.035-.822-.035-2.424s.007-1.792.035-2.424c.074-1.615.832-2.386 2.46-2.46.632-.029.822-.034 2.424-.034zm0-1.082c-1.63 0-1.833.007-2.474.037-2.18.1-3.39 1.309-3.49 3.489-.029.641-.036.845-.036 2.474 0 1.63.007 1.834.036 2.474.1 2.179 1.31 3.39 3.49 3.49.641.029.844.036 2.474.036 1.63 0 1.834-.007 2.475-.036 2.176-.1 3.391-1.309 3.489-3.49.029-.64.036-.844.036-2.474 0-1.629-.007-1.833-.036-2.474-.098-2.177-1.309-3.39-3.489-3.489-.641-.03-.845-.037-2.475-.037zm0 2.919c-1.701 0-3.081 1.379-3.081 3.081s1.38 3.081 3.081 3.081 3.081-1.379 3.081-3.081c0-1.701-1.38-3.081-3.081-3.081zm0 5.081c-1.105 0-2-.895-2-2 0-1.104.895-2 2-2 1.104 0 2.001.895 2.001 2s-.897 2-2.001 2zm3.202-5.922c-.397 0-.72.322-.72.72 0 .397.322.72.72.72.398 0 .721-.322.721-.72 0-.398-.322-.72-.721-.72z" />
                        </svg></a></li>
                <li><a href="#"><svg width="40px" height="40px" version="1.1" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 30 30" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve"
                            xmlns:serif="http://www.serif.com/"
                            style="fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:1.41421;">
                            <path id="telegram-5"
                                d="M12,0c-6.627,0 -12,5.373 -12,12c0,6.627 5.373,12 12,12c6.627,0 12,-5.373 12,-12c0,-6.627 -5.373,-12 -12,-12Zm0,2c5.514,0 10,4.486 10,10c0,5.514 -4.486,10 -10,10c-5.514,0 -10,-4.486 -10,-10c0,-5.514 4.486,-10 10,-10Zm2.692,14.889c0.161,0.115 0.368,0.143 0.553,0.073c0.185,-0.07 0.322,-0.228 0.362,-0.42c0.435,-2.042 1.489,-7.211 1.884,-9.068c0.03,-0.14 -0.019,-0.285 -0.129,-0.379c-0.11,-0.093 -0.263,-0.12 -0.399,-0.07c-2.096,0.776 -8.553,3.198 -11.192,4.175c-0.168,0.062 -0.277,0.223 -0.271,0.4c0.006,0.177 0.125,0.33 0.296,0.381c1.184,0.354 2.738,0.847 2.738,0.847c0,0 0.725,2.193 1.104,3.308c0.047,0.139 0.157,0.25 0.301,0.287c0.145,0.038 0.298,-0.001 0.406,-0.103c0.608,-0.574 1.548,-1.461 1.548,-1.461c0,0 1.786,1.309 2.799,2.03Zm-5.505,-4.338l0.84,2.769l0.186,-1.754c0,0 3.243,-2.925 5.092,-4.593c0.055,-0.048 0.062,-0.13 0.017,-0.188c-0.045,-0.057 -0.126,-0.071 -0.188,-0.032c-2.143,1.368 -5.947,3.798 -5.947,3.798Z" />
                        </svg></a></li>
                <li><a href="#"><svg width="40px" height="40px" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 30 30">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm6.5 8.778c-.441.196-.916.328-1.414.388.509-.305.898-.787 1.083-1.362-.476.282-1.003.487-1.564.597-.448-.479-1.089-.778-1.796-.778-1.59 0-2.758 1.483-2.399 3.023-2.045-.103-3.86-1.083-5.074-2.572-.645 1.106-.334 2.554.762 3.287-.403-.013-.782-.124-1.114-.308-.027 1.14.791 2.207 1.975 2.445-.346.094-.726.116-1.112.042.313.978 1.224 1.689 2.3 1.709-1.037.812-2.34 1.175-3.647 1.021 1.09.699 2.383 1.106 3.773 1.106 4.572 0 7.154-3.861 6.998-7.324.482-.346.899-.78 1.229-1.274z" />
                        </svg></a></li>
                <li><a href="#"><svg width="40px" height="40px" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 30 30">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2 10h-2v2h2v6h3v-6h1.82l.18-2h-2v-.833c0-.478.096-.667.558-.667h1.442v-2.5h-2.404c-1.798 0-2.596.792-2.596 2.308v1.692z" />
                        </svg></a></li>
            </ul>
        </div>
    </section>
    <section id="about-me">
        <div class="block-2 about container">
            <h1 class="title about__title">About me</h1>
            <div class="about__text text">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi
                ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi
                ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis pariatur ducimus praesentium velit iste sequi
                ut. Cupiditate qui, dicta in alias aut autem nesciunt! Tempora nam laborum sequi magni nihil!
            </div>
        </div>
        <h1 class="title">My skills</h1>
        <div class="skills container oh">
            <a href="#" class="skills__block">
                <img src="./img/logos/php.svg" alt="logo">
                <span>PHP</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/pma.png" alt="logo">
                <span>PHPmyadmin</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/mysql.png" alt="logo">
                <span>MySQL</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/orchid.png" alt="logo">
                <span>Orchid</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/laravel.png" alt="logo">
                <span>Laravel</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/markup.png" alt="logo">
                <span>HTML & CSS</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/js.png" alt="logo">
                <span>JS</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/jq.svg" alt="logo">
                <span>JQuery</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/vue.png" alt="logo">
                <span>Vue.js</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/git.png" alt="logo">
                <span>Git</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/botstrap.png" alt="logo">
                <span>Bootstrap</span>
            </a>
            <a href="#" class="skills__block">
                <img src="./img/logos/python.png" alt="logo">
                <span>Python</span>
            </a>
            <img class="skills__dots" src="./img/dots.png" alt="dots">
        </div>
    </section>
    <h1 class="title">Portfilo</h1>
    <section id="portfolio">
        <div class="portfolio container">
            <div class="portfolio__block">
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
                    <a href="#">See More -></a>
                </div>
            </div>
            <div class="portfolio__block">
                <img src="./img/works/2.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">See More -></a>
                </div>
            </div>
            <div class="portfolio__block">
                <img src="./img/works/3.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">See More -></a>
                </div>
            </div>
            <div class="portfolio__block">
                <img src="./img/works/4.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">See More -></a>
                </div>
            </div>
            <div class="portfolio__block">
                <img src="./img/works/5.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">See More -></a>
                </div>
            </div>
            <div class="portfolio__block">
                <img src="./img/works/6.png" alt="work">
                <div>
                    <span class="work__title">Title</span>
                    <span class="work__text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam molestiae
                        commodi repellendus consequatur incidunt explicabo suscipit laudantium, rerum pariatur consequuntur
                        porro non magnam autem, placeat dolores mollitia asperiores dignissimos illum.</span>
                    <a href="#">See More -></a>
                </div>
            </div>
        </div>
        <a class="more-projects" href="#">View More</a>
        <div class="experience">
            <div class="experience__content container">
                <h1 class="title">Experience</h1>
                <div class="exp__items">
                    <div class="exp__item">
                        <span class="exp__date text">08.2022-02.2023</span>
                        <div class="exp__position">PHP developer (Laravel)</div>
                        <div class="exp__company">WebGenerator</div>
                        <div class="text exp__description">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                        </div>
                    </div>
                    <div class="exp__item">
                        <span class="exp__date text">08.2022-02.2023</span>
                        <div class="exp__position">PHP developer (Laravel)</div>
                        <div class="exp__company">WebGenerator</div>
                        <div class="text exp__description">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora eaque fugit explicabo maxime facilis, sapiente corrupti animi sint placeat perspiciatis, id, ullam nulla beatae architecto exercitationem itaque quibusdam temporibus facere!
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="container contact-me" id="contact-me">
        <img src="./img/dots.png" alt="dots">
        <h1 class="title">Contact Me</h1>
        <form action="#" method="post">
            <input type="text" placeholder="Name" required>
            <input type="email" placeholder="Email" required>
            <input type="text" placeholder="Phone, Telegram or Viber" required>
            <textarea name="text" rows="4" required></textarea>
            <button type="submit">Send</button>
        </form>
    </section>
@endsection
