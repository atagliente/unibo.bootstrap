
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
    var vote = 0;
    var average = 0;
    var graduateVote = 0;
    var personalCfu = 0;

    $.get("../nostro_assets/php/pageRequest/examResult.php", function(data) {
        var obj = JSON.parse(data);
        for(var i = 0; i < obj.exam.length; i++) {
            numberID = obj.exam[i].numberID;
            title = obj.exam[i].title;
            cfu = obj.exam[i].cfu;
            dateStart = obj.exam[i].year_;
            vote = obj.exam[i].vote;
            prenotation = obj.exam[i].prenotation;
            var div;
            var exam = "<div class=\"panel panel-default\"> " +
                "           <div class=\"panel-heading\"> " +
                "               <h2 class=\"panel-title\"> " +
                "                   <a data-toggle=\"collapse\" " + "    href=#" + numberID + ">" + title + "" +
                "                   </a> " +
                "               </h2> " +
                "            </div>" +
                "            <div id=\"" + numberID + "\" class= \" panel-collapse collapse in\"> " +
                "               <div class=\"panel-body\">" +
                "               </div>" +
                "            </div>" +
                "           " +
                "       </div>";
            if(vote > 0) {
                div = document.getElementById('verbalized');
            } else if (prenotation == 0) {
                div = document.getElementById('restanti');
            } else div = document.getElementById('prenotati').childNodes[0];
            div.insertAdjacentHTML( 'afterbegin', exam);
        }
    });

    $.get("../nostro_assets/php/pageRequest/testResult.php", function(data) {
        var obj = JSON.parse(data);
        for(var i = 0; i < obj.test.length; i++){
            numberID = obj.test[i].testID;
            testID = obj.test[i].testID;
            dateStart = obj.test[i].dateStart;
            dateClose = obj.test[i].dateFinish;
            classroom = obj.test[i].classroom;
            cfu = obj.test[i].cfu;
            examID = obj.test[i].exam___fk;
            time = obj.test[i].time;
            vote = obj.test[i].vote;
            prenotation = obj.test[i].prenotation;
            teacherFirstName = obj.test[i].firstName;
            teacherLastName = obj.test[i].lastName;
            if(vote > 0) {
                var test = "<p style='float: left'>" + teacherFirstName + " " + teacherLastName + "</p><p style='float: right; font-size: 23px'>" + vote + "</p>";
                personalCfu += cfu;
                average += vote*cfu;
                average /= personalCfu;
                graduateVote = average * 110 / 30;
                graduateVote = graduateVote.toFixed(2);
            } else if (prenotation == 0) {
                var test = "<button type=\"button\" class=\"button hidden-xs prenota\" id='" + numberID + "'>Prenota</button> <p style='text-align: left;'>" + teacherFirstName + " " + teacherLastName + "       " + classroom + "<br/>" + dateStart + "             " + time + "</p> <button type=\"button\" class=\"button fit hidden-sm hidden-md hidden-lg prenota\" id='" + numberID + "'>Prenota</button>";
            } else var test = "<button type=\"button\" class=\"button hidden-xs ritira\" id='" + testID + "'>Ritira</button> <p style='text-align: left;'>" + teacherFirstName + " " + teacherLastName + "       " + classroom + "<br/>" + dateStart + "             " + time + "</p> <button type=\"button\" class=\"button fit hidden-sm hidden-md hidden-lg ritira\" id='" + testID + "'>Ritira</button>";
            var div = document.getElementById(examID);
            div.insertAdjacentHTML('afterbegin', test);
        }
        $('#graduated').attr('data-percent', "75");
        var info = "<span style='text-align: center; padding-top: 13%'>Media</span><br/>"
                    +"<span style='text-align: center; font-size: 23px; font-family: bold; color: #6b0808'>"+average+"</span><br/>"
                    +"<span style='text-align: center;'>Voto di Laurea</span><br/>"
                    +"<p style='text-align: center; font-size: 37px; font-family: bold; color: #6b0808'>" + graduateVote + "</p>";
        var div1 = document.getElementById("infoVote");
        div1.insertAdjacentHTML('afterbegin', info);
    });

        var classname = document.getElementsByClassName("prenota");

        var actionADD = function() {
            var test___ID = $(this).attr('id');
            $.ajax({ url: '../nostro_assets/php/examPrenotation.php',
                data: {'numberID': test___ID},
                type: 'post',
                success: function(output) {
                }
            });
            $.ajax({ url: '../nostro_assets/php/eventGenerator.php',
                data: {'numberID': test___ID , 'messageType': "examPrenotation"},
                type: 'post',
                success: function(output) {
                    location.reload();
                }
            });
        };

        var actionRET = function() {
            var test___ID = $(this).attr('id');
            $.ajax({ url: '../nostro_assets/php/examRet.php',
                data: {'numberID': test___ID},
                type: 'post',
                success: function(output) {
                }
            });
            $.ajax({ url: '../nostro_assets/php/eventGenerator.php',
                data: {'test___ID': test___ID , 'messageType': 'examRet'},
                type: 'post',
                success: function(out) {
                    location.reload();
                }
            });
        };

        for (var i = 0; i < classname.length; i++) {
            classname[i].addEventListener('click', actionADD, false);
        }

        var classname = document.getElementsByClassName("ritira");

        for (var i = 0; i < classname.length; i++) {
            classname[i].addEventListener('click', actionRET, false);
        }

});
