/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./resources/js/default.js":
/*!*********************************!*\
  !*** ./resources/js/default.js ***!
  \*********************************/
/***/ (() => {

//in case js in turned off
function liveHeader() {
  var inact = document.querySelector('#inact-h');
  if (inact) {
    $("header").addClass("small");
  } else {
    var sc = $(window).scrollTop();
    if (sc > 1) {
      $("header").addClass("small");
    } else {
      $("header").removeClass("small");
    }
  }
}
function scrollspy() {
  var sections = $('section'),
    nav = $('.links'),
    nav_height = nav.outerHeight(),
    cur_pos = $(this).scrollTop();
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
  AOS.init({
    delay: 400
  });
});
$(window).on('beforeunload', function () {
  document.querySelector('body').classList.toggle('oh');
  document.getElementById('preloader').classList.toggle('loaded');
});
$(window).scroll(function () {
  liveHeader();
  scrollspy();
});
$('a').click(function () {
  var btn = document.querySelector('.burger.active');
  var menu = document.querySelector('.mobile-header.active');
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

/***/ }),

/***/ "./resources/scss/pages/home.scss":
/*!****************************************!*\
  !*** ./resources/scss/pages/home.scss ***!
  \****************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ }),

/***/ "./resources/scss/pages/more-projects.scss":
/*!*************************************************!*\
  !*** ./resources/scss/pages/more-projects.scss ***!
  \*************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ }),

/***/ "./resources/scss/pages/project.scss":
/*!*******************************************!*\
  !*** ./resources/scss/pages/project.scss ***!
  \*******************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ }),

/***/ "./resources/scss/reset.scss":
/*!***********************************!*\
  !*** ./resources/scss/reset.scss ***!
  \***********************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ }),

/***/ "./resources/scss/style.scss":
/*!***********************************!*\
  !*** ./resources/scss/style.scss ***!
  \***********************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ }),

/***/ "./resources/scss/fonts.scss":
/*!***********************************!*\
  !*** ./resources/scss/fonts.scss ***!
  \***********************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ }),

/***/ "./resources/scss/variables.scss":
/*!***************************************!*\
  !*** ./resources/scss/variables.scss ***!
  \***************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ }),

/***/ "./resources/scss/components/header.scss":
/*!***********************************************!*\
  !*** ./resources/scss/components/header.scss ***!
  \***********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = __webpack_modules__;
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/chunk loaded */
/******/ 	(() => {
/******/ 		var deferred = [];
/******/ 		__webpack_require__.O = (result, chunkIds, fn, priority) => {
/******/ 			if(chunkIds) {
/******/ 				priority = priority || 0;
/******/ 				for(var i = deferred.length; i > 0 && deferred[i - 1][2] > priority; i--) deferred[i] = deferred[i - 1];
/******/ 				deferred[i] = [chunkIds, fn, priority];
/******/ 				return;
/******/ 			}
/******/ 			var notFulfilled = Infinity;
/******/ 			for (var i = 0; i < deferred.length; i++) {
/******/ 				var [chunkIds, fn, priority] = deferred[i];
/******/ 				var fulfilled = true;
/******/ 				for (var j = 0; j < chunkIds.length; j++) {
/******/ 					if ((priority & 1 === 0 || notFulfilled >= priority) && Object.keys(__webpack_require__.O).every((key) => (__webpack_require__.O[key](chunkIds[j])))) {
/******/ 						chunkIds.splice(j--, 1);
/******/ 					} else {
/******/ 						fulfilled = false;
/******/ 						if(priority < notFulfilled) notFulfilled = priority;
/******/ 					}
/******/ 				}
/******/ 				if(fulfilled) {
/******/ 					deferred.splice(i--, 1)
/******/ 					var r = fn();
/******/ 					if (r !== undefined) result = r;
/******/ 				}
/******/ 			}
/******/ 			return result;
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/jsonp chunk loading */
/******/ 	(() => {
/******/ 		// no baseURI
/******/ 		
/******/ 		// object to store loaded and loading chunks
/******/ 		// undefined = chunk not loaded, null = chunk preloaded/prefetched
/******/ 		// [resolve, reject, Promise] = chunk loading, 0 = chunk loaded
/******/ 		var installedChunks = {
/******/ 			"/js/default": 0,
/******/ 			"css/header": 0,
/******/ 			"css/variables": 0,
/******/ 			"css/fonts": 0,
/******/ 			"css/style": 0,
/******/ 			"css/reset": 0,
/******/ 			"css/project": 0,
/******/ 			"css/more-projects": 0,
/******/ 			"css/home": 0
/******/ 		};
/******/ 		
/******/ 		// no chunk on demand loading
/******/ 		
/******/ 		// no prefetching
/******/ 		
/******/ 		// no preloaded
/******/ 		
/******/ 		// no HMR
/******/ 		
/******/ 		// no HMR manifest
/******/ 		
/******/ 		__webpack_require__.O.j = (chunkId) => (installedChunks[chunkId] === 0);
/******/ 		
/******/ 		// install a JSONP callback for chunk loading
/******/ 		var webpackJsonpCallback = (parentChunkLoadingFunction, data) => {
/******/ 			var [chunkIds, moreModules, runtime] = data;
/******/ 			// add "moreModules" to the modules object,
/******/ 			// then flag all "chunkIds" as loaded and fire callback
/******/ 			var moduleId, chunkId, i = 0;
/******/ 			if(chunkIds.some((id) => (installedChunks[id] !== 0))) {
/******/ 				for(moduleId in moreModules) {
/******/ 					if(__webpack_require__.o(moreModules, moduleId)) {
/******/ 						__webpack_require__.m[moduleId] = moreModules[moduleId];
/******/ 					}
/******/ 				}
/******/ 				if(runtime) var result = runtime(__webpack_require__);
/******/ 			}
/******/ 			if(parentChunkLoadingFunction) parentChunkLoadingFunction(data);
/******/ 			for(;i < chunkIds.length; i++) {
/******/ 				chunkId = chunkIds[i];
/******/ 				if(__webpack_require__.o(installedChunks, chunkId) && installedChunks[chunkId]) {
/******/ 					installedChunks[chunkId][0]();
/******/ 				}
/******/ 				installedChunks[chunkId] = 0;
/******/ 			}
/******/ 			return __webpack_require__.O(result);
/******/ 		}
/******/ 		
/******/ 		var chunkLoadingGlobal = self["webpackChunkmy_resume_2"] = self["webpackChunkmy_resume_2"] || [];
/******/ 		chunkLoadingGlobal.forEach(webpackJsonpCallback.bind(null, 0));
/******/ 		chunkLoadingGlobal.push = webpackJsonpCallback.bind(null, chunkLoadingGlobal.push.bind(chunkLoadingGlobal));
/******/ 	})();
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module depends on other loaded chunks and execution need to be delayed
/******/ 	__webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/js/default.js")))
/******/ 	__webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/scss/reset.scss")))
/******/ 	__webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/scss/style.scss")))
/******/ 	__webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/scss/fonts.scss")))
/******/ 	__webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/scss/variables.scss")))
/******/ 	__webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/scss/components/header.scss")))
/******/ 	__webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/scss/pages/home.scss")))
/******/ 	__webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/scss/pages/more-projects.scss")))
/******/ 	var __webpack_exports__ = __webpack_require__.O(undefined, ["css/header","css/variables","css/fonts","css/style","css/reset","css/project","css/more-projects","css/home"], () => (__webpack_require__("./resources/scss/pages/project.scss")))
/******/ 	__webpack_exports__ = __webpack_require__.O(__webpack_exports__);
/******/ 	
/******/ })()
;