 var swiper = new Swiper('.swiper-container', {
			  clickable: true,
			  slidesPerView: 1,
			  spaceBetween: 380,
			  // init: false,
			  pagination: {
			    el: '.swiper-pagination',
			    clickable: true,
			  },
			  autoplay: {
			    delay: 5000,
			  },
			  navigation: {
			    nextEl: '.swiper-button-next',
			    prevEl: '.swiper-button-prev',
			  },
			  breakpoints: {
			    1024: {
			      slidesPerView: 1,
			      spaceBetween: 0,
			    },
			    768: {
			      slidesPerView: 1,
			      spaceBetween: 0,
			    },
			    640: {
			      slidesPerView: 1,
			      spaceBetween: 0,
			    },
			    320: {
			      slidesPerView: 1,
			      spaceBetween: 0,
			    }
			  }
			});

var caro = new Swiper('.slide-simples', {
	containerModifierClass: 'slide-simples-',
	wrapperClass: 'slide-wrap',
	speed: 1000,
	slidesPerView: 3,
	spaceBetween: 0,
	slidesPerGroup: 1,
	loop: true,
	autoplay: {
    delay: 1000,
	}
});

/* document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.carousel');
    var instances = M.Carousel.init(elems, options);
  }); */

  // Or with jQuery

  $(document).ready(function(){
    $('.carousel').carousel();
  });
  $(document).ready(function() {
    Materialize.updateTextFields();
  });
  $(document).ready(function() {
    $('select').material_select();
    $('#hamb').click(function(){
    	var n = $('#mob').css('display');
    	if (n == "none") {
    	$('#mob').css({'display':'flex'});
    }
	    else {
	    	$('#mob').css({'display':'none'});
	    }
    });
	});


	
