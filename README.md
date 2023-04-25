<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

## Збірка проекту

1) Налаштувати корневий каталог на сервері, щоб він був <code>/public</code>
2) Створити файл з налаштуваннями <code>cp .env.example .env</code> (налаштувати конфігурацію)
3) <code>composer install</code>
4) <code>php artisan key:generate</code>
5) <code>php artisan migrate</code> (Або є дамп БД в корні проекта, якщо потрібно закинути інфу)
6) <code>npm install</code>

## Конфигурація

Версія php: <code>8.1.6</code><br>
Версія NodeJS: <code>19.3.0</code><br>
Версія npm: <code>9.2.0</code><br>
Версія Laravel: <code>10.8.0</code><br>
