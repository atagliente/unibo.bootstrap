$(function() {
    var title;
    var dateOpen;
    var dateClose;
    var amount;
    var dalayFee;
    var year;
    var div = document.getElementById('containerRestanti');

    /*
        $.get("../nostro_assets/php/loadTasse.php", function(data) {

            var obj = JSON.parse(data);

                    var primo = "<div class=\"panel-heading\"> <h2 class=\"panel-title\"> <a data-toggle=\"collapse\" href=\"#tasserimanenti\">Da Pagare</a> </h2> </div>";




                    $("#containerRestanti").append(primo);
                    var secondo = "";
                    $("#containerRestanti").append(secondo);
                    var terzo = "";
                    $("#containerRestanti").append(terzo);
                    for (var i = 0; i < obj.tax.length; i++) {


                        title = obj.tax[i].descrizione;
                        dateStart = obj.tax[i].dateOpen;
                        dateClose = obj.tax[i].dateClose;
                        amount = obj.tax[i].amount;
                        dalayFee = obj.tax[i].delayFee;
                        //year = "Anno: " + obj.tax[i].year;


                        $("#containerRestanti").append("<div id=\"tasserimanenti\" class=\"panel-collapse collapse in\"> <div class=\"panel-body\"> <p>Prima rata: <br/>importo: 600€ <br/> Scandenza 10/09/2016 </p> <button type=\"button\" class=\"button hidden-xs\">Paga</button> <button type=\"button\" class=\"button fit hidden-sm hidden-md hidden-lg\">Paga</button><br/> </div> </div>");
                    }


        });*/

    var description = "";
    var paidTax = "";
    var payDay = 0;
    var delayFee = 0;
    var firstYearTitle = "";
    $.get("../nostro_assets/php/loadPayedTax.php", function(data) {

        var obj = JSON.parse(data);

        for (var y = 1; y < 3; y++) {



            var taxPanel = "";
            taxPanel += '<div id="' + y + '" class="container">';
            taxPanel += '<div class="panel panel-default">';
            taxPanel += '<div class="panel-heading">';
            taxPanel += '<h2 class="panel-title">';
            taxPanel += '<a data-toggle="collapse" href="#tasseannipassati' + y + '">' + y + ' anno</a>';
            taxPanel += "</h2>";
            taxPanel += "</div>";
            taxPanel += '<div id="tasseannipassati' + y + '" class="panel-collapse collapse">';
            taxPanel += '<div class="panel-body">';

            for (var i = 0; i < obj.paidTax.length; i++) {

                if (y == obj.paidTax[i].year) {
                    description = obj.paidTax[i].descrizione;
                    amount = obj.paidTax[i].amount;
                    delayFee = obj.paidTax[i].delayFee;
                    payDay = obj.paidTax[i].payDay;
                    taxPanel += "<p>" + description + " importo: " + amount;
                    if(delayFee > 0){
                      taxPanel +=  " + " + delayFee;
                    }
                    taxPanel += " € Data pagamento: " + payDay + "</p> ";
                }
                payDay = 0;
            }

            taxPanel += "</div>";
            taxPanel += "</div>";
            taxPanel += "</div>";
            taxPanel += "</div>";


            $("#tassepagate").append(taxPanel);
        }
    });
});
