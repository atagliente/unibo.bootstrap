function swapLogo() {
    if ($(window).width() > 601) {
        //da modificare il percorso
        $("#logoLogin").attr("src", "../Images/logoLoginBig.png");
    } else {
        $("#logoLogin").attr("src", "../Images/logoLoginSmall.png");
    }
}

$(document).ready(function() {
    swapLogo();
    $(window).resize(function() {
        swapLogo();
    });
});
