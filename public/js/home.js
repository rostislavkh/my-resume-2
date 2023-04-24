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
/******/ })()
;