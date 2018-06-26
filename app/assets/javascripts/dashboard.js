// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// This is the groundwork for a local AJAX call in case we want to go that direcito in regards to booking walks



$(document).ready(function() {
  if (document.querySelector('body.dashboard.index') == undefined) {
    return;
  }
  $('.walk-toggle').click(function() {
    $('.book-walk-box').toggleClass('hide');
    $('.walk-req').toggleClass('hide');
  });

});