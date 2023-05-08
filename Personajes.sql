-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 08-05-2023 a las 21:20:23
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
  `edad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Personajes`
--

INSERT INTO `Personajes` (`id`, `nombre`, `genero`, `imagen`, `edad`) VALUES
(2, 'Chris Redfield', 'Masculino', '1', '50'),
(3, 'Claire Redfield', 'Femenino', '1', '44'),
(4, 'Leon Kennedy', 'Masculino', '1', '46'),
(5, 'Jill Valentine', 'Femenino', '1', '49'),
(6, 'Ada Wong', 'Femenino', '1', '49'),
(7, 'Albert Wesker', 'Masculino', '1', '63'),
(8, 'Ethan Winters', 'Masculino', '1', '39'),
(9, 'Carlos Oliveira', 'Masculino', '1', '46');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
