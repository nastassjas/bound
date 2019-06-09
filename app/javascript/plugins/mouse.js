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

var count = 0
var images = ["https://res.cloudinary.com/patti01/image/upload/v1560030656/govo/arrow-final_q62hf1.svg","https://res.cloudinary.com/patti01/image/upload/v1560041305/govo/wri-ar_znuolg.svg"]

setInterval(function () {
  count = count + 1
  count = count % images.length

  var image = images[count]

  $(".moove").attr("src", image)

}, 3000)
