//in case js in turned off
function liveHeader() {
    var sc = $(window).scrollTop()
    if (sc > 1) {
        $("header").addClass("small")
    } else {
        $("header").removeClass("small")
    }
}

$(window).on('load', function () {
    liveHeader();
});

$(window).scroll(function () {
    liveHeader();
});

$('.burger-btn').click(function () {
    document.querySelector('.mobile-header').classList.toggle('active');
    document.querySelector('body').classList.toggle('oh');
    document.querySelector('.burger').classList.toggle('active');
});