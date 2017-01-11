
$(function () {
    var title;
    var numberID;
    var cfu;
    var dateStart;
    var examUrl;
    var testID;
    var dateClose;
    var classroom;
    var examID;
    var time;
    var teacherFirstName;
    var teacherLastName;
    var prenotation;
    var vote;

    $.get("../nostro_assets/php/pageRequest/examResult.php", function(data) {
        var obj = JSON.parse(data);
        for(var i = 0; i < obj.exam.length; i++) {
            numberID = obj.exam[i].numberID;
            title = obj.exam[i].title;
            cfu = obj.exam[i].cfu;
            dateStart = obj.exam[i].year_;
            vote = obj.exam[i].vote;
            prenotation = obj.exam[i].prenotation;
            var exam = "<div class=\"panel panel-default\"> <div class=\"panel-heading\"> <h4 class=\"panel-title\"> <a data-toggle=\"collapse\" href=" + examUrl + ">" + title + "</a> </h4> <div class= \" panel-collapse collapse in\"> <div id=\"" + numberID + "\" class=\"panel-body\"></div></div></div></div>";
            if(vote > 0) {
                var div = document.getElementById('verbalized');
            } else if (prenotation == 0) {
                var div = document.getElementById('restanti');
            } else var div = document.getElementById('prenotati');
            div.insertAdjacentHTML( 'afterbegin', exam);
        }
    });


    $.get("../nostro_assets/php/pageRequest/testResult.php", function(data) {
        var obj = JSON.parse(data);
        for(var i = 0; i < obj.test.length; i++){
            numberID = obj.test[i].numberID;
            dateStart = obj.test[i].dateStart;
            dateClose = obj.test[i].dateFinish;
            classroom = obj.test[i].classroom;
            examID = obj.test[i].exam___fk;
            time = obj.test[i].time;
            vote = obj.test[i].vote;
            prenotation = obj.test[i].prenotation;
            teacherFirstName = obj.test[i].firstName;
            teacherLastName = obj.test[i].lastName;
            if(vote > 0) {
                var test = "<p style='float: left'>" + teacherFirstName + " " + teacherLastName + "</p><p style='float: right; font-size: 23px'>" + vote + "</p>";
            } else if (prenotation == 0) {
                var test = "<button type=\"button\" class=\"button hidden-xs ritira\" id='" + numberID + "'>Prenota</button> <p style='text-align: left;'>" + teacherFirstName + " " + teacherLastName + "       " + classroom + "<br/>" + dateStart + "             " + time + "</p> <button type=\"button\" class=\"button fit hidden-sm hidden-md hidden-lg prenota\" id='" + numberID + "'>Prenota</button>";
            } else var test = "<button type=\"button\" class=\"button hidden-xs ritira\" id='" + numberID + "'>Ritira</button> <p style='text-align: left;'>" + teacherFirstName + " " + teacherLastName + "       " + classroom + "<br/>" + dateStart + "             " + time + "</p> <button type=\"button\" class=\"button fit hidden-sm hidden-md hidden-lg prenota\" id='" + numberID + "'>Ritira</button>";
            var div = document.getElementById(examID);
            div.insertAdjacentHTML('afterbegin', test);

        }

        var classname = document.getElementsByClassName("prenota");

        var action = function() {
            $.ajax({ url: '../nostro_assets/php/eventGenerator.php',
                data: {'messageType':'examPrenotation' , 'value':$(this).attr('id')},
                type: 'post',
                success: function(output) {
                    alert(output);
                }
            });
        };

        for (var i = 0; i < classname.length; i++) {
            classname[i].addEventListener('click', action, false);
        }
    });

});