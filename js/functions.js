$(document).ready(function(){
  $('.sliding-panel-button,.sliding-panel-fade-screen,.sliding-panel-close').on('click touchstart',function (e) {
    $('.sliding-panel-content,.sliding-panel-fade-screen').toggleClass('is-visible');
    e.preventDefault();
  });
});

$(document).ready(function() {
  $('.expander-trigger').click(function(){
    $(this).toggleClass("expander-hidden");
  });
});

$(function() {
$('a[href*=#]:not([href=#])').click(function() {
 if (location.pathname.replace(/^\//,'') === this.pathname.replace(/^\//,'') && location.hostname === this.hostname) {

   var target = $(this.hash);
   target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
   if (target.length) {
     $('html,body').animate({
       scrollTop: target.offset().top - 25
     }, 200);
     return false;
   }
 }
});
});

$('.pub').mouseenter(function() {
	$('.pub').removeClass('active');
	var active = this;
	$(active).addClass('active');
});

$('.pub').mouseleave(function() {
	$('.pub').addClass('active');
});