-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2026 at 04:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2winks2`
--

-- --------------------------------------------------------

--
-- Table structure for table `atencion`
--

CREATE TABLE `atencion` (
  `ID_atencion` int(11) NOT NULL,
  `ID_reserva` int(11) NOT NULL,
  `ID_empleado` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Nota` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `atencion`
--

INSERT INTO `atencion` (`ID_atencion`, `ID_reserva`, `ID_empleado`, `Fecha`, `Nota`) VALUES
(1, 7, 1, '2026-03-10', 'Me trato muy bien el empleado, me dio muchos baguetes'),
(2, 2, 2, '2026-02-13', '10/10 y god'),
(3, 6, 5, '2026-04-16', '100/10 hermosa serie y mejor que ciberpunk'),
(4, 9, 4, '2026-03-19', '7/10 me trato mal y no me quiso regalar sabritas'),
(5, 6, 3, '2026-04-15', '0/10 me trato muy mal y me agredio fisicamente');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `ID_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `Telefono` int(12) NOT NULL,
  `Fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`ID_cliente`, `nombre`, `email`, `Telefono`, `Fecha_registro`) VALUES
(1, 'Benjamin Netanyahu', 'Big.Yahu@gmail.com', 2010312345, '2025-10-08'),
(2, 'Aimep3', 'Aime.p3@gmail.com', 1073456471, '2025-06-17'),
(3, 'Wataru Hibiki', 'Wataru.hibiki@gmai.com', 12578695, '2026-02-28'),
(4, 'Ivan Till', 'Ivan.Till@gmail.com', 897067692, '2026-02-14'),
(5, 'Gabimaru del void', 'Gabimaru.Void@gmail.com', 211957016, '2025-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `ID_empleado` int(11) NOT NULL,
  `ID_hotel` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Puesto` varchar(50) NOT NULL,
  `Email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`ID_empleado`, `ID_hotel`, `Nombre`, `Puesto`, `Email`) VALUES
