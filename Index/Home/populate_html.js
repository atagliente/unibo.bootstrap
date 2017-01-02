/*
    1) devo popolare prima tutti gli esami (i tab chiusi)
    2) poi devo popolare tutti gli appelli per ogni esame sapendo l'id esame
    NOOOOOOOO
    Invece devo preparami la pagina e caricarla tutta in una botta! doppio for
*/

$(document).ready(function() {
    loop();
});

function loop() {
    var cars = ["Saab", "Volvo", "BMW"];

    for (i = 0; i < cars.length; i++) {
        appendExams(cars[i], cars[i], cars[i]);
    }
}

function appendExams(href, name, id) {

    // var full_panel = '<div class="panel panel-default"><div class="panel-heading"><h4 class="panel-title"><a data-toggle="collapse" href="#Urca">Urca</a></h4></div><div id="Urca" class="panel-collapse collapse in"><div class="panel-body"><p>Prima prova scritta: <br/>giorno: 12/11/2020<button type="button" class="button hidden-xs">Prenota</button><buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button><buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button><buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button><br/> ore: 18:34 aula A</p><p>Prima prova orale: <br/>giorno: 12/11/2020<button type="button" class="button disabled hidden-xs">Prenota</button><button type="button" class="button fit hidden-sm disabled hidden-md hidden-lg">Prenota</button><br/> ore: 18:34 aula A</p><p>Prima prova antonio: <br/>giorno: 12/11/2020<button type="button" class="button disabled hidden-xs">Prenota</button><button type="button" class="button fit hidden-sm disabled hidden-md hidden-lg">Prenota</button><br/> ore: 18:34 aula A</p><button type="button" class="button special hidden-xs">Esempio button Special</button></div></div></div>';

// >>>>>>>>>>>>>> quando ci sono gli appelli togliere l'ancora in modo che non ci si il link da cliccare

    var str1 = '<div class="panel panel-default"><div class="panel-heading"><h4 class="panel-title"><a data-toggle="collapse" href="#';
    var href = href;
    var str2 = '">';
    var name = name;
    var str3 = '</a></h4></div><div id="';
    var id = id;
    var str4 = '" class="panel-collapse collapse in">';
    var div_appelli_start = '<div class="panel-body">';
    var appelli = '<p>Prima prova scritta: <br/>giorno: 12/11/2020<button type="button" class="button hidden-xs">Prenota</button><buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button><buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button><buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button><br/> ore: 18:34 aula A</p>';
    var div_appelli_end = '</div>';
    var str5 = '</div></div>';

    // var panel_without_appelli = str1 + href + str2 + name + str3 + id + str4 + str5;
    var panel_with_appelli = str1 + href + str2 + name + str3 + id + div_appelli_start + appelli + div_appelli_end + str5;
    // var res = str1.concat(href, str2, name, str3, id, str4, str5, str5, str5, str6);

    // console.log(full_panel);
    // console.log(panel);
    // console.log(res);

// >>>>>>>>>>>>>>>>>>>>>>>>>> cavolo non so perchè ma non va piùùùùùùùùùùùùùù
    div = document.getElementById('container');
    // div.insertAdjacentHTML( 'afterbegin', panel_without_appelli );
    div.insertAdjacentHTML( 'afterbegin', panel_with_appelli );
}

/*
<!--inizio-->
<div class="container">

qui inizia l'insegnamento:

    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
          <a data-toggle="collapse" href="#TecnologieWeb">Tecnologie Web</a>
        </h4>
        </div>
        <div id="TecnologieWeb" class="panel-collapse collapse in">
            <div class="panel-body">
                <p>Prima prova scritta: <br/>giorno: 12/11/2020
                    <button type="button" class="button hidden-xs">Prenota</button>
                    <buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button>
                        <buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button>
                            <buttonbutton type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button>
                                <br/> ore: 18:34 aula A</p>

            </div>
        </div>
    </div>

*/
