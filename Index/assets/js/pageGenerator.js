
$(function () {
    var title = "test";
    var numberID = 173;
    var cfu = 6;
    var dateStart = "0";
    var examUrl = "index.html";
    $.get("../assets/php/pageRequest/examResult.php", function(data) {
        var obj = JSON.parse(data);
        for(var i = 0; i < obj.exam.length; i++){
            numberID = obj.exam[i].numberID;
            title = obj.exam[i].title;
            cfu = obj.exam[i].cfu;
            dateStart = obj.exam[i].year_;
            var exam = "<div class=\"panel panel-default\"> <div class=\"panel-heading\"> <h4 class=\"panel-title\"> <a data-toggle=\"collapse\" href=" + examUrl + ">" + title + "</a> </h4> <div class= \" panel-collapse collapse in\"> <div id=\"" + numberID + "\" class=\"panel-body\"></div></div></div></div>";
            var div = document.getElementById('container');
            div.insertAdjacentHTML( 'afterbegin', exam);
        }
    });

    var testID;
    var dateStart = "";
    var dateClose = "";
    var classroom = "213584";
    var examID = "";
    var time = "";
    var teacherFirstName = "";
    var teacherLastName = "";

    $.get("../assets/php/pageRequest/testResult.php", function(data) {
        var obj = JSON.parse(data);
        for(var i = 0; i < obj.test.length; i++){
            numberID = obj.test[i].numberID;
            dateStart = obj.test[i].dateStart;
            dateClose = obj.test[i].dateFinish;
            classroom = obj.test[i].classroom;
            examID = obj.test[i].exam___fk;
            time = obj.test[i].time;
            teacherFirstName = obj.test[i].firstName;
            teacherLastName = obj.test[i].lastName;
            var test = "<button type=\"button\" class=\"button hidden-xs prenota\" id='#" + numberID + "'>Prenota</button> <p style='text-align: left;'>" + teacherFirstName + " " + teacherLastName + "       " + classroom + "<br/>" + dateStart + "             " + time + "</p> <button type=\"button\" class=\"button fit hidden-sm hidden-md hidden-lg prenota\" id='#" + numberID + "'>Prenota</button>";
            var div = document.getElementById(examID);
            div.insertAdjacentHTML('afterbegin', test);
        }

        var classname = document.getElementsByClassName("prenota");

        var action = function() {
            $.ajax({ url: '../assets/php/eventGenerator.php',
                data: {'messageType':'test' , 'value':$(this).attr('id')},
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