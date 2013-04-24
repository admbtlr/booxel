$(function() {
    $('input').on('click', function() {
      var $checkbox = $(this);
      if ($checkbox.attr('id') == 'kindle' || $checkbox.attr('id') == 'ios') {
        if ($checkbox.is(':checked')) {
          $('#'+$checkbox.attr('id')+'-extra').show();
        } else {
          $('#'+$checkbox.attr('id')+'-extra').hide();
        }
      }
    });

    $('#pw-box').on('keyup', function(e) {
        if ($(e.target).val().length > 0) {
            $('#pw-conf').show();
        } else {
            $('#pw-conf').hide();
        }
    })
});
