-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para hinchas
CREATE DATABASE IF NOT EXISTS `hinchas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `hinchas`;

-- Volcando estructura para tabla hinchas.equipo
CREATE TABLE IF NOT EXISTS `equipo` (
  `Nom_seleccion` varchar(50) NOT NULL,
  `Nombre_del_DT` varchar(50) NOT NULL,
  `Lugar_entrenamiento` varchar(100) NOT NULL,
  `Jugadores` varchar(100) NOT NULL,
  `Cuerpo_tecnico` varchar(50) NOT NULL,
  PRIMARY KEY (`Nom_seleccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla hinchas.equipo: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` (`Nom_seleccion`, `Nombre_del_DT`, `Lugar_entrenamiento`, `Jugadores`, `Cuerpo_tecnico`) VALUES
	('America', 'Miguel Herrera', 'Nido de las Ãguilas', 'Guillermo, Sergio, Giovani', 'Alvaro Galindo, Jose Rangel'),
	('Chivas', 'Victor manuel', 'Verde valle', 'Jose, Cristian, Eduardo', 'Carlos Barra, Ricardo Cadena'),
	('Club Tigres', 'Ricardo Ferretti', 'Estadio Universitario de la Universidad Autonoma de Nuevo Leon', 'Andre, Eduardo, Nicolas', 'Guillermo Orta, Ruben Gonzalez'),
	('Cruz Azul', 'Robert Dante', 'La noria', 'Santiago, Pablo, Josue', 'Guillermo Ãlvarez, Odin Vite'),
	('FC Bravos', 'Gabriel Caballero', 'Escuela FC Bravitos, Cd Juarez', 'Martin, William, Enrique', 'NÃ©stor Ibarra, Rogelio RodrÃ­guez'),
	('Pumas', 'Andres Lillini', 'club universidad nacional a.c.', 'Alfredo, juan, Facundo', 'Milton Mora, Antonio Acevedo'),
	('Rayados', 'Antonio mohamed', 'El barrial', 'Rogelio, Shayr, Stefan', 'Alan Torres, Carlos Kenny'),
	('Santos', 'Juan Perez', 'Laguna Azul', 'Carlos, Alejandro, Daniel', 'Osvaldo Martinez');
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;

-- Volcando estructura para tabla hinchas.jugadores
CREATE TABLE IF NOT EXISTS `jugadores` (
  `No_camisa` int(11) NOT NULL AUTO_INCREMENT,
  `Apodo` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Posicion` varchar(50) NOT NULL,
  `Seleccion` varchar(50) NOT NULL,
  PRIMARY KEY (`No_camisa`),
  KEY `Seleccion` (`Seleccion`),
  CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`Seleccion`) REFERENCES `equipo` (`Nom_seleccion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla hinchas.jugadores: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` (`No_camisa`, `Apodo`, `Nombre`, `Apellidos`, `Posicion`, `Seleccion`) VALUES
	(1, 'Memo', 'Guillermo', 'Ochoa', 'Aruqero', 'America'),
	(2, 'El niÃ±o', 'Sergio', 'Diaz Velazquez', 'Delantero', 'America'),
	(3, 'Gio', 'Giovani', 'dos Santos', 'Delantero', 'America'),
	(4, 'JJ', 'Jose Juan', 'Macias', 'Delantero', 'Chivas'),
	(5, 'Chicote', 'Cristian', 'Calderon', 'Defensa', 'Chivas'),
	(6, 'Lalo', 'Eduardo', 'Torres', 'Medio Campo', 'Chivas'),
	(7, 'El bebote', 'Santiago', 'Gimenez', 'Delantero', 'Cruz azul'),
	(8, 'Emma', 'Josue', 'Reyes', 'Defensa', 'Cruz azul'),
	(9, 'Marti', 'Martin', 'Galvan', 'Delantero', 'FC Bravos'),
	(10, 'Mago', 'William', 'Mendieta', 'Medio Campo', 'FC Bravos'),
	(11, 'Palos', 'Enrique', 'Palos', 'Arquero', 'FC Bravos'),
	(12, 'Calacas', 'Alfredo', 'Talavera', 'Arquero', 'Pumas'),
	(13, 'Comandante', 'Juan', 'Ignacio Dinenno', 'Delantero', 'Pumas'),
	(14, 'Benito', 'Facundo', 'Waller', 'Medio Campo', 'Pumas'),
	(15, 'El carita', 'John Stefan', 'Medina Ramirez', 'Defensa', 'Rayados'),
	(16, 'El pepe', 'Jose Carlos', 'Escobedo Alvarado', 'Delantero', 'Santos');
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
