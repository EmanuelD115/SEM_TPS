-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2024 a las 22:44:02
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
(5, 7, 'ClienteTest2', 'ApellidoCliente', 42421412, 'calle 999', 15151515, 'clientetest2@correo.com', 'Visa', 123472);

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
(3, 8, 'OperarioTest1', 'ApellidoOperario1', 'Ventas', 'calle 777', 15101010, 'operarioTest1@correo.com');

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
(9, 'ProudtcoTest5', 100, 'Descripcion porducto test5', 350);

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
(8, 'Test6', '123456');

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
  MODIFY `ID_Cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `ID_Transaccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `operario`
--
ALTER TABLE `operario`
  MODIFY `ID_Operario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_Producto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
