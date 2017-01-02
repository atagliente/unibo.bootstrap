/**
 * Created by janus on 30.12.16.
 */


$(document).ready(function () {

    $.getScript("../../../assets/js/loadEsami.js", function(){
        alert("Script loaded but not necessarily executed.");
    });

    var obj = '{' +
            '"title": $title,'
            '"start": $start,'
            '"end": $end'
        +'}'
})
