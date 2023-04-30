/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!************************************!*\
  !*** ./resources/js/pages/home.js ***!
  \************************************/
var typed = new Typed('#profession', {
  stringsElement: '#proff',
  loop: true,
  typeSpeed: 100,
  backSpeed: 100,
  backDelay: 5000,
  fadeOut: true
});
$(document).ready(function () {
  $('#request').submit(function (event) {
    event.preventDefault();
    var url = $(this).attr('action');
    $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });
    $.ajax({
      type: $(this).attr('method'),
      url: url,
      data: new FormData(this),
      contentType: false,
      cache: false,
      processData: false,
      success: function success(result) {
        if (result) {
          document.querySelector('#thx').classList.add('active');
          $('#request').trigger('reset');
          setTimeout(function () {
            document.querySelector('#thx').classList.remove('active');
          }, 5000);
        }
      }
    });
  });
});

//in case js in turned off
function mainBlock() {
  var inact = document.querySelector('#inact-h');
  var main_block = document.querySelector('.main-block');
  if (inact) {
    if (main_block) {
      main_block.style.height = '100vh';
    }
  } else {
    var sc = $(window).scrollTop();
    if (sc > 1) {
      if (main_block) {
        main_block.style.height = '100vh';
      }
    } else {
      if (main_block) {
        main_block.style.height = 'calc(var(--vh, 1vh) * 100)';
      }
    }
  }
}
$(window).on('load', function () {
  mainBlock();
});
$(window).scroll(function () {
  mainBlock();
});
/******/ })()
;