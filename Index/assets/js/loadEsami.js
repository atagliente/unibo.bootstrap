var last_ID = 0;

$(function() {
    $.get("../assets/php/esami.php", function(data) {
<<<<<<< HEAD
        alert(data);
=======

>>>>>>> 6cac80f340be5322b34373f9bf4aadb83ef86d0c
        var obj = JSON.parse(data);
        alert(obj.exam.length);
        for(var i = 0; i < obj.exam.length; i++){
          alert(obj.exam[i].title
            + " " + obj.exam[i].cfu
            );
        }
    });
});
