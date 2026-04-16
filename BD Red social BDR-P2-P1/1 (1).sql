-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 16:31:50
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
-- Base de datos: `1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 1, 4, 'Se ve relajante.', '2026-04-15 09:56:35'),
(2, 1, 5, 'Hace falta uno así.', '2026-04-15 10:59:04'),
(3, 2, 3, 'Ni modo, toca seguir.', '2026-04-13 07:59:40'),
(4, 2, 4, 'igual cuenta el intento.', '2026-04-13 11:00:14'),
(5, 2, 5, 'La próxima sale mejor.', '2026-04-13 08:01:10'),
(6, 3, 3, 'Buen lugar para pensar.', '2026-04-10 14:01:55'),
(7, 4, 1, 'Ahí la llevas.', '2026-04-08 11:02:23'),
(8, 4, 3, 'Se nota el avance.', '2026-04-04 08:02:49'),
(9, 5, 4, 'Deberías dormir más.', '2026-04-14 08:04:08'),
(10, 5, 5, 'A esa hora ni yo estoy despierto.', '2026-04-07 14:04:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado_en`) VALUES
(1, '#tranquilo', '2026-01-14'),
(2, '#relax', '2026-04-10'),
(3, '#intento', '2026-04-04'),
(4, '#aprendiendo', '2026-02-10'),
(5, '#atardecer', '2025-11-13'),
(6, '#desconectar', '2025-12-05'),
(7, '#progreso', '2025-12-17'),
(8, '#motivción', '2025-11-27'),
(9, '#insomnio', '2025-09-08'),
(10, '#noche', '2025-12-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(1, 2, 'Día tranquilo, necesitaba esto.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1t17uGr72Ws532C9KyRiaWZX9dy6STeX8Lw&s', '2026-04-15 08:42:27', 3),
(2, 3, 'No salio como esperaba, pero se intentó.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdyGSfnJuAnIswW8MIFQRcEI3yL1lI7DFrEg&s', '2026-04-13 06:15:18', 4),
(3, 4, 'A veces desconectarse es lo mejor.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWED80Rk_0AeniKxkMlqxAu559mTkw-umzMQ&s', '2026-04-10 07:30:55', 1),
(4, 5, 'Pequeños avances siguen siendo avances.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgC_DGyc-3g_p-a_drsL8t1BJKChFLC4ucBg&s', '2026-04-08 09:27:04', 3),
(5, 2, 'Otra noche sin dormir bien..', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQUo3XBXAf6S-Qqpwc15rXvatfJdJlRLJwzw&s', '2026-04-07 12:48:09', 0),
(6, 5, 'Necesito ayuda, por favor.', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABklBMVE', '2026-04-15 10:22:19', 1),
(7, 1, 'Tengo hambre.', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUXGBcXFxcXGBUXGBUYFxUWFhgXFxgYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0mICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAMIBAwMBIgACEQEDEQH/', '2026-04-17 07:25:32', 2),
(8, 2, '¿Donde estoy?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSozQA1aGFDesfnTJTKRDNPDPf9JcO54Lam6Q&s', '2026-04-11 14:27:03', 0),
(9, 3, 'Buenos días.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQg_mcL8Gc6IOE_UOedJ_hUhKWuvBmnYRlMA&s', '2026-04-16 16:27:59', 1),
(10, 4, 'Que aburrido..', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvGTwKtOBpXTktkK4VbOsrdfQ41Z2Snu4oCA&s', '2026-04-22 07:29:13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pub_hashtags`
--

INSERT INTO `pub_hashtags` (`pub_id`, `hashtag_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`pub_id`, `usuario_id`, `fecha_like`) VALUES
(1, 3, '2026-04-14 07:51:28'),
(1, 1, '2026-04-12 13:53:20'),
(1, 4, '2026-04-11 21:27:35'),
(2, 2, '2026-04-14 07:53:50'),
(2, 3, '2026-04-13 16:54:05'),
(2, 4, '2026-04-05 13:54:19'),
(2, 5, '2026-04-11 17:35:43'),
(3, 2, '2026-04-09 12:24:58'),
(4, 1, '2026-04-01 10:55:13'),
(4, 3, '2026-04-07 16:55:30'),
(4, 5, '2026-04-10 12:55:47'),
(6, 4, '2026-04-22 08:25:03'),
(7, 2, '2026-04-16 16:26:43'),
(7, 4, '2026-04-16 16:26:51'),
(9, 4, '2026-04-30 10:18:48'),
(10, 5, '2026-04-23 07:29:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `fecha_follow`) VALUES
(2, 1, '0000-00-00'),
(3, 1, '2026-04-13'),
(5, 1, '2026-04-12'),
(1, 2, '2026-04-01'),
(3, 2, '2026-04-01'),
(4, 2, '2026-04-08'),
(2, 3, '0000-00-00'),
(4, 1, '2026-04-06'),
(3, 4, '2026-04-15'),
(5, 4, '2026-04-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'manuel', 'manuel.gutierrez24@cetis107.edu.mx', 'Hola.', '2025-12-09'),
(2, 'nexo', 'nexo@mail.com', 'Solo pasando el rato.', '2022-03-12'),
(3, 'zaru', 'zaru@inbox.com', 'Nada especial por aquí.', '2021-11-08'),
(4, 'limo', 'limo@fastmail.com', 'Curioso de todo un poco.', '2026-06-27'),
(5, 'tavo', 'tavo@quick.com', 'Online a ratos.', '2020-09-19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `hashtag_id` (`hashtag_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidor_id` (`seguidor_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
