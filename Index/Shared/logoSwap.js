function swapLogo() {
    if ($(window).width() > 601) {
        //da modificare il percorso
        $("#logoUnibo").attr("src", "images/logoBig.png");
    } else {
        $("#logoUnibo").attr("src", "images/logoSmall.png");
    }
}

$(document).ready(function() {
    swapLogo();
    $(window).resize(function() {
        swapLogo();
    });
});
