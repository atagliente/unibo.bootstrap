$(function () {

    var classname = document.getElementsByClassName("prenota");

    var myFunction = function() {

        $.ajax({ url: '../nostro_assets/php/eventGenerator.php',
            data: {'messageType': "examPrenotation"},
            type: 'post',
            success: function(output) {
                alert(output);
            }
        });
    };

    for (var i = 0; i < classname.length; i++) {
        classname[i].addEventListener('click', myFunction, false);
    }

});