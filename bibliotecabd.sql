-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2019 a las 21:03:32
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bibliotecabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler_libro`
--

CREATE TABLE `alquiler_libro` (
  `isbn` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `identificacion` int(11) NOT NULL,
  `fecha_prestamo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_devolucion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `isbn` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `titulo` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `autor` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `identificacion` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellidos` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler_libro`
--
ALTER TABLE `alquiler_libro`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `identificacion` (`identificacion`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`isbn`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`identificacion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler_libro`
--
ALTER TABLE `alquiler_libro`
  ADD CONSTRAINT `alquiler_libro_ibfk_1` FOREIGN KEY (`identificacion`) REFERENCES `persona` (`identificacion`),
  ADD CONSTRAINT `alquiler_libro_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `libro` (`isbn`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
