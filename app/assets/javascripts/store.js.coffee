$(document).on 'ready', ->
  $('.entry img').click ->
    $(this).parent().parent().find(':submit').click()