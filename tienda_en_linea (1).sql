-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2023 a las 05:01:09
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
-- Base de datos: `tienda_en_linea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_pedido`
--

CREATE TABLE `detalles_pedido` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `direccion`, `ciudad`, `pais`) VALUES
(1, 'Juan Pérez', 'juan.perez@email.com', 'Calle Falsa 123', 'Ciudad de México', 'México'),
(2, 'María Gómez', 'maria.gomez@email.com', 'Avenida Siempreviva 456', 'Madrid', 'España'),
(3, 'John Smith', 'john.smith@email.com', '123 Main St', 'New York', 'Estados Unidos'),
(4, 'Lucía García', 'lucia.garcia@email.com', 'Rua das Tulipas 789', 'São Paulo', 'Brasil'),
(5, 'James Johnson', 'james.johnson@email.com', '456 Oak St', 'Los Angeles', 'Estados Unidos'),
(6, 'Ana Martínez', 'ana.martinez@email.com', 'Calle Mayor 321', 'Barcelona', 'España'),
(7, 'Michael Brown', 'michael.brown@email.com', '789 Elm St', 'Chicago', 'Estados Unidos'),
(8, 'Sara Rodríguez', 'sara.rodriguez@email.com', 'Avenida Central 654', 'Buenos Aires', 'Argentina'),
(9, 'David Lee', 'david.lee@email.com', '321 Maple St', 'Toronto', 'Canadá'),
(10, 'Laura Fernández', 'laura.fernandez@email.com', 'Calle Pez 987', 'Valencia', 'España'),
(11, 'Pedro Hernández', 'pedro.hernandez@email.com', 'Calle del Sol 456', 'Sevilla', 'España'),
(12, 'Emily Davis', 'emily.davis@email.com', '789 Pine St', 'San Francisco', 'Estados Unidos'),
(13, 'Marta López', 'marta.lopez@email.com', 'Calle del Mar 654', 'Málaga', 'España'),
(14, 'Daniel Kim', 'daniel.kim@email.com', '123 Oak St', 'Vancouver', 'Canadá'),
(15, 'Carla Pérez', 'carla.perez@email.com', 'Calle del Río 369', 'Madrid', 'España'),
(16, 'Ryan Wilson', 'ryan.wilson@email.com', '456 Cedar St', 'Seattle', 'Estados Unidos'),
(17, 'Jorge Hernández', 'jorge.hernandez@email.com', 'Calle del Aire 987', 'Bogotá', 'Colombia'),
(18, 'Emma Johnson', 'emma.johnson@email.com', '789 Walnut St', 'Portland', 'Estados Unidos'),
(19, 'Luisa Martínez', 'luisa.martinez@email.com', 'Calle del Sol 789', 'Granada', 'España'),
(20, 'Kevin Jones', 'kevin.jones@email.com', '123 Maple Rd', 'Toronto', 'Canadá');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_id` (`pedido_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD CONSTRAINT `detalles_pedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `detalles_pedido_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
