$(function () {
    $('.nav-item ul').hide().removeClass('fallback');
    $('.nav-item').hover(function () {
        $('ul', this).stop().slideToggle(200);
    });
});