-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2024 a las 04:04:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` int(10) NOT NULL,
  `ID_Usuario` int(10) NOT NULL,
  `Nombre_Cliente` varchar(20) NOT NULL,
  `Apellidos_Cliente` varchar(20) NOT NULL,
  `DNI_Cliente` int(8) NOT NULL,
  `Domicilio_Cliente` varchar(30) NOT NULL,
  `Telefono_Cliente` int(8) NOT NULL,
  `Correo_Cliente` varchar(30) NOT NULL,
  `Tarjeta_credito` varchar(10) NOT NULL,
  `Numero_tarjeta` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELACIONES PARA LA TABLA `cliente`:
--   `ID_Usuario`
--       `usuario` -> `ID_Usuario`
--   `ID_Usuario`
--       `usuario` -> `ID_Usuario`
--

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` VALUES(1, 1, 'NombreCliente1', 'ApellidoCliente1', 12345678, 'DomicilioCliente1', 76543210, 'CorreoCliente1@gmail.com', 'Mastercard', 1235678912);
INSERT INTO `cliente` VALUES(2, 2, 'NombreCliente1', 'ApellidoCliente2', 87654321, 'DomicilioCliente2', 1234567, 'CorreoCliente2@gmail.com', 'VISA', 987654321);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `ID_Transaccion` int(10) NOT NULL,
  `ID_Producto` int(10) NOT NULL,
  `ID_Cliente` int(10) NOT NULL,
  `Nombre_Cliente` varchar(20) NOT NULL,
  `Domicilio_Cliente` varchar(30) NOT NULL,
  `Info_compra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELACIONES PARA LA TABLA `compra`:
--   `ID_Cliente`
--       `cliente` -> `ID_Cliente`
--   `ID_Producto`
--       `producto` -> `ID_Producto`
--   `ID_Cliente`
--       `cliente` -> `ID_Cliente`
--   `ID_Producto`
--       `producto` -> `ID_Producto`
--

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` VALUES(1, 1, 1, 'NombreCliente1', 'DomicilioCliente1', 'Información de la compra1');
INSERT INTO `compra` VALUES(2, 3, 2, 'NombreCliente2', 'DomicilioCliente2', 'Información de la compra2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operario`
--

CREATE TABLE `operario` (
  `ID_Operario` int(10) NOT NULL,
  `ID_Usuario` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `Area` varchar(20) NOT NULL,
  `Domicilio` varchar(30) NOT NULL,
  `Telefono` int(8) NOT NULL,
  `Correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELACIONES PARA LA TABLA `operario`:
--   `ID_Usuario`
--       `usuario` -> `ID_Usuario`
--   `ID_Usuario`
--       `usuario` -> `ID_Usuario`
--

--
-- Volcado de datos para la tabla `operario`
--

INSERT INTO `operario` VALUES(1, 3, 'NombreOperario1', 'ApellidoOperario1', 'Ventas', 'DomicilioOperario1', 2356789, 'CorreoOperario1@gmail.com');
INSERT INTO `operario` VALUES(2, 4, 'NombreOperario2', 'ApellidoOperario2', 'Produccion', 'DomicilioOperario2', 6785632, 'CorreoOperario2@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_Producto` int(10) NOT NULL,
  `Nombre_Producto` varchar(20) NOT NULL,
  `Stock` int(10) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELACIONES PARA LA TABLA `producto`:
--

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` VALUES(1, 'NombreProducto1', 3, 'Descripción del primer producto.', 1000);
INSERT INTO `producto` VALUES(2, 'NombreProducto2', 5, 'Descripción del segundo producto.', 2000);
INSERT INTO `producto` VALUES(3, 'NombreProducto3', 5, 'Descripción del tercer producto.', 3000);
INSERT INTO `producto` VALUES(4, 'NombreProducto4', 9, 'Descripción del cuarto producto.', 4000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(10) NOT NULL,
  `Nombre_Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELACIONES PARA LA TABLA `usuario`:
--

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` VALUES(1, 'Usuario01', 'Contraseña01');
INSERT INTO `usuario` VALUES(2, 'Usuario02', 'Contraseña02');
INSERT INTO `usuario` VALUES(3, 'Usuario03', 'Contraseña03');
INSERT INTO `usuario` VALUES(4, 'Usuario04', 'Contraseña04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD KEY `FK_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`ID_Transaccion`),
  ADD KEY `FK_Cliente` (`ID_Cliente`),
  ADD KEY `FK_Producto` (`ID_Producto`);

--
-- Indices de la tabla `operario`
--
ALTER TABLE `operario`
  ADD PRIMARY KEY (`ID_Operario`),
  ADD KEY `FK_Usuario2` (`ID_Usuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_Cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `ID_Transaccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `operario`
--
ALTER TABLE `operario`
  MODIFY `ID_Operario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_Producto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_Usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `FK_Cliente` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `FK_Producto` FOREIGN KEY (`ID_Producto`) REFERENCES `producto` (`ID_Producto`);

--
-- Filtros para la tabla `operario`
--
ALTER TABLE `operario`
  ADD CONSTRAINT `FK_Usuario2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`);
COMMIT;

--
--
-- --------------------------------------------------------
--
-- CONSULTA
--

-- Consulta multitabla
--
SELECT `US`.`Nombre_Usuario` AS `Usuario`, `CL`.`Domicilio_Cliente` AS `Direccion`, `CM`.`Info_compra` AS `Info`, `PR`.`Nombre_Producto` AS `Producto`, `PR`.`Precio` AS `Costo`
FROM `usuario` AS `US` 
	LEFT JOIN `cliente` AS `CL` ON `CL`.`ID_Usuario` = `US`.`ID_Usuario` 
	LEFT JOIN `compra` AS `CM` ON `CM`.`ID_Cliente` = `CL`.`ID_Cliente` 
	LEFT JOIN `producto` AS `PR` ON `CM`.`ID_Producto` = `PR`.`ID_Producto`;

--
--
-- --------------------------------------------------------
--
-- BORRADO DE LOS DATOS DE PRUEBA
--
DELETE FROM `cliente`;
DELETE FROM `compra`;
DELETE FROM `operario`;
DELETE FROM `producto`;
DELETE FROM `usuario`;

SELECT*FROM `cliente`;
SELECT*FROM `compra`;
SELECT*FROM `operario`;
SELECT*FROM `producto`;
SELECT*FROM `usuario`;

--
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
