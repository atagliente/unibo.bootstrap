
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
    var lastTypology;

    $.get("../nostro_assets/php/pageRequest/teachingsResult.php", function(data) {
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

            titleID = title.replace(/\s+/g, '');  // utile come id nell'html

            if (lastTeachingID != teachingID) {  // nuovo insegnamento
                lastTeachingID = teachingID;
                firstRow = true;

                if(year == 1) {
                    var div = $("#primo_anno_container");
                } else if (year == 2) {
                    var div = $("#secondo_anno_container");
                } else if (year == 3) {
                    var div = $("#terzo_anno_container");
                }
                var teaching = '<div class="panel panel-default"><div class="panel-heading"><h2 class="panel-title"><a data-toggle="collapse" href="#' + titleID + '">' + title + '</a></h2></div><div id="' + titleID + '" class="panel-collapse collapse"><div class="panel-body"><div class="row"><div class="docente"> <h3>Docente</h3> <p>' + firstName + " " +lastName + '</p> </div><div class="cfu"> <h3>CFU</h3> <p>' + cfu + '</p> </div></div></div></div>';
                $(teaching).insertAfter(div)

            }

            // aggiungo il materiale dentro all'insegnamento
            if (firstRow) {
                firstRow = false;

                var elenco = '<div class="materiale"><h3>Materiale Didattico</h3></div>';
                $( elenco ).insertAfter( "#"+titleID+" .panel-body .row" );

            }

            // aggiungo gli header "teoria/laboratorio/seminari" ecc
            if (lastTypology != typology) {
                lastTypology = typology;

                var typ = '<h4>' + typology + '</h4><ul><div class="serve"></div></ul>';
                $( typ ).insertAfter( "#"+titleID+" .panel-body .row +.materiale h3" );
            }
            var row = '<li class="my_li">' + teachingTitle + '<a class="link_materiale" href="' + url +'"><button type="button" class="button hidden-xs">download</button><button type="button" class="button fit hidden-sm hidden-md hidden-lg">download</button></a></li>';
            $( row ).insertAfter( "#"+titleID+" .panel-body .row +.materiale h3 +h4 +ul .serve" );

        }
    });
});
