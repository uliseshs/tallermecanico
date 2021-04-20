-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2021 a las 02:30:50
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tallermecanico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `NombreCliente` varchar(30) NOT NULL,
  `TipoCoche` varchar(30) NOT NULL,
  `FallaMecanica` varchar(30) NOT NULL,
  `Entrega` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`NombreCliente`, `TipoCoche`, `FallaMecanica`, `Entrega`, `created_at`, `updated_at`) VALUES
('Ulises', 'Mustang', 'Sin llantas', '', '2021-04-20 04:56:35', '2021-04-20 04:56:35'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 04:59:06', '2021-04-20 04:59:06'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 04:59:40', '2021-04-20 04:59:40'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:09:34', '2021-04-20 05:09:34'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:10:54', '2021-04-20 05:10:54'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:11:38', '2021-04-20 05:11:38'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:12:06', '2021-04-20 05:12:06'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:14:05', '2021-04-20 05:14:05'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:19:46', '2021-04-20 05:19:46'),
('ja', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:22:08', '2021-04-20 05:22:08'),
('ja', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:23:39', '2021-04-20 05:23:39'),
('ja', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:24:04', '2021-04-20 05:24:04'),
('ja', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:24:25', '2021-04-20 05:24:25'),
('ja', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:24:30', '2021-04-20 05:24:30'),
('ja', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:24:44', '2021-04-20 05:24:44'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:26:24', '2021-04-20 05:26:24'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:26:54', '2021-04-20 05:26:54'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:28:27', '2021-04-20 05:28:27'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:29:43', '2021-04-20 05:29:43'),
('Ulises', 'Mustang', 'Sin llantas', 'Nunca', '2021-04-20 05:30:03', '2021-04-20 05:30:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidoPaterno` varchar(20) NOT NULL,
  `apellidoMaterno` varchar(20) NOT NULL,
  `Correo` varchar(60) NOT NULL,
  `numeroTelefono` varchar(50) NOT NULL,
  `contraseña` int(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_cliente`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `Correo`, `numeroTelefono`, `contraseña`, `updated_at`, `created_at`) VALUES
(32, 'Ulises', 'Santiago', 'Guzmán', 'ulises_1319104688@uptecamac.edu.mx', '5615285516', 123, '2021-04-20 03:28:55', '2021-04-20 03:28:55'),
(33, 'Angeles', 'Sanchez', 'Sánchez', 'angie@gmail.com', '5615285516', 123, '2021-04-20 03:33:40', '2021-04-20 03:33:40'),
(34, 'Angeles', 'Sanchez', 'Sánchez', 'angie@gmail.com', '5615285516', 123, '2021-04-20 03:38:57', '2021-04-20 03:38:57'),
(35, 'Ulises', 'Santiago', 'Lopéz', 'ulises_1319104688@uptecamac.edu.mx', '5615285516', 123, '2021-04-20 04:23:03', '2021-04-20 04:23:03'),
(36, 'Jaquelin', 'Espinaza', 'Sánchez', 'jaq@gmail.com', '5615285516', 123, '2021-04-20 04:31:45', '2021-04-20 04:31:45'),
(37, 'Ulises', 'Santiago', 'Reyes', 'ulises_1319104688@uptecamac.edu.mx', '5615285516', 123, '2021-04-20 04:34:21', '2021-04-20 04:34:21'),
(38, 'Ulises', 'Santiago', 'Reyes', 'ulises_1319104688@uptecamac.edu.mx', '5615285516', 123, '2021-04-20 04:42:37', '2021-04-20 04:42:37'),
(39, 'Ulises', 'Santiago', 'Reyes', 'ulises_1319104688@uptecamac.edu.mx', '5615285516', 123, '2021-04-20 05:08:43', '2021-04-20 05:08:43'),
(40, 'Ulises', 'Santiago', 'Santiago', 'ulises_1319104688@uptecamac.edu.mx', '5615285516', 123, '2021-04-20 05:11:25', '2021-04-20 05:11:25'),
(41, 'Ulises', 'Santiago', 'Reyes', 'ulises_1319104688@uptecamac.edu.mx', '5615285516', 123, '2021-04-20 05:21:56', '2021-04-20 05:21:56'),
(42, 'Ulises', 'Santiago', 'Santiago', 'ulises_1319104688@uptecamac.edu.mx', '5615285516', 123, '2021-04-20 05:26:16', '2021-04-20 05:26:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
