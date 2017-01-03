$(document).ready(function() {

    var cfu_primo_anno = 60;
    var progress_primo_anno = cfu_primo_anno*100/60;
    $('#primo_anno').attr("aria-valuenow", cfu_primo_anno);
    $('#primo_anno').css("width", progress_primo_anno+"%");
    $('#primo_anno').html(cfu_primo_anno+"/60 cfu");

    var cfu_secondo_anno = 45;
    var progress_secondo_anno = cfu_secondo_anno*100/60;
    $('#secondo_anno').attr("aria-valuenow", cfu_secondo_anno);
    $('#secondo_anno').css("width", progress_secondo_anno+"%");
    $('#secondo_anno').html(cfu_secondo_anno+"/60 cfu");

    var cfu_terzo_anno = 10;
    var progress_terzo_anno = cfu_terzo_anno*100/60;
    $('#terzo_anno').attr("aria-valuenow", cfu_terzo_anno);
    $('#terzo_anno').css("width", progress_terzo_anno+"%");
    $('#terzo_anno').html(cfu_terzo_anno+"/60 cfu");

    var cfu_totali = cfu_primo_anno + cfu_secondo_anno + cfu_terzo_anno;
    var progress_totale = cfu_totali*100/180;
    $('#totale_cfu').attr("aria-valuenow", cfu_totali);
    $('#totale_cfu').css("width", progress_totale+"%");
    $('#totale_cfu').html(cfu_totali+"/180 cfu");

});
