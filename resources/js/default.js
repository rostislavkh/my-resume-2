//in case js in turned off
function liveHeader() {
    var sc = $(window).scrollTop()
    if (sc > 1) {
        $("header").addClass("small")
    } else {
        $("header").removeClass("small")
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
    liveHeader();
    scrollspy();
});

$(window).scroll(function () {
    liveHeader();
    scrollspy();
});

$('.burger-btn').click(function () {
    document.querySelector('.mobile-header').classList.toggle('active');
    document.querySelector('body').classList.toggle('oh');
    document.querySelector('.burger').classList.toggle('active');
});