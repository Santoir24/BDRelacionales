-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2026 a las 16:28:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `souncloud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `ID_artista` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`ID_artista`, `Nombre`) VALUES
(1, 'Bruno marsiano'),
(2, 'Gustavo serati'),
(3, 'El buki'),
(4, 'Ado la de los gritos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_canciones`
--

CREATE TABLE `artista_canciones` (
  `ID_artista` int(11) NOT NULL,
  `ID_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artista_canciones`
--

INSERT INTO `artista_canciones` (`ID_artista`, `ID_cancion`) VALUES
(4, 4),
(1, 2),
(2, 1),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `ID_cancion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Duracion` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`ID_cancion`, `Nombre`, `Duracion`) VALUES
(1, 'Iris afuera', '00:02:31'),
(2, 'Make it with chu', '00:04:50'),
(3, 'Mr crowley', '00:04:22'),
(4, 'Livin on a prayer', '00:04:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_genero`
--

CREATE TABLE `cancion_genero` (
  `ID_cancion` int(11) NOT NULL,
  `ID_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cancion_genero`
--

INSERT INTO `cancion_genero` (`ID_cancion`, `ID_genero`) VALUES
(4, 2),
(1, 4),
(2, 1),
(4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `ID_usuario` int(11) NOT NULL,
  `ID_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `favoritas`
--

INSERT INTO `favoritas` (`ID_usuario`, `ID_cancion`) VALUES
(1, 2),
(3, 1),
(4, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `ID_genero` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`ID_genero`, `Nombre`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Jpop'),
(5, 'Instrumental');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `ID_membresia` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`ID_membresia`, `Nombre`, `precio`) VALUES
(1, 'souncloud gratis', 0),
(2, 'souncloud plus', 50),
(3, 'souncloud mega', 100),
(4, 'super souncloud', 150),
(5, 'super mega souncloud plus', 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists`
--

CREATE TABLE `playlists` (
  `ID_playilist` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `n_canciones` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `Usuario_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlists`
--

INSERT INTO `playlists` (`ID_playilist`, `nombre`, `n_canciones`, `duracion`, `Usuario_ID`) VALUES
(1, 'Musica perrona', 53, '04:19:14', 3),
(2, 'Nse', 1000, '99:24:52', 1),
(3, 'Mis laiks', 800, '99:24:39', 2),
(4, 'Musica chafa', 123, '20:08:37', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `ID_playilist` int(11) NOT NULL,
  `ID_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`ID_playilist`, `ID_cancion`) VALUES
(3, 4),
(1, 3),
(2, 4),
(3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_usuario` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Membresia_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_usuario`, `Nombre`, `Membresia_ID`) VALUES
(1, 'Kristofer', 3),
(2, 'Rodligo', 5),
(3, 'Yo', 5),
(4, 'Arturo', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`ID_artista`);

--
-- Indices de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD KEY `ID_artista` (`ID_artista`),
  ADD KEY `ID_cancion` (`ID_cancion`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`ID_cancion`);

--
-- Indices de la tabla `cancion_genero`
--
ALTER TABLE `cancion_genero`
  ADD KEY `ID_cancion` (`ID_cancion`),
  ADD KEY `ID_genero` (`ID_genero`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `ID_cancion` (`ID_cancion`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`ID_genero`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`ID_membresia`);

--
-- Indices de la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`ID_playilist`),
  ADD KEY `Usuario_ID` (`Usuario_ID`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD KEY `ID_playilist` (`ID_playilist`),
  ADD KEY `ID_cancion` (`ID_cancion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_usuario`),
  ADD KEY `Membresia_ID` (`Membresia_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `ID_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `ID_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `ID_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `ID_membresia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlists`
--
ALTER TABLE `playlists`
  MODIFY `ID_playilist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD CONSTRAINT `artista_canciones_ibfk_1` FOREIGN KEY (`ID_artista`) REFERENCES `artistas` (`ID_artista`),
  ADD CONSTRAINT `artista_canciones_ibfk_2` FOREIGN KEY (`ID_cancion`) REFERENCES `canciones` (`ID_cancion`);

--
-- Filtros para la tabla `cancion_genero`
--
ALTER TABLE `cancion_genero`
  ADD CONSTRAINT `cancion_genero_ibfk_1` FOREIGN KEY (`ID_cancion`) REFERENCES `canciones` (`ID_cancion`),
  ADD CONSTRAINT `cancion_genero_ibfk_2` FOREIGN KEY (`ID_genero`) REFERENCES `generos` (`ID_genero`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`ID_cancion`) REFERENCES `canciones` (`ID_cancion`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`);

--
-- Filtros para la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `usuarios` (`ID_usuario`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`ID_cancion`) REFERENCES `canciones` (`ID_cancion`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`ID_playilist`) REFERENCES `playlists` (`ID_playilist`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Membresia_ID`) REFERENCES `membresias` (`ID_membresia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
