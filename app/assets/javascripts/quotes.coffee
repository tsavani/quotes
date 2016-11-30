randomImage = 0

$(document).ready ->
  setInterval loadQuote, 600000
  setInterval changeBackground, 600000
  return

loadQuote = ->
  $.ajax url: 'quotes'
  return

changeBackground = ->
  randomImage++
  $('body').css 'background-image', 'url(http://loremflickr.com/1600/900?random' + randomImage + ')'
  if randomImage == 10
    randomImage = 0
  return
