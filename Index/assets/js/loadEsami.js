window.addEventListener('load', function() {

    $.get("../assets/php/esami.php", function(data) {

        var obj = JSON.parse(data);

        for(var i = 0; i < obj.esami.length; i++){
          alert(obj.esami[i].id_esame
            + " " + obj.esami[i].nome_esame
            + " " + obj.esami[i].nome_cognome_docente
            + " " + obj.esami[i].cfu
            + " " + obj.esami[i].anno);
        }
    });
})
