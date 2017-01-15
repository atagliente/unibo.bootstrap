$(function(){
  $.get("../nostro_assets/php/getTaxDeadline.php", function(data) {
      var obj = JSON.parse(data);
      var description;
      for (var i = 0; i < obj.deadline.length; i++) {
        description = obj.deadline[i].descrizione;
        deadline = obj.deadline[i].dateClose;
        if(description == "Rata 1"){

        }
        if(description == "Monorata"){

        }
      }
  });
});
