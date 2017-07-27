// Empty JS for your own code to be here

function togle_menu_mb() {
    $("#menu_ex").toggleClass("hidden-xs");
    $("#menu_ex").toggleClass("hidden-sm");

    var scrollPos =  $("#menu_ex").offset().top;
    $(window).scrollTop(scrollPos-58);
}