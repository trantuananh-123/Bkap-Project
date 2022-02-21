var swiper = new Swiper('.swiper1', {
    slidesPerView: 1,
    spaceBetween: 30,
    loop: true,
    pagination: {
        el: '.swiper-pagination1',
        clickable: true,
    },
    navigation: {
        nextEl: '.swiper1-button-next',
        prevEl: '.swiper1-button-prev',
    },
    grabCursor: true,
    autoplay: false,
    speed: 2000,
});

$('.swiper-button-prev').click(function () {
    $('.slider').addClass('slideInRight');
    setTimeout(function () {
        $('.slider').removeClass('slideInRight');
    }, 1000);
});

$('.swiper-button-next').click(function () {
    $('.slider').addClass('slideInLeft');
    setTimeout(function () {
        $('.slider').removeClass('slideInLeft');
    }, 1000);
});

// $(document).ready(function(){
//     $('.slider').addClass('slideIn');
//     setTimeout(function(){
//         $('.slider').removeClass('slideIn');
//     }, 1000);

//     $('.shopify-container').addClass('show-shopify-container');
// });

$(document).ready(function () {
    $testimonial = $('.testimonial-carousel').flickity({
        // options
        autoPlay: 3000,
        wrapAround: true,
    });
});

$('.fa-play-circle').click(function () {
    $('.overlay').css('display', 'block');
    $('.video').css('display', 'block');
    $('body').css({
        'overflow': 'hidden'
    });
});

$('.fa-times').click(function () {
    $('iframe').attr('src', $('iframe').attr('src'));
    $('.overlay').css('display', 'none');
    $('.video').css('display', 'none');
    $('body').css({
        'overflow': 'auto'
    });
})

$('.overlay').click(function () {
    $('.overlay').css('display', 'none');
    $('.video').css('display', 'none');
    $('body').css({
        'overflow': 'auto'
    });
    $('iframe').attr('src', $('iframe').attr('src'));
});

$('.card').mouseover(function () {
    $('.card-img-overlay').css('display', 'block');
})

$(function () {
    $(".notify-btn").click(function () {
        $(".notify-btn").addClass("active");
        $(input).addClass("active");
        $(".submit-btn").addClass("active");
    });
});

$(function () {
    $(".submit-btn").click(function () {
        $(this).removeClass("active");
        $("input").removeClass("active");
        $(".thanku-btn").addClass("active");
    });
});

$('.button').click(function () {
    $('.button').toggleClass('active');
    $('.mobile_sidebar').toggleClass('active');
    $('.button').toggleClass('push-right');
    $('.mobile_overlay').toggleClass('active');
});

$('.mobile_overlay').click(function () {
    $('.button').toggleClass('active');
    $('.mobile_sidebar').toggleClass('active');
    $('.button').toggleClass('push-right');
    $('.mobile_overlay').toggleClass('active');
});

var onTop = document.getElementById('top');
window.addEventListener('scroll', function () {
    if (window.scrollY !== 0) {
        onTop.style.cssText = 'display: block; position: fixed';
    }
    else {
        onTop.style.cssText = 'display: none;';
    }
});

onTop.addEventListener('click', function () {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
});