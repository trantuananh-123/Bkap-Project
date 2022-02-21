$('.fa-plus-circle, .fa-minus-circle').click(function () {
    $(this).css('display', 'none');
    $(this).siblings().css('display', 'block');
});

$(document).ready(function () {
    $(".pro_size").click(function () {
        $(this).addClass("pro_size-active");
        $(this).siblings().removeClass("pro_size-active");
    });

    $(".pro_color").click(function () {
        $(this).addClass("pro_color-active");
        $(this).siblings().removeClass("pro_color-active");
    });

    $(".pro_material").click(function () {
        $(this).addClass("pro_material-active");
        $(this).siblings().removeClass("pro_material-active");
    });
});

var quantity = 0;

$('.fa-plus').click(function () {
    quantity++;
    $('#details_quantity').html(quantity);
});

$('.fa-minus').click(function () {
    if (quantity > 0) {
        quantity--;
        $('#details_quantity').html(quantity);
    }
});

var main = $('.main_detail_img').attr('src');


$('.sub_detail_img').parent('.col-lg-3').on({
    mouseenter: function () {
        var x = $(this).children('.sub_detail_img').attr('src');
        $('.main_detail_img').attr('src', x);
    },
    mouseleave: function () {
        $('.main_detail_img').attr('src', main);
    }
});

var money = 860.00;
var total = money * 5;
$('#total').html("$" + total + ".00 USD");
$('#total').text($('#total').text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));

var together_item_details = $('.together_item_details').children('li').children('input')
$('.together_item_details').children('li').children('input').click(function () {
    if (!$(this).is(':checked')) {
        total -= money;
        $('#total').html("$" + total + ".00 USD");
        $('#total').text($('#total').text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
    } else {
        total += money;
        $('#total').html("$" + total + ".00 USD");
        $('#total').text($('#total').text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
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

$("#rateYo").rateYo({
    rating: 0,
    fullStar: true,
    readOnly: false
});

$("#rateYo").click(function () {
    $("#rateYo").rateYo('option', 'readOnly', true);
})

$('.rate_btn').click(function () {
    $("#rateYo").rateYo('option', 'readOnly', false);
    $("#rateYo").rateYo('option', 'rating', 0);
});

$('.question').click(function () {
    $('.customer_question_overlay').css('display', 'block');
    $('.customer_question_view').css('display', 'block');
});

$('.customer_question_overlay').click(function () {
    $('.customer_question_overlay').css('display', 'none');
    $('.customer_question_view').css('display', 'none');
});

$(document).ready(function () {
    $('.customer_question_overlay').addClass('slideDownFull');
    $('.customer_question_view').addClass('slideDownHalf');
});