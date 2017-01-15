
$(function () {
    var title = "";
    var numberID = 0;
    var cfu = 0;
    var dateStart;
    var examUrl;
    var testID = 0;
    var dateClose;
    var classroom;
    var examID = 0;
    var time;
    var teacherFirstName;
    var teacherLastName;
    var prenotation = 0;
    var vote = 0;
    var average = 0;
    var graduateVote = 0;
    var personalCfu = 0;
    var student___fk = 0;

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
                "               <h4 class=\"panel-title\"> " +
                "                   <a data-toggle=\"collapse\" " + "    href=#collapse" + numberID + ">" + title + "" +
                "                   </a> " +
                "               </h4> " +
                "               <div id=\"collapse" + numberID + "\" class= \"panel-collapse collapse\"> " +
                "                   <div id=\"" + numberID + "\" class=\"panel-body\">" +
                "                   </div>" +
                "               </div>" +
                "           </div>" +
                "       </div>";
            if(vote > 0) {
                div = document.getElementById('verbalized');
            } else if (prenotation == 0) {
                div = document.getElementById('restanti');
            } else div = document.getElementById('prenotati');
            div.insertAdjacentHTML( 'afterbegin', exam);
        }
    });

    $.get("../nostro_assets/php/pageRequest/testResult.php", function(data) {
        var obj = JSON.parse(data);
        for(var i = 0; i < obj.test.length; i++){
            student___fk = obj.test[i].student___fk;
            numberID = obj.test[i].testID;
            testID = obj.test[i].testID;
            dateStart = obj.test[i].dateStart;
            dateClose = obj.test[i].dateFinish;
            classroom = obj.test[i].classroom;
            cfu = parseInt(obj.test[i].cfu);
            examID = obj.test[i].exam___fk;
            time = obj.test[i].time;
            vote = parseInt(obj.test[i].vote);
            prenotation = obj.test[i].prenotation;
            teacherFirstName = obj.test[i].firstName;
            teacherLastName = obj.test[i].lastName;
            if(vote > 0) {
                var test = "<p style='float: left'>" + teacherFirstName + " " + teacherLastName + "</p><p style='float: right; font-size: 23px'>" + vote + "</p>";
                personalCfu = personalCfu + cfu;
                average += vote*cfu;
            } else if (prenotation == 0) {
                var test = "</div><button type=\"button\" class='button prenotaButton hidden-xs' id='" + numberID + "'>Prenota</button>" +
                            " <p style='text-align: left;'>" + teacherFirstName + " " + teacherLastName + "       " + classroom  +
                            "<br/>" + dateStart + "             " + time + "</p> " +
                            "<button type=\"button\" class='button prenotaButton fit hidden-sm hidden-md hidden-lg' id='" + numberID + "'>Prenota</button>";
            } else {
                var test = "<button type=\"button\" class=\"button hidden-xs ritiraButton\" id='" + numberID + "'>Ritira</button> <p style='text-align: left;'>" + teacherFirstName + " " + teacherLastName + "       " + classroom + "<br/>" + dateStart + "             " + time + "</p> <button type=\"button\" class=\"button fit hidden-sm hidden-md hidden-lg ritiraButton\" id='" + numberID + "'>Ritira</button>";
            }
            var div = document.getElementById(examID);
            div.insertAdjacentHTML('beforeend', test);
        }

        average = average/personalCfu;
        graduateVote = average * 110 / 30;
        graduateVote = graduateVote.toFixed(2);
        average = average.toFixed(2);

        var percentage = 100/120 * personalCfu;
        $('#graduated').attr('data-percent', percentage);
            $('#graduated').percentcircle({
                animate : true,
                diameter :$('#graduated').height(),
                guage: 3,
                coverBg: '#fff',
                bgColor: '#efefef',
                fillColor: '#990004',
                percentSize: '18px',
                percentWeight: 'normal'
            });
        var info = "<span style='text-align: center; padding-top: 13%'>Media</span><br/>"
                    +"<span style='text-align: center; font-size: 23px; font-family: bold; color: #6b0808'>" + average + "</span><br/>"
                    +"<span style='text-align: center;'>Voto di Laurea</span><br/>"
                    +"<p style='text-align: center; font-size: 37px; font-family: bold; color: #6b0808'>" + graduateVote + "</p>";
        var div1 = document.getElementById("infoVote");
        div1.insertAdjacentHTML('afterbegin', info);

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
            alert("test \n\n"+output);
            // location.reload();
            }
        });
    };

    var actionRET = function() {
        var test___ID = $(this).attr('id');
        $.ajax({ url: '../nostro_assets/php/examRet.php',
            data: {'numberID': student___fk + test___ID},
            type: 'post',
            success: function(output) {
            }
        });
        $.ajax({ url: '../nostro_assets/php/eventGenerator.php',
            data: {'numberID': student___fk + test___ID , 'messageType': 'examRet'},
            type: 'post',
            success: function(out) {
                alert("socmel \n\n" + out);
              //  location.reload();
            }
        });
    };

        var classname = document.getElementsByClassName("prenotaButton");

        for (var i = 0; i < classname.length; i++) {
            classname[i].addEventListener('click', actionADD, false);
        }


        var classname = document.getElementsByClassName("ritiraButton");

        for (var i = 0; i < classname.length; i++) {
            classname[i].addEventListener('click', actionRET, false);
        }
    });
});
