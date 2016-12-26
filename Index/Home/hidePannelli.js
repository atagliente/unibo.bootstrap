$(document).ready(function() {
    var g = document.getElementById('nemesis');

    for (var i = 0, len = g.children.length; i < len; i++) {

        (function(index) {
            if (g.children[i].getElementsByClassName("button")) {
                alert("oagnkògiasdnvlsdpjaoifjsdifojanik");

                g.children[i].onclick = function() {
                    alert(index);
                    $(this).hide();
                }
            }
        })(i);

    }
    /*
        $(".button").click(function(){
            g


        });*/
});
