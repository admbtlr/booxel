$(function() {
    window.setTimeout(function() {
        Huey($('.book-cover img').attr('src'), function(rgb) { 
            var average = rgb.reduce(function(a, b) { 
                return a + b; 
            }, 0);
            $('.blurbs-row').css('background-color', 'rgb('+rgb.join(',')+')'); 
            if (average < 150) {
                $('.blurbs-row').addClass('inverted');
            }
        });
    }, 500);
});