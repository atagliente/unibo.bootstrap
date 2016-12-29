window.addEventListener('load', function () {
    $.get( "../assets/php/esami.php", function(data) {
        alert(data);
    });
})
