<?php
	require 'conexion.php';
	
	$id = $_GET['id'];
	
	$sql = "SELECT * FROM equipo WHERE Nom_seleccion = '$id'";
	$resultado = $mysqli->query($sql);
	$row = $resultado->fetch_array(MYSQLI_ASSOC);
	
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
				<h3 style="text-align:center">MODIFICAR REGISTRO</h3>
			</div>
			
			<form class="form-horizontal" method="POST" action="update.php" autocomplete="off">
				
				<input type="hidden" id="id" name="id" value="<?php echo $row['Nom_seleccion']; ?>" />
				
				<div class="form-group">
					<label for="nomDT" class="col-sm-2 control-label">Nombre del director tecnico</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="nomDT" name="nomDT" placeholder="Director tecnico" value="<?php echo $row['Nombre_del_DT']; ?>"  required>
					</div>
				</div>
				
				<div class="form-group">
					<label for="entrenamiento" class="col-sm-2 control-label">Lugar de entrenamiento</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="entrenamiento" name="entrenamiento" placeholder="Lugar entrenamiento" value="<?php echo $row['Lugar_entrenamiento']; ?>" >
					</div>
				</div>

				<div class="form-group">
					<label for="jugadores" class="col-sm-2 control-label">Jugadores</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="jugadores" name="jugadores" placeholder="jugadores" value="<?php echo $row['Jugadores']; ?>" >
					</div>
				</div>

				<div class="form-group">
					<label for="cuerpoT" class="col-sm-2 control-label">Cuerpo Tecnico</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="cuerpoT" name="cuerpoT" placeholder="Cuerpo tecnico" value="<?php echo $row['Cuerpo_tecnico']; ?>" >
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<a href="index.php" class="btn btn-default">Regresar</a>
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>