-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 10-05-2023 a las 23:55:07
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Resident`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Personajes`
--

CREATE TABLE `Personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `edad` varchar(50) NOT NULL,
  `relacion` varchar(255) NOT NULL,
  `especialidad` varchar(255) NOT NULL,
  `estatura` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Personajes`
--

INSERT INTO `Personajes` (`id`, `nombre`, `genero`, `imagen`, `edad`, `relacion`, `especialidad`, `estatura`) VALUES
(1, 'Chris Redfield', 'Masculino', '1', '50', 'Soltero', 'Ex-piloto de las fuerzas aéreas norteamericanas, batidor del equipo Alfa y entrenador de reclutas.', '185 cm'),
(2, 'Claire Redfield', 'Femenino', '1', '44', 'Soltera', 'Estudiante Universitaria', '1,69 m'),
(3, 'Leon Kennedy', 'Masculino', '1', '46', 'Soltero', 'Agente americano de la D.S.O.', '178 cm'),
(4, 'Jill Valentine', 'Femenino', '1', '49', 'Soltera', 'Miembro del equipo Alpha de S.T.A.R.S.', '172 cm'),
(5, 'Ada Wong', 'Femenino', '1', '49', 'Soltera', 'Agente espia estadounidense', '1,73 m'),
(6, 'Albert Wesker', 'Masculino', '1', '63', 'Casado', 'Capitan de S.T.A.R.S', '190 cm'),
(7, 'Ethan Winters', 'Masculino', '1', '39', 'Casado', 'Ingeniero', '180 cm'),
(8, 'Carlos Oliveira', 'Masculino', '1', '46', 'Soltero', 'Soldado ex-miembro del U.B.C.S.', '1.82 cm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Personajes`
--
ALTER TABLE `Personajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Personajes`
--
ALTER TABLE `Personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
