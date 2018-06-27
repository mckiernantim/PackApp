// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  if (document.querySelector('body.dashboard.index') == undefined) {
    return;
  }
  $('.walk-toggle').click(function() {
    $('.book-walk-box').toggleClass('hide');
    $('.walk-req').toggleClass('hide');
    $('.walk-toggle').toggleClass('active');
  });

});