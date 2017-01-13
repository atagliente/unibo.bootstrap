$(function() {
    var title;
    var dateOpen;
    var dateClose;
    var amount;
    var dalayFee;
    var year;



    var description = "";
    var paidTax = "";
    var payDay = 0;
    var delayFee = 0;
    var firstYearTitle = "";
    $.get("../nostro_assets/php/loadPaidTax.php", function(data) {

        var obj = JSON.parse(data);
        for (var y = 1; y <= 3; y++) {
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
                    if (delayFee > 0) {
                        taxPanel += " + " + delayFee;
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

    $.get("../nostro_assets/php/loadNotPaidTax.php", function(data) {

        var obj = JSON.parse(data);

        var daPagare = "";
        daPagare += '<div class="panel panel-default">';
        daPagare += '<div class="panel-heading">';
        daPagare += '<h2 class="panel-title">';
        daPagare += '<a data-toggle="collapse" href="#tasserimanenti">Da Pagare</a>';
        daPagare += '</h2>';
        daPagare += '</div>';
        daPagare += '<div id="tasserimanenti" class="panel-collapse collapse in">';
        daPagare += '<div class="panel-body">';
        daPagare += '<br/>';


        var numRate = 0;
        var monorata = false;
        var disabled = "";
        var tasseArretrate = false;
        for (var y = 1; y <= 3; y++) {

            for (var i = 0; i < obj.notPaidTax.length; i++) {
                if (y == obj.notPaidTax[i].year) {
                    if (obj.notPaidTax[i].descrizione == "Rata 1" || obj.notPaidTax[i].descrizione == "Rata 2" || obj.notPaidTax[i].descrizione == "Rata 3") {
                        numRate++;
                    } else if (obj.notPaidTax[i].descrizione == "Monorata") {
                        monorata = true;
                    }
                }
            }
            for (var i = 0; i < obj.notPaidTax.length; i++) {
                descrizione = obj.notPaidTax[i].descrizione;
                dateStart = obj.notPaidTax[i].dateOpen;
                dateClose = obj.notPaidTax[i].dateClose;
                amount = obj.notPaidTax[i].amount;
                dalayFee = obj.notPaidTax[i].delayFee;

                if (y == obj.notPaidTax[i].year) {
                    if (!monorata && numRate == 3) {
                        //è stata pagata la monorata
                    } else if (monorata && numRate == 0) {
                        //sono state pagate le tre rate
                    } else if (monorata && numRate == 3) {
                        //non è stato ancora pagato nulla
                        if (descrizione == "Rata 1" || descrizione == "Monorata") {
                            disabled = "";
                        } else {
                            disabled = "disabled";
                        }
                        daPagare += '<p>' + descrizione + ': <br/>importo: ' + amount;
                        if (checkIfFeeShouldBeApplied(dateClose)) {
                            daPagare += ' + ' + delayFee;
                        }
                        daPagare += ' € <button type="button" class="button ' + disabled + ' hidden-xs">Paga</button><br/> Pagamenti aperti da: ' + dateStart + ' Scandenza: ' + dateClose + ' </p>';
                        daPagare += '<button type="button" class="button ' + disabled + ' fit hidden-sm hidden-md hidden-lg">Paga</button><br/>';
                    } else if (numRate < 3) {
                        //ci sono tasse in sospeso disattivare pagamento 3 rata
                        if (tasseArretrate) {
                            disabled = "disabled";
                        } else {
                            disabled = "";
                            tasseArretrate = true;
                        }
                        if (descrizione != "Monorata") {
                            daPagare += '<p>' + descrizione + ': <br/>importo: ' + amount;
                            if (checkIfFeeShouldBeApplied(dateClose)) {
                                daPagare += ' + ' + delayFee;
                            }
                            daPagare += ' € <button type="button" class="button ' + disabled + ' hidden-xs">Paga</button><br/> Pagamenti aperti da: ' + dateStart + ' Scandenza: ' + dateClose + ' </p>';
                            daPagare += '<button type="button" class="button ' + disabled + ' fit hidden-sm hidden-md hidden-lg">Paga</button><br/>';
                        }
                    }
                }
            }


            numRate = 0;
            monorata = false;

        }

        daPagare += '</div>';
        daPagare += '</div>';
        daPagare += '</div>';

        $("#containerRestanti").append(daPagare);
    });
});


function checkIfFeeShouldBeApplied(dateClose) {
    var today = new Date();
    if (today < convertToJavascriptDate(dateClose)) {
        return false;
    } else {
        return true;
    }
}

function convertToJavascriptDate(dateToConvert) {
    var yyyy = dateToConvert.substring(0, 4);
    var mm = dateToConvert.substring(5, 7);
    mm = parseInt(mm) - 1; //calendar months start from 0
    var dd = dateToConvert.substring(8, 10);
    var jsDate = new Date;
    return jsDate.setFullYear(yyyy, mm, dd);
}
