$(function () {

    $(".prenota").click(function () {
        $.ajax({ url: '../php/eventGenerator.php',
            data: {'messageType': 'test'},
                type: 'post',
                success: function(output) {
                alert(output);
            }
        });
    });
});