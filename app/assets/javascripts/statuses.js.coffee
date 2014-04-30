# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


ready = -> $('.status').hover (event) -> $(this).toggleClass("hover")

# the ready method makes a function available after the document is loaded. So the
# function is available after the following line is executed.
$(document).ready(ready)
# also execute the ready function defined above on page load
$(document).on('page:load', ready)