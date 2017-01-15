var tempDeadline;
var jsDate;

$(function(){
  var studentCourseYear = 0;

  $.get("../nostro_assets/php/getStudentCourseYear.php", function(data) {
      var obj = JSON.parse(data);
      if(obj.courseYear.length == 1){
        studentCourseYear = obj.courseYear[0].year;
      } else {
        alert("Errore uno studente può avere solo un anno di corso");
      }
  });

  $.get("../nostro_assets/php/getTaxDeadline.php", function(data) {
      //var obj = JSON.parse(data);
      alert(data);
      /*var description;
      var paymentCounter = 0;
      var monoPaymentDone = true;
      var payment = "Rata 1";
      var deadline;

      for (var i = 0; i < obj.paymentDeadline.length; i++) {
        description = obj.paymentDeadline[i].descrizione;
        if(description == payment){
          paymentCounter++;
          payment = "Rata 2";
        } else if(description == payment){
          paymentCounter++;
          payment = "Rata 3";
        } else if(description == payment){
          paymentCounter++;
          payment = "Rata 1";
        } else if(description == "Monorata"){
          monoPaymentDone = false;
        }
      }
      for (var i = 0; i < obj.paymentDeadline.length; i++) {
        description = obj.paymentDeadline[i].descrizione;
        if(paymentCounter == 0 && !monoPaymentDone){
          //nessuna rata è stata pagata
          tempDeadline = obj.paymentDeadline[i].dateClose;
          deadline = setDeadline(deadline);
        } else if(paymentCounter == 3 && monoPaymentDone){
          //è stata pagata la monorata
        } else if(paymentCounter > 0 && !monoPaymentDone){
          //è stata pagata almeno la prima rata
          if(description != "Monorata"){
            tempDeadline = obj.paymentDeadline[i].dateClose;
            deadline = setDeadline(deadline);
          }
        }
      }
      convertToJavascriptDate(deadline)
      var daysLeft = getDaysNumberTillToday(jsDate);
      alert(daysLeft);
      var message;
      if(daysLeft >= 0 && daysLeft <= 10){
        message = "Il pagamento deve essere effettuato entro " + daysLeft + " giorni";
        setReminderOnCalendar(message);
      } else if(daysLeft < 0){
        daysLeft = -daysLeft;
        message = "Pagamento della rata scaduto da " + daysLeft + " giorni";
        setReminderOnCalendar(message);
      }*/
  });
});

function setDeadline(deadline){
  if(deadline == null || deadline > tempDeadline){
    return tempDeadline;
  }
}

function convertToJavascriptDate(dateToConvert) {
    var yyyy = dateToConvert.substring(0, 4);
    var mm = dateToConvert.substring(5, 7);
    mm = parseInt(mm) - 1; //calendar months start from 0
    var dd = dateToConvert.substring(8, 10);
    jsDate = new Date;
    jsDate.setFullYear(yyyy, mm, dd);
}

function getDaysNumberTillToday(date){
  var today = new Date();
  return (int)((today - date)/86400000);
}

function convertToPhpDate(day){
  var yyyy = day.getFullYear();
  var mm = day.getMonth() + 1;
  if(mm < 10){
    mm = "0" + mm;
  }
  var dd = day.getDate();
  if(dd < 10){
    dd = "0" + dd;
  }
  return "" + yyyy + "-" + mm + "-" + dd;
}

function setReminderOnCalendar(message) {
  var today = new Date();
  var phpDateStart = convertToPhpDate(today);
  var phpDateClose = convertToPhpDate(jsDate);
  $.ajax({
      url: '../nostro_assets/php/insertEvent.php',
      data: {
          'title': "Pagamento rata",
          'description': message,
          'dataInizio': phpDateStart,
          'dataFine': phpDateClose
      },
      type: 'post',
      success: function(output) {
          alert(output);
      }
  });
}
