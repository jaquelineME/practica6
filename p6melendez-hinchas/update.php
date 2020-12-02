<?php
	
	require 'conexion.php';

	$id = $_POST['id'];
	$nomD1 = $_POST['nomDT'];
	$lugent1 = $_POST['entrenamiento'];
	$nomJ1 = $_POST['jugadores'];
	$cuerT1 = $_POST['cuerpoT'];
	
	$sql = "UPDATE equipo SET Nombre_del_DT='$nomD1', Lugar_entrenamiento='$lugent1', Jugadores='$nomJ1', Cuerpo_tecnico='$cuerT1' WHERE Nom_seleccion = '$id'";
	$resultado = $mysqli->query($sql);
	
?>

<html lang="es">
	<head>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-theme.css" rel="stylesheet">
		<script src="js/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>	
	</head>
	
	<body>
		<div class="container">
			<div class="row">
				<div class="row" style="text-align:center">
				<?php if($resultado) { ?>
				<h3>REGISTRO MODIFICADO</h3>
				<?php } else { ?>
				<h3>ERROR AL MODIFICAR</h3>
				<?php } ?>
				
				<a href="index.php" class="btn btn-primary">Regresar</a>
				
				</div>
			</div>
		</div>
	</body>
</html>
