
$(function() {
    $.get("../nostro_assets/php/esami.php", function(data) {
        var obj = JSON.parse(data);
        alert(obj.exam.length);
        for(var i = 0; i < obj.exam.length; i++){
          alert(obj.exam[i].title
            + " " + obj.exam[i].cfu
            );
        }
    });
});
