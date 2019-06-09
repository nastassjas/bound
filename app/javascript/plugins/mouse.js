$(document).on("mousemove", function (event) {
  var mouseX = event.originalEvent.pageX
  var mouseY = event.originalEvent.pageY

  $(".moove").each(function (){
    var imgX = $(this).position().left + 70
    var imgY = $(this).position().top + 70

    var diffX = mouseX - imgX
    var diffY = mouseY - imgY

    var radians = Math.atan2(diffY, diffX)

    var angle = radians * 180 / Math.PI

    $(this).css("transform", "rotate(" + angle + "deg)")

  })

})
