'use strict'

$ ->

  el = document.body
  isOpen = location.hash is '#open'

  $('.post-template .cover').removeClass 'expanded'

  expand = (currentState)->
    toStateOpen = !currentState

    if toStateOpen
      $('main, .cover, .links > li').removeClass 'expanded'
    else
      $('main, .cover, .links > li').addClass 'expanded'


  $('.nav-blog > a, #avatar-link').click ->
    console.log isOpen
    expand(isOpen)
    return $('#menu-button').trigger 'click' unless Uno.is 'device', 'desktop'


  $("#menu-button").click ->
    $('main, .cover, #menu-button').toggleClass 'expanded'


  if (Uno.is 'device', 'desktop') && (document.body.dataset['page'] is 'home' || document.body.dataset['page'] is 'paged')
    console.log isOpen
    expand(!isOpen)
