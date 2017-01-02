$(function () {

    $('#prenotation').click(function () {
        $.ajax({ url: '../php/eventGenerator.php',
            data: {'messageType': 'exam_prenotation'},
            type: 'post',
            success: function(output) {
                alert(output);
            }
        });
    });
});