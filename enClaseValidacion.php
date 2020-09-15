<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8"/>
	<style>
		.error {
			color: #FF0000;
		}
	</style>
</head>
<body>

<?php
	// define variables and set to empty values
	$tituloErr = $descripcionErr = $fechaErr = $tipoMaterialErr = $nivelErr = "";
	$titulo = $descripcion = $fecha = $tipoMaterial = $nivel = "";
	
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		if (empty($_POST["titulo"])) {
			$tituloErr = "Título is required";
		} else {
			$titulo = test_input($_POST["titulo"]);
		}
		
		if (empty($_POST["descripcion"])) {
			$descripcionErr = "Descripcion is required";
		} else {
			$descripcion = test_input($_POST["descripcion"]);
		}
		
		if (empty($_POST["fecha"])) {
			$fechaErr = "Fecha  is required";
		} else {
			$fecha = test_input($_POST["fecha"]);
		}
		
		if (empty($_POST["tipoMaterial"])) {
			$tipoMaterialErr = "Tipo de Material is required";
		} else {
			$tipoMaterial = test_input($_POST["tipoMaterial"]);
		}
		
		if (empty($_POST["nivel"])) {
			$nivelErr = "Nivel is required";
		} else {
			$nivel = test_input($_POST["nivel"]);
		}
	}
	
	function test_input($data)
	{
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}

?>

<h2>Material</h2>
<p><span class="error">* required field</span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
	TÍtulo: <input type="text" name="titulo">
	<span class="error">* <?php echo $tituloErr; ?></span>
	<br><br>
	Descripción: <textarea name="descripcion" rows="5" cols="40"></textarea>
	<span class="error">* <?php echo $descripcionErr; ?></span>
	<br><br>
	Fecha de Entrega: <input type="date" name="fecha">
	<span class="error">* <?php echo $fechaErr; ?></span>
	<br><br>
	
	Tipo de Material: <select name="tipoMaterial">
		<option>Diapositivas</option>
		<option>Video</option>
		<option>Ejercicio</option>
		<option>Ejercicio de Ejemplo</option>
		<option>Imagen Ilustrativa</option>
		<option>Tarea</option>
	</select>
	<span class="error">* <?php echo $tipoMaterialErr; ?></span>
	<br><br>
	
	Nivel de Material:<input type="range" name="nivel" min="1" max="3" step="1"/>
	<span class="error">* <?php echo $nivelErr; ?></span>
	<br><br>
	
	<input type="submit" name="submit" value="Submit">
</form>

<?php
	echo "<h2>Your Input:</h2>";
	echo $titulo;
	echo "<br>";
	echo $descripcion;
	echo "<br>";
	echo $fecha;
	echo "<br>";
	echo $tipoMaterial;
	echo "<br>";
	echo $nivel;
?>

</body>
</html>