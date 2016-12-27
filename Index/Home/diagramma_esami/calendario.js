window.onload = function () {
  var chart = new CanvasJS.Chart("chartContainer", {
    title: {
      text: "Progresso studi"
    },
    exportFileName: "CanvasJS Chart",
    exportEnabled: true,
    animationEnabled: true,
    legend: {
      verticalAlign: "bottom",
      horizontalAlign: "center"
    },
    data: [
    {
      type: "pie",
      showInLegend: true,
      toolTipContent: "{legendText}: <strong>{y}%</strong>",
      indexLabel: "{label} {y}%",
      dataPoints: [
        { y: 20, legendText: "Completati", label: "Esami Primo Anno" },
        { y: 10, legendText: "Restanti", label: "Esami Primo Anno" },
        { y: 20, legendText: "Completati", label: "Esami Secondo Anno" },
        { y: 10, legendText: "Restanti", label: "Esami Secondo Anno" },
        { y: 10, legendText: "Completati", label: "Esami Terzo Anno" },
        { y: 30, legendText: "Restanti", label: "Esami Terzo Anno" }
      ]
    }
    ]
  });
  chart.render();
}
