<!DOCTYPE HTML>
<!--
Phantom by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
	<title>Esami - UniBo</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/magic.css" />

	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

	<script src="logoSwap.js"></script>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

	<script type="text/javascript" src="calendario.js"></script>

	<script src="canvasjs.min.js"></script>
</head>

<body>
	<!-- Wrapper -->
	<div id="wrapper">

		<?php require ("header.html");
			  require ("navigation.html"); ?>

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<h1>Esami</h1>

				<!-- Section Tab -->
				<div class="container">
					<ul class="nav nav-pills red">
						<li class="active"><a class"nemesis" data-toggle="pill" href="#restanti">Restanti</a></li>
						<li><a class="nemesis" data-toggle="pill" href="#prenotati">Prenotati</a></li>
						<li><a class="nemesis" data-toggle="pill" href="#verbalizzati">Verbalizzati</a></li>
					</ul>


					<div class="tab-content">
						<div id="restanti" class="tab-pane fade in active">
							<!--inizio-->
							<div class="container">
							    <div class="panel panel-default">
							      <div class="panel-heading">
							        <h4 class="panel-title">
							          <a data-toggle="collapse" href="#TecnologieWeb">Tecnologie Web</a>
							        </h4>
							      </div>
							      <div id="TecnologieWeb" class="panel-collapse collapse in">
							        <div class="panel-body">

										<!-- >>>>>>>>>>>>>>>>>>>>>>>>> da finire di sistemare -->
										<p>Prima prova scritta: <br/>giorno: 12/11/2020
											<button type="button" class="button hidden-xs">Prenota</button>
											<button type="button" class="button fit hidden-sm hidden-md hidden-lg">Prenota</button>
										<br/> ore: 18:34 aula A</p>

										<p>Prima prova orale: <br/>giorno: 12/11/2020
											<button type="button" class="button disabled hidden-xs">Prenota</button>
											<button type="button" class="button fit hidden-sm disabled hidden-md hidden-lg">Prenota</button>
										<br/> ore: 18:34 aula A</p>
										<p>Prima prova antonio: <br/>giorno: 12/11/2020
											<button type="button" class="button disabled hidden-xs">Prenota</button>
											<button type="button" class="button fit hidden-sm disabled hidden-md hidden-lg">Prenota</button>
										<br/> ore: 18:34 aula A</p>
<!-- dare un'occhiata a questa fighissima pagina: http://www.w3schools.com/bootstrap/bootstrap_ref_css_helpers.asp
le classi visible sono deprecate...
ci sono pull-right e pull-left-->
										<button type="button" class="button special hidden-xs">Esempio button Special</button>
									</div>
							      </div>
							    </div>

									<div class="panel panel-default">
							      <div class="panel-heading">
							        <h4 class="panel-title">
							          <a data-toggle="collapse" href="#IngegeriaSW">Ingegneria del SW</a>
							        </h4>
							      </div>
							      <div id="IngegeriaSW" class="panel-collapse collapse in">
							        <div class="panel-body">
												<p>Prima prova scritta: <br/>giorno: 12/11/2020 <button type="button" class="button">Prenota</button> <br/> ore: 18:34 aula A</p>
												<p>Prima prova orale: <br/>giorno: 12/11/2020 <button type="button" class="button">Prenota</button> <br/> ore: 18:34 aula A</p>
												<p>Prima prova antonio: <br/>giorno: 12/11/2020 <button type="button" class="button">Prenota</button> <br/> ore: 18:34 aula A</p>
											</div>
							      </div>
							    </div>

									<div class="panel panel-default">
							      <div class="panel-heading">
							        <h4 class="panel-title">
							          <a data-toggle="collapse" href="#SistemiEmbedded">Sistemi Embedded</a>
							        </h4>
							      </div>
							      <div id="SistemiEmbedded" class="panel-collapse collapse in">
							        <div class="panel-body">
												<p>Prima prova scritta: <br/>giorno: 12/11/2020 <button type="button" class="button">Prenota</button> <br/> ore: 18:34 aula A</p>
												<p>Prima prova orale: <br/>giorno: 12/11/2020 <button type="button" class="button">Prenota</button> <br/> ore: 18:34 aula A</p>
												<p>Prima prova antonio: <br/>giorno: 12/11/2020 <button type="button" class="button">Prenota</button> <br/> ore: 18:34 aula A</p>
											</div>
							      </div>
							    </div>
							</div>


							<!--fine-->
						</div>

						<div id="prenotati" class="tab-pane fade">
							<!-- <h3>Prenotati</h3> -->
							<div>
								<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
							<div >
								<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
							<div>
								<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
						</div>

						<div id="verbalizzati" class="tab-pane fade">

							<div id="chartContainer" style="height: 400px; width: 100%;"></div>
							<!-- <h3>Verbalizzati</h3>  -->
							<div>
								<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
							<div>
								<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
							<div>
								<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
						</div>

					</div>
				</div>
				<!-- End of Section Tab -->

			</div>
		</div>

		<?php require ("footer.html"); ?>

	</div>
</body>

</html>
