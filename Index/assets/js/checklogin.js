window.addEventListener('load', function () {
    $.get( "../assets/php/LoginCheck.php", function(data) {
        if (data != "accept") location.replace(data);
    });
})
