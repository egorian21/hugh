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

$(function() {// smooth scrolling funcion
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

//$(document).ready(function() {
//  var element = document.getElementById("js-fadeInElement");
//  $(element).addClass('js-fade-element-hide');
//
//  $(window).scroll(function() {
//    if( $("#js-fadeInElement").length > 0 ) {
//      var elementTopToPageTop = $(element).offset().top;
//      var windowTopToPageTop = $(window).scrollTop();
//      var windowInnerHeight = window.innerHeight;
//      var elementTopToWindowTop = elementTopToPageTop - windowTopToPageTop;
//      var elementTopToWindowBottom = windowInnerHeight - elementTopToWindowTop;
//      var distanceFromBottomToAppear = 300;
//
//      if(elementTopToWindowBottom > distanceFromBottomToAppear) {
//        $(element).addClass('js-fade-element-show');
//      }
//      else if(elementTopToWindowBottom < 0) {
//        $(element).removeClass('js-fade-element-show');
//        $(element).addClass('js-fade-element-hide');
//      }
//    }
//  });
//});




//$(window).scroll(function() { //scrolling functiond
//
//	var wScroll = $(this).scrollTop(); //defines top of screen
//	
//	var fixmeTop = $('#about').offset().top;       // get initial position of the nav bar
//	
//	$('.logo').css({
//		'transform' : 'translate(0px, '+ wScroll / 2 +'px)' //parallax for landing page
//		});
//		
//	if (wScroll >= fixmeTop) {           // apply position fixed to nav bar
//	    $('.nav').css({                      
//	        display: 'block',
//	    });
//	    
//	    $('.scroll').css({
//	    
//	    	display: 'none',
//	    
//	    });
//	    
//	}
//
//});
//


//
//$('.pic').click(function() {
//
//	$('.pic').removeClass('active');
//	
//	var active = this;
//	
//	$(active).addClass('active');
//	
//});
//
//$('#a').click(function() {
//
//	$('#pic').css({
//		background: 'url(images/face/face01.jpg)',
//	});
//	
//	document.getElementById("strong").textContent="Edith Monroe";
//	
//	document.getElementById("p").textContent="The Scotsman";
//	
//	document.getElementById("blurb").textContent="Processus ipsum feugait qui dignissim accumsan. Vel mirum ut notare iis notare. Claritas amet quinta decima habent seacula. Notare duis eros elit at gothica. Soluta formas eorum parum nostrud legentis. Adipiscing claritas ii commodo consequat litterarum. Mutationem enim processus typi in dynamicus. Parum eleifend facit decima nihil iis. Putamus commodo non quod luptatum assum.";
//	
//});
//
//$('#b').click(function() {
//
//	$('#pic').css({
//		background: 'url(images/face/face02.jpg)',
//	});
//	
//	document.getElementById("strong").textContent="Paul Nairn";
//	
//	document.getElementById("p").textContent="Evening News";
//	
//	document.getElementById("blurb").textContent="Sit elit molestie ad placerat hendrerit. Blandit nunc dolore consequat lius nihil. Soluta consequat eu eodem mazim minim. Eu lius aliquam est facer assum. Vel consuetudium mutationem claram qui claritas. Quod nobis nobis eum clari nostrud. Ullamcorper nihil in hendrerit et legere. Nulla est enim enim formas usus. Qui quod id est feugait delenit.";
//	
//});
//
//$('#c').click(function() {
//
//	$('#pic').css({
//		background: 'url(images/face/face03.jpg)',
//	});
//	
//	document.getElementById("strong").textContent="Laura Anderson";
//	
//	document.getElementById("p").textContent="Customer";
//	
//	document.getElementById("blurb").textContent="Processus ipsum feugait qui dignissim accumsan. Vel mirum ut notare iis notare. Claritas amet quinta decima habent seacula. Notare duis eros elit at gothica. Soluta formas eorum parum nostrud legentis. Adipiscing claritas ii commodo consequat litterarum. Mutationem enim processus typi in dynamicus. Parum eleifend facit decima nihil iis. Putamus commodo non quod luptatum assum.";
//	
//});
//
//$('#d').click(function() {
//
//	$('#pic').css({
//		background: 'url(images/face/face04.jpg)',
//	});
//	
//	document.getElementById("strong").textContent="Dan Hawkes";
//	
//	document.getElementById("p").textContent="Customer";
//	
//	document.getElementById("blurb").textContent="Sit elit molestie ad placerat hendrerit. Blandit nunc dolore consequat lius nihil. Soluta consequat eu eodem mazim minim. Eu lius aliquam est facer assum. Vel consuetudium mutationem claram qui claritas. Quod nobis nobis eum clari nostrud. Ullamcorper nihil in hendrerit et legere. Nulla est enim enim formas usus. Qui quod id est feugait delenit.";
//	
//});
//
//$('#e').click(function() {
//
//	$('#pic').css({
//		background: 'url(images/face/face05.jpg)',
//	});
//	
//	document.getElementById("strong").textContent="Ben Young";
//	
//	document.getElementById("p").textContent="Trip Advisor";
//	
//	document.getElementById("blurb").textContent="Processus ipsum feugait qui dignissim accumsan. Vel mirum ut notare iis notare. Claritas amet quinta decima habent seacula. Notare duis eros elit at gothica. Soluta formas eorum parum nostrud legentis. Adipiscing claritas ii commodo consequat litterarum. Mutationem enim processus typi in dynamicus. Parum eleifend facit decima nihil iis. Putamus commodo non quod luptatum assum.";
//	
//});
//
//$('#f').click(function() {
//
//	$('#pic').css({
//		background: 'url(images/face/face06.jpg)',
//	});
//	
//	document.getElementById("strong").textContent="Evelyn Henderson";
//	
//	document.getElementById("p").textContent="Customer";
//	
//	document.getElementById("blurb").textContent="Sit elit molestie ad placerat hendrerit. Blandit nunc dolore consequat lius nihil. Soluta consequat eu eodem mazim minim. Eu lius aliquam est facer assum. Vel consuetudium mutationem claram qui claritas. Quod nobis nobis eum clari nostrud. Ullamcorper nihil in hendrerit et legere. Nulla est enim enim formas usus. Qui quod id est feugait delenit.";
//	
//});
//
//
//
