$(".dashboard-elements-width").on("click", function (event) {
  event.preventDefault()

  const href = $(this).attr("href")

  window.history.pushState(null, null, href)

  $(".dashboard-elements-width a").removeClass("active")
  $(this).addClass("active")

  &.ajax({
    url: href,
    success: function (data) {
      $(".dashboard-mybookings").fadeOut(250, function () {
        const newPage = $(data).filter(".dashboard-mybookings").html()
        $(".dashboard-mybookings").html(newPage)

        $(".dashboard-mybookings").fadeIn(250)
      })

  })
})
