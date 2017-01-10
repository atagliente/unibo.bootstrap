window.addEventListener('load', function () {
    $.get( "../nostro_assets/php/LoginCheck.php", function(data) {
        if (data != "accept") location.replace(data);
    });
})
