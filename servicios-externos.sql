-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-12-2021 a las 21:58:59
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
-- Estructura de tabla para la tabla `alcance`
--

CREATE TABLE `alcance` (
  `idAlcance` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alcance`
--

INSERT INTO `alcance` (`idAlcance`, `nombre`) VALUES
(1, 'ESTATAL'),
(2, 'NACIONAL'),
(3, 'INTERNACIONAL');

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
(1, 'I. y T. INGENIERÍA Y TECNOLOGÍA'),
(2, 'E.A. ECONOMÍA ADMINISTRATIVA'),
(3, 'C.N.E. CIENCIAS NATURALES Y EXACTAS'),
(4, 'A.F.E.P. AGROPECUARIAS, FORESTALES, EXTRACTIVAS, ETC.'),
(5, 'H. HUMANIDADES');

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
(2, 'INGENIERÍA INFORMÁTICA'),
(3, 'INGENIERÍA FORESTAL'),
(4, 'INGENIERÍA AGRONOMÍA'),
(5, 'LICENCIATURA BIOLOGÍA'),
(6, 'INGENIERÍA TIC´S');

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
  `urlConvenio` varchar(500) NOT NULL,
  `carreras` varchar(500) NOT NULL,
  `idTipoCon` int(11) NOT NULL,
  `idInstancia` int(11) NOT NULL,
  `idUsuario` bigint(20) UNSIGNED NOT NULL,
  `idIndicador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `convenio`
--

INSERT INTO `convenio` (`idConvenio`, `folio`, `fechaFirma`, `fechaVigencia`, `estatus`, `urlConvenio`, `carreras`, `idTipoCon`, `idInstancia`, `idUsuario`, `idIndicador`) VALUES
(12, '47/GTyV/2021', '2021-10-04', '2023-10-04', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/047-CR-2021.PDF?csf=1&web=1&e=j5esKY', '', 3, 11, 1, 20),
(13, '48/GTyV/2021', '2021-11-04', '2023-10-04', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/047-CM-2021.pdf?csf=1&web=1&e=yxS2yn', '', 1, 11, 1, 20),
(14, '55/GTyV/2021', '2021-11-03', '2022-11-03', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/047-CM-2021.pdf?csf=1&web=1&e=NdtIo1', '', 3, 12, 1, 13),
(15, '64/GTyV/2021', '2021-10-29', '2024-10-29', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/047-CM-2021.pdf?csf=1&web=1&e=YzEH5I', '', 3, 13, 1, 20),
(16, '58/GTyV/2021', '2021-10-14', '2024-10-14', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/058-CM-2021-FILATELIA.PDF?csf=1&web=1&e=swQ5SR', '', 3, 10, 1, 20),
(17, '59/GTyV/2021', '2021-10-14', '2024-10-14', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/058-CM-2021-FILATELIA.PDF?csf=1&web=1&e=sBwEiX', '', 1, 10, 1, 20),
(18, '60/GTyV/2021', '2021-10-14', '2024-10-14', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/060-CSS-2021-FILATELIA.PDF?csf=1&web=1&e=gk9dS6', '', 4, 10, 1, 20),
(19, '65/GTyV/2021', '2021-10-29', '2024-10-29', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/065-CR-2021.PDF?csf=1&web=1&e=S1WYgM', '', 1, 13, 1, 20),
(20, '68/GTyV/2021', '2021-11-01', '2024-11-01', 'VIGENTE', 'https://snitmx-my.sharepoint.com/:b:/r/personal/vin_voaxaca_tecnm_mx/Documents/CONVENIOS%20PDF%C2%B4S/CONVENIOS%202021/068-CM-2021.PDF?csf=1&web=1&e=L0ahtk', '', 3, 12, 1, 13);

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
(1, 'EMPRESAS DEL SECTOR PRIMARIO'),
(2, 'EMPRESAS DEL SECTOR SECUNDARIO'),
(3, 'EMPRESAS DEL SECTOR TERCIARIO O DE SERVICIOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicador`
--

CREATE TABLE `indicador` (
  `idIndicador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `indicador`
--

INSERT INTO `indicador` (`idIndicador`, `nombre`, `descripcion`) VALUES
(5, 'REUNIONES DE TRABAJO', 'REALIZAR REUNIONES DE TRABAJO QUE CONTRIBUYAN A LA SOLUCIÓN DE PROBLEMAS REGIONALES Y NACIONALES.'),
(6, 'FIRMAS CONVENIO CON OTRAS IES.', 'FIRMAR CONVENIO O ACUERDOS DE COOPERACIÓN CON OTRAS IES NACIONALES O INTERNACIONALES.'),
(10, 'ESTABLECER CONVENIOS', 'ESTABLECER LOS CONVENIOS DE COLABORACIÓN CON ESQUEMAS DE INVERSIÓN EN PROYECTOS DE CIENCIA, TECNOLOGÍA E INNOVACIÓN.'),
(11, 'PROPONER ESQUEMAS', 'PROPONER ESQUEMAS DE INVERSIÓN PARA ESTABLECER PROYECTOS DE CIENCIA, TECNOLOGÍA E INNOVACIÓN EN LAS REGIONES DEL ESTADO.'),
(12, 'PARTICIPAR EN ESQUEMAS', 'PARTICIPAR EN ESQUEMAS DE INVERSIÓN EN PROYECTOS DE CIENCIA, TECNOLOGÍA E INNOVACIÓN EN EL SECTOR REGIONAL.'),
(13, 'FIRMAR CONEVENIOS PARA EL APROVECHAMIENTO', 'FIRMAR CONVENIOS PARA EL APROVECHAMIENTO INTERINSTITUCIONAL DE LAS INSTALACIONES.'),
(14, 'ESQUEMAS DE CONVENIO USO COMPARTIDO', 'PROPONER ESQUEMAS DE CONVENIOS PARA EL USO COMPARTIDO DE LAS INSTALACIONES PARA LAS ACTIVIDADES CIENTÍFICAS, TECNOLÓGICAS Y DE INNOVACIÓN.'),
(15, 'CONSEJO DE VINCULACIÓN', 'MANTENER EL CONSEJO DE VINCULACIÓN.'),
(16, 'REALIZAR REUNIONES', 'REALIZAR REUNIONES ORDINARIAS DEL CONSEJO DE VINCULACIÓN.'),
(17, 'MECANISMOS DE VINCULACION', 'ESTABLECER MECANISMOS DE VINCULACIÓN CON LOS DIFERENTES SECTORES DE LA INICIATIVA PRIVADA.'),
(18, 'ACUERDO DE COOPERACIÓN', 'FIRMAR CONVENIO O ACUERDO DE COOPERACIÓN ENTRE INSTITUTOS TECNOLÓGICOS O CENTROS ADSCRITOS AL TECNM.'),
(19, 'SOLUCIÓN DE PROBLEMAS.', 'REALIZAR REUNIONES DE TRABAJO QUE CONTRIBUYAN A LA SOLUCIÓN DE PROBLEMAS REGIONALES Y NACIONALES.'),
(20, 'CONTRATOS DE VINCULACIÓN. ', 'FIRMAR CONVENIOS O CONTRATOS DE VINCULACIÓN CON LOS SECTORES PÚBLICO, SOCIAL Y PRIVADO.'),
(21, 'PROPONER ESQUEMAS DE CONVENIOS.', 'PROPONER ESQUEMAS DE CONVENIOS O CONTRATOS CON LOS SECTORES PÚBLICO, SOCIAL Y PRIVADO EN LAS REGIONES DEL ESTADO.'),
(22, 'SELECCIÓN DE INSTANCIAS', 'SELECCIONAR INSTANCIAS PARA QUE PARTICIPEN EN ESQUEMAS DE CONVENIOS O CONTRATOS DE VINCULACIÓN DE LOS DIFERENTES SECTORES.'),
(23, 'REGISTRO DE PROPIEDAD INTELECTUAL.', 'REGISTRAR PROPIEDAD INTELECTUAL O MARCA REGISTRADA.'),
(24, 'PROMOCIÓN DE PROTECCIÓN A LA PROPIEDAD INTELECTUAL.', 'CURSO, TALLER O PLÁTICAS PARA LA PROMOCIÓN DE LA PROTECCIÓN DE LA PROPIEDAD INTELECTUAL.'),
(25, 'EMPRESAS INCUBADAS.', 'GENERAR EMPRESAS INCUBADAS POR EL CIIE DEL INSTITUTO.'),
(26, 'SERVICIOS ESPECIALIZADOS.', 'PROMOVER LOS SERVICIOS ESPECIALIZADOS QUE OFRECE EL CIIE.'),
(27, 'FORTALECIMIENTO DE LA INCUBACIÓN.', 'CURSO, TALLER O PLÁTICAS PARA EL FORTALECIMIENTO DE LA INCUBACIÓN DE EMPRESAS.'),
(28, 'ENCUESTA A EGRESADOS.', 'APLICAR ENCUESTA A EGRESADOS DEL INSTITUTO.'),
(29, 'ENCUENTRO DE EGRESADOS Y EMPLEADORES.', 'REALIZAR EL ENCUENTRO DE EGRESADOS Y EMPLEADORES.'),
(30, 'SEGUIMIENTO DE LAS ESTADÍSTICAS DE EGRESADOS.', 'REPORTAR EL SEGUIMIENTO DE LAS ESTADÍSTICAS DE EGRESADOS.'),
(31, 'PROMOVER LA PARTICIPACIÓN.', 'PROMOVER LA PARTICIPACIÓN DE ESTUDIANTES Y DOCENTES EN PROYECTOS DE EMPRENDIMIENTO CON ENFOQUE EN LA INNOVACIÓN Y SUSTENTABILIDAD.'),
(32, 'FORTALECIMIENTO DEL EMPRENDIMIENTO. ', 'CURSOS, TALLERES, PLÁTICAS PARA EL FORTALECIMIENTO DEL EMPRENDIMIENTO CON ENFOQUE EN LA INNOVACIÓN Y SUSTENTABILIDAD.'),
(33, 'PARTICIPACIÓN EN CONCURSOS.', 'PARTICIPACIÓN EN CONCURSOS O CONVOCATORIAS DE EMPRENDIMIENTO.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instancia`
--

CREATE TABLE `instancia` (
  `idInstancia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `idGiro` int(11) DEFAULT NULL,
  `idSector` int(11) DEFAULT NULL,
  `idTipoSec` int(11) DEFAULT NULL,
  `idTamanio` int(11) DEFAULT NULL,
  `idAreaC` int(11) DEFAULT NULL,
  `idAlcance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instancia`
--

INSERT INTO `instancia` (`idInstancia`, `nombre`, `responsable`, `email`, `telefono`, `idGiro`, `idSector`, `idTipoSec`, `idTamanio`, `idAreaC`, `idAlcance`) VALUES
(10, 'MUSEO DE LA FILATELIA DE OAXACA A.C', 'SIN RESPONSABLE', 'DIFUSION@MUFI.ORG.MX', '(951) 514 2366 / 514 2375', 3, 1, 5, 2, 5, 2),
(11, 'INNOVACCIÓN TECNOLOGICA APLICADA A LAS GEOCIENCIAS, ACADEMIA DE INVESTIGACIÓN A.C.', 'DOCTOR ALFREDO ORGEL ROMERO', NULL, NULL, 3, 1, 8, NULL, 3, 2),
(12, 'COLEGIO DE ESTUDIOS EN INFORMATICA, SOCIEDAD CIVIL SEDE OAXACA.', 'L.A. RAFAEL PLACIDO AGUIRRE GORDILLO', NULL, ' 951 501 1891', 3, 1, 8, 3, 5, 2),
(13, 'TECOALT ASESORÍA AMBIENTAL Y SOLUCIONES ALTERNATIVAS S.A DE C.V', 'ING. EUGENIO REYNOSA GUERRERO', 'INFO@TECOATL-AMBIENTAL.COM', '951 517 0036', 1, 1, 2, 3, 3, 1);

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
(1, 'ENERO-JUNIO 2020'),
(2, 'AGOSTO-DICIEMBRE 2020'),
(3, 'ENERO-JUNIO 2021'),
(4, 'AGOSTO-DICIEMBRE 2021'),
(5, 'ENERO-JUNIO 2022'),
(6, 'AGOSTO-DICIEMBRE 2022');

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
  `nomProyecto` varchar(255) NOT NULL,
  `modalidad` varchar(100) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idAsesorI` int(11) NOT NULL,
  `idAsesorE` int(11) NOT NULL,
  `idInstancia` int(11) NOT NULL
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
(1, 'PÚBLICO'),
(2, 'PRIVADO'),
(3, 'SOCIAL'),
(4, 'PRODUCTIVO');

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
(1, 'MICROEMPRESA'),
(2, 'PEQUEÑA'),
(3, 'MEDIANA'),
(4, 'GRAN EMPRESA');

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
(1, 'GIRO COMERCIAL'),
(2, 'GIRO INDUSTRIAL'),
(3, 'GIRO SOCIAL'),
(4, 'SERVICIOS DE TURISMO'),
(5, 'SERVICIOS DE CULTURA Y ENTRETENIMIENTO'),
(6, 'SERVICIOS DE EDUCACIÓN'),
(7, 'SERVICIOS PRIVADOS'),
(8, 'SERVICIOS PÚBLICOS');

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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alcance`
--
ALTER TABLE `alcance`
  ADD PRIMARY KEY (`idAlcance`);

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
  ADD KEY `id` (`idUsuario`),
  ADD KEY `idIndicador` (`idIndicador`);

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
  ADD KEY `instancia_ibfk_6` (`idAreaC`),
  ADD KEY `idAlcance` (`idAlcance`);

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
  ADD KEY `proyecto_ibfk_1` (`idInstancia`),
  ADD KEY `idAsesorE` (`idAsesorE`),
  ADD KEY `idAsesorI` (`idAsesorI`),
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `idPeriodo` (`idPeriodo`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alcance`
--
ALTER TABLE `alcance`
  MODIFY `idAlcance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `idAlumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `areaconoc`
--
ALTER TABLE `areaconoc`
  MODIFY `idAreaC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `idConvenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `idIndicador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `instancia`
--
ALTER TABLE `instancia`
  MODIFY `idInstancia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `idPeriodo` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `idSector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tamanio`
--
ALTER TABLE `tamanio`
  MODIFY `idTamanio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipoconvenio`
--
ALTER TABLE `tipoconvenio`
  MODIFY `idTipoConvenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tiposector`
--
ALTER TABLE `tiposector`
  MODIFY `idTipoSec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `convenio_ibfk_1` FOREIGN KEY (`idTipoCon`) REFERENCES `tipoconvenio` (`idTipoConvenio`),
  ADD CONSTRAINT `convenio_ibfk_2` FOREIGN KEY (`idInstancia`) REFERENCES `instancia` (`idInstancia`),
  ADD CONSTRAINT `convenio_ibfk_3` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `convenio_ibfk_4` FOREIGN KEY (`idIndicador`) REFERENCES `indicador` (`idIndicador`);

--
-- Filtros para la tabla `instancia`
--
ALTER TABLE `instancia`
  ADD CONSTRAINT `instancia_ibfk_1` FOREIGN KEY (`idAlcance`) REFERENCES `alcance` (`idAlcance`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`idInstancia`) REFERENCES `instancia` (`idInstancia`),
  ADD CONSTRAINT `proyecto_ibfk_2` FOREIGN KEY (`idAsesorE`) REFERENCES `asesorexterno` (`idAsesorE`),
  ADD CONSTRAINT `proyecto_ibfk_3` FOREIGN KEY (`idAsesorI`) REFERENCES `asesorinterno` (`idAsesorI`),
  ADD CONSTRAINT `proyecto_ibfk_4` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`),
  ADD CONSTRAINT `proyecto_ibfk_5` FOREIGN KEY (`idPeriodo`) REFERENCES `periodo` (`idPeriodo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
