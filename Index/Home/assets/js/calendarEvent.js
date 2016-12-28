/**
 * Created by Antonio Tagliente on 28.12.16.
 */

(function($) {
    $( "#calendar" ).load( "../../../Calendar/demos/default.html", function( response, status, xhr ) {
        if ( status == "error" ) {
            var msg = "Sorry but there was an error: ";
            alert( msg + xhr.status + " " + xhr.statusText );
        } else alert("dio");
    });
});