(1, 3, 'Francisco Uchija', 'Patron', 'Francisco.uchija@gmail.com'),
(2, 2, 'Fernando Tomas Vega Juárez', 'Dueño', 'Fernando.Vega@gmail.com'),
(3, 1, 'Kiara Valeria Villarreal Olea', 'Jefa de sotano', 'Kiara.villarreal@gmail.com'),
(4, 3, 'Mayoi Ayase', 'Cocinero', 'Mayoi.Ayase@gmail.com'),
(5, 1, 'Josefo Joestrella 7', 'Corredor de bolas de acero', 'Josefo.Joestrella@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `habitacion`
--

CREATE TABLE `habitacion` (
  `ID_habitacion` int(11) NOT NULL,
  `ID_hotel` int(11) NOT NULL,
  `Numero` int(150) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Precio_noche` double NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `habitacion`
--

INSERT INTO `habitacion` (`ID_habitacion`, `ID_hotel`, `Numero`, `Tipo`, `Precio_noche`, `estado`) VALUES
(1, 1, 1, 'Doble', 30, 'Reservado'),
(2, 3, 1, 'Triple', 50, 'Libre'),
(3, 1, 2, 'Simple', 15, 'Libre'),
(4, 2, 1, 'Triple', 50, 'Reservado'),
(5, 3, 2, 'Simple', 15, 'Libre');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `ID_hotel` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `Telefono` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`ID_hotel`, `nombre`, `Ciudad`, `Telefono`) VALUES
(1, 'Hotel outt', 'Wasabe', 1072886769),
(2, 'Hotel trivago', 'Culichiyork', 1122334455),
(3, 'Hoteletubi', 'Lion Wanajuato', 11223344);

-- --------------------------------------------------------

--
-- Table structure for table `pago`
--

CREATE TABLE `pago` (
  `ID_pago` int(11) NOT NULL,
  `ID_reserva` int(11) NOT NULL,
  `Fecha_pago` date NOT NULL,
  `Monto` double NOT NULL,
  `Metodo` varchar(30) NOT NULL,
  `referencia` int(30) NOT NULL,
  `estado_pago` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pago`
--

INSERT INTO `pago` (`ID_pago`, `ID_reserva`, `Fecha_pago`, `Monto`, `Metodo`, `referencia`, `estado_pago`) VALUES
(1, 5, '2026-02-03', 100, 'Tarjeta', 124367, 'Listo'),
(2, 3, '2026-01-13', 50, 'Efectivo', 123612363, 'Listo'),
(3, 9, '2026-01-08', 0, '70', 172317312, 'Procesando'),
(4, 4, '2026-03-02', 80, 'Efectivo', 8237103, 'En espera'),
(5, 10, '2026-02-09', 200, 'Tarjeta', 712319837, 'Listo');

-- --------------------------------------------------------

--
-- Table structure for table `reserva`
--

CREATE TABLE `reserva` (
  `ID_reserva` int(11) NOT NULL,
  `ID_cliente` int(11) NOT NULL,
  `ID_habitacion` int(11) NOT NULL,
  `Fecha_entrada` date NOT NULL,
  `Fecha_salida` date NOT NULL,
  `num_huespedes` int(11) NOT NULL,
  `estado_reserva` varchar(30) NOT NULL,
  `Fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reserva`
--

INSERT INTO `reserva` (`ID_reserva`, `ID_cliente`, `ID_habitacion`, `Fecha_entrada`, `Fecha_salida`, `num_huespedes`, `estado_reserva`, `Fecha_creacion`) VALUES
(1, 3, 2, '2025-10-15', '2025-10-19', 10, 'Pagado', '2025-10-10'),
(2, 5, 3, '2026-02-10', '2026-02-13', 1, 'No pagado', '2026-02-07'),
(3, 2, 2, '2026-01-05', '2026-01-08', 3, 'Pagado', '2026-01-03'),
(4, 4, 4, '2026-03-13', '2026-03-16', 4, 'No pagado', '2026-03-01'),
(5, 1, 4, '2025-12-16', '2025-12-19', 2, 'Pagado', '2025-11-15'),
(6, 4, 3, '2026-04-15', '2026-04-18', 1, 'Pagado', '2026-04-01'),
(7, 3, 5, '2026-02-01', '2026-02-03', 2, 'Pagado', '2026-01-30'),
(8, 2, 4, '2026-03-18', '2026-03-21', 3, 'No pagado', '2026-03-03'),
(9, 1, 3, '2026-06-08', '2026-06-11', 2, 'Pagado', '2026-05-30'),
(10, 5, 3, '2026-05-06', '2026-05-09', 2, 'Pagado', '2026-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `reserva_servicio`
--

CREATE TABLE `reserva_servicio` (
  `ID_reserva` int(11) NOT NULL,
  `ID_servicio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `Precio_unitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reserva_servicio`
--

INSERT INTO `reserva_servicio` (`ID_reserva`, `ID_servicio`, `cantidad`, `Precio_unitario`) VALUES
(9, 3, 50, 60.5),
(9, 5, 30, 50),
(3, 2, 2, 20),
(4, 2, 1, 1000),
(9, 4, 3, 200),
(6, 3, 3, 150),
(1, 4, 2, 70),
(5, 2, 5, 150),
(8, 1, 10, 300),
(5, 3, 5, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `servicio`
--

CREATE TABLE `servicio` (
  `ID_servicio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio_base` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `servicio`
--

INSERT INTO `servicio` (`ID_servicio`, `nombre`, `precio_base`) VALUES
(1, 'Cine privado', 40),
(2, 'Espectaculo de luces', 20),
(3, 'Concierto rock', 30),
(4, 'Masaje', 20),
(5, 'Gimnasio', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`ID_atencion`),
  ADD KEY `ID_reserva` (`ID_reserva`),
  ADD KEY `ID_empleado` (`ID_empleado`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_cliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_empleado`),
  ADD KEY `ID_hotel` (`ID_hotel`);

--
-- Indexes for table `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`ID_habitacion`),
  ADD KEY `ID_hotel` (`ID_hotel`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`ID_hotel`);

--
-- Indexes for table `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_pago`),
  ADD KEY `ID_reserva` (`ID_reserva`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`ID_reserva`),
  ADD KEY `ID_cliente` (`ID_cliente`),
  ADD KEY `ID_habitacion` (`ID_habitacion`);

--
-- Indexes for table `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD KEY `ID_reserva` (`ID_reserva`),
  ADD KEY `ID_servicio` (`ID_servicio`);

--
-- Indexes for table `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`ID_servicio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atencion`
--
ALTER TABLE `atencion`
  MODIFY `ID_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `empleado`
--
ALTER TABLE `empleado`
  MODIFY `ID_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `ID_habitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pago`
--
ALTER TABLE `pago`
  MODIFY `ID_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `ID_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `servicio`
--
ALTER TABLE `servicio`
  MODIFY `ID_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `atencion_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reserva` (`ID_reserva`),
  ADD CONSTRAINT `atencion_ibfk_2` FOREIGN KEY (`ID_empleado`) REFERENCES `empleado` (`ID_empleado`);

--
-- Constraints for table `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_hotel`) REFERENCES `hotel` (`ID_hotel`);

--
-- Constraints for table `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`ID_hotel`) REFERENCES `hotel` (`ID_hotel`);

--
-- Constraints for table `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reserva` (`ID_reserva`);

--
-- Constraints for table `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`ID_habitacion`) REFERENCES `habitacion` (`ID_habitacion`);

--
-- Constraints for table `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD CONSTRAINT `reserva_servicio_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reserva` (`ID_reserva`),
  ADD CONSTRAINT `reserva_servicio_ibfk_2` FOREIGN KEY (`ID_servicio`) REFERENCES `servicio` (`ID_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
