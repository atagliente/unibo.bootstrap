
$(function () {
    var teachingID;
    var firstName;
    var lastName;
    var title;
    var cfu;
    var year;
    var typology;
    var teachingTitle;
    var url;

    var titleID;
    var lastTeachingID;
    var firstRow = false;

    $.get("../nostro_assets/php/pageRequest/teachingsResult.php", function(data) {
        // alert(data);
        // console.log(data);
        var obj = JSON.parse(data);
        for (var i = 0; i < obj.teachings.length; i++) {
            teachingID = obj.teachings[i].numberID;
            firstName = obj.teachings[i].firstName;
            lastName = obj.teachings[i].lastName;
            title = obj.teachings[i].title;
            cfu = obj.teachings[i].cfu;
            year = obj.teachings[i].year;
            typology = obj.teachings[i].typology;
            teachingTitle = obj.teachings[i].teachingTitle;
            url = obj.teachings[i].url;

            titleID = title.replace(/\s+/g, '');

            // var string =
            // "teachingID: " + teachingID + " | " +
            // " firstName: " + firstName + " | " +
            // " lastName: " + lastName + " | " +
            // " title: " + title + " | " +
            // " cfu: " + cfu + " | " +
            // " year: " + year + " | " +
            // " typology: " + typology + " | " +
            // " teachingTitle: " + teachingTitle + " | " +
            // " url: " + url +
            // "<br/>";
            //
            // var div = document.getElementById('terzo_anno_container');
            // div.insertAdjacentHTML('afterbegin', string);

            if (lastTeachingID != teachingID) {  // nuovo insegnamento
                lastTeachingID = teachingID;
                firstRow = true;
                var teaching = '<div class="panel panel-default"><div class="panel-heading"><h2 class="panel-title"><a data-toggle="collapse" href="#' + titleID + '">' + title + '</a></h2></div><div id="' + titleID + '" class="panel-collapse collapse in"><div class="panel-body"><div class="row"><div class="docente"> <h3>Docente</h3> <p>' + firstName + " " +lastName + '</p> </div><div class="cfu"> <h3>CFU</h3> <p>' + cfu + '</p> </div></div></div></div>';

                if(year == 1) {
                    // var div = document.getElementById('primo_anno_container');
                    var div = $("#primo_anno_container");
                } else if (year == 2) {
                    // var div = document.getElementById('secondo_anno_container');
                    var div = $("#secondo_anno_container");
                } else if (year == 3) {
                    // var div = document.getElementById('terzo_anno_container');
                    var div = $("#terzo_anno_container");
                }
                // div.insertAdjacentHTML('afterbegin', teaching);
                $(teaching).insertAfter(div)

            }
            // aggiungo il materiale dentro all'insegnamento

            if (firstRow) {
                firstRow = false;
                var elenco = '<div class="materiale"><h3 class="my_h3">Materiale Didattico</h3><ul><div class="serve"></div></ul></div>';
                $( elenco ).insertAfter( "#"+titleID+" .panel-body .row" );
            }
            var row = '<li class="my_li">' + teachingTitle + '<a class="link_materiale" href="' + url +'"><button type="button" class="button hidden-xs">download</button><button type="button" class="button fit hidden-sm hidden-md hidden-lg">download</button></a></li>';
            $( row ).insertAfter( "#"+titleID+" .panel-body .row +.materiale h3 +ul .serve" );

        }
    });
});
