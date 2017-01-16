var notPaid = "";
var numberID = 0;
$(function() {
    var dateClose;
    var amount;
    var description = "";
    var paidTax = "";
    var payDay = 0;
    var delayFee = 0;
    var studentCourseYear = 0;

    $.get("../nostro_assets/php/getStudentCourseYear.php", function(data) {
        var obj = JSON.parse(data);
        studentCourseYear = obj.courseYear[0].year;
    });

    $.get("../nostro_assets/php/loadPaidTax.php", function(data) {
        var obj = JSON.parse(data);
        var paidTax;
        var description;
        for (var y = 1; y <= studentCourseYear; y++) {
            paidTax = "";
            paidTax += '<div id="anno' + y + '" class="container">';
            paidTax += '<div class="panel panel-default">';
            paidTax += '<div class="panel-heading">';
            paidTax += '<h2 class="panel-title">';
            paidTax += '<a data-toggle="collapse" href="#tassepagate' + y + '">' + y + '° anno</a>';
            paidTax += "</h2>";
            paidTax += "</div>";
            paidTax += '<div id="tassepagate' + y + '" class="panel-collapse collapse">';
            paidTax += '<div class="panel-body">';

            for (var i = 0; i < obj.paidTax.length; i++) {
                if (y == obj.paidTax[i].year) {
                    description = obj.paidTax[i].descrizione;
                    amount = obj.paidTax[i].amount;
                    dateClose = obj.paidTax[i].dateClose;
                    delayFee = obj.paidTax[i].delayFee;
                    payDay = obj.paidTax[i].payDay;
                    paidTax += '<p class="paidDescription">' + description + '</p>';
                    paidTax += '<p> Importo: ' + amount;
                    if (getDaysBetweenTwoDates(convertToJavascriptDate(dateClose), convertToJavascriptDate(payDay)) < 0) {
                        paidTax += ' + ' + delayFee;
                    }
                    paidTax += ' € </p>'
                    paidTax += '<p> Data pagamento: ' + payDay + '</p>';
                    paidTax += '<hr>';
                }
                payDay = 0;
            }

            paidTax = paidTax.slice(0, -4);
            paidTax += "</div>";
            paidTax += "</div>";
            paidTax += "</div>";
            paidTax += "</div>";

            $("#tassepagate").append(paidTax);
        }
    });

    $.get("../nostro_assets/php/loadNotPaidTax.php", function(data) {
        var obj = JSON.parse(data);
        var paymentsNumber = 0;
        var monoPayment = false;
        var disabled = "";
        var tasseArretrate = false;
        var description = "";
        var onHoldTaxes = false; //used to load only the year with taxes on hold

        notPaid += '<div class="panel panel-default">';
        notPaid += '<div class="panel-heading">';
        notPaid += '<h2 class="panel-title">';
        notPaid += '<a data-toggle="collapse" href="#tasserimanenti">Da Pagare</a>';
        notPaid += '</h2>';
        notPaid += '</div>';
        notPaid += '<div id="tasserimanenti" class="panel-collapse collapse in">';
        notPaid += '<div class="panel-body">';

        for (var y = 1; y <= studentCourseYear; y++) {
            if (!onHoldTaxes) {
                for (var i = 0; i < obj.notPaidTax.length; i++) {
                    if (y == obj.notPaidTax[i].year) {
                        if (obj.notPaidTax[i].descrizione == "Rata 1" || obj.notPaidTax[i].descrizione == "Rata 2" || obj.notPaidTax[i].descrizione == "Rata 3") {
                            paymentsNumber++;
                        } else if (obj.notPaidTax[i].descrizione == "Monorata") {
                            monoPayment = true;
                        }
                    }
                }
                if (!((!monoPayment && paymentsNumber == 3) || (monoPayment && paymentsNumber == 0))) {
                    onHoldTaxes = true;
                }
                for (var i = 0; i < obj.notPaidTax.length; i++) {
                    numberID = obj.notPaidTax[i].numberID;
                    description = obj.notPaidTax[i].descrizione;
                    dateStart = obj.notPaidTax[i].dateOpen;
                    dateClose = obj.notPaidTax[i].dateClose;
                    amount = obj.notPaidTax[i].amount;
                    delayFee = obj.notPaidTax[i].delayFee;

                    if (y == obj.notPaidTax[i].year) {
                        if (!monoPayment && paymentsNumber == 3) {
                            //è stata pagata la monorata
                        } else if (monoPayment && paymentsNumber == 0) {
                            //sono state pagate le tre rate
                        } else if (monoPayment && paymentsNumber == 3) {
                            //non è stato ancora pagato nulla
                            if ((description == "Rata 1" || description == "Monorata") && checkIfPaymentCanBeDone(dateStart)) {
                                disabled = "";
                            } else {
                                disabled = " disabled";
                            }
                            addNotPaidTaxDatas(description, y, amount, delayFee, dateStart, dateClose, disabled);
                        } else if (paymentsNumber < 3) {
                            //ci sono tasse in sospeso disabilitato il  pagamento delle rate succcessive
                            if (tasseArretrate || !checkIfPaymentCanBeDone(dateStart)) {
                                disabled = " disabled";
                            } else {
                                disabled = "";
                                tasseArretrate = true;
                            }
                            if (description != "Monorata") {
                                addNotPaidTaxDatas(description, y, amount, delayFee, dateStart, dateClose, disabled);
                            }
                        }
                    }
                }
                paymentsNumber = 0;
                monoPayment = false;
            }
        }

        notPaid = notPaid.slice(0, -4);
        notPaid += '</div>';
        notPaid += '</div>';
        notPaid += '</div>';

        $("#containerRestanti").append(notPaid);

        for (var i = 0; i <= (studentCourseYear * 4); i++) {
            addEventListenerToButton("btnD" + i);
            addEventListenerToButton("btnM" + i);
        }
    });
});

