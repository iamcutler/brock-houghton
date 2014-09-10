// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require html5shiv.min
//= require_tree .

$(document).on('page:load', function() {
  $('section.videos ul li').on('mouseover mouseout', function(e) {
    // Fade video play buttons
    // Pass event to control fading of the button
    VIDEOS.fadePlayBtn(e);
  });
});

var VIDEOS = (function($) {
  var timing = 200;

  return {
    fadePlayBtn: function(event) {
      var opacity = (event.type == 'mouseout') ? 1.0 : 0.4;

      $("section.videos ul li .feature-container .play-button").stop().animate({
        opacity: opacity
      }, timing)
    }
  };
})(jQuery);