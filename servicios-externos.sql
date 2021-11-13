-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-11-2021 a las 22:49:52
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `servicios-externos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idAlumno` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `idCarrera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idAlumno`, `nombre`, `email`, `telefono`, `idCarrera`) VALUES
(1, 'ABRAHAM VICTOR ZARAGOZA RODRIGUEZ', 'VICKO8148@GMAIL.COM', '9516129964', 2),
(3, 'ABIGAIL JOSEFINA CUEVAS ZÁRATE', 'ABI@GMAIL.COM', '9512782182', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areaconoc`
--

CREATE TABLE `areaconoc` (
  `idAreaC` int(11) NOT NULL,
  `nomAreaC` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areaconoc`
--

INSERT INTO `areaconoc` (`idAreaC`, `nomAreaC`) VALUES
(1, 'Matematicas'),
(2, 'Ciencias Sociales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesorexterno`
--

CREATE TABLE `asesorexterno` (
  `idAsesorE` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asesorexterno`
--

INSERT INTO `asesorexterno` (`idAsesorE`, `nombre`, `email`, `telefono`) VALUES
(2, 'JUAN PEREZ', 'JUAN@GMAIL.COM', '534323'),
(3, 'LUIS', 'LUIS@GMAIL.COM', '9378133');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesorinterno`
--

CREATE TABLE `asesorinterno` (
  `idAsesorI` int(70) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asesorinterno`
--

INSERT INTO `asesorinterno` (`idAsesorI`, `nombre`, `email`, `telefono`) VALUES
(1, 'JUAN LUIS MENDEZ', 'JUAN-MENDEZ@GMAIL.COM', '9512782182'),
(3, 'CARLOS ENRIQUE MORALES BAUTISTA', 'CARLOS.MB@VOAXACA.TECNM.MX', '916387312');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idCarrera` int(70) NOT NULL,
  `nomCarrera` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idCarrera`, `nomCarrera`) VALUES
(2, 'INFORMÁTICA'),
(4, 'AGRONOMIA'),
(5, 'FORESTAL'),
(6, 'TICS'),
(7, 'BIOLOGÍA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenio`
--

CREATE TABLE `convenio` (
  `idConvenio` int(11) NOT NULL,
  `folio` varchar(100) NOT NULL,
  `fechaFirma` date NOT NULL,
  `fechaVigencia` date NOT NULL,
  `estatus` varchar(100) NOT NULL,
  `idTipoCon` int(11) NOT NULL,
  `idInstancia` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleindicador`
--

CREATE TABLE `detalleindicador` (
  `idDetalle` int(11) NOT NULL,
  `idIndicador` int(11) NOT NULL,
  `idConvenio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `giro`
--

CREATE TABLE `giro` (
  `idGiro` int(11) NOT NULL,
  `nomGiro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `giro`
--

INSERT INTO `giro` (`idGiro`, `nomGiro`) VALUES
(1, 'Tecnológica'),
(2, 'Forestal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicador`
--

CREATE TABLE `indicador` (
  `idIndicador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `indicador`
--

INSERT INTO `indicador` (`idIndicador`, `nombre`, `descripcion`) VALUES
(2, 'INDICADOR2', 'INDICADOR PUREBA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instancia`
--

CREATE TABLE `instancia` (
  `idInstancia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `idGiro` int(11) DEFAULT NULL,
  `idSector` int(11) DEFAULT NULL,
  `idTipoSec` int(11) DEFAULT NULL,
  `idTamanio` int(11) DEFAULT NULL,
  `idAlcance` int(11) DEFAULT NULL,
  `idAreaC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instancia`
--

INSERT INTO `instancia` (`idInstancia`, `nombre`, `responsable`, `email`, `telefono`, `idGiro`, `idSector`, `idTipoSec`, `idTamanio`, `idAlcance`, `idAreaC`) VALUES
(2, 'COLEGIOS DE ESTUDIOS DE INFORMÁTICA', 'PAOLA ARRONA', 'CEI@GMAIL.COM', '9512782182', 1, 6, 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_26_223537_add_votes_to_users_table', 1),
(6, '2021_10_26_223710_create_flights_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `idPeriodo` int(70) NOT NULL,
  `periodo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`idPeriodo`, `periodo`) VALUES
(1, 'ENERO-JUNIO-2020'),
(2, 'ENERO-JUNIO-2021-2'),
(4, 'ENERO-JUNIO-2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `nomProyecto` int(255) NOT NULL,
  `periodo` int(100) NOT NULL,
  `modalidad` int(100) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idAsesorI` int(11) NOT NULL,
  `idAsesorE` int(11) NOT NULL,
  `idinstancia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `idSector` int(11) NOT NULL,
  `nomSector` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`idSector`, `nomSector`) VALUES
(6, 'SECUNDARIO'),
(8, 'TERCIARIO'),
(9, 'PRIMARIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector2`
--

CREATE TABLE `sector2` (
  `idSector` int(10) NOT NULL,
  `nomSector` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sector2`
--

INSERT INTO `sector2` (`idSector`, `nomSector`) VALUES
(1, 'Terciario'),
(2, 'Terciario22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamanio`
--

CREATE TABLE `tamanio` (
  `idTamanio` int(11) NOT NULL,
  `nomTamanio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tamanio`
--

INSERT INTO `tamanio` (`idTamanio`, `nomTamanio`) VALUES
(1, 'Mediana'),
(2, 'Pequeña'),
(4, 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoconvenio`
--

CREATE TABLE `tipoconvenio` (
  `idTipoConvenio` int(11) NOT NULL,
  `nomTipoConvenio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoconvenio`
--

INSERT INTO `tipoconvenio` (`idTipoConvenio`, `nomTipoConvenio`) VALUES
(1, 'CONVENIOS DE RESIDENCIAS PROFESIONALES'),
(3, 'CONVENIO MARCO DE COLABORACIÓN ACADÉMICA, CIENTÍFICA Y TECNOLÓGICA'),
(4, 'CONVENIOS DE SERVICIO SOCIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposector`
--

CREATE TABLE `tiposector` (
  `idTipoSec` int(11) NOT NULL,
  `nomTipoSec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tiposector`
--

INSERT INTO `tiposector` (`idTipoSec`, `nomTipoSec`) VALUES
(1, 'tiposector'),
(3, 'Terciario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Victor Rodriguez', 'avictor.zrodriguez@gmail.com', NULL, '$2y$10$sd8MEsAlLVpRUEz.TPuSnOfpI5W5fR3moHkhqBTPcNbMktmZuKmIa', NULL, '2021-10-28 21:05:13', '2021-10-28 21:05:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(70) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contrasenia` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idAlumno`),
  ADD KEY `idCarrera` (`idCarrera`);

--
-- Indices de la tabla `areaconoc`
--
ALTER TABLE `areaconoc`
  ADD PRIMARY KEY (`idAreaC`);

--
-- Indices de la tabla `asesorexterno`
--
ALTER TABLE `asesorexterno`
  ADD PRIMARY KEY (`idAsesorE`);

--
-- Indices de la tabla `asesorinterno`
--
ALTER TABLE `asesorinterno`
  ADD PRIMARY KEY (`idAsesorI`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idCarrera`);

--
-- Indices de la tabla `convenio`
--
ALTER TABLE `convenio`
  ADD PRIMARY KEY (`idConvenio`),
  ADD KEY `idTipoCon` (`idTipoCon`),
  ADD KEY `idInstancia` (`idInstancia`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `detalleindicador`
--
ALTER TABLE `detalleindicador`
  ADD PRIMARY KEY (`idDetalle`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `giro`
--
ALTER TABLE `giro`
  ADD PRIMARY KEY (`idGiro`);

--
-- Indices de la tabla `indicador`
--
ALTER TABLE `indicador`
  ADD PRIMARY KEY (`idIndicador`);

--
-- Indices de la tabla `instancia`
--
ALTER TABLE `instancia`
  ADD PRIMARY KEY (`idInstancia`),
  ADD KEY `instancia_ibfk_1` (`idSector`),
  ADD KEY `instancia_ibfk_2` (`idGiro`),
  ADD KEY `instancia_ibfk_3` (`idTipoSec`),
  ADD KEY `instancia_ibfk_4` (`idTamanio`),
  ADD KEY `instancia_ibfk_5` (`idAlcance`),
  ADD KEY `instancia_ibfk_6` (`idAreaC`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`idPeriodo`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`idProyecto`),
  ADD KEY `proyecto_ibfk_1` (`idinstancia`),
  ADD KEY `idAsesorE` (`idAsesorE`),
  ADD KEY `idAsesorI` (`idAsesorI`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`idSector`);

--
-- Indices de la tabla `sector2`
--
ALTER TABLE `sector2`
  ADD PRIMARY KEY (`idSector`);

--
-- Indices de la tabla `tamanio`
--
ALTER TABLE `tamanio`
  ADD PRIMARY KEY (`idTamanio`);

--
-- Indices de la tabla `tipoconvenio`
--
ALTER TABLE `tipoconvenio`
  ADD PRIMARY KEY (`idTipoConvenio`);

--
-- Indices de la tabla `tiposector`
--
ALTER TABLE `tiposector`
  ADD PRIMARY KEY (`idTipoSec`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `idAlumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `areaconoc`
--
ALTER TABLE `areaconoc`
  MODIFY `idAreaC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `asesorexterno`
--
ALTER TABLE `asesorexterno`
  MODIFY `idAsesorE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `asesorinterno`
--
ALTER TABLE `asesorinterno`
  MODIFY `idAsesorI` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `idCarrera` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `convenio`
--
ALTER TABLE `convenio`
  MODIFY `idConvenio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleindicador`
--
ALTER TABLE `detalleindicador`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `giro`
--
ALTER TABLE `giro`
  MODIFY `idGiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `indicador`
--
ALTER TABLE `indicador`
  MODIFY `idIndicador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `instancia`
--
ALTER TABLE `instancia`
  MODIFY `idInstancia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `idPeriodo` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sector`
--
ALTER TABLE `sector`
  MODIFY `idSector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sector2`
--
ALTER TABLE `sector2`
  MODIFY `idSector` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tamanio`
--
ALTER TABLE `tamanio`
  MODIFY `idTamanio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipoconvenio`
--
ALTER TABLE `tipoconvenio`
  MODIFY `idTipoConvenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tiposector`
--
ALTER TABLE `tiposector`
  MODIFY `idTipoSec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(70) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`),
  ADD CONSTRAINT `idCarrera` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`);

--
-- Filtros para la tabla `convenio`
--
ALTER TABLE `convenio`
  ADD CONSTRAINT `convenio_ibfk_1` FOREIGN KEY (`idTipoCon`) REFERENCES `convenio` (`idConvenio`),
  ADD CONSTRAINT `convenio_ibfk_2` FOREIGN KEY (`idInstancia`) REFERENCES `instancia` (`idInstancia`),
  ADD CONSTRAINT `convenio_ibfk_3` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `instancia`
--
ALTER TABLE `instancia`
  ADD CONSTRAINT `instancia_ibfk_1` FOREIGN KEY (`idSector`) REFERENCES `sector` (`idSector`),
  ADD CONSTRAINT `instancia_ibfk_2` FOREIGN KEY (`idGiro`) REFERENCES `giro` (`idGiro`),
  ADD CONSTRAINT `instancia_ibfk_3` FOREIGN KEY (`idTipoSec`) REFERENCES `tiposector` (`idTipoSec`),
  ADD CONSTRAINT `instancia_ibfk_4` FOREIGN KEY (`idTamanio`) REFERENCES `tamanio` (`idTamanio`),
  ADD CONSTRAINT `instancia_ibfk_5` FOREIGN KEY (`idAlcance`) REFERENCES `alcance` (`idAlcance`),
  ADD CONSTRAINT `instancia_ibfk_6` FOREIGN KEY (`idAreaC`) REFERENCES `areaconoc` (`idAreaC`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`idinstancia`) REFERENCES `instancia` (`idInstancia`),
  ADD CONSTRAINT `proyecto_ibfk_2` FOREIGN KEY (`idAsesorE`) REFERENCES `asesorexterno` (`idAsesorE`),
  ADD CONSTRAINT `proyecto_ibfk_3` FOREIGN KEY (`idAsesorI`) REFERENCES `asesorinterno` (`idAsesorI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
