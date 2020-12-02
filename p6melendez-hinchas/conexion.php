<?php
	
	$mysqli = new mysqli('localhost', 'root', '', 'hinchas');
	
	if($mysqli->connect_error){
		
		die('Error en la conexion' . $mysqli->connect_error);
		
	}
?>