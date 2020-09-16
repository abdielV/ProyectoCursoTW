<html>
<head>
	<meta name="author" content="Abdiel Vitalini, Brayan Benitez y Joel Garcia"/>
	<meta charset="UTF-8"/>
	<meta http-equiv=”Content-Language” content=”es”/>
	<link href="estilos.css" rel="stylesheet" type="text/css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>Proyecto</title>
</head>
<body>
<div id="cabecera">
	<nav>
		<ul>
			<li><a><span id="titulo">Proyecto</span></a></li>
			<li><a href="index.php">Inicio</a></li>
			<li><a href="acerca.php">Acerca de</a></li>
		</ul>
	</nav>
	<div id="login">
		<?php
			session_start();
			
			#incio sesion temporal
			#---------------------------
			$_SESSION['loged'] = true;
			$_SESSION['userName'] = "José";
			#---------------------------
			
			if (!isset($_SESSION['loged'])) {
				echo "<div class='navButton'><a href='join.php'>Únete</a></div>";
				echo "<div class='navButton'><a href='login.php'>Iniciar Sesión</a></div>";
			} else {
				echo "<div id='bienvenida'>Bienvenido <span id='userName'>" . $_SESSION['userName'] . "</span></div>";
			}
		?>
	</div>
</div>
<div id="cuerpo">
	<h1 align="center">Bienvenido</h1>
</div>
</body>
</html>