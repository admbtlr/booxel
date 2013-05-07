$(function() {
    $('#display-storefront').imagesLoaded(function() {
        $('#display-storefront').masonry({
            itemSelector : '.book-storefront',
            columnWidth : 146
        });
    });
});