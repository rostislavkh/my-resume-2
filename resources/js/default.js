//in case js in turned off
function liveHeader() {
    let inact = document.querySelector('#inact-h');

    if (inact) {
        $("header").addClass("small")
    } else {
        var sc = $(window).scrollTop()
        if (sc > 1) {
            $("header").addClass("small")
        } else {
            $("header").removeClass("small")
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