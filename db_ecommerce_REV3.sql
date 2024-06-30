-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2024 a las 02:12:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET FOREIGN_KEY_CHECKS=0;
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
CREATE DATABASE IF NOT EXISTS `db_ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_ecommerce`;

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

INSERT INTO `cliente` (`ID_Cliente`, `ID_Usuario`, `Nombre_Cliente`, `Apellidos_Cliente`, `DNI_Cliente`, `Domicilio_Cliente`, `Telefono_Cliente`, `Correo_Cliente`, `Tarjeta_credito`, `Numero_tarjeta`) VALUES
(4, 1, 'NombreCliente1', 'ApellidoCliente1', 1235678, 'calle 123', 12345678, 'clienteprueba1@correo.com', 'visa', 12345),
(5, 7, 'ClienteTest2', 'ApellidoCliente', 42421412, 'calle 999', 15151515, 'clientetest2@correo.com', 'Visa', 123472),
(6, 9, 'Cliente3', 'Apellidocliente3', 42424242, 'calle 324', 15202020, 'cliente3@correo.com', 'Visa', 1234),
(7, 11, 'cliente10', 'apellido10', 42439432, 'calle 1240', 15642323, 'cliente10@correo.com', 'Visa', 1234),
(8, 12, 'cliente12', 'apellidocliente12', 14141414, 'calle 2000', 15424242, 'cliente12@correo.com', 'visa', 1234),
(9, 13, 'cliente22', 'apellidocliente22', 13133133, 'calle 3232', 15424242, 'cliente22@correo.com', 'visa', 1234);

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
  `Info_compra` varchar(100) NOT NULL
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

INSERT INTO `compra` (`ID_Transaccion`, `ID_Producto`, `ID_Cliente`, `Nombre_Cliente`, `Domicilio_Cliente`, `Info_compra`) VALUES
(3, 5, 5, 'ClienteTest2', 'calle 999', 'informacion relevante de la compra.'),
(4, 6, 4, 'NombreCliente1', 'calle 123', 'Informacion relevante de la compra'),
(5, 9, 5, 'ClienteTest2', 'calle 999', 'Informacion relevante de la compra.'),
(6, 10, 6, 'Cliente3', 'calle 999', 'Realizar envio a casa de la esquina'),
(8, 11, 4, 'NombreCliente1', 'calle 123', 'info respectiva al envio.'),
(9, 12, 8, 'cliente12', 'calle 2000', 'info respectiva a la entrega.'),
(10, 13, 9, 'cliente22', 'calle 3232', 'info respectiva a la entrega.');

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

INSERT INTO `operario` (`ID_Operario`, `ID_Usuario`, `Nombre`, `Apellidos`, `Area`, `Domicilio`, `Telefono`, `Correo`) VALUES
(3, 8, 'OperarioTest1', 'ApellidoOperario1', 'Ventas', 'calle 777', 15101010, 'operarioTest1@correo.com'),
(4, 8, 'Operario4', 'ApellidoOperario4', 'Produccion', 'calle 567', 15303030, 'Operario4@correo.com');

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

INSERT INTO `producto` (`ID_Producto`, `Nombre_Producto`, `Stock`, `Descripcion`, `Precio`) VALUES
(5, 'ProductoTest1', 10, 'Descripcion de Producto test 1', 2500),
(6, 'ProductoTest2', 25, 'Descripcion Producto test 2', 999),
(7, 'ProductoTest3', 50, 'Descripcion producto test 3', 720),
(8, 'ProductoTest4', 6, 'Descripcion producto test 4', 500),
(9, 'ProudtcoTest5', 100, 'Descripcion porducto test5', 350),
(10, 'Productotest6', 20, 'Descripcion producto6', 6000),
(11, 'producto11', 20, 'DescripProd11', 5500),
(12, 'producto20', 10, 'DescripProd20', 1999),
(13, 'producto30', 30, 'descripcion prod 30', 2300);

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

INSERT INTO `usuario` (`ID_Usuario`, `Nombre_Usuario`, `Contraseña`) VALUES
(1, 'admin', '123'),
(5, 'Test1', '1234'),
(6, 'Test2', 'abcd'),
(7, 'Test5', '12345'),
(8, 'Test6', '123456'),
(9, 'Modelo1', '1234'),
(10, 'demo', '1234'),
(11, 'demo1', '1234'),
(12, 'demo5', '1234'),
(13, 'presentacion', '1234');

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
  MODIFY `ID_Cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `ID_Transaccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `operario`
--
ALTER TABLE `operario`
  MODIFY `ID_Operario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_Producto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
