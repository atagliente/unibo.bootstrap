<!DOCTYPE HTML>
<!--
Phantom by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<html>
<head>
	<title>UniBo</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/magic.css" />
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>
	<?php require('../assets/php/test.php'); ?>
	<!-- Wrapper -->
	<div id="wrapper">

		<?php require ("header.html");
		require ("navigation.html"); ?>

		<!-- Calendario -->
		<object id="calendario" data ="calendario/index.html"></object>

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<section class="tiles">
					<article class="style1">
						<span class="image">
							<img src="images/biblio.png" alt="" />
						</span>
						<a href="generic.html">
							<h2 class="title">Esami</h2>
							<div class="content">
								<p>Prenotazioni - Prenotati - Svolti</p>
							</div>
						</a>
					</article>
					<article class="style1">
						<span class="image">
							<img src="images/insegnamenti.png" alt="" />
						</span>
						<a href="generic.html">
							<h2 class="title">Insegnamenti</h2>
							<div class="content">
								<p>Materiale didattico</p>
							</div>
						</a>
					</article>
					<article class="style1">
						<span class="image">
							<img src="images/tax.png" alt="" />
						</span>
						<a href="generic.html">
							<h2 class="title">Tasse</h2>
							<div class="content">
								<p>Da pagare - Pagate</p>
							</div>
						</a>
					</article>
					<article class="style1">
						<span class="image">
							<img src="images/bonbon.png" alt="" />
						</span>
						<a href="generic.html">
							<h2 class="title">Mensa</h2>
							<div class="content">
								<p>Mangia nei locali convenzionati</p>
							</div>
						</a>
					</article>
					<article class="style1">
						<span class="image">
							<img src="images/bike.png" alt="" />
						</span>
						<a href="generic.html">
							<h2 class="title">Bike-Sharing</h2>
							<div class="content">
								<p>Pedala con noi</p>
							</div>
						</a>
					</article>
					<article class="style1">
						<span class="image">
							<img src="images/mail.png" alt="" />
						</span>
						<a href="generic.html">
							<h2 class="title">Mail</h2>
							<div class="content">
								<p>Mail istituzionale</p>
							</div>
						</a>
					</article>
				</section>
			</div>
		</div>


		<?php require ("footer.html"); ?>
		

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>
