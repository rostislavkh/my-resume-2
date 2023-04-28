
// First we get the viewport height and we multiple it by 1% to get a value for a vh unit
let vh = window.innerHeight * 0.01;
// Then we set the value in the --vh custom property to the root of the document
document.documentElement.style.setProperty('--vh', `${vh}px`);

// We listen to the resize event
window.addEventListener('resize', () => {
    // We execute the same script as before
    let vh = window.innerHeight * 0.01;
    document.documentElement.style.setProperty('--vh', `${vh}px`);
});



window.axios = require('axios');

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

let token = document.head.querySelector('meta[name="csrf-token"]');

if (token) {
    window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;
}

//in case js in turned off
function liveHeader() {
    let inact = document.querySelector('#inact-h');
    let main_block = document.querySelector('.main-block');

    if (inact) {
        $("header").addClass("small")
        if (main_block) {
            main_block.style.height = '100vh';
        }
    } else {
        var sc = $(window).scrollTop()
        if (sc > 1) {
            $("header").addClass("small")
            if (main_block) {
                main_block.style.height = '100vh';
            }
        } else {
            $("header").removeClass("small")
            if (main_block) {
                main_block.style.height = 'calc(var(--vh, 1vh) * 100)';
            }
        }
    }
}

function scrollspy() {
    var sections = $('section')
        , nav = $('.links')
        , nav_height = nav.outerHeight()
        , cur_pos = $(this).scrollTop();
    sections.each(function () {
        var top = $(this).offset().top - nav_height,
            bottom = top + $(this).outerHeight();

        if (cur_pos >= top && cur_pos <= bottom) {
            nav.find('a').removeClass('active');
            sections.removeClass('active');

            $(this).addClass('active');
            nav.find('a[href="#' + $(this).attr('id') + '"]').addClass('active');
        }
    });
}

$(window).on('load', function () {
    AOS.init({
        offset: 80,
        once: true
    });
    document.querySelector('body').classList.toggle('oh');
    document.getElementById('preloader').classList.toggle('loaded');
    liveHeader();
    scrollspy();
});

$(window).on('beforeunload', function () {
    document.querySelector('body').classList.toggle('oh');
    document.getElementById('preloader').classList.toggle('loaded');
});

$(window).scroll(function () {
    liveHeader();
    scrollspy();
});

$('a').click(() => {
    let btn = document.querySelector('.burger.active');
    let menu = document.querySelector('.mobile-header.active');

    if (btn && menu) {
        btn.classList.remove('active');
        menu.classList.remove('active');
        document.querySelector('body').classList.remove('oh');
    }
});

$('.burger-btn').click(function () {
    document.querySelector('.mobile-header').classList.toggle('active');
    document.querySelector('body').classList.toggle('oh');
    document.querySelector('.burger').classList.toggle('active');
});




// Search

$('input[name="search"]').focus(function () {
    let resultMenu = this.parentElement.querySelector('.result-search');
    if (!resultMenu.classList.contains('active')) {
        resultMenu.classList.add('active');
    }
});
$('input[name="search"]').focusout(function () {
    let resultMenu = this.parentElement.querySelector('.result-search');
    if (resultMenu.classList.contains('active')) {
        resultMenu.classList.remove('active');
    }
});

let timeout = null;

$('input[name="search"]').on('keyup ', function () {
    if (timeout != null) {
        clearTimeout(timeout);
        timeout = null
    }

    let value = this.value;
    let resultMenu = this.parentElement.querySelector('.result-search');
    let list = resultMenu.querySelector('.list');
    let loader = resultMenu.querySelector('.loading');
    loader.classList.add('active');
    resultMenu.style.height = '100%';
    list.innerHTML = '';

    if (this.value != "") {
        timeout = setTimeout(async () => {
            let data = null;
            await axios.post("/search", {
                q: value
            }).then(response => (data = response.data));

            if (data) {
                if (data.projects.length != 0 || data.tags.length != 0) {
                    resultMenu.style.height = 'calc(var(--vh, 1vh) * 100)';
                }
                if (data.projects.length != 0) {
                    list.innerHTML += `<li class="label">${data.label_1}</li>`;

                    for (const [key, value] of Object.entries(data.projects)) {
                        list.innerHTML += `<li class="proj">
                            <a href="${data.projects[key].url}">
                                <img src="${data.projects[key].img}" alt="img">
                                <div class="proj__info">
                                    <h4 class="name">${data.projects[key].name}</h4>
                                    <div class="desc">${data.projects[key].short_desc}</div>
                                </div>
                            </a>
                        </li>`;
                    }
                }
                if (data.tags.length != 0) {
                    list.innerHTML += ` <li class="label">${data.label_2}</li>`;
                    for (const [key, value] of Object.entries(data.tags)) {
                        list.innerHTML += `<li class="tag"><a href="${data.tags[key].url}">#${data.tags[key].tag}</a></li>`;
                    }
                }
            }

            if (loader.classList.contains('active')) {
                loader.classList.remove('active');
            }
        }, 1000);
    } else {
        if (loader.classList.contains('active')) {
            loader.classList.remove('active');
        }
        resultMenu.style.height = '100%';
    }
});
