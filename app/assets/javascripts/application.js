//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require_tree .


(document).ready(function() {
  // navbar transition jQuery script

  $('.datepicker').datepicker({ format: "dd/mm/yyyy" });

  $(window).scroll(function(e){
    if ($(this).scrollTop() > 0) {
      $(".navbar").css({
        "background": "rgba(0, 0, 0, 0.7)",
        "box-shadow": "0 0 2px black"
      });
    }
    else {
      $(".navbar").css({
        "background": "transparent",
        "box-shadow": "0 0 0px transparent"
      });
    }
  });
});
