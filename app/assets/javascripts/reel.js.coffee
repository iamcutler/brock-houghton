# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready( ->
  $('section.videos ul li').hover((e) ->
    # Fade video play buttons
    # Pass event to control fading of the button
    VIDEOS.fadePlayBtn(e)
  )
)