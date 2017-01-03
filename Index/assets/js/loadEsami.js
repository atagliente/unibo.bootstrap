var last_ID = 0;

$(function() {
    $.get("../assets/php/esami.php", function(data) {
        alert(data);
        var obj = JSON.parse(data);
                    for(var i = 0; i < obj.exam.length; i++){
                alert(obj.exam[i].title
                    + " " + obj.exam[i].cfu
                );
            }
    });
});
