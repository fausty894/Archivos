-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 15:17:55
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
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `código del doctor` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `Especialidad` varchar(30) NOT NULL,
  `Dirección` varchar(30) NOT NULL,
  `Telefono` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`código del doctor`, `nombre`, `Especialidad`, `Dirección`, `Telefono`) VALUES
(1, 'Dra Sanz', 'internista', 'calle 4# 23-12', 8234567),
(2, 'Dr Perez', 'Traumatólogo', 'cra 3# 7-98', 8210987),
(3, 'Dr Fernandez', 'Internista', 'Calle 56 # 98 - 76', 8240975),
(4, 'Dr. Alonso', 'Cardiologo', 'Cra 25 # 45 - 19', 8309865),
(5, 'Dr. Garcia', 'Hepatologia', 'Cía 71 # 7 - 93', 8317543),
(6, 'Dr Nuñez', 'Neurologia', 'Calle 32 # 90 - 21', 8205489),
(7, 'Dr Sanchez', 'Radiologia', 'Edi. Torres del Morinda', 8245621),
(8, 'Dra Quiroga', 'Pediatria', 'Cra 78 # 3 - 45', 8300078),
(9, 'Dr. Latorre', 'Pediatria', 'Calle 74 4 24 - 56', 8213456),
(10, 'Dr Lopez', 'Ginicologia', 'Cra 21 # 70 - 94', 8327654),
(11, 'Dra Campo', 'Opstetra', 'Calle 20 # 49 - 51', 8320943);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
