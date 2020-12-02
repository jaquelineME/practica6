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
				<h3 style="text-align:center">NUEVO REGISTRO</h3>
			</div>
			
			<form class="form-horizontal" method="POST" action="guardar.php" autocomplete="off">
				<div class="form-group">
					<label for="nomselec" class="col-sm-2 control-label">Nombre de la seleccion</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="nomselec" name="nomselec" placeholder="Seleccion" required>
					</div>
				</div>
				
				<div class="form-group">
					<label for="nomDT" class="col-sm-2 control-label">Nombre del Director tecnico</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="nomDT" name="nomDT" placeholder="Director tecnico" required>
					</div>
				</div>
				
				<div class="form-group">
					<label for="entrenamiento" class="col-sm-2 control-label">lugar de entrenamiento</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="entrenamiento" name="entrenamiento" placeholder="Lugar entrenamiento">
					</div>
				</div>

				<div class="form-group">
					<label for="jugadores" class="col-sm-2 control-label">Nombre de jugadores</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="jugadores" name="jugadores" placeholder="Jugadores">
					</div>
				</div>

				<div class="form-group">
					<label for="cuerpoT" class="col-sm-2 control-label">Nombre del cuerpo tecnico</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="cuerpoT" name="cuerpoT" placeholder="Cuerpo tecnico">
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