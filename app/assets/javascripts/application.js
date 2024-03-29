//= require jquery
//= require jquery_ujs


$(document).ready(function () {
  $(".menu-burger").on("click", () => {});
});
// console.log("test");

$(document).ready(function () {
  $(".event-btn").mouseover((e) => {
    $(".event-show").addClass("show");
  });

  $(".event-btn").mouseleave((e) => {
    $(".event-show").removeClass("show");
  });

  $(".game-btn").mouseover((e) => {
    $(".game-show").addClass("show");
  });

  $(".game-btn").mouseleave((e) => {
    $(".game-show").removeClass("show");
  });

  $("header .fa-times").click((e) => {
    $("header").css({ width: "0px", opacity: "0" });
    $("main.body").css({ marginLeft: 0, width: "100vw" });
  });

  $("body i").click((e) => {
    $("header").css({ width: "300px", opacity: "1", display: "block" });
    $("main.body").css({ marginLeft: "300px", width: "calc(100vw - 300px)" });
  });

  $("html, body").bind("mousewheel", function (e) {
    $(this).stop();
  });

  $("a").click(function (e) {
    $("html, body")
      .stop()
      .animate(
        {
          scrollTop: $($(this).attr("href")).offset().top,
        },
        1500
      );

    return false;
  });
});
