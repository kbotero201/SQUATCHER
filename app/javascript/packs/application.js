// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


import "pickadate/default";
import "pickadate/default.date"; 

//= require pickadate/picker
//= require pickadate/picker.date

$('.datepicker').pickadate()

// Google Maps below 

$(document).ready(function () {
    buildMap();
  });
  
  var sw = document.body.clientWidth,
    bp = 550,
    $map = $(".map");
  var static =
    "https://maps.google.com/maps/api/staticmap?center=40.440625,-79.995886&zoom=13&markers=40.440625,-79.995886&size=640x320&sensor=true";
  var embed =
    '<iframe width="980" height="650" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=pittsburgh,+pa&amp;aq=&amp;sll=38.003385,-79.420925&amp;sspn=5.54782,11.612549&amp;ie=UTF8&amp;hq=&amp;hnear=Pittsburgh,+Allegheny,+Pennsylvania&amp;t=m&amp;ll=40.440676,-79.995918&amp;spn=0.117583,0.336113&amp;z=12&amp;iwloc=A&amp;output=embed"></iframe>';
  
  function buildMap() {
    if (sw > bp) {
      //If Large Screen
      if ($(".map-container").length < 1) {
        //If map doesn't already exist
        buildEmbed();
      }
    } else {
      if ($(".static-img").length < 1) {
        //If static image doesn't exist
        buildStatic();
      }
    }
  }
  
  function buildEmbed() {
    //Build iframe view
    $('<div class="map-container"/>').html(embed).prependTo($map);
  }
  
  function buildStatic() {
    //Build static map
    var mapLink = $(".map-link").attr("href"),
      $img = $('<img class="static-img" />').attr("src", static);
    $("<a/>").attr("href", mapLink).html($img).prependTo($map);
  }
  
  $(window).resize(function () {
    sw = document.body.clientWidth;
    buildMap();
    google.maps.event.trigger(map, "resize");
  });
  

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
