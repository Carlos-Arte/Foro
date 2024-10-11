-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2024 a las 16:13:09
-- Versión del servidor: 10.6.7-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plindcom_tbd03`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eriberto Orn', 'Perspiciatis alias animi dolores non. Omnis et sapiente et molestias recusandae minima. Vel velit officiis et asperiores aut maiores quo.', '2024-09-28 23:03:45', '2024-09-28 23:03:45', NULL),
(2, 'Madisyn Kling', 'Harum ad consequatur illo quaerat odio aliquid. Quia ut placeat ab facere enim quis vero. Doloremque praesentium et provident optio. In omnis modi eum occaecati totam omnis in.', '2024-09-28 23:03:45', '2024-09-28 23:03:45', NULL),
(3, 'Maryam Jacobi', 'Sunt et quaerat ratione et autem. Est omnis fugiat vero commodi. Quidem minima magni a earum et. Ea quae qui laborum nihil.', '2024-09-28 23:03:45', '2024-09-28 23:03:45', NULL),
(4, 'Elroy Kuhic', 'Ut quisquam aut consequatur iusto repudiandae. Repudiandae qui quia eveniet vel provident ab. Quo voluptates maiores placeat autem. Enim laborum libero optio quia eos.', '2024-09-28 23:03:45', '2024-09-28 23:03:45', NULL),
(5, 'Herminio Parisian', 'Voluptas omnis distinctio tempora itaque. Iusto eum est nostrum. Ipsum quas est iste magni veritatis. Et nesciunt est et.', '2024-09-28 23:03:45', '2024-09-28 23:03:45', NULL),
(6, 'Futbol', 'En esta categoría aceptamos todas tus preguntas sobre este deporte, así como comentarios relacionados a la temática', '2024-09-28 23:21:07', '2024-09-28 23:21:07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comentario` varchar(50) NOT NULL,
  `adjunto` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `user_id`, `comentario`, `adjunto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(40, 1, 'Gran partido!', NULL, '2024-10-11 13:47:30', '2024-10-11 13:47:30', NULL),
(41, 2, 'Que lastima que perdiera', NULL, '2024-10-11 13:48:40', '2024-10-11 13:48:40', NULL),
(42, 3, 'No pude verlo!', NULL, '2024-10-11 13:50:15', '2024-10-11 13:50:15', NULL),
(43, 9, 'El mejor partido que vi', NULL, '2024-10-11 13:52:14', '2024-10-11 13:52:14', NULL),
(44, 9, 'Prueba', NULL, '2024-10-11 13:53:14', '2024-10-11 13:53:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_post`
--

