/*
function swapSize() {
    if ($(window).width() > 601) {
        $("#variableView").css("margin-top:""-10%");
    } else {
        $("#variableView").css("margin-top:""-30%;");
    }
}
*/
$(document).ready(function(){

/*  swapSize();
  $(window).resize(function() {
      swapSize();
  });
*/
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


});
