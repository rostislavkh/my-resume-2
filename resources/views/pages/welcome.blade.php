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
                        <li>PHP Back-end develorep.</li>
                        <li>Web developer.</li>
                    </ul>
                    <p id="profession"></p>
                </div>
                <a href="#">Contact Me</a>
            </div>
            <div class="titule__img">
                <img src="./img/avatar.png" alt="avatar">
            </div>
        </div>
    </section>
    <section class="main-block block-1" style="background-color: #31333b;">
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod officiis. Voluptatem assumenda deleniti quaerat porro praesentium vitae commodi autem ut eaque ea unde in mollitia, quae inventore possimus vero.
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod officiis. Voluptatem assumenda deleniti quaerat porro praesentium vitae commodi autem ut eaque ea unde in mollitia, quae inventore possimus vero.
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod officiis. Voluptatem assumenda deleniti quaerat porro praesentium vitae commodi autem ut eaque ea unde in mollitia, quae inventore possimus vero.
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod officiis. Voluptatem assumenda deleniti quaerat porro praesentium vitae commodi autem ut eaque ea unde in mollitia, quae inventore possimus vero.
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod officiis. Voluptatem assumenda deleniti quaerat porro praesentium vitae commodi autem ut eaque ea unde in mollitia, quae inventore possimus vero.
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod officiis. Voluptatem assumenda deleniti quaerat porro praesentium vitae commodi autem ut eaque ea unde in mollitia, quae inventore possimus vero.
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod officiis. Voluptatem assumenda deleniti quaerat porro praesentium vitae commodi autem ut eaque ea unde in mollitia, quae inventore possimus vero.
    </section>
    <section class="block-2">

    </section>
@endsection