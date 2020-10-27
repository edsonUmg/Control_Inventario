-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2020 a las 05:58:37
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `controlinventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacora`
--

CREATE TABLE `tbl_bitacora` (
  `Id_Bitacora` int(11) NOT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `Movimiento` varchar(45) DEFAULT NULL,
  `Fecha` varchar(45) DEFAULT NULL,
  `Hora` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `Id_Cliente` int(11) NOT NULL,
  `Nombre_Cliente` varchar(45) DEFAULT NULL,
  `Nit_Cliente` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`Id_Cliente`, `Nombre_Cliente`, `Nit_Cliente`, `Direccion`, `Estado`) VALUES
(23, 'Diego', '1321231', 'Ciudad', '1'),
(24, 'Diego Pruebaffhgfhg', '25', 'Guatemala', '1'),
(25, 'Diego', '26', 'Guatemala', '1'),
(26, 'Diego', '29', 'Guatemala', '1'),
(27, 'Diego', '30', 'Guatemala', '1'),
(28, 'Diego', '31', 'Guatemala', '1'),
(29, 'Diego', '231321', 'Guatemala', '1'),
(30, 'Diego', '87978', 'Guatemala', '1'),
(31, 'Diego', '4564', 'Guatemala', '1'),
(32, 'Diego', '3', 'Ciudad', '1'),
(33, 'Diego', '21213', 'Guatemala', '1'),
(34, 'Diego', '45', 'Guatemala', '1'),
(35, 'Diego', '1312', 'Guatemala', '1'),
(36, 'Diego Jose', '001', 'Guatemala', '1'),
(37, 'Diego', '299', 'Guatemala', '1'),
(38, 'Diego Jose', '7897', 'Guatemala', '1'),
(39, 'Diego', '312321', 'Guatemala', '1'),
(40, 'Diego', '199', 'Guatemala', '1'),
(41, 'Diego', '45345', 'Guatemala', '1'),
(42, 'Diego', '45645', 'Guatemala', '1'),
(43, 'Diego', '5456', 'Guatemala', '1'),
(44, 'Diego', '1234', 'Guatemala', '1'),
(45, 'Diego', '123213', 'Guatemala', '1'),
(46, 'Diego', '12321', 'Guatemala', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_compras_encabezado`
--

CREATE TABLE `tbl_compras_encabezado` (
  `Id_ComprasEncabezado` int(11) NOT NULL,
  `Fecha` varchar(45) DEFAULT NULL,
  `Total` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Tbl_Proveedor_Id_Proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_compra_detalle`
--

CREATE TABLE `tbl_compra_detalle` (
  `Id_CompraDetalle` int(11) NOT NULL,
  `Precio` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Tbl_Compras_Encabezado_Id_ComprasEncabezado` int(11) NOT NULL,
  `Tbl_Repuestos_Id_Repuestos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_devoluciones`
--

CREATE TABLE `tbl_devoluciones` (
  `Id_Devoluciones` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Tbl_Repuestos_Id_Repuestos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura_detalle`
--

CREATE TABLE `tbl_factura_detalle` (
  `Id_FacturaDetalle` int(11) NOT NULL,
  `Precio` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Tbl_Factura_Encabezado_idTbl_Factura_Encabezado` int(11) NOT NULL,
  `Tbl_Repuestos_Id_Repuestos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura_encabezado`
--

CREATE TABLE `tbl_factura_encabezado` (
  `idTbl_Factura_Encabezado` int(11) NOT NULL,
  `Serie_Fact` varchar(45) DEFAULT NULL,
  `Descuento_Fact` varchar(45) DEFAULT NULL,
  `Fecha_Fact` varchar(45) DEFAULT NULL,
  `Subtotal` int(11) DEFAULT NULL,
  `Descuento` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `Comentario` varchar(45) DEFAULT NULL,
  `Tbl_Cliente_Id_Cliente` int(11) NOT NULL,
  `Tbl_Tipo_Pago_Id_TipoPago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedor`
--

CREATE TABLE `tbl_proveedor` (
  `Id_Proveedor` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Nit` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_proveedor`
--

INSERT INTO `tbl_proveedor` (`Id_Proveedor`, `Nombre`, `Nit`, `Direccion`, `Estado`) VALUES
(1, 'Diego', '4564', 'Ciudad', '1'),
(2, 'Diego', '4564', 'Ciudad', '1'),
(4, 'Diego', '25', 'Guatemala', '1'),
(6, 'Diego', '26', 'Guatemala', '1'),
(7, 'Diego', '1234', 'Guatemala', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_repuestos`
--

CREATE TABLE `tbl_repuestos` (
  `Id_Repuestos` int(11) NOT NULL,
  `Descripcion_Repuesto` varchar(45) DEFAULT NULL,
  `Costo_Repuesto1` varchar(45) DEFAULT NULL,
  `Costo_Repuesto2` varchar(45) DEFAULT NULL,
  `Costo_Repuesto3` varchar(45) DEFAULT NULL,
  `Costo_Repuesto4` varchar(45) DEFAULT NULL,
  `Precio_Venta1` varchar(45) DEFAULT NULL,
  `Precio_Venta2` varchar(45) DEFAULT NULL,
  `Precio_Venta3` varchar(45) DEFAULT NULL,
  `Precio_Venta4` varchar(45) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Facturar_sin_Existencia` varchar(45) DEFAULT NULL,
  `Precio_Facturar` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Tbl_Tiporepuesto_Id_Tiporepuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_repuestos_has_tbl_proveedor`
--

CREATE TABLE `tbl_repuestos_has_tbl_proveedor` (
  `Tbl_Repuestos_Id_Repuestos` int(11) NOT NULL,
  `Tbl_Proveedor_Id_Proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tiporepuesto`
--

CREATE TABLE `tbl_tiporepuesto` (
  `Id_Tiporepuesto` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_tiporepuesto`
--

INSERT INTO `tbl_tiporepuesto` (`Id_Tiporepuesto`, `Descripcion`, `Estado`) VALUES
(1, 'Descripcion de la prueba del producto', '1'),
(2, 'Diego', '1'),
(3, 'Diego', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_pago`
--

CREATE TABLE `tbl_tipo_pago` (
  `Id_TipoPago` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_tipo_pago`
--

INSERT INTO `tbl_tipo_pago` (`Id_TipoPago`, `Nombre`, `Estado`) VALUES
(1, 'Prueba', '1'),
(3, '$Nombre', '1'),
(4, 'Diego', '1'),
(5, 'Diego Jose', '1'),
(6, 'Diego', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(45) DEFAULT NULL,
  `Correo_Usuario` varchar(45) DEFAULT NULL,
  `Pasword_Usuario` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`Id_Usuario`, `Nombre_Usuario`, `Correo_Usuario`, `Pasword_Usuario`, `Estado`) VALUES
(1, 'Diego', 'Gomez', '1234', '1'),
(4, 'Diego Jose', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1'),
(5, 'Diego Jose', 'Gomez Giron', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1'),
(6, 'Diego', 'Gomez', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1'),
(7, 'Prueba', 'Prueba', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1'),
(8, 'Diego', 'keyshard@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta_credito`
--

CREATE TABLE `tbl_venta_credito` (
  `Id_VentaCredito` int(11) NOT NULL,
  `Saldo_Pendiente` int(11) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Tbl_Factura_Encabezado_idTbl_Factura_Encabezado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta_efectivo`
--

CREATE TABLE `tbl_venta_efectivo` (
  `Id_VentaEfectivo` int(11) NOT NULL,
  `Saldo` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Tbl_Factura_Encabezado_idTbl_Factura_Encabezado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  ADD PRIMARY KEY (`Id_Bitacora`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `tbl_compras_encabezado`
--
ALTER TABLE `tbl_compras_encabezado`
  ADD PRIMARY KEY (`Id_ComprasEncabezado`),
  ADD KEY `fk_Tbl_Compras_Encabezado_Tbl_Proveedor1` (`Tbl_Proveedor_Id_Proveedor`);

--
-- Indices de la tabla `tbl_compra_detalle`
--
ALTER TABLE `tbl_compra_detalle`
  ADD PRIMARY KEY (`Id_CompraDetalle`),
  ADD KEY `fk_Tbl_Compra_Detalle_Tbl_Compras_Encabezado1` (`Tbl_Compras_Encabezado_Id_ComprasEncabezado`),
  ADD KEY `fk_Tbl_Compra_Detalle_Tbl_Repuestos1` (`Tbl_Repuestos_Id_Repuestos`);

--
-- Indices de la tabla `tbl_devoluciones`
--
ALTER TABLE `tbl_devoluciones`
  ADD PRIMARY KEY (`Id_Devoluciones`),
  ADD KEY `fk_Tbl_Devoluciones_Tbl_Repuestos1` (`Tbl_Repuestos_Id_Repuestos`);

--
-- Indices de la tabla `tbl_factura_detalle`
--
ALTER TABLE `tbl_factura_detalle`
  ADD PRIMARY KEY (`Id_FacturaDetalle`),
  ADD KEY `fk_Tbl_Factura_Detalle_Tbl_Factura_Encabezado1` (`Tbl_Factura_Encabezado_idTbl_Factura_Encabezado`),
  ADD KEY `fk_Tbl_Factura_Detalle_Tbl_Repuestos1` (`Tbl_Repuestos_Id_Repuestos`);

--
-- Indices de la tabla `tbl_factura_encabezado`
--
ALTER TABLE `tbl_factura_encabezado`
  ADD PRIMARY KEY (`idTbl_Factura_Encabezado`),
  ADD KEY `fk_Tbl_Factura_Encabezado_Tbl_Cliente` (`Tbl_Cliente_Id_Cliente`),
  ADD KEY `fk_Tbl_Factura_Encabezado_Tbl_Tipo_Pago1` (`Tbl_Tipo_Pago_Id_TipoPago`);

--
-- Indices de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  ADD PRIMARY KEY (`Id_Proveedor`);

--
-- Indices de la tabla `tbl_repuestos`
--
ALTER TABLE `tbl_repuestos`
  ADD PRIMARY KEY (`Id_Repuestos`),
  ADD KEY `fk_Tbl_Repuestos_Tbl_Tiporepuesto1` (`Tbl_Tiporepuesto_Id_Tiporepuesto`);

--
-- Indices de la tabla `tbl_repuestos_has_tbl_proveedor`
--
ALTER TABLE `tbl_repuestos_has_tbl_proveedor`
  ADD PRIMARY KEY (`Tbl_Repuestos_Id_Repuestos`,`Tbl_Proveedor_Id_Proveedor`),
  ADD KEY `fk_Tbl_Repuestos_has_Tbl_Proveedor_Tbl_Proveedor1` (`Tbl_Proveedor_Id_Proveedor`);

--
-- Indices de la tabla `tbl_tiporepuesto`
--
ALTER TABLE `tbl_tiporepuesto`
  ADD PRIMARY KEY (`Id_Tiporepuesto`);

--
-- Indices de la tabla `tbl_tipo_pago`
--
ALTER TABLE `tbl_tipo_pago`
  ADD PRIMARY KEY (`Id_TipoPago`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `tbl_venta_credito`
--
ALTER TABLE `tbl_venta_credito`
  ADD PRIMARY KEY (`Id_VentaCredito`),
  ADD KEY `fk_Tbl_Venta_Credito_Tbl_Factura_Encabezado1` (`Tbl_Factura_Encabezado_idTbl_Factura_Encabezado`);

--
-- Indices de la tabla `tbl_venta_efectivo`
--
ALTER TABLE `tbl_venta_efectivo`
  ADD PRIMARY KEY (`Id_VentaEfectivo`),
  ADD KEY `fk_Tbl_Venta_Efectivo_Tbl_Factura_Encabezado1` (`Tbl_Factura_Encabezado_idTbl_Factura_Encabezado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  MODIFY `Id_Bitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `Id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `tbl_compras_encabezado`
--
ALTER TABLE `tbl_compras_encabezado`
  MODIFY `Id_ComprasEncabezado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_compra_detalle`
--
ALTER TABLE `tbl_compra_detalle`
  MODIFY `Id_CompraDetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_devoluciones`
--
ALTER TABLE `tbl_devoluciones`
  MODIFY `Id_Devoluciones` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_factura_detalle`
--
ALTER TABLE `tbl_factura_detalle`
  MODIFY `Id_FacturaDetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_factura_encabezado`
--
ALTER TABLE `tbl_factura_encabezado`
  MODIFY `idTbl_Factura_Encabezado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  MODIFY `Id_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_repuestos`
--
ALTER TABLE `tbl_repuestos`
  MODIFY `Id_Repuestos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tiporepuesto`
--
ALTER TABLE `tbl_tiporepuesto`
  MODIFY `Id_Tiporepuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_pago`
--
ALTER TABLE `tbl_tipo_pago`
  MODIFY `Id_TipoPago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_venta_credito`
--
ALTER TABLE `tbl_venta_credito`
  MODIFY `Id_VentaCredito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_venta_efectivo`
--
ALTER TABLE `tbl_venta_efectivo`
  MODIFY `Id_VentaEfectivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_compras_encabezado`
--
ALTER TABLE `tbl_compras_encabezado`
  ADD CONSTRAINT `fk_Tbl_Compras_Encabezado_Tbl_Proveedor1` FOREIGN KEY (`Tbl_Proveedor_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Id_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_compra_detalle`
--
ALTER TABLE `tbl_compra_detalle`
  ADD CONSTRAINT `fk_Tbl_Compra_Detalle_Tbl_Compras_Encabezado1` FOREIGN KEY (`Tbl_Compras_Encabezado_Id_ComprasEncabezado`) REFERENCES `tbl_compras_encabezado` (`Id_ComprasEncabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_Compra_Detalle_Tbl_Repuestos1` FOREIGN KEY (`Tbl_Repuestos_Id_Repuestos`) REFERENCES `tbl_repuestos` (`Id_Repuestos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_devoluciones`
--
ALTER TABLE `tbl_devoluciones`
  ADD CONSTRAINT `fk_Tbl_Devoluciones_Tbl_Repuestos1` FOREIGN KEY (`Tbl_Repuestos_Id_Repuestos`) REFERENCES `tbl_repuestos` (`Id_Repuestos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_factura_detalle`
--
ALTER TABLE `tbl_factura_detalle`
  ADD CONSTRAINT `fk_Tbl_Factura_Detalle_Tbl_Factura_Encabezado1` FOREIGN KEY (`Tbl_Factura_Encabezado_idTbl_Factura_Encabezado`) REFERENCES `tbl_factura_encabezado` (`idTbl_Factura_Encabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_Factura_Detalle_Tbl_Repuestos1` FOREIGN KEY (`Tbl_Repuestos_Id_Repuestos`) REFERENCES `tbl_repuestos` (`Id_Repuestos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_factura_encabezado`
--
ALTER TABLE `tbl_factura_encabezado`
  ADD CONSTRAINT `fk_Tbl_Factura_Encabezado_Tbl_Cliente` FOREIGN KEY (`Tbl_Cliente_Id_Cliente`) REFERENCES `tbl_cliente` (`Id_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_Factura_Encabezado_Tbl_Tipo_Pago1` FOREIGN KEY (`Tbl_Tipo_Pago_Id_TipoPago`) REFERENCES `tbl_tipo_pago` (`Id_TipoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_repuestos`
--
ALTER TABLE `tbl_repuestos`
  ADD CONSTRAINT `fk_Tbl_Repuestos_Tbl_Tiporepuesto1` FOREIGN KEY (`Tbl_Tiporepuesto_Id_Tiporepuesto`) REFERENCES `tbl_tiporepuesto` (`Id_Tiporepuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_repuestos_has_tbl_proveedor`
--
ALTER TABLE `tbl_repuestos_has_tbl_proveedor`
  ADD CONSTRAINT `fk_Tbl_Repuestos_has_Tbl_Proveedor_Tbl_Proveedor1` FOREIGN KEY (`Tbl_Proveedor_Id_Proveedor`) REFERENCES `tbl_proveedor` (`Id_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_Repuestos_has_Tbl_Proveedor_Tbl_Repuestos1` FOREIGN KEY (`Tbl_Repuestos_Id_Repuestos`) REFERENCES `tbl_repuestos` (`Id_Repuestos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_venta_credito`
--
ALTER TABLE `tbl_venta_credito`
  ADD CONSTRAINT `fk_Tbl_Venta_Credito_Tbl_Factura_Encabezado1` FOREIGN KEY (`Tbl_Factura_Encabezado_idTbl_Factura_Encabezado`) REFERENCES `tbl_factura_encabezado` (`idTbl_Factura_Encabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_venta_efectivo`
--
ALTER TABLE `tbl_venta_efectivo`
  ADD CONSTRAINT `fk_Tbl_Venta_Efectivo_Tbl_Factura_Encabezado1` FOREIGN KEY (`Tbl_Factura_Encabezado_idTbl_Factura_Encabezado`) REFERENCES `tbl_factura_encabezado` (`idTbl_Factura_Encabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
