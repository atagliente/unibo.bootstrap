$(document).ready(function() {

    $("#mostra").click(function() {
        if ($("p:first").text() == "Mostra tutte") {
            $("p:first").text("Mostra solo non lette");
        } else {
            $("p:first").text("Mostra tutte");
        }
    });

    var p = document.getElementsByClassName('testo_notifica');

    var g = document.getElementsByClassName('button');

    for (var i = 0, len = g.length; i < len; i++) {

        (function(index) {
            g[i].onclick = function() {
                //  alert(index);

                //$(p[index]).hide();

                /*
                if ($(".button").text() == "segna come non letta") {
                    $(".button").text("segna come letta");
                } else {
                    $(".button").text("segna come non letta");
                }*/
            }
        })(i);
    }
});
