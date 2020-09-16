-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2020 a las 01:59:07
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escprimaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `correo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apPat` varchar(50) NOT NULL,
  `apMat` varchar(50) NOT NULL,
  `contraseña` varchar(500) NOT NULL,
  `dir` varchar(500) NOT NULL,
  `escuela` varchar(500) NOT NULL,
  `telefono` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contesta`
--

CREATE TABLE `contesta` (
  `respuesta` varchar(100) NOT NULL,
  `estado` varchar(20) DEFAULT 'No entregado',
  `calificacion` int(11) DEFAULT NULL,
  `correo_alum` varchar(50) NOT NULL,
  `ID_Material` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscrito`
--

CREATE TABLE `inscrito` (
  `ID_nivel` int(11) NOT NULL,
  `corr_alum` varchar(50) NOT NULL,
  `ID_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE `maestro` (
  `ID_Maestro` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(500) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apPat` varchar(50) NOT NULL,
  `apMat` varchar(50) NOT NULL,
  `dir` varchar(500) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `ID_Personal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `ID_Materia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `escuela` varchar(500) NOT NULL,
  `ID_Maestro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia-nivel`
--

CREATE TABLE `materia-nivel` (
  `ID_Nivel` int(11) NOT NULL,
  `ID_Materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `ID_material` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fechaR` date NOT NULL,
  `fechaE` date DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `tipo` varchar(50) NOT NULL,
  `clasificacion` varchar(50) NOT NULL,
  `contenido` varchar(1000) NOT NULL,
  `ID_Nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `nombre` varchar(50) NOT NULL,
  `ID_Nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `ID_Personal` int(11) NOT NULL,
  `telefono` bigint(11) NOT NULL,
  `dir` varchar(500) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apPat` varchar(50) NOT NULL,
  `apMat` varchar(50) NOT NULL,
  `contraseña` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`correo`);

--
-- Indices de la tabla `contesta`
--
ALTER TABLE `contesta`
  ADD PRIMARY KEY (`correo_alum`,`ID_Material`);

--
-- Indices de la tabla `inscrito`
--
ALTER TABLE `inscrito`
  ADD PRIMARY KEY (`corr_alum`,`ID_materia`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`ID_Materia`);

--
-- Indices de la tabla `materia-nivel`
--
ALTER TABLE `materia-nivel`
  ADD PRIMARY KEY (`ID_Nivel`,`ID_Materia`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID_material`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`ID_Nivel`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`ID_Personal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