CREATE TABLE `comentario_post` (
  `id` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `comentario` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentario_post`
--

INSERT INTO `comentario_post` (`id`, `post`, `comentario`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, '2024-10-11 10:41:52', NULL, NULL),
(2, 3, 3, '2024-10-11 10:42:50', NULL, NULL),
(3, 3, 5, '2024-10-11 11:29:59', NULL, NULL),
(4, 3, 7, '2024-10-11 11:32:06', NULL, NULL),
(5, 7, 8, '2024-10-11 11:33:17', NULL, NULL),
(6, 7, 10, '2024-10-11 11:33:53', NULL, NULL),
(7, 3, 11, '2024-10-11 11:35:11', NULL, NULL),
(8, 7, 14, '2024-10-11 11:38:27', NULL, NULL),
(9, 7, 15, '2024-10-11 11:38:55', NULL, NULL),
(10, 7, 16, '2024-10-11 11:40:21', NULL, NULL),
(11, 3, 17, '2024-10-11 11:42:07', NULL, NULL),
(12, 3, 18, '2024-10-11 11:47:40', NULL, NULL),
(13, 3, 20, '2024-10-11 11:49:00', NULL, NULL),
(14, 3, 21, '2024-10-11 11:49:30', NULL, NULL),
(15, 7, 22, '2024-10-11 11:50:14', NULL, NULL),
(16, 7, 24, '2024-10-11 11:53:19', NULL, NULL),
(17, 3, 25, '2024-10-11 11:53:24', NULL, NULL),
(18, 7, 26, '2024-10-11 12:02:46', NULL, NULL),
(19, 3, 27, '2024-10-11 12:21:16', NULL, NULL),
(20, 3, 28, '2024-10-11 12:55:35', NULL, NULL),
(21, 3, 29, '2024-10-11 13:34:55', NULL, NULL),
(22, 3, 30, '2024-10-11 13:38:54', NULL, NULL),
(23, 3, 31, '2024-10-11 13:38:58', NULL, NULL),
(24, 3, 32, '2024-10-11 13:39:03', NULL, NULL),
(25, 3, 33, '2024-10-11 13:39:50', NULL, NULL),
(26, 3, 34, '2024-10-11 13:39:57', NULL, NULL),
(27, 3, 35, '2024-10-11 13:40:06', NULL, NULL),
(28, 3, 36, '2024-10-11 13:40:11', NULL, NULL),
(29, 3, 37, '2024-10-11 13:44:59', NULL, NULL),
(30, 3, 38, '2024-10-11 13:45:05', NULL, NULL),
(31, 3, 39, '2024-10-11 13:45:12', NULL, NULL),
(32, 3, 40, '2024-10-11 13:47:30', NULL, NULL),
(33, 3, 41, '2024-10-11 13:48:40', NULL, NULL),
(34, 3, 42, '2024-10-11 13:50:15', NULL, NULL),
(35, 3, 43, '2024-10-11 13:52:14', NULL, NULL),
(36, 8, 44, '2024-10-11 13:53:14', NULL, NULL);

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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `autor` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `resumen` text DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `adjuntos` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `autor`, `categoria_id`, `nombre`, `resumen`, `contenido`, `imagen`, `adjuntos`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 6, 'Partido de America vs Chivas', 'Este partido fue celebrado el 04 de octubre', 'El resultado del partido fue 3-1 a favor del America', NULL, NULL, '2024-10-05 07:36:51', NULL, NULL),
(6, 1, 6, 'Partido de Atlas vs Puebla', 'Este partido es próximo a realizarse', 'No olviden ver el partido el día 10 de octubre', NULL, NULL, '2024-10-05 07:52:00', NULL, NULL),
(7, 1, 6, 'Suspensión de partidos', 'Se suspenden los partidos en teziutlan', 'Debido al mal clima todos los partidos programados del 11 al 15 de octubre serán suspendidos', NULL, NULL, '2024-10-05 08:25:54', NULL, NULL),
(8, 1, 5, 'Prueba', 'sdfghjk,l.dcfghjk', '123456789123456789', NULL, NULL, '2024-10-05 22:55:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('lc8dTvQ5OZj1PjRYOq4pPwJuFgE8pWWI7Bl6D56f', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY09wdnBRNnZCVkg2OHc3M0dsMnFqMlJlNm93TDJkcmFhTVNMNzJKZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1728655241);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `imagen`, `perfil`, `username`, `estado`, `name`, `apellido_paterno`, `apellido_materno`, `email`, `email_verified_at`, `password`, `descripcion`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT21eyA0ijVhlr-7DtWdOPwE8_UvUg0F6SVQw&usqp=CAU', 'Admin', 'Carlos_art', 1, 'Carlos', 'Arteaga', 'Arriaga', 'omar.arte@gmail.com', NULL, '$2y$12$CBxgBJXV7X7eB5Y1VMouc.qasdtSbukuk4WZHiNXM816SkEfTACvy', 'Prueba', NULL, '2024-09-29 04:53:35', '2024-10-06 05:16:00'),
(2, 'https://via.placeholder.com/640x480.png/00bb66?text=quibusdam', 'Admin', 'marcelino.schulist', 1, 'Estel', 'Stoltenberg', 'Huels', 'chasity37@example.net', '2024-09-29 04:53:55', '$2y$12$HtHdWVbeIIq617hrBnPi6.7n6RGJ4MLOTQ29P6NQtECcwnGihJBrS', 'Non saepe neque quis mollitia ipsam sed.', 'HIQhxtepTn9MKKcMIVe7knlUGjgLGMMfDaz1jvPlY71Mx94k3pXtE4DetpSF', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(3, 'https://via.placeholder.com/640x480.png/007799?text=nemo', 'lector', 'timothy.shields', 0, 'Verla', 'Conroy', 'Rau', 'lcassin@example.net', '2024-09-29 04:53:55', '$2y$12$B/3NvAqyDbSgcQ7PeSZXhuLNKme.WtGMx4qpco0pruBv.tCFmYi7m', 'Assumenda minus et itaque qui ipsum.', 'kpyGn0Tc89i71t73NhBa45kJ2kdINnAlh39cyKwpcGXILRek0nnSzfCaqaWD', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(4, 'https://via.placeholder.com/640x480.png/0099aa?text=quidem', 'usuario', 'mohamed74', 1, 'Oran', 'Murazik', 'Bechtelar', 'lehner.jacey@example.net', '2024-09-29 04:53:56', '$2y$12$NQQYfCBxJu./2cEK22.hr.CRmhc6WtLwJiOfHNuveMNe9JJFwHuUK', 'Vitae dignissimos iusto omnis et.', 'lweptnyqaQ', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(5, 'https://via.placeholder.com/640x480.png/002222?text=ratione', 'lector', 'tpaucek', 1, 'Emmitt', 'Mitchell', 'Ortiz', 'americo.stoltenberg@example.com', '2024-09-29 04:53:56', '$2y$12$ys2V5K2yaDLWfjAHjC4WQue3nvmx7Eelt1LLOPnX/7Ww8fyHIXxi.', 'Maiores eaque distinctio commodi quos similique doloremque et.', '99hD8WohGs', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(6, 'https://via.placeholder.com/640x480.png/005555?text=praesentium', 'escritor', 'gibson.keyshawn', 0, 'Aniya', 'Klocko', 'Gibson', 'etha96@example.net', '2024-09-29 04:53:56', '$2y$12$ZfYIv4UifpifWNAUG6M9xORzh/w8aS7ngpVggLk.VPpJsYyBA5LgG', 'Distinctio sapiente et cum ducimus quaerat ut.', 'tMOCAqArsL', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(7, 'https://via.placeholder.com/640x480.png/00ddaa?text=quidem', 'lector', 'balistreri.freddy', 1, 'Barrett', 'White', 'Gulgowski', 'homenick.daphney@example.org', '2024-09-29 04:53:57', '$2y$12$PyVrpDVg9cpeVZQdFQpfZOTJvvZVdTzaEJU9QZg7hayJMjyi31/ue', 'Voluptas dolor et quia omnis modi qui.', 'AbnFrFO7Gi', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(8, 'https://via.placeholder.com/640x480.png/00ff77?text=quasi', 'usuario', 'aliyah.schmeler', 0, 'Krystel', 'Aufderhar', 'Osinski', 'rau.peyton@example.org', '2024-09-29 04:53:57', '$2y$12$xt.bIek1VqmTgESLLhRV1.S2VBBt.c8eQpPMX2FmuGlHs.75q6F/O', 'Atque odit est provident nam.', 'ZjiUKc1qzA', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(9, 'https://via.placeholder.com/640x480.png/0033ee?text=voluptatem', 'lector', 'roob.hector', 1, 'Gerard', 'Fay', 'Goldner', 'wnicolas@example.net', '2024-09-29 04:53:57', '$2y$12$UBxFx.GjGvIAcsRclip55OfT7Bd02UFXZCooolSaCjo0Ps4l31o/S', 'Et repellat maiores dolorem voluptatum pariatur.', 'rUManaFwFfvtFJErwDx4Wu7pRN6d8sqgux7iYI019019oGWawGDPjylKAEvv', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(10, 'https://via.placeholder.com/640x480.png/00ffaa?text=at', 'Admin', 'issac49', 1, 'Carroll', 'Hansen', 'White', 'nskiles@example.net', '2024-09-29 04:53:58', '$2y$12$8GEZhuYHU5kbONOs8/mK6.dwlMWcOXSVESJPgJHeBOHFnRDkbiqSu', 'Molestiae at sint dolores quaerat quo illo voluptatem.', 'XkLSUNxkw3', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(11, 'https://via.placeholder.com/640x480.png/0055bb?text=et', 'usuario', 'ochamplin', 1, 'Freda', 'McKenzie', 'Medhurst', 'alvera.runte@example.net', '2024-09-29 04:53:58', '$2y$12$W/v0ILhRW5afmI/tPK/KgeBUBXC6NVTD/y7LBZXNiqNb05kGO4S3m', 'Ad accusantium ab beatae est qui aut.', 'nh2tMiHPqm', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(12, 'https://via.placeholder.com/640x480.png/00bb22?text=qui', 'escritor', 'mann.moshe', 1, 'Savannah', 'Rice', 'Kiehn', 'bdaniel@example.net', '2024-09-29 04:53:58', '$2y$12$YU0D2ACV4nUOdTwr3eAUNe9nZNHe7mQtwDxLW2uh2Imw0HV89fQ6S', 'Est excepturi impedit et et nobis.', 'sJTYEdb3KO', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(13, 'https://via.placeholder.com/640x480.png/00ee33?text=nihil', 'Admin', 'jaunita.murray', 0, 'Lamar', 'Runolfsdottir', 'Kling', 'xcronin@example.com', '2024-09-29 04:53:59', '$2y$12$8PTDEf6wCCQ713SQrnQfc.QSytBys.cObZP.HPxJz0x6nvSCaWn1e', 'Minima vero expedita exercitationem rem voluptatem maiores voluptatem dolor.', 'YF2uWBZiB3', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(14, 'https://via.placeholder.com/640x480.png/0066dd?text=alias', 'usuario', 'jevon.hermann', 1, 'Irwin', 'White', 'Ritchie', 'schiller.sven@example.com', '2024-09-29 04:53:59', '$2y$12$XdhijIrSmCxi3WBdLiZoC.m4Pw0TfeGQeMDbEveJg9qpH4BqR3tJy', 'Ipsa aspernatur et molestiae quam.', 'IUV1ccAark', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(15, 'https://via.placeholder.com/640x480.png/009988?text=quidem', 'Admin', 'kstokes', 0, 'Jazmyne', 'Block', 'Dach', 'rrodriguez@example.com', '2024-09-29 04:53:59', '$2y$12$CJimFTHs833DwRKpX3rIBO6ZBVJXgNO8yCB3Zh5axF21BUe.87woO', 'Rerum velit aut commodi quidem.', '9HgsV1Wvy4', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(16, 'https://via.placeholder.com/640x480.png/0022aa?text=tempore', 'usuario', 'cwunsch', 0, 'Jackeline', 'Zboncak', 'Wiegand', 'ghansen@example.org', '2024-09-29 04:54:00', '$2y$12$T9XsC.2rCv3ALtYgfgojL.qn/DWTKZi/cJ8zmK1mJTiIFVcCzot2O', 'In repudiandae nihil labore quasi.', 'pTyWtYQEq7', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(17, 'https://via.placeholder.com/640x480.png/005522?text=non', 'escritor', 'stokes.kole', 0, 'Thaddeus', 'Kessler', 'Rutherford', 'ikirlin@example.org', '2024-09-29 04:54:00', '$2y$12$KMwpxkmtikPcUkGBzRXoUeN/IwYvCnS5wgiE5qOSK2p5H3eRkTDgC', 'Quia non cumque eligendi voluptas ut et et aspernatur.', '0O1GiV99ji', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(18, 'https://via.placeholder.com/640x480.png/00aa88?text=cupiditate', 'lector', 'rosella78', 1, 'Spencer', 'Connelly', 'Schumm', 'elmore43@example.org', '2024-09-29 04:54:00', '$2y$12$qvlPp4KTYWrPMVyNasX/kuIKaejEZiOYh3UWBKQKlIK8BAgVQXYkW', 'Sit non cupiditate sapiente repellat quia iste tempore.', 'wM5JbnYq76', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(19, 'https://via.placeholder.com/640x480.png/00dd77?text=nemo', 'escritor', 'rosetta.wolff', 0, 'Abdiel', 'Adams', 'Price', 'wkuvalis@example.net', '2024-09-29 04:54:01', '$2y$12$WeURVqRFHNghRvO5DytEQ.UDcuWCLNJsHhl.G2uRx4mEm9hbFIUbK', 'Ad vero rem laboriosam pariatur eius sed nihil.', 'vCkVkrNq1g', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(20, 'https://via.placeholder.com/640x480.png/009977?text=animi', 'Admin', 'idietrich', 1, 'Macy', 'Dach', 'Predovic', 'thora50@example.com', '2024-09-29 04:54:01', '$2y$12$njYvuY1bbUEnOHpeA3ZXiuacD7nxVbjpaOtvI7UWyNzwZ/8W/0a36', 'Quo dolore nam quia suscipit quos optio.', '2XoC5MitRe', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(21, 'https://via.placeholder.com/640x480.png/006633?text=iste', 'Admin', 'paige.miller', 0, 'Amara', 'Barton', 'Bogisich', 'darlene05@example.com', '2024-09-29 04:54:01', '$2y$12$gcnxbbvNy7Im7VoyanQREucByz/YQKB0w27x5feLQyHmaQs.UV7uy', 'Deserunt maiores animi molestiae ut et.', 'YdLIK06o0R', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(22, 'https://via.placeholder.com/640x480.png/003366?text=rerum', 'usuario', 'lmohr', 0, 'Magnolia', 'Hermiston', 'Bauch', 'wschinner@example.org', '2024-09-29 04:54:02', '$2y$12$A60fD56Gqz4ZMp9siM.YhOUvoCTbATEnWGlyMh/x0mVAe3enDj5t6', 'Quos magnam dolorum eius beatae dolores veniam.', 'bm2F0qdz5l', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(23, 'https://via.placeholder.com/640x480.png/001144?text=quia', 'usuario', 'julie91', 1, 'Ruben', 'Bernier', 'Kuhn', 'kuhlman.terence@example.com', '2024-09-29 04:54:02', '$2y$12$Wd/1YTKXRvbwHnYEFbX86uFf7Z/r8QDPDno/rP.vfChsTkFC0keky', 'Incidunt id dolor nesciunt sit qui.', 'GpxmDn6Kgr', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(24, 'https://via.placeholder.com/640x480.png/00ccff?text=qui', 'escritor', 'carolyn62', 0, 'River', 'Deckow', 'Shanahan', 'judy.koelpin@example.net', '2024-09-29 04:54:02', '$2y$12$1i19W7UjMLozgiYnyQzz7eeoxhTxjj998i93yJPRNsDqG7Yy.aMju', 'Voluptas dolores ut qui dolorum voluptas.', 'ocngYJRFhC', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(25, 'https://via.placeholder.com/640x480.png/00cc11?text=voluptatem', 'Admin', 'nkautzer', 0, 'Vesta', 'Lakin', 'Fadel', 'darrel.gerhold@example.net', '2024-09-29 04:54:03', '$2y$12$oj3von40DTxQDSuSibRjxOO61YBBF3/vpm/SZyD0U1jU2FmzLC5Gm', 'Quae quia veniam et qui sed quis accusamus est.', 'ljNFCJBBgq', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(26, 'https://via.placeholder.com/640x480.png/0011ff?text=quibusdam', 'lector', 'brian.auer', 1, 'Janick', 'Schultz', 'Prohaska', 'zulauf.cielo@example.org', '2024-09-29 04:54:03', '$2y$12$m88/p9Jq5Ci4qEccL4Ybau3U3a3DcFBs.1Y95QdRSm/RttV7KFiSW', 'Repudiandae impedit incidunt dolore.', 'RVqIuzEJtp', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(27, 'https://via.placeholder.com/640x480.png/00ddee?text=aut', 'lector', 'marvin92', 1, 'Kenneth', 'Lockman', 'Rosenbaum', 'buckridge.susana@example.net', '2024-09-29 04:54:03', '$2y$12$XRWTa1HETUcSMiw/hrKwiOIAFRZecEFASHaYmavZHycuA3bzK0Jwm', 'Quae corporis velit sed sit labore tenetur qui.', 'BMi9lV6EAK', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(28, 'https://via.placeholder.com/640x480.png/000099?text=laboriosam', 'Admin', 'gianni.osinski', 1, 'Lonny', 'Lockman', 'Beatty', 'laisha.prohaska@example.org', '2024-09-29 04:54:03', '$2y$12$2MQNFGPmaZ7poGiCxOKg9OHq2wrNrJhjLYXfFFBG0YCiZDqbrtBRi', 'Assumenda praesentium qui neque illum ut error illum.', '6mR8P49B7s', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(29, 'https://via.placeholder.com/640x480.png/00ffff?text=libero', 'Admin', 'krystel.schowalter', 1, 'Freddy', 'Ullrich', 'Frami', 'jchristiansen@example.net', '2024-09-29 04:54:04', '$2y$12$/zlft1i7eUJJltfDdVKPt.lSdfcOtrVvInNscUd6nbptVtpumq5c.', 'Qui quibusdam nemo error corrupti quia.', '8JeAt6Au5j', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(30, 'https://via.placeholder.com/640x480.png/00ccee?text=dolores', 'escritor', 'theron.hammes', 0, 'Estelle', 'Parisian', 'Harvey', 'loma16@example.org', '2024-09-29 04:54:04', '$2y$12$cOscoAhps2T8Ilf8.YbykuAZCQKPBP/c15PyC3u2dWYNwo5wKU9Xi', 'Voluptas officia veritatis illo maxime eveniet dolor totam.', 'Ptjzd2WkXs', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(31, 'https://via.placeholder.com/640x480.png/00ee55?text=aperiam', 'escritor', 'shagenes', 0, 'Electa', 'Lesch', 'Lynch', 'marks.wendy@example.com', '2024-09-29 04:54:04', '$2y$12$7yAaU5GQlcIhNibx5VYbGuslytgTgv.Z7rdgLjUuWI1RinBdTu4jK', 'Itaque impedit non eius voluptatibus.', 'rqRzXkVKKK', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(32, 'https://via.placeholder.com/640x480.png/0022ee?text=nam', 'Admin', 'fwalsh', 1, 'Melvin', 'Sawayn', 'Grady', 'watsica.vernon@example.net', '2024-09-29 04:54:04', '$2y$12$y5ItvClIsXNaYcXSNk29cOQ66JDAY6nhKRPSmLb0abjvm25OrloIS', 'Incidunt adipisci ut cumque illo minus.', 'Ikk13Kqxne', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(33, 'https://via.placeholder.com/640x480.png/00bb22?text=sed', 'Admin', 'taryn29', 0, 'Rosetta', 'Hermann', 'Beatty', 'bechtelar.abagail@example.net', '2024-09-29 04:54:05', '$2y$12$NI4A2c48vciSvomrBthzEeCc.7riJ26cYHSODV/Ai6Wn7iVLWUHhK', 'Voluptas sequi debitis architecto eligendi exercitationem.', 'B60wYontK2', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(34, 'https://via.placeholder.com/640x480.png/000022?text=vero', 'Admin', 'michale.walsh', 0, 'Dustin', 'Effertz', 'Weissnat', 'abernathy.enid@example.net', '2024-09-29 04:54:05', '$2y$12$xBW7noyLvJvC8Jm5AsxH3uTLHHHLjGehRvSi3Fh4sbAJH2NWgVvbi', 'Sequi dolorum voluptatum nihil ex deleniti quaerat non.', 'IHmis5TFnL', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(35, 'https://via.placeholder.com/640x480.png/005544?text=quo', 'escritor', 'quigley.vicky', 0, 'Roselyn', 'Mueller', 'Larkin', 'augusta22@example.org', '2024-09-29 04:54:05', '$2y$12$Bcy5ywtNexHfOuucQHuFiOsQOX9tn5vmCHFGKzGhauwJrYRvRXhe2', 'Quo voluptatibus sint nihil quas.', 'H3Rk52Oz8P', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(36, 'https://via.placeholder.com/640x480.png/005555?text=laudantium', 'Admin', 'aisha.conn', 0, 'Cassandre', 'Gibson', 'Ward', 'rolando28@example.com', '2024-09-29 04:54:05', '$2y$12$QRtEsEMMqR/7vRKSRWV50uGt4HZgTg4DA.nflBOqRfZg9pFBi7wrO', 'Eaque ut quia ad quisquam doloribus placeat quod.', 'f0bFThcMFn', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(37, 'https://via.placeholder.com/640x480.png/001166?text=id', 'Admin', 'hcrist', 0, 'Niko', 'Wuckert', 'Kulas', 'dietrich.muhammad@example.net', '2024-09-29 04:54:06', '$2y$12$Df6rTtkzmfA3BDMjJf/pQ.zQ2U3fAnUFC4yEqD/uLiX54DeaxlWCq', 'Earum iure corporis rerum et.', 'VTYO0ooqHt', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(38, 'https://via.placeholder.com/640x480.png/0011ee?text=natus', 'escritor', 'ymclaughlin', 1, 'Tiara', 'Schulist', 'Jacobson', 'craig95@example.org', '2024-09-29 04:54:06', '$2y$12$dSIXB.Xc43.NQYdFjTjnIOzL5lhe56B4qPjhPG0Ui.LZ/ztGPKbdS', 'Sint nobis necessitatibus et rerum dolorem voluptatem.', '75i9U94vQS', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(39, 'https://via.placeholder.com/640x480.png/0022dd?text=eveniet', 'Admin', 'cconroy', 0, 'Herminia', 'Franecki', 'Grant', 'plabadie@example.org', '2024-09-29 04:54:06', '$2y$12$vBG9fdHWNubnD6cTJ1xQeuIEsZl1O5O2I.T4cli9wtCD1ZEoRhGMW', 'Qui ipsam optio eos maxime numquam sed.', 'FpTlXHTovg', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(40, 'https://via.placeholder.com/640x480.png/001144?text=optio', 'Admin', 'kallie81', 0, 'Andrew', 'Aufderhar', 'Corwin', 'ywehner@example.org', '2024-09-29 04:54:06', '$2y$12$eHOg3rUBDUY0RL6Gb9jQrOVcVqziUG3.VtG2d4iRmmdo7lSR..yYS', 'Et repellendus hic qui officia.', 'L4vSLzOT4F', '2024-09-29 04:54:07', '2024-09-29 04:54:07'),
(41, 'https://via.placeholder.com/640x480.png/00dd00?text=consectetur', 'escritor', 'tiffany.parker', 0, 'Ursula', 'Mosciski', 'Emmerich', 'annamarie.emmerich@example.org', '2024-09-29 04:54:07', '$2y$12$/8DZSd/w5T9ah6Adsy6Mz.ASkJ8La7FkjlZYiq.E2uzVSbuEKzSMG', 'Et consequatur quibusdam vero impedit quod voluptatem animi alias.', 'JxXr4rTHp2', '2024-09-29 04:54:07', '2024-09-29 04:54:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `perfil` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `estado` tinyint(4) DEFAULT 1,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentario` (`comentario`) USING BTREE;

--
-- Indices de la tabla `comentario_post`
--
ALTER TABLE `comentario_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post` (`post`),
  ADD KEY `comentario` (`comentario`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `fk_categoria_id` (`categoria_id`),
  ADD KEY `autor` (`autor`) USING BTREE;

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `comentario_post`
--
ALTER TABLE `comentario_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
