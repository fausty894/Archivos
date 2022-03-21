-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 14:19:34
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresaa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `DNI` int(11) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `domicilio` varchar(50) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_nac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `DNI`, `telefono`, `domicilio`, `edad`, `fecha_nac`) VALUES
(8, 'Marcelo', 'sapardo', 11895784, 35123456, 'buenos aires', 102, 1920),
(9, 'Jose', 'Perez', 56678436, 2347685, 'Barrio manzanas rojas, calle bustos ', 12, 2010),
(10, 'Fernando', 'Cuco', 34893765, 15688734, 'Entre Rios, calle Malvinas', 78, 1945),
(11, 'Jose', 'Perez', 56678436, 2347685, 'Barrio manzanas rojas, calle bustos ', 12, 2010),
(12, 'Fernando', 'Cuco', 34893765, 15688734, 'Entre Rios, calle Malvinas', 78, 1945),
(13, 'Maximo', 'Cosetti', 23785093, 16509834, 'Córdoba, calle Eliseo soaje 908', 54, 1967),
(14, 'Pepito', 'Pistolero', 34873756, 1216579865, 'misiones, pepe largo', 94, 1926),
(15, 'Maximo', 'Cosetti', 23785093, 16509834, 'Córdoba, calle Eliseo soaje 908', 54, 1967),
(16, 'Pepito', 'Pistolero', 34873756, 1216579865, 'misiones, pepe largo', 94, 1926),
(17, 'Norma', 'Salazar', 89765345, 1569483, 'Jujuy, calle Peron', 79, 1954);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
