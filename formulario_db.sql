-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2023 a las 17:49:23
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulario_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `salario` decimal(8,2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sitio_web` varchar(100) NOT NULL,
  `contrasena` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `cedula`, `telefono`, `fecha_nacimiento`, `salario`, `email`, `sitio_web`, `contrasena`) VALUES
(1, 'jimmy', 'guajan', '1722761119', '0989069812', '2023-08-17', '500.00', 'jimjimbo2011@hotmail.com', 'https://www.youtube.com/watch?v=5ayiER78gas&list=RDGMEM2VCIgaiSqOfVzBAjPJm-ag&index=2', '12Naufrago$'),
(2, 'jimmyIs', 'guajann', '1722761119', '0989069812', '2023-09-05', '700.00', 'jimmy.guajan1996@gmail.com', 'https://www.youtube.com/watch?v=5ayiER78gas&list=RDGMEM2VCIgaiSqOfVzBAjPJm-ag&index=2', '12Naufrago$'),
(3, 'shao', 'pro', '1722761119', '0989069812', '2000-01-12', '800.00', 'jimmy.guajan.1996@gmail.com', 'https://www.youtube.com/watch?v=5ayiER78gas&list=RDGMEM2VCIgaiSqOfVzBAjPJm-ag&index=2', '12Naufrago$'),
(4, 'sol', 'sol', '1722761119', '0989069812', '2006-06-13', '450.01', 'jimmy.guajan.1996@gmail.com', 'https://www.youtube.com/watch?v=5ayiER78gas&list=RDGMEM2VCIgaiSqOfVzBAjPJm-ag&index=2', '17Naufrago$'),
(5, 'sole', 'sole', '1722761119', '0989069812', '2006-06-13', '5000.00', 'jimmy.guajan.1996@gmail.com', 'https://www.youtube.com/watch?v=5ayiER78gas&list=RDGMEM2VCIgaiSqOfVzBAjPJm-ag&index=2', '17Naufrago$'),
(6, 'maria', 'taco', '0550670046', '0987209381', '2001-07-17', '500.00', 'mbtaco2@espe.edu.ec', 'http://localhost:8080/phpmyadmin/index.php?route=/sql&pos=0&db=formulario_db&table=usuarios', '170701.Tr'),
(7, 'mariaa', 'tacoo', '0550670046', '0987209381', '0000-00-00', '800.00', 'jimmy.guajan1996@gmail.com', 'http://localhost:8080/phpmyadmin/index.php?route=/sql&pos=0&db=formulario_db&table=usuarios', '17Naufrago&'),
(8, 'mariaa', 'tacoo', '0550670046', '0987209381', '2023-07-15', '800.00', 'jimmy.guajan1996@gmail.com', 'http://localhost:8080/phpmyadmin/index.php?route=/sql&pos=0&db=formulario_db&table=usuarios', '17Naufrago&'),
(9, 'Richard', 'Guajan', '1722761127', '0989069812', '2000-11-22', '700.00', 'richarg@espe.edu.ec', 'https://www.youtube.com/watch?v=5ayiER78gas&list=RDGMEM2VCIgaiSqOfVzBAjPJm-ag&index=2', 'Richard17$'),
(10, 'johana', 'masabanda', '2250122005', '0939029372', '2000-03-15', '700.00', 'jjmasabanda@espe.edu.ec', 'https://www.youtube.com/watch?v=5ayiER78gas&list=RDGMEM2VCIgaiSqOfVzBAjPJm-ag&index=2', 'Alejo123$'),
(11, 'roberto', 'zapata', '1722761119', '0987209381', '2023-08-18', '600.00', 'jimmy.guajan.espe@gmail.com', 'http://localhost:8080/phpmyadmin/index.php?route=/sql&pos=0&db=formulario_db&table=usuarios', 'Jimmy15$');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
