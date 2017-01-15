
$(document).ready(function(){


  $("#mappa").hide();
  $("#panini").hide();


    $("#mostra").click(function(){
      if($("#mappa").is(":visible") ){
        $("#mappa").hide();
      }
      else{
        $("#mappa").show();
        $("#panini").hide();
      }
    });



    $("#mostraMenu").click(function(){
      if($("#panini").is(":visible") ){
          $("#panini").hide();
      }
      else{
        $("#panini").show();
        $("#mappa").hide();
      }
    });


/*----------------*/

$("#mappa2").hide();
$("#panini2").hide();


  $(".mostra2").click(function(){
    if($("#mappa2").is(":visible") ){
        $("#mappa2").hide();
    }
    else{
      $("#mappa2").show();
        $("#panini2").hide();
    }
  });



  $("#mostraMenu2").click(function(){
    if($("#panini2").is(":visible") ){
        $("#panini2").hide();
    }
    else{
      $("#panini2").show();
      $("#mappa2").hide();
    }
  });



  /*----------------*/

  $("#mappa3").hide();
  $("#panini3").hide();


    $(".mostra3").click(function(){
      if($("#mappa3").is(":visible") ){
          $("#mappa3").hide();
      }
      else{
          $("#mappa3").show();
          $("#panini3").hide();
      }
    });



    $("#mostraMenu3").click(function(){
      if($("#panini3").is(":visible") ){
          $("#panini3").hide();
      }
      else{
        $("#panini3").show();
        $("#mappa3").hide();
      }
    });

    /*----------------*/

    $("#mappa4").hide();
    $("#panini4").hide();


      $(".mostra4").click(function(){
        if($("#mappa4").is(":visible") ){
            $("#mappa4").hide();
        }
        else{
            $("#mappa4").show();
            $("#panini4").hide();
        }
      });



      $("#mostraMenu4").click(function(){
        if($("#panini4").is(":visible") ){
            $("#panini4").hide();
        }
        else{
          $("#panini4").show();
          $("#mappa4").hide();
        }
      });


});