function checkIfPaymentCanBeDone(dateStart) {
    var today = new Date();
    if (today < convertToJavascriptDate(dateStart)) {
        return false;
    } else {
        return true;
    }
}

function checkIfFeeShouldBeApplied(dateClose) {
    var today = new Date();
    if (today <= convertToJavascriptDate(dateClose)) {
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

function addNotPaidTaxDatas(description, year, amount, delayFee, dateStart, dateClose, disabled) {
    var btnDesktopID = "btnD" + numberID;
    var btnMobileID = "btnM" + numberID;
    notPaid += '<p class="notPaidTitle"> Anno ' + year + ' ' + description + '</p>';
    notPaid += '<p>Importo: ' + amount;

    if (checkIfFeeShouldBeApplied(dateClose)) {
        notPaid += ' + ' + delayFee;
    }

    notPaid += ' € </p>';
    notPaid += '<button type="button" id="' + btnDesktopID + '" class="button' + disabled + ' hidden-xs">Paga</button>'; //<br/>
    notPaid += '<p>Pagamenti aperti da: ' + dateStart + '</p> ';
    notPaid += '<p>Scandenza: ' + dateClose + ' </p>';
    notPaid += '<button type="button" id="' + btnMobileID + '" class="button' + disabled + ' fit hidden-sm hidden-md hidden-lg">Paga</button>'; //<br/>
    notPaid += '<hr>';
}

function addEventListenerToButton(buttonID) {
    var button = document.getElementById(buttonID);
    if (button != null) {
        button.addEventListener("click", function() {
            var buttonID = $(this).attr('id');
            var rata_ID = buttonID.substring(4);
            $.ajax({
                url: '../nostro_assets/php/updatePayment.php',
                data: {
                    'rata_ID': rata_ID
                },
                type: 'post',
                success: function(output) {
                    alert(output);
                    location.reload();
                }
            });
        });
    }
};

function getDaysBetweenTwoDates(date1, date2){
  return Math.round((date1 - date2)/86400000);
}
