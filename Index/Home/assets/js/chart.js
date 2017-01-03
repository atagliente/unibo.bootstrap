var larghezza;
var altezza;

google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        ['Work',     11],
        ['Eat',      2],
        ['Commute',  2],
        ['Watch TV', 2],
        ['Sleep',    7]
    ]);

    var options = {
        title: 'Progresso della tua carriera',
        width: larghezza,
        height: altezza,
        chartArea:{width:'50%',height:'75%'},
        legend:{position: 'right', textStyle: {color: 'black', fontSize: 16}}
    };

    var chart = new google.visualization.PieChart(document.getElementById('chart'));
    chart.draw(data, options);
}

// Creare uno script come in logoSwap.js non serve perchè il grafico è già resizable quando si refresha la pagina
// A caso fuori dal div tab-content fa il resize in automatico quando refreshi la pagina, invece dentro verbalizzati no...

function resizeChart() {
    if ($(window).width() > 601) {
        larghezza = 1000;
        altezza = 400;
    } else {
        larghezza = 280;
        altezza = 280;
    }
}

$(document).ready(function() {
    resizeChart();
    $(window).resize(function() {
        resizeChart();
    });
});
