window.addEventListener('load', function() {
  
      $.get("../assets/php/esami.php", function(data) {
      //  alert(data);
        //var obj = JSON.parse(data);

        alert(JSON.parse(data));

        //  var array = data[0][0];
        //  alert(array);
/*
          var json = JSON.parse(data);
          alert(json); */
      });
})
