-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2018 a las 08:38:09
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE `directores` (
  `idDirectores` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Anyo_Nacimiento` datetime DEFAULT NULL,
  `idPeliculas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`idDirectores`, `Nombre`, `Apellidos`, `Anyo_Nacimiento`, `idPeliculas`) VALUES
(1, 'Joe', 'Johnston', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `idPeliculas` int(11) NOT NULL,
  `Titulo` varchar(85) NOT NULL,
  `Anyo` int(11) NOT NULL,
  `Sipnosis` varchar(300) DEFAULT NULL,
  `idDirector` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`idPeliculas`, `Titulo`, `Anyo`, `Sipnosis`, `idDirector`) VALUES
(2, 'Capitán América - El primer Vengador.', 2011, 'Supersoldado', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`idDirectores`),
  ADD UNIQUE KEY `idDirectores_UNIQUE` (`idDirectores`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`idPeliculas`),
  ADD UNIQUE KEY `idPeliculas_UNIQUE` (`idPeliculas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `idDirectores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `idPeliculas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
