$(function() {
    $.get("../assets/php/loadCareer.php", function(data) {
        var obj = JSON.parse(data);
        var progress_bar_id;
        var annual_cfu = 0;
        var annual_progress = 0;
        var total_cfu = 0;
        var total_progress = 0;

        for (var year = 1; year <= 3; year++) {
            for (var i = 0; i < obj.cfu_verbalizzati.length; i = i + 1) {
                if (year == parseInt(obj.cfu_verbalizzati[i].year)) {
                    annual_cfu += parseInt(obj.cfu_verbalizzati[i].cfu);
                }
            }
            total_cfu += annual_cfu;

            if (year == 1) {
                progress_bar_id = '#primo_anno';
            } else if (year == 2) {
                progress_bar_id = '#secondo_anno';
            } else if (year == 3) {
                progress_bar_id = '#terzo_anno';
            }

            annual_progress = annual_cfu * 100 / 60;
            $(progress_bar_id).attr("aria-valuenow", annual_cfu);
            $(progress_bar_id).css("width", annual_progress + "%");
            $(progress_bar_id).html(annual_cfu + "/60 cfu");

            annual_cfu = 0;
        }

        total_progress = total_cfu * 100 / 180;
        $('#totale_cfu').attr("aria-valuenow", total_cfu);
        $('#totale_cfu').css("width", total_progress + "%");
        $('#totale_cfu').html(total_cfu + "/180 cfu");
    });
});
