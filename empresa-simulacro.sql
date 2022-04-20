-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:37:31
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
-- Base de datos: `empresa-simulacro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `CodC` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Categoria` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`CodC`, `Nombre`, `Localidad`, `Categoria`) VALUES
('CO1', 'José Sánchez', 'Arganda', 18),
('CO2', 'Manuel Diaz', 'Arganda', 15),
('CO3', 'Juan Pérez', 'Rivas', 20),
('CO4', 'Luis Ortiz', 'Arganda', 18),
('CO5', 'lamer Martín', 'Locclies', 12),
('CO6', 'Carmen Pérez', 'Rivas', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE `maquinas` (
  `CodM` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `PrecioHora` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maquinas`
--

INSERT INTO `maquinas` (`CodM`, `Nombre`, `PrecioHora`) VALUES
('M01', 'EXCAVADORA', 15000),
('M02', 'HORMIGONERA', 10000),
('M03', 'VOLQUETE', 11000),
('M04', 'APISONADORA', 18000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `CodP` varchar(30) NOT NULL,
  `Deserip` varchar(30) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Cliente` varchar(30) NOT NULL,
  `Telefono` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`CodP`, `Deserip`, `Localidad`, `Cliente`, `Telefono`) VALUES
('P01', 'Garaje', 'Arganda', 'Felipe Sol', 60011111),
('P02', 'Solado', 'Rivas', 'José Pérez', 91222222),
('P03', 'Garaje', 'Arganda', 'Rosa ', 66699966),
('P04', 'Techado', 'Loeches', 'José Pérez', 91333333),
('P05', 'Buhardilla', 'Rivas', 'Ana Botijo', 111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `CodC` varchar(30) NOT NULL,
  `CodM` varchar(30) NOT NULL,
  `CodP` varchar(30) NOT NULL,
  `Fecha` varchar(30) NOT NULL,
  `Tiempo` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`CodC`, `CodM`, `CodP`, `Fecha`, `Tiempo`) VALUES
('C02', 'M03', 'P01', '10/09/02', 100),
('C03', 'M01', 'P02', '10/09/02', 200),
('C05', 'M03', 'P02', '10/09/02', 150),
('C04', 'M03', 'P02', '10/09/02', 90),
('C01', 'M02', 'P02', '12/09/02', 120),
('C02', 'M03', 'P03', '13/09/02', 30),
('C03', 'M01', 'P04', '15/09/02', 300),
('C02', 'M03', 'P02', '15/09/02', 111),
('C01', 'M03', 'P04', '15/09/02', 180),
('C05', 'M03', 'P04', '15/09/02', 90),
('C01', 'M02', 'P04', '17/09/02', 111),
('C02', 'M03', 'P01', '18/09/02', 111);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
