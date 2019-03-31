-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31-Mar-2019 às 23:45
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testepro`
--
CREATE DATABASE IF NOT EXISTS `testepro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testepro`;

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `sp_ins_consulta`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ins_consulta` (IN `nome` VARCHAR(200), IN `email` VARCHAR(200), IN `telefone` VARCHAR(11), IN `especialidade` VARCHAR(200), IN `dataConsulta` DATE, IN `periodo` VARCHAR(20))  BEGIN
		insert into tab_consulta (nm_paciente, nm_email, telefone, nm_especialidade, dataConsulta, periodoConsulta)
        values(nome, email, telefone, especialidade, dataConsulta, periodo);       
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_consulta`
--

DROP TABLE IF EXISTS `tab_consulta`;
CREATE TABLE IF NOT EXISTS `tab_consulta` (
  `cd_consulta` int(11) NOT NULL AUTO_INCREMENT,
  `nm_paciente` varchar(200) DEFAULT NULL,
  `nm_email` varchar(200) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `nm_especialidade` varchar(100) DEFAULT NULL,
  `dataConsulta` date DEFAULT NULL,
  `periodoConsulta` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cd_consulta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
