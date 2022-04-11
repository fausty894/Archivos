-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2022 a las 15:30:25
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
-- Base de datos: `empresa-mohn-atencio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `T#` varchar(30) NOT NULL,
  `TNOMBRE` varchar(30) NOT NULL,
  `CIUDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`T#`, `TNOMBRE`, `CIUDAD`) VALUES
('T1', 'CLASIFICADORA', 'MADRID'),
('T2', 'PERFORADORA', 'MALAGA'),
('T3', 'LECTORA', 'CACERES'),
('T4', 'CONSOLA', 'CASERES'),
('T5', 'MEZCLADORA', 'SEVILLA'),
('T6', 'TERMINAL', 'BARCELONA'),
('T7', 'CINTA', 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `C#` varchar(30) NOT NULL,
  `CNOMBRE` varchar(30) NOT NULL,
  `COLOR` varchar(30) NOT NULL,
  `PESO` int(30) NOT NULL,
  `CIUDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`C#`, `CNOMBRE`, `COLOR`, `PESO`, `CIUDAD`) VALUES
('C1', 'X3A', 'ROJO', 12, 'SEVILLA'),
('C2', 'B85', 'VERDE', 17, 'MADRID'),
('C3', 'C4B', 'AZUL', 17, 'MALAGA'),
('C4', 'C4B', 'ROJO', 14, 'SEVILLA'),
('C5', 'VT8', 'AZUL', 12, 'MADRID'),
('C6', 'C30', 'ROJO', 19, 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `T#` varchar(30) NOT NULL,
  `C#` varchar(30) NOT NULL,
  `P#` varchar(30) NOT NULL,
  `CANTIDAD` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`T#`, `C#`, `P#`, `CANTIDAD`) VALUES
('T1', 'C1', 'P1', 200),
('T4', 'C1', 'P1', 700),
('TI', 'C3', 'P2', 400),
('T2', 'C3', 'P2', 200),
('T3', 'C3', 'P2', 200),
('T4', 'C3', 'P2', 500),
('T5', 'C3', 'P2', 600),
('T6', 'C3', 'P2', 400),
('T7', 'C3', 'P2', 800),
('T2', 'C5', 'P2', 100),
('T1', 'C3', 'P3', 200),
('T2', 'C4', 'P3', 500),
('T3', 'C6', 'P4', 300),
('T7', 'C6', 'P4', 300),
('T2', 'C2', 'P5', 200),
('T4', 'C2', 'P5', 100),
('T4', 'C5', 'P5', 500),
('T7', 'C5', 'P5', 100),
('T2', 'C6', 'P5', 200),
('T4', 'C1', 'P5', 100),
('T2', 'C6', 'P5', 200),
('T4', 'C4', 'P5', 800),
('T5', 'C5', 'P5', 400),
('T4', 'C6', 'P5', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `P#` varchar(30) NOT NULL,
  `PNOMBRE` varchar(30) NOT NULL,
  `CATEGORIA` int(30) NOT NULL,
  `CIUDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`P#`, `PNOMBRE`, `CATEGORIA`, `CIUDAD`) VALUES
('P1', 'CARLOS', 20, 'SEVILLA'),
('P2', 'Juan', 10, 'MADRID'),
('P3', 'JOSE', 30, 'SEVILLA'),
('P4', 'INMA', 20, 'SEVILLA'),
('P5', 'EVA', 30, 'CACERES');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
