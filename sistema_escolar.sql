-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2022 a las 07:58:21
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_escolar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alum_secc`
--

CREATE TABLE `alum_secc` (
  `idaluse` int(11) NOT NULL,
  `idsec` int(11) NOT NULL,
  `idstu` int(11) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alum_secc`
--

INSERT INTO `alum_secc` (`idaluse`, `idsec`, `idstu`, `fere`) VALUES
(1, 1, 1, '2022-07-18 02:07:42'),
(2, 1, 2, '2022-07-18 02:07:42'),
(3, 1, 3, '2022-07-18 02:07:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asisten_alumn`
--

CREATE TABLE `asisten_alumn` (
  `idasisa` int(11) NOT NULL,
  `idstu` int(11) NOT NULL,
  `idtea` int(11) NOT NULL,
  `idsec` int(11) NOT NULL,
  `presen` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` date NOT NULL,
  `fechre` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE `course` (
  `idcur` int(11) NOT NULL,
  `nomcur` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idper` int(11) NOT NULL,
  `iddeg` int(11) NOT NULL,
  `idsub` int(11) NOT NULL,
  `foto` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `course`
--

INSERT INTO `course` (`idcur`, `nomcur`, `idper`, `iddeg`, `idsub`, `foto`, `estado`, `fere`) VALUES
(2, 'Matemáticas', 1, 2, 10, '895222.jpg', '1', '2022-07-14 22:24:11'),
(3, 'Comunicación', 1, 2, 10, '146205.jpg', '1', '2022-07-14 22:24:37'),
(4, 'Personal Social', 1, 2, 10, '287740.jpg', '1', '2022-07-14 22:25:08'),
(5, 'Ciencia y Ambiente', 1, 2, 10, '858576.jpg', '1', '2022-07-14 22:25:34'),
(6, 'Matemática', 1, 3, 1, '419051.jpg', '1', '2022-07-14 22:28:01'),
(7, 'Comunicación', 1, 3, 1, '990344.jpg', '1', '2022-07-14 22:32:14'),
(8, 'Matemática', 1, 4, 7, '9020.jpg', '1', '2022-07-14 22:33:08'),
(9, 'Comunicación', 1, 4, 7, '638850.jpg', '1', '2022-07-14 22:33:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `degree`
--

CREATE TABLE `degree` (
  `iddeg` int(11) NOT NULL,
  `idper` int(11) NOT NULL,
  `nomgra` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `degree`
--

INSERT INTO `degree` (`iddeg`, `idper`, `nomgra`, `fere`) VALUES
(2, 1, 'Inicial', '2022-07-08 17:33:24'),
(3, 1, 'Primaria', '2022-07-08 17:33:50'),
(4, 1, 'Secundaria', '2022-07-08 17:34:01'),
(6, 5, 'Primaria', '2022-07-08 17:34:26'),
(7, 5, 'Secundaria', '2022-07-08 17:34:38'),
(8, 5, 'Inicial', '2022-07-09 21:16:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fathers`
--

CREATE TABLE `fathers` (
  `idfa` int(11) NOT NULL,
  `dnifa` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nomfa` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `profefa` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `telefa` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `direc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `state` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fathers`
--

INSERT INTO `fathers` (`idfa`, `dnifa`, `nomfa`, `profefa`, `correo`, `telefa`, `direc`, `foto`, `usuario`, `clave`, `rol`, `state`, `fere`) VALUES
(1, '45646464', 'Mauricio Torres Ayala', 'Economista', 'mmtore@gmail.com', '985864574', 'dadaddffdfdf', '172948.png', 'mmtore', 'b0baee9d279d34fa1dfd71aadb908c3f', '3', '1', '2022-07-07 04:58:36'),
(2, '44444444', 'Maria Yovera Ananuque', 'Profesor', 'mmari@gmail.com', '968858568', 'mdmfdmfmd', '88395.png', 'mmari', 'b0baee9d279d34fa1dfd71aadb908c3f', '3', '1', '2022-07-07 05:05:07'),
(3, '48838383', 'Javier Lopez Carrazco', 'Cajero', 'jjlope@gmail.com', '973733333', 'fdffdfd', '505798.png', 'jjloppz', 'b0baee9d279d34fa1dfd71aadb908c3f', '3', '1', '2022-07-07 05:06:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `period`
--

CREATE TABLE `period` (
  `idper` int(11) NOT NULL,
  `numperi` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `starperi` date NOT NULL,
  `endperi` date NOT NULL,
  `nomperi` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `period`
--

INSERT INTO `period` (`idper`, `numperi`, `starperi`, `endperi`, `nomperi`, `state`, `fere`) VALUES
(1, '2022-1', '2022-01-03', '2022-04-04', 'Enero-Abril 2022', 'Activo', '2022-07-05 07:29:03'),
(5, '2022-2', '2022-06-01', '2022-09-01', 'Junio-Septiembre 2022', 'Activo', '2022-07-06 19:53:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `idsec` int(11) NOT NULL,
  `nomsec` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `idsub` int(11) NOT NULL,
  `idtea` int(11) NOT NULL,
  `idcur` int(11) NOT NULL,
  `capa` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `state` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`idsec`, `nomsec`, `idsub`, `idtea`, `idcur`, `capa`, `state`, `fere`) VALUES
(1, 'C', 10, 1, 2, '25', '1', '2022-07-18 02:15:52'),
(2, 'A', 10, 1, 3, '25', '1', '2022-07-17 01:05:55'),
(3, 'A', 1, 2, 6, '20', '1', '2022-07-17 07:49:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `idstu` int(11) NOT NULL,
  `dnist` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nomstu` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `edast` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `direce` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `sexes` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fenac` date NOT NULL,
  `foto` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `rol` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`idstu`, `dnist`, `nomstu`, `edast`, `direce`, `correo`, `sexes`, `fenac`, `foto`, `usuario`, `clave`, `state`, `rol`, `fere`) VALUES
(1, '79992929', 'Vallery Núñez Torres', '12 años', 'piura', 'vallln@gmail.com', 'Femenino', '2010-07-13', '960413.png', 'valln12', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', '4', '2022-07-08 06:43:03'),
(2, '78599999', 'Karla Torres', '19 años', 'loreto', 'karlitaTo@gmail.com', 'Femenino', '1999-06-17', '842021.png', 'karrto', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', '4', '2022-07-17 20:58:18'),
(3, '74746443', 'Naomi Yovera', '19 años', 'Loreto', 'naomyo@gmail.com', 'Femenino', '2000-02-10', '285200.png', 'nnayo', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', '4', '2022-07-17 22:10:28'),
(4, '75222222', 'Julian Roberto Torres', '15 años', 'LIMA', 'jjlitorre@gmail.com', 'Masculino', '2012-06-17', '349376.jpg', 'jjuli221', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', '4', '2022-07-17 22:39:33'),
(5, '73245555', 'Kimberly Perez', '12 años', 'TACALA', 'kimmy@gmail.com', 'Femenino', '2012-06-07', '84656.jpg', 'kkimy1', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', '4', '2022-07-17 22:43:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subgrade`
--

CREATE TABLE `subgrade` (
  `idsub` int(11) NOT NULL,
  `nomsub` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `iddeg` int(11) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subgrade`
--

INSERT INTO `subgrade` (`idsub`, `nomsub`, `iddeg`, `fere`) VALUES
(1, 'Primero', 3, '2022-07-09 21:54:24'),
(2, 'Segundo', 3, '2022-07-09 21:54:42'),
(3, 'Tercero', 3, '2022-07-09 21:55:02'),
(4, 'Cuarto', 3, '2022-07-09 21:55:22'),
(5, 'Quinto', 3, '2022-07-09 21:55:36'),
(6, 'Sexto', 3, '2022-07-09 21:56:05'),
(7, 'Primero', 4, '2022-07-09 21:56:22'),
(8, 'Segundo', 4, '2022-07-09 21:56:37'),
(9, 'Tercero', 4, '2022-07-09 21:56:54'),
(10, 'Inicial de 5 años', 2, '2022-07-09 22:28:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE `teachers` (
  `idtea` int(11) NOT NULL,
  `dnite` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nomte` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `sexte` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `telet` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `state` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`idtea`, `dnite`, `nomte`, `sexte`, `correo`, `telet`, `foto`, `usuario`, `clave`, `rol`, `state`, `fere`) VALUES
(1, '44324234', 'Raul Robledo Torres', 'Masculino', 'rrtor@gmail.com', '978675467', '957356.png', 'rrtor', 'b0baee9d279d34fa1dfd71aadb908c3f', '2', '1', '2022-07-07 22:53:23'),
(2, '43212312', 'Tatiana Peña', 'Femenino', 'ttatipe@gmail.com', '975435453', '96762.png', 'ttaipe', 'b0baee9d279d34fa1dfd71aadb908c3f', '2', '1', '2022-07-07 22:54:13'),
(3, '42322222', 'Romina Ramirez', 'Femenino', 'rrarez@gmail.com', '977545424', '557065.png', 'rrez22', 'b0baee9d279d34fa1dfd71aadb908c3f', '2', '1', '2022-07-17 06:54:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `correo`, `clave`, `rol`, `estado`, `fere`) VALUES
(1, 'jjrokker', 'JORDAN ROKE', 'admin@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', 1, '2022-07-04 18:20:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alum_secc`
--
ALTER TABLE `alum_secc`
  ADD PRIMARY KEY (`idaluse`),
  ADD KEY `idsec` (`idsec`),
  ADD KEY `idstu` (`idstu`);

--
-- Indices de la tabla `asisten_alumn`
--
ALTER TABLE `asisten_alumn`
  ADD PRIMARY KEY (`idasisa`),
  ADD KEY `idstu` (`idstu`),
  ADD KEY `idtea` (`idtea`),
  ADD KEY `idsec` (`idsec`);

--
-- Indices de la tabla `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`idcur`),
  ADD KEY `idper` (`idper`),
  ADD KEY `iddeg` (`iddeg`),
  ADD KEY `idsub` (`idsub`);

--
-- Indices de la tabla `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`iddeg`),
  ADD KEY `idper` (`idper`);

--
-- Indices de la tabla `fathers`
--
ALTER TABLE `fathers`
  ADD PRIMARY KEY (`idfa`);

--
-- Indices de la tabla `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`idper`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`idsec`),
  ADD KEY `idsub` (`idsub`),
  ADD KEY `idtea` (`idtea`),
  ADD KEY `idcur` (`idcur`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`idstu`);

--
-- Indices de la tabla `subgrade`
--
ALTER TABLE `subgrade`
  ADD PRIMARY KEY (`idsub`),
  ADD KEY `iddeg` (`iddeg`);

--
-- Indices de la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`idtea`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alum_secc`
--
ALTER TABLE `alum_secc`
  MODIFY `idaluse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `asisten_alumn`
--
ALTER TABLE `asisten_alumn`
  MODIFY `idasisa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `course`
--
ALTER TABLE `course`
  MODIFY `idcur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `degree`
--
ALTER TABLE `degree`
  MODIFY `iddeg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `fathers`
--
ALTER TABLE `fathers`
  MODIFY `idfa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `period`
--
ALTER TABLE `period`
  MODIFY `idper` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `idsec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `idstu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `subgrade`
--
ALTER TABLE `subgrade`
  MODIFY `idsub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `teachers`
--
ALTER TABLE `teachers`
  MODIFY `idtea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alum_secc`
--
ALTER TABLE `alum_secc`
  ADD CONSTRAINT `alum_secc_ibfk_1` FOREIGN KEY (`idsec`) REFERENCES `seccion` (`idsec`),
  ADD CONSTRAINT `alum_secc_ibfk_2` FOREIGN KEY (`idstu`) REFERENCES `students` (`idstu`);

--
-- Filtros para la tabla `asisten_alumn`
--
ALTER TABLE `asisten_alumn`
  ADD CONSTRAINT `asisten_alumn_ibfk_1` FOREIGN KEY (`idstu`) REFERENCES `students` (`idstu`),
  ADD CONSTRAINT `asisten_alumn_ibfk_2` FOREIGN KEY (`idtea`) REFERENCES `teachers` (`idtea`),
  ADD CONSTRAINT `asisten_alumn_ibfk_3` FOREIGN KEY (`idsec`) REFERENCES `seccion` (`idsec`);

--
-- Filtros para la tabla `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`idper`) REFERENCES `period` (`idper`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`iddeg`) REFERENCES `degree` (`iddeg`),
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`idsub`) REFERENCES `subgrade` (`idsub`);

--
-- Filtros para la tabla `degree`
--
ALTER TABLE `degree`
  ADD CONSTRAINT `degree_ibfk_1` FOREIGN KEY (`idper`) REFERENCES `period` (`idper`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `seccion_ibfk_1` FOREIGN KEY (`idsub`) REFERENCES `subgrade` (`idsub`),
  ADD CONSTRAINT `seccion_ibfk_2` FOREIGN KEY (`idtea`) REFERENCES `teachers` (`idtea`),
  ADD CONSTRAINT `seccion_ibfk_3` FOREIGN KEY (`idcur`) REFERENCES `course` (`idcur`);

--
-- Filtros para la tabla `subgrade`
--
ALTER TABLE `subgrade`
  ADD CONSTRAINT `subgrade_ibfk_1` FOREIGN KEY (`iddeg`) REFERENCES `degree` (`iddeg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
