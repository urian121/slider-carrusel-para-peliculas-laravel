-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2022 a las 13:54:05
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `slider`
--

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
(5, '2022_03_04_155941_create_peliculas_table', 1);

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
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puntos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `descripcion`, `year`, `genero`, `puntos`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Contra el Hielo', 'En 1909, dos exploradores luchan por sobrevivir después de ser abandonados durante una expedición a Dinamarca en una Groenlandia cubierta de hielo.', '2022', 'Drama', '7', 'foto1.jpg', '2022-03-04 16:08:41', '2022-03-04 16:08:41'),
(2, 'Juego de Criminales', 'Una comisaría de policía de un pequeño pueblo se convierte en el improbable campo de batalla entre un asesino a sueldo, una inteligente policía novata y un estafador que busca refugio tras las rejas sin ningún lugar al que huir.', '2022', 'Accion, Crimen, Drama', '8', 'foto2.webp', '2022-03-11 16:11:32', '2022-03-16 16:11:32'),
(3, 'Sin Salida', 'Darby Thorne, una joven con una emergencia familiar, queda varada por una tormenta de nieve y busca refugio en la autopista junto a un grupo de extraños. Cuando ve a una niña raptada en una furgoneta en el estacionamiento, comienza una lucha de vida o muerte por descubrir quién de ellos es el secuestrador.', '2022', 'Drama, Misterio, Suspenso', '5', 'foto3.jpg', '2022-03-10 16:15:11', '2022-03-16 16:11:32'),
(4, 'Sin respiro', 'Después de hacer lo indecible para encubrir un accidente, un policía corrupto pierde el control de su vida cuando comienza a recibir amenazas de un misterioso testigo.', '2022', 'Acción / Crimen / Suspense', '4', 'foto4.webp', '2022-03-24 16:26:02', '2022-03-15 16:26:02'),
(5, 'La máscara del terror', 'Una joven enfermera es secuestrada por un grupo de adolescentes violentos que escapan de un hospital psiquiátrico y la llevan al camino del infierno. Perseguido por un legislador igualmente desquiciado en busca de venganza, uno de los adolescentes está destinado a la tragedia y los horrores que destruirán su mente, convirtiéndolo en un monstruo llamado Leatherface.', '2022', 'Misterio / Suspense / Terror', '7', 'foto5.jpg', '2022-03-04 19:34:05', '2022-03-11 19:34:05'),
(6, 'Deadlock', 'Ron Whitlock es un criminal buscado que lidera un equipo de mercenarios en una misión de venganza. Convencido de que el gobierno está trabajando contra ellos, el grupo se apodera brutalmente de una planta de energía y retiene a todos los que están dentro como rehenes. Con una ciudad cercana al borde de inundaciones masivas y destrucción, depende de un guardabosques de élite retirado, Mack Karr (Patrick Muldoon), salvar miles de vidas inocentes antes de que sea demasiado tarde.', '2022', 'Acción / Suspense', '5', 'foto6.webp', '2022-03-23 19:37:37', '2022-03-24 19:37:37'),
(7, 'Bigbug', 'Los humanos han cedido la mayoría de las tareas a la IA en 2045, incluso en la casa de la nostálgica Alice. Entonces, cuando los robots organizan un golpe, sus androides cierran sus puertas de manera protectora.', '2022', 'Ciencia ficción / Comedia', '6', 'foto7.webp', NULL, NULL),
(8, 'Cásate conmigo', ' Cásate conmigo (Marry Me)\r\n\r\nBastian (Interpretado por Maluma) y Kat Valdez (Interpretada por Jennifer López) son una exitosa pareja de artistas que está a punto de casarse. Pero, cuando llega el gran día, Bastian deja plantada en el altar del Madison Square Garden a su prometida delante de miles seguidores y tras haber lanzado una canción acerca de su enlace. Sin embargo, Kat se acaba de enterar de que su pareja le había estado engañando con su asistente y, de forma repentina, decide casarse con uno de sus seguidores (Interpretado por Owen Wilson), a quien no conoce de absolutamente nada.', '2022', 'Comedia / Música / Romance', '9', 'foto8.webp', NULL, NULL);

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
