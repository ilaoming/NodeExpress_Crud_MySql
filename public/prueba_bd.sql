-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-12-2021 a las 19:06:56
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(50) NOT NULL,
  `prod_desc` varchar(255) NOT NULL,
  `prod_precio` float NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`prod_id`, `prod_nom`, `prod_desc`, `prod_precio`, `est`) VALUES
(1, 'AURICULARES SAMSUNG', 'AURICULARES 3.5', 15000, 1),
(2, 'MOUSE USB', 'MOUSE USB DE ALTA DURACION', 25000, 1),
(3, 'GOOGLE PIXEL 2XL', 'CELULAR GOOGLE PIXEL 2XL', 455000, 1),
(4, 'POWER BANK', 'POWER BANK 10000 MHA', 115000, 1),
(5, 'LIMPIAVIDRIOS', 'BRILLA KING LIMPIAVIDRIOS.', 2800, 1),
(7, 'PRUEBA ', 'PRUEBA DE ACTUALIZACION', 15000, 1),
(8, 'CABLE USB', 'CABLE USB DE LARGA DURACION', 15555, 1),
(9, 'CABLE  USB ', 'CABLE USB BASICO', 12000, 1),
(18, 'CABLE IPHONE', 'CABLE USB DE LARGA DURACION', 32000, 1),
(19, 'CONTROL XBOX ONE', 'CONTROL XBOX ONE EDITON', 85000, 1),
(20, 'TECLADO MECANICO', 'TECLADO MECANICO GENIUS', 68000, 1),
(21, 'CONTROL UNIVERSAL ', 'CONTROL UNIVERSAL PARA TV', 28000, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
