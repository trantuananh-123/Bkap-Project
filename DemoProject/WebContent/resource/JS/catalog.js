$('.fa-plus-circle, .fa-minus-circle').click(function () {
    $(this).css('display', 'none');
    $(this).siblings().css('display', 'block');
});



$('.catalog-show').click(function () {
    $(this).children('.chevron-up').toggleClass('rotate');
});

$(document).ready(function () {
    $(".icon-mode").click(function () {
        $(this).addClass("show-active");
        $(".icon-mode").not(this).removeClass("show-active");
    });

    $(".pro_size").click(function () {
        $(this).addClass("pro_size-active");
        $(".pro_size").not(this).removeClass("pro_size-active");
    });

    $(".pro_color").click(function () {
        $(this).addClass("pro_color-active");
        $(".pro_color").not(this).removeClass("pro_color-active");
    });

    $(".pro_material").click(function () {
        $(this).addClass("pro_material-active");
        $(".pro_material").not(this).removeClass("pro_material-active");
    });
});

$('.card-image').on({
    mouseenter: function () {
        var current = $(this).children()[1];
        $(current).removeClass('slideOut');
        $(current).addClass('slideInRight')
    },
    mouseleave: function () {
        var current = $(this).children()[1];
        $(current).addClass('slideOut');
        $(current).removeClass('slideInRight');
    }
});

$(document).ready(function () {
    $('.product-list:not(:first)').css('display', 'none');
});

$('#showMore').click(function () {
    if ($('.product-list:not(:first)').css('display') === 'none') {
        $('.product-list:not(:first)').css('display', 'flex');
        $('#showMore').css('display', 'none');
    }
    else {
        $('.product-list:not(:first)').css('display', 'none');
    }
});

$('.pro_btn').click(function () {
    $(this).siblings('.quick_view').css('display', 'block');
    $(this).siblings('.pro_view').css('display', 'block');
});

$('.quick_view').click(function () {
    $(this).css('display', 'none');
    $(this).next().css('display', 'none');
});

$(document).ready(function () {
    $('.quick_view').addClass('slideDownFull');
    $('.pro_view').addClass('slideDownHalf');
});

var money = 910.00;
var total = 0;
$('#pro_view_total').html("$" + total + ".00 USD");
$('#pro_view_total').text($('#pro_view_total').text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
var quantity = 0;

$('.fa-plus').click(function () {
    quantity++;
    $('#quantity').html(quantity);
    var x = quantity * 910.00;
    $('#pro_view_total').html("$" + x + ".00 USD");
    $('#pro_view_total').text($('#pro_view_total').text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
});

$('.fa-minus').click(function () {
    if (quantity > 0) {
        quantity--;
        $('#quantity').html(quantity);
        var x = quantity * 910.00;
        $('#pro_view_total').html("$" + x + ".00 USD");
        $('#pro_view_total').text($('#pro_view_total').text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
    }
});

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
    $('.button').toggleClass('push-right');
    $('.button').toggleClass('active');
    $('.mobile_sidebar').toggleClass('active');
    $('.mobile_overlay').toggleClass('active');
});

$('.button_filter').click(function () {
    $('.mobile_filter_sidebar').toggleClass('active');
    $('.mobile_filter_overlay').toggleClass('active');
    if($('.mobile_filter_overlay').hasClass('active')){
        $(document.body).css('overflow', 'hidden');
    }
});

$('#filter_close').click(function () {
    $('.mobile_filter_sidebar').toggleClass('active');
    $('.mobile_filter_overlay').toggleClass('active');
    if(!$('.mobile_filter_overlay').hasClass('active')){
        $(document.body).css('overflow', 'scroll');
    }
});

$('.mobile_filter_overlay').click(function () {
    $('.mobile_filter_sidebar').toggleClass('active');
    $('.mobile_filter_overlay').toggleClass('active');
    if(!$('.mobile_filter_overlay').hasClass('active')){
        $(document.body).css('overflow', 'scroll');
    }
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

