-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Set-2020 às 10:02
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `mvc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_info`
--

DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE `tb_info` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_info`
--

INSERT INTO `tb_info` (`id`, `titulo`, `descricao`) VALUES
(1, 'Missão', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(2, 'Visão', 'Morbi faucibus elit nec nibh elementum, a ultrices ante condimentum.'),
(3, 'Valores', 'Pellentesque faucibus egestas justo sed malesuada. Etiam convallis tortor diam, scelerisque sodales nibh consequat quis. Nullam sodales nunc neque, eu placerat ex ultrices a. Nulla sed sapien eu orci egestas imperdiet fringilla ut massa.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

DROP TABLE IF EXISTS `tb_produtos`;
CREATE TABLE `tb_produtos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `preco` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`id`, `descricao`, `preco`) VALUES
(1, 'Sofá', 1250.75),
(2, 'Cadeira', 378.99),
(3, 'Cama', 870.75),
(4, 'Notebook', 1752.49),
(5, 'Smartphone', 999.99);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_info`
--
ALTER TABLE `tb_info`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_info`
--
ALTER TABLE `tb_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
