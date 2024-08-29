-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 28-08-2024 a las 03:31:37
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taller`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE `herramientas` (
  `cantidad` int(11) NOT NULL,
  `n_serie` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`cantidad`, `n_serie`, `nombre`, `descripcion`) VALUES
(111, 1, 'Martillo', 'martillo'),
(222, 2, 'Clavos', 'clavos'),
(333, 3, 'pinzas', 'pinzas'),
(444, 4, 'cable', 'cable'),
(555, 5, 'Llave', 'llave'),
(666, 6, 'matraca', 'matraca'),
(777, 7, 'Gato', 'gato'),
(888, 8, 'Embudos', 'embudos'),
(999, 9, 'Cinta', 'cinta'),
(100, 10, 'Destormillador', 'destormilla'),
(110, 11, 'Desarmador', 'desarmador'),
(120, 12, 'Juego de brocas', 'juego de br'),
(130, 13, 'Brocas', 'brocas'),
(140, 14, 'Lija', 'lija'),
(150, 15, 'Pistola de ssilicon', 'pistola de '),
(160, 16, 'Aceite', 'aceite'),
(170, 17, 'Pulidora', 'pulidora'),
(180, 18, 'Pinsas de presion', 'pinsas de p'),
(190, 19, 'Cinta doble cara', 'cinta doble'),
(200, 20, 'Caja de herramientas', 'caja de herramientas'),
(210, 21, 'Brochas', 'brochas'),
(220, 22, 'pinceles', 'pinceles'),
(230, 23, 'Refacciones', 'Refacciones'),
(240, 24, 'Cincel', 'Cincel'),
(250, 25, 'Sierras', 'sierras'),
(260, 26, 'Conpresion de aire', 'compresion de aire'),
(270, 27, 'Escuadra', 'escuadra'),
(280, 28, 'Pistola de calor', 'Pistola de calor'),
(290, 29, 'Escaner', 'escaner'),
(300, 30, 'Bomba de aire', 'bomba de aire');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
