#$(document).on 'page:change', ->
jQuery ->
  $('#comments-link').click ->
    event.preventDefault()
    $('#comments-section').fadeToggle()
    $('#comment_content').focus()