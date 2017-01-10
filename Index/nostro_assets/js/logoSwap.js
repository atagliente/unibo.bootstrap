function swapLogo() {
    if ($(window).width() > 601) {
        //da modificare il percorso
        $("#logoUnibo").attr("src", "../Images/logoBig.png");
    } else {
        $("#logoUnibo").attr("src", "../Images/logoSmall.png");
    }
}

$(document).ready(function() {
    swapLogo();
    $(window).resize(function() {
        swapLogo();
    });
});
