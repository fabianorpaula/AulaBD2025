-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/09/2025 às 22:36
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `classe`
--

CREATE TABLE `classe` (
  `id_classe` int(10) UNSIGNED NOT NULL,
  `NomeClasse` varchar(60) NOT NULL,
  `DescricaoClasse` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `classe`
--

INSERT INTO `classe` (`id_classe`, `NomeClasse`, `DescricaoClasse`) VALUES
(1, 'Cavaleiro', 'Usa armadura pesada'),
(2, 'Mago', 'Usa magia para destruir'),
(3, 'Bersker', 'Sua furia dá mais força'),
(4, 'Arqueiro', 'Atira flechas a distancia'),
(5, 'Curandeiro', 'Recupera os aliados');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens`
--

CREATE TABLE `itens` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `nome_item` varchar(60) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` int(11) NOT NULL,
  `peso` float NOT NULL,
  `drop_rate` float NOT NULL,
  `durabilidade` int(11) NOT NULL,
  `dano` int(11) NOT NULL,
  `defesa` int(11) NOT NULL,
  `efeito` int(11) NOT NULL,
  `consumivel` tinyint(1) NOT NULL,
  `nivel_requirido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `itens`
--

INSERT INTO `itens` (`id_item`, `nome_item`, `tipo`, `descricao`, `valor`, `peso`, `drop_rate`, `durabilidade`, `dano`, `defesa`, `efeito`, `consumivel`, `nivel_requirido`) VALUES
(1, 'Machado Enferrujada', 'Arma', 'Machado Enferrujada. Arma mística forjada para sobreviver nas masmorras.', 969, 3.47, 0.06, 43, 51, 0, 17, 0, 10),
(2, 'Foice Sombria', 'Arma', 'Foice Sombria. Arma mística forjada para sobreviver nas masmorras.', 814, 2.19, 0.05, 59, 40, 0, 12, 0, 8),
(3, 'Espada Cruel', 'Arma', 'Espada Cruel. Arma mística forjada para sobreviver nas masmorras.', 1143, 6.21, 0.12, 87, 45, 0, 4, 0, 9),
(4, 'Espada Abençoada', 'Arma', 'Espada Abençoada. Arma simples forjada para sobreviver nas masmorras.', 924, 4.04, 0.06, 73, 14, 0, 0, 0, 2),
(5, 'Alabarda Rúnica', 'Arma', 'Alabarda Rúnica. Arma simples forjada para sobreviver nas masmorras.', 577, 5.62, 0.21, 88, 42, 0, 0, 0, 8),
(6, 'Alabarda Sombria', 'Arma', 'Alabarda Sombria. Arma mística forjada para sobreviver nas masmorras.', 775, 6.98, 0.17, 76, 44, 0, 3, 0, 8),
(7, 'Machado Antiga', 'Arma', 'Machado Antiga. Arma simples forjada para sobreviver nas masmorras.', 687, 6.64, 0.25, 59, 63, 0, 0, 0, 12),
(8, 'Alabarda Áurea', 'Arma', 'Alabarda Áurea. Arma mística forjada para sobreviver nas masmorras.', 874, 7, 0.07, 75, 21, 0, 17, 0, 4),
(9, 'Lança Sombria', 'Arma', 'Lança Sombria. Arma mística forjada para sobreviver nas masmorras.', 1033, 3.03, 0.19, 50, 37, 0, 5, 0, 7),
(10, 'Lança Brutal', 'Arma', 'Lança Brutal. Arma simples forjada para sobreviver nas masmorras.', 911, 7.06, 0.2, 59, 60, 0, 0, 0, 12),
(11, 'Arco do Crepúsculo', 'Arma', 'Arco do Crepúsculo. Arma mística forjada para sobreviver nas masmorras.', 284, 3.27, 0.24, 70, 21, 0, 17, 0, 4),
(12, 'Martelo do Crepúsculo', 'Arma', 'Martelo do Crepúsculo. Arma mística forjada para sobreviver nas masmorras.', 868, 2.86, 0.06, 101, 42, 0, 4, 0, 8),
(13, 'Alabarda do Crepúsculo', 'Arma', 'Alabarda do Crepúsculo. Arma simples forjada para sobreviver nas masmorras.', 380, 7.98, 0.06, 93, 13, 0, 0, 0, 2),
(14, 'Machado Profana', 'Arma', 'Machado Profana. Arma mística forjada para sobreviver nas masmorras.', 652, 6.75, 0.12, 38, 32, 0, 5, 0, 6),
(15, 'Martelo Áurea', 'Arma', 'Martelo Áurea. Arma mística forjada para sobreviver nas masmorras.', 576, 6.08, 0.06, 98, 56, 0, 4, 0, 11),
(16, 'Arco Rúnica', 'Arma', 'Arco Rúnica. Arma mística forjada para sobreviver nas masmorras.', 510, 2.95, 0.03, 63, 40, 0, 3, 0, 8),
(17, 'Foice Rúnica', 'Arma', 'Foice Rúnica. Arma mística forjada para sobreviver nas masmorras.', 850, 7.05, 0.14, 55, 17, 0, 4, 0, 3),
(18, 'Clava Enferrujada', 'Arma', 'Clava Enferrujada. Arma mística forjada para sobreviver nas masmorras.', 823, 4.93, 0.05, 76, 64, 0, 4, 0, 12),
(19, 'Adaga Antiga', 'Arma', 'Adaga Antiga. Arma simples forjada para sobreviver nas masmorras.', 656, 7.68, 0.05, 92, 60, 0, 0, 0, 12),
(20, 'Foice Profana', 'Arma', 'Foice Profana. Arma mística forjada para sobreviver nas masmorras.', 541, 4.85, 0.15, 63, 41, 0, 12, 0, 8),
(21, 'Alabarda Cruel', 'Arma', 'Alabarda Cruel. Arma mística forjada para sobreviver nas masmorras.', 962, 6.14, 0.19, 81, 50, 0, 17, 0, 10),
(22, 'Arco do Caçador', 'Arma', 'Arco do Caçador. Arma mística forjada para sobreviver nas masmorras.', 739, 2.73, 0.08, 73, 9, 0, 12, 0, 1),
(23, 'Foice Brutal', 'Arma', 'Foice Brutal. Arma simples forjada para sobreviver nas masmorras.', 612, 2.04, 0.19, 37, 22, 0, 0, 0, 4),
(24, 'Espada da Névoa', 'Arma', 'Espada da Névoa. Arma mística forjada para sobreviver nas masmorras.', 482, 3.43, 0.18, 57, 42, 0, 3, 0, 8),
(25, 'Martelo Brutal', 'Arma', 'Martelo Brutal. Arma mística forjada para sobreviver nas masmorras.', 694, 3.14, 0.05, 85, 30, 0, 5, 0, 6),
(26, 'Alabarda do Caçador', 'Arma', 'Alabarda do Caçador. Arma mística forjada para sobreviver nas masmorras.', 756, 6.04, 0.25, 42, 11, 0, 5, 0, 2),
(27, 'Arco Rúnica', 'Arma', 'Arco Rúnica. Arma mística forjada para sobreviver nas masmorras.', 264, 3.14, 0.13, 84, 19, 0, 4, 0, 3),
(28, 'Martelo Brutal', 'Arma', 'Martelo Brutal. Arma mística forjada para sobreviver nas masmorras.', 287, 6.85, 0.22, 42, 11, 0, 17, 0, 2),
(29, 'Foice Enferrujada', 'Arma', 'Foice Enferrujada. Arma mística forjada para sobreviver nas masmorras.', 105, 3, 0.14, 57, 63, 0, 5, 0, 12),
(30, 'Espada Abençoada', 'Arma', 'Espada Abençoada. Arma mística forjada para sobreviver nas masmorras.', 398, 7.91, 0.09, 88, 26, 0, 5, 0, 5),
(31, 'Foice do Gladiador', 'Arma', 'Foice do Gladiador. Arma mística forjada para sobreviver nas masmorras.', 168, 3.78, 0.24, 104, 55, 0, 12, 0, 11),
(32, 'Espada da Névoa', 'Arma', 'Espada da Névoa. Arma simples forjada para sobreviver nas masmorras.', 68, 5.51, 0.14, 97, 18, 0, 0, 0, 3),
(33, 'Foice Sombria', 'Arma', 'Foice Sombria. Arma simples forjada para sobreviver nas masmorras.', 200, 5.57, 0.18, 60, 33, 0, 0, 0, 6),
(34, 'Adaga Antiga', 'Arma', 'Adaga Antiga. Arma mística forjada para sobreviver nas masmorras.', 644, 4.52, 0.16, 96, 28, 0, 4, 0, 5),
(35, 'Adaga da Névoa', 'Arma', 'Adaga da Névoa. Arma mística forjada para sobreviver nas masmorras.', 454, 4.37, 0.18, 68, 37, 0, 4, 0, 7),
(36, 'Machado Enferrujada', 'Arma', 'Machado Enferrujada. Arma mística forjada para sobreviver nas masmorras.', 879, 7.99, 0.25, 39, 42, 0, 3, 0, 8),
(37, 'Foice Áurea', 'Arma', 'Foice Áurea. Arma mística forjada para sobreviver nas masmorras.', 345, 7.29, 0.22, 77, 26, 0, 3, 0, 5),
(38, 'Martelo do Vazio', 'Arma', 'Martelo do Vazio. Arma mística forjada para sobreviver nas masmorras.', 1036, 5.17, 0.18, 100, 27, 0, 17, 0, 5),
(39, 'Machado Profana', 'Arma', 'Machado Profana. Arma mística forjada para sobreviver nas masmorras.', 280, 7.34, 0.19, 49, 25, 0, 4, 0, 5),
(40, 'Adaga da Névoa', 'Arma', 'Adaga da Névoa. Arma simples forjada para sobreviver nas masmorras.', 618, 5.81, 0.09, 92, 24, 0, 0, 0, 4),
(41, 'Machado do Abismo', 'Arma', 'Machado do Abismo. Arma mística forjada para sobreviver nas masmorras.', 293, 2.02, 0.2, 111, 24, 0, 3, 0, 4),
(42, 'Martelo do Abismo', 'Arma', 'Martelo do Abismo. Arma mística forjada para sobreviver nas masmorras.', 584, 2.67, 0.24, 118, 65, 0, 3, 0, 13),
(43, 'Foice Antiga', 'Arma', 'Foice Antiga. Arma mística forjada para sobreviver nas masmorras.', 788, 5.32, 0.12, 35, 27, 0, 4, 0, 5),
(44, 'Espada da Perdição', 'Arma', 'Espada da Perdição. Arma mística forjada para sobreviver nas masmorras.', 625, 3.5, 0.05, 101, 64, 0, 5, 0, 12),
(45, 'Clava Brutal', 'Arma', 'Clava Brutal. Arma mística forjada para sobreviver nas masmorras.', 176, 7.29, 0.04, 72, 58, 0, 5, 0, 11),
(46, 'Adaga Áurea', 'Arma', 'Adaga Áurea. Arma mística forjada para sobreviver nas masmorras.', 573, 2.65, 0.22, 90, 22, 0, 3, 0, 4),
(47, 'Martelo da Perdição', 'Arma', 'Martelo da Perdição. Arma mística forjada para sobreviver nas masmorras.', 322, 3.34, 0.18, 81, 29, 0, 4, 0, 5),
(48, 'Machado Áurea', 'Arma', 'Machado Áurea. Arma simples forjada para sobreviver nas masmorras.', 769, 5.06, 0.18, 98, 29, 0, 0, 0, 5),
(49, 'Machado Áurea', 'Arma', 'Machado Áurea. Arma mística forjada para sobreviver nas masmorras.', 592, 7.78, 0.09, 43, 46, 0, 5, 0, 9),
(50, 'Arco da Névoa', 'Arma', 'Arco da Névoa. Arma mística forjada para sobreviver nas masmorras.', 856, 7.91, 0.06, 103, 20, 0, 4, 0, 4),
(51, 'Espada do Abismo', 'Arma', 'Espada do Abismo. Arma mística forjada para sobreviver nas masmorras.', 411, 7.55, 0.15, 115, 20, 0, 4, 0, 4),
(52, 'Alabarda Sombria', 'Arma', 'Alabarda Sombria. Arma mística forjada para sobreviver nas masmorras.', 890, 5.74, 0.18, 45, 54, 0, 4, 0, 10),
(53, 'Foice do Vazio', 'Arma', 'Foice do Vazio. Arma mística forjada para sobreviver nas masmorras.', 892, 3.96, 0.18, 100, 16, 0, 3, 0, 3),
(54, 'Alabarda do Crepúsculo', 'Arma', 'Alabarda do Crepúsculo. Arma mística forjada para sobreviver nas masmorras.', 1103, 7.42, 0.17, 68, 33, 0, 12, 0, 6),
(55, 'Espada do Vazio', 'Arma', 'Espada do Vazio. Arma mística forjada para sobreviver nas masmorras.', 303, 4.58, 0.16, 113, 28, 0, 5, 0, 5),
(56, 'Martelo do Caçador', 'Arma', 'Martelo do Caçador. Arma simples forjada para sobreviver nas masmorras.', 701, 5.07, 0.2, 51, 50, 0, 0, 0, 10),
(57, 'Lança da Névoa', 'Arma', 'Lança da Névoa. Arma simples forjada para sobreviver nas masmorras.', 105, 6.04, 0.08, 55, 17, 0, 0, 0, 3),
(58, 'Espada Brutal', 'Arma', 'Espada Brutal. Arma mística forjada para sobreviver nas masmorras.', 896, 7.1, 0.05, 83, 64, 0, 17, 0, 12),
(59, 'Adaga do Crepúsculo', 'Arma', 'Adaga do Crepúsculo. Arma simples forjada para sobreviver nas masmorras.', 716, 3.46, 0.17, 30, 65, 0, 0, 0, 13),
(60, 'Alabarda Brutal', 'Arma', 'Alabarda Brutal. Arma simples forjada para sobreviver nas masmorras.', 590, 5.11, 0.04, 61, 62, 0, 0, 0, 12),
(61, 'Manto Rúnica', 'Armadura', 'Manto Rúnica. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 835, 5.18, 0.14, 111, 0, 45, 15, 0, 7),
(62, 'Grevas Sagrada', 'Armadura', 'Grevas Sagrada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 865, 9.16, 0.12, 60, 0, 65, 15, 0, 10),
(63, 'Escudo Pesada', 'Armadura', 'Escudo Pesada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 875, 6.74, 0.18, 106, 0, 67, 8, 0, 11),
(64, 'Escudo Antiga', 'Armadura', 'Escudo Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 94, 7.42, 0.08, 82, 0, 45, 6, 0, 7),
(65, 'Peitoral Rúnica', 'Armadura', 'Peitoral Rúnica. Peça de proteção robusta para enfrentar horrores medievais.', 169, 3.08, 0.16, 130, 0, 32, 0, 0, 5),
(66, 'Couraça Sagrada', 'Armadura', 'Couraça Sagrada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 353, 5.88, 0.11, 66, 0, 58, 15, 0, 9),
(67, 'Elmo Sagrada', 'Armadura', 'Elmo Sagrada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 503, 1.05, 0.1, 136, 0, 54, 15, 0, 9),
(68, 'Grevas Escura', 'Armadura', 'Grevas Escura. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 834, 6.43, 0.08, 68, 0, 39, 15, 0, 6),
(69, 'Manto Rachada', 'Armadura', 'Manto Rachada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 413, 4.03, 0.16, 91, 0, 26, 15, 0, 4),
(70, 'Luvas Escura', 'Armadura', 'Luvas Escura. Peça de proteção robusta para enfrentar horrores medievais.', 42, 9.16, 0.15, 124, 0, 8, 0, 0, 1),
(71, 'Couraça Rúnica', 'Armadura', 'Couraça Rúnica. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 487, 2.64, 0.09, 81, 0, 32, 15, 0, 5),
(72, 'Cota de Malha Sombria', 'Armadura', 'Cota de Malha Sombria. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 794, 8.92, 0.09, 146, 0, 58, 14, 0, 9),
(73, 'Peitoral Antiga', 'Armadura', 'Peitoral Antiga. Peça de proteção robusta para enfrentar horrores medievais.', 34, 7.74, 0.05, 84, 0, 33, 0, 0, 5),
(74, 'Elmo Rachada', 'Armadura', 'Elmo Rachada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 268, 2.79, 0.04, 59, 0, 35, 8, 0, 5),
(75, 'Manto Refletora', 'Armadura', 'Manto Refletora. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 592, 9.53, 0.12, 72, 0, 52, 8, 0, 8),
(76, 'Peitoral Rúnica', 'Armadura', 'Peitoral Rúnica. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 333, 1.97, 0.04, 79, 0, 53, 15, 0, 8),
(77, 'Botas Refletora', 'Armadura', 'Botas Refletora. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 621, 7.22, 0.15, 53, 0, 43, 6, 0, 7),
(78, 'Peitoral Rachada', 'Armadura', 'Peitoral Rachada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 370, 5.79, 0.16, 48, 0, 69, 14, 0, 11),
(79, 'Elmo Sagrada', 'Armadura', 'Elmo Sagrada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 857, 5.41, 0.12, 86, 0, 63, 8, 0, 10),
(80, 'Couraça Rúnica', 'Armadura', 'Couraça Rúnica. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 766, 5.7, 0.16, 118, 0, 66, 15, 0, 11),
(81, 'Couraça Leve', 'Armadura', 'Couraça Leve. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 345, 8.67, 0.19, 51, 0, 40, 15, 0, 6),
(82, 'Botas Antiga', 'Armadura', 'Botas Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 598, 6.49, 0.11, 43, 0, 68, 14, 0, 11),
(83, 'Luvas Antiga', 'Armadura', 'Luvas Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 232, 4.19, 0.09, 75, 0, 40, 6, 0, 6),
(84, 'Elmo Escura', 'Armadura', 'Elmo Escura. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 210, 1.77, 0.17, 102, 0, 35, 15, 0, 5),
(85, 'Manto Antiga', 'Armadura', 'Manto Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 826, 1.16, 0.09, 91, 0, 36, 14, 0, 6),
(86, 'Cota de Malha Antiga', 'Armadura', 'Cota de Malha Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 581, 5.78, 0.12, 135, 0, 47, 14, 0, 7),
(87, 'Manto Leve', 'Armadura', 'Manto Leve. Peça de proteção robusta para enfrentar horrores medievais.', 328, 3.26, 0.06, 64, 0, 45, 0, 0, 7),
(88, 'Grevas Rúnica', 'Armadura', 'Grevas Rúnica. Peça de proteção robusta para enfrentar horrores medievais.', 211, 2.95, 0.13, 132, 0, 41, 0, 0, 6),
(89, 'Botas Leve', 'Armadura', 'Botas Leve. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 247, 4.25, 0.09, 130, 0, 21, 14, 0, 3),
(90, 'Elmo Rachada', 'Armadura', 'Elmo Rachada. Peça de proteção robusta para enfrentar horrores medievais.', 581, 3.63, 0.21, 121, 0, 67, 0, 0, 11),
(91, 'Elmo Leve', 'Armadura', 'Elmo Leve. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 495, 5.31, 0.1, 46, 0, 37, 15, 0, 6),
(92, 'Peitoral Refletora', 'Armadura', 'Peitoral Refletora. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 425, 5.43, 0.14, 127, 0, 11, 8, 0, 1),
(93, 'Luvas Leve', 'Armadura', 'Luvas Leve. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 102, 9.95, 0.06, 137, 0, 58, 6, 0, 9),
(94, 'Botas Escura', 'Armadura', 'Botas Escura. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 404, 5.05, 0.12, 150, 0, 59, 14, 0, 9),
(95, 'Elmo Refletora', 'Armadura', 'Elmo Refletora. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 796, 2.87, 0.08, 124, 0, 15, 8, 0, 2),
(96, 'Botas Rúnica', 'Armadura', 'Botas Rúnica. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 580, 1.68, 0.04, 97, 0, 65, 14, 0, 10),
(97, 'Elmo Pesada', 'Armadura', 'Elmo Pesada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 310, 7.36, 0.17, 98, 0, 14, 8, 0, 2),
(98, 'Escudo Pesada', 'Armadura', 'Escudo Pesada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 450, 2.03, 0.08, 59, 0, 39, 8, 0, 6),
(99, 'Peitoral Rachada', 'Armadura', 'Peitoral Rachada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 184, 8.13, 0.15, 145, 0, 41, 15, 0, 6),
(100, 'Peitoral Antiga', 'Armadura', 'Peitoral Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 720, 3.74, 0.11, 74, 0, 69, 6, 0, 11),
(101, 'Manto Antiga', 'Armadura', 'Manto Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 97, 6.38, 0.2, 134, 0, 46, 6, 0, 7),
(102, 'Escudo Rachada', 'Armadura', 'Escudo Rachada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 108, 3.06, 0.16, 150, 0, 7, 14, 0, 1),
(103, 'Elmo Rúnica', 'Armadura', 'Elmo Rúnica. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 496, 5.67, 0.12, 75, 0, 28, 6, 0, 4),
(104, 'Couraça Antiga', 'Armadura', 'Couraça Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 108, 5.23, 0.11, 81, 0, 18, 8, 0, 3),
(105, 'Cota de Malha Sagrada', 'Armadura', 'Cota de Malha Sagrada. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 725, 5.46, 0.16, 91, 0, 9, 15, 0, 1),
(106, 'Peitoral Sombria', 'Armadura', 'Peitoral Sombria. Peça de proteção robusta para enfrentar horrores medievais.', 273, 3.91, 0.21, 91, 0, 70, 0, 0, 11),
(107, 'Grevas Antiga', 'Armadura', 'Grevas Antiga. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 438, 1.49, 0.13, 119, 0, 68, 15, 0, 11),
(108, 'Elmo Pesada', 'Armadura', 'Elmo Pesada. Peça de proteção robusta para enfrentar horrores medievais.', 288, 5.94, 0.21, 96, 0, 67, 0, 0, 11),
(109, 'Elmo Pesada', 'Armadura', 'Elmo Pesada. Peça de proteção robusta para enfrentar horrores medievais.', 741, 2.43, 0.14, 110, 0, 57, 0, 0, 9),
(110, 'Botas Refletora', 'Armadura', 'Botas Refletora. Peça de proteção imbuída de magia para enfrentar horrores medievais.', 487, 9.52, 0.16, 59, 0, 68, 14, 0, 11),
(111, 'Infusão de Força', 'Poção', 'Infusão de Força. Consumível alquímico de uso único preparado por boticários sombrios.', 232, 0.7, 0.34, 1, 0, 0, 7, 1, 4),
(112, 'Ampola de Regeneração', 'Poção', 'Ampola de Regeneração. Consumível alquímico de uso único preparado por boticários sombrios.', 94, 0.43, 0.33, 1, 0, 0, 11, 1, 9),
(113, 'Elixir de Fogo', 'Poção', 'Elixir de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 161, 0.66, 0.31, 1, 20, 0, 3, 1, 9),
(114, 'Frasco de Cura', 'Poção', 'Frasco de Cura. Consumível alquímico de uso único preparado por boticários sombrios.', 164, 0.64, 0.3, 1, 0, 0, 1, 1, 10),
(115, 'Ampola de Gelo', 'Poção', 'Ampola de Gelo. Consumível alquímico de uso único preparado por boticários sombrios.', 248, 0.52, 0.15, 1, 27, 0, 4, 1, 9),
(116, 'Ampola de Mana', 'Poção', 'Ampola de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 184, 0.72, 0.34, 1, 0, 0, 10, 1, 4),
(117, 'Infusão de Velocidade', 'Poção', 'Infusão de Velocidade. Consumível alquímico de uso único preparado por boticários sombrios.', 139, 0.71, 0.17, 1, 0, 0, 9, 1, 6),
(118, 'Ampola de Velocidade', 'Poção', 'Ampola de Velocidade. Consumível alquímico de uso único preparado por boticários sombrios.', 217, 0.79, 0.29, 1, 0, 0, 9, 1, 3),
(119, 'Ampola de Cura', 'Poção', 'Ampola de Cura. Consumível alquímico de uso único preparado por boticários sombrios.', 84, 0.5, 0.23, 1, 0, 0, 1, 1, 2),
(120, 'Ampola de Fogo', 'Poção', 'Ampola de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 289, 0.75, 0.05, 1, 14, 0, 3, 1, 7),
(121, 'Elixir de Fogo', 'Poção', 'Elixir de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 260, 0.67, 0.13, 1, 29, 0, 3, 1, 7),
(122, 'Poção de Defesa', 'Poção', 'Poção de Defesa. Consumível alquímico de uso único preparado por boticários sombrios.', 293, 0.43, 0.14, 1, 0, 0, 8, 1, 8),
(123, 'Infusão de Cura', 'Poção', 'Infusão de Cura. Consumível alquímico de uso único preparado por boticários sombrios.', 55, 0.34, 0.26, 1, 0, 0, 1, 1, 5),
(124, 'Elixir de Fogo', 'Poção', 'Elixir de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 242, 0.79, 0.28, 1, 32, 0, 3, 1, 2),
(125, 'Ampola de Gelo', 'Poção', 'Ampola de Gelo. Consumível alquímico de uso único preparado por boticários sombrios.', 173, 0.74, 0.06, 1, 35, 0, 4, 1, 1),
(126, 'Frasco de Defesa', 'Poção', 'Frasco de Defesa. Consumível alquímico de uso único preparado por boticários sombrios.', 211, 0.46, 0.12, 1, 0, 0, 8, 1, 7),
(127, 'Infusão de Gelo', 'Poção', 'Infusão de Gelo. Consumível alquímico de uso único preparado por boticários sombrios.', 107, 0.31, 0.23, 1, 22, 0, 4, 1, 10),
(128, 'Elixir de Mana', 'Poção', 'Elixir de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 93, 0.34, 0.24, 1, 0, 0, 10, 1, 8),
(129, 'Frasco de Cura', 'Poção', 'Frasco de Cura. Consumível alquímico de uso único preparado por boticários sombrios.', 258, 0.74, 0.25, 1, 0, 0, 1, 1, 3),
(130, 'Poção de Mana', 'Poção', 'Poção de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 196, 0.79, 0.14, 1, 0, 0, 10, 1, 7),
(131, 'Frasco de Mana', 'Poção', 'Frasco de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 174, 0.32, 0.17, 1, 0, 0, 10, 1, 8),
(132, 'Poção de Sombra', 'Poção', 'Poção de Sombra. Consumível alquímico de uso único preparado por boticários sombrios.', 215, 0.54, 0.22, 1, 32, 0, 5, 1, 5),
(133, 'Poção de Velocidade', 'Poção', 'Poção de Velocidade. Consumível alquímico de uso único preparado por boticários sombrios.', 160, 0.2, 0.31, 1, 0, 0, 9, 1, 1),
(134, 'Infusão de Mana', 'Poção', 'Infusão de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 166, 0.67, 0.12, 1, 0, 0, 10, 1, 6),
(135, 'Elixir de Sombra', 'Poção', 'Elixir de Sombra. Consumível alquímico de uso único preparado por boticários sombrios.', 148, 0.61, 0.27, 1, 31, 0, 5, 1, 3),
(136, 'Poção de Cura', 'Poção', 'Poção de Cura. Consumível alquímico de uso único preparado por boticários sombrios.', 178, 0.67, 0.06, 1, 0, 0, 1, 1, 6),
(137, 'Elixir de Fogo', 'Poção', 'Elixir de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 171, 0.4, 0.17, 1, 16, 0, 3, 1, 3),
(138, 'Infusão de Defesa', 'Poção', 'Infusão de Defesa. Consumível alquímico de uso único preparado por boticários sombrios.', 291, 0.5, 0.13, 1, 0, 0, 8, 1, 3),
(139, 'Frasco de Mana', 'Poção', 'Frasco de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 171, 0.65, 0.15, 1, 0, 0, 10, 1, 2),
(140, 'Ampola de Fogo', 'Poção', 'Ampola de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 92, 0.65, 0.12, 1, 31, 0, 3, 1, 7),
(141, 'Infusão de Defesa', 'Poção', 'Infusão de Defesa. Consumível alquímico de uso único preparado por boticários sombrios.', 66, 0.67, 0.05, 1, 0, 0, 8, 1, 9),
(142, 'Poção de Mana', 'Poção', 'Poção de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 208, 0.6, 0.25, 1, 0, 0, 10, 1, 10),
(143, 'Ampola de Defesa', 'Poção', 'Ampola de Defesa. Consumível alquímico de uso único preparado por boticários sombrios.', 75, 0.6, 0.19, 1, 0, 0, 8, 1, 10),
(144, 'Infusão de Defesa', 'Poção', 'Infusão de Defesa. Consumível alquímico de uso único preparado por boticários sombrios.', 133, 0.59, 0.24, 1, 0, 0, 8, 1, 8),
(145, 'Frasco de Velocidade', 'Poção', 'Frasco de Velocidade. Consumível alquímico de uso único preparado por boticários sombrios.', 79, 0.28, 0.33, 1, 0, 0, 9, 1, 5),
(146, 'Ampola de Fogo', 'Poção', 'Ampola de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 69, 0.34, 0.21, 1, 22, 0, 3, 1, 8),
(147, 'Frasco de Regeneração', 'Poção', 'Frasco de Regeneração. Consumível alquímico de uso único preparado por boticários sombrios.', 234, 0.55, 0.27, 1, 0, 0, 11, 1, 7),
(148, 'Poção de Mana', 'Poção', 'Poção de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 228, 0.76, 0.13, 1, 0, 0, 10, 1, 6),
(149, 'Elixir de Mana', 'Poção', 'Elixir de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 247, 0.77, 0.31, 1, 0, 0, 10, 1, 2),
(150, 'Frasco de Regeneração', 'Poção', 'Frasco de Regeneração. Consumível alquímico de uso único preparado por boticários sombrios.', 203, 0.24, 0.13, 1, 0, 0, 11, 1, 2),
(151, 'Ampola de Fogo', 'Poção', 'Ampola de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 128, 0.59, 0.23, 1, 10, 0, 3, 1, 1),
(152, 'Frasco de Sombra', 'Poção', 'Frasco de Sombra. Consumível alquímico de uso único preparado por boticários sombrios.', 84, 0.67, 0.11, 1, 34, 0, 5, 1, 9),
(153, 'Elixir de Sombra', 'Poção', 'Elixir de Sombra. Consumível alquímico de uso único preparado por boticários sombrios.', 139, 0.4, 0.09, 1, 29, 0, 5, 1, 1),
(154, 'Frasco de Gelo', 'Poção', 'Frasco de Gelo. Consumível alquímico de uso único preparado por boticários sombrios.', 86, 0.52, 0.29, 1, 13, 0, 4, 1, 1),
(155, 'Elixir de Cura', 'Poção', 'Elixir de Cura. Consumível alquímico de uso único preparado por boticários sombrios.', 203, 0.67, 0.12, 1, 0, 0, 1, 1, 6),
(156, 'Poção de Gelo', 'Poção', 'Poção de Gelo. Consumível alquímico de uso único preparado por boticários sombrios.', 155, 0.23, 0.27, 1, 26, 0, 4, 1, 2),
(157, 'Poção de Mana', 'Poção', 'Poção de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 249, 0.67, 0.2, 1, 0, 0, 10, 1, 2),
(158, 'Ampola de Regeneração', 'Poção', 'Ampola de Regeneração. Consumível alquímico de uso único preparado por boticários sombrios.', 133, 0.77, 0.06, 1, 0, 0, 11, 1, 9),
(159, 'Frasco de Mana', 'Poção', 'Frasco de Mana. Consumível alquímico de uso único preparado por boticários sombrios.', 35, 0.24, 0.19, 1, 0, 0, 10, 1, 7),
(160, 'Ampola de Fogo', 'Poção', 'Ampola de Fogo. Consumível alquímico de uso único preparado por boticários sombrios.', 271, 0.63, 0.18, 1, 12, 0, 3, 1, 6),
(161, 'Essência Venenosa de Paralisia', 'Veneno', 'Essência Venenosa de Paralisia. Substância proibida aplicada em lâminas ou comida.', 104, 0.31, 0.12, 1, 0, 0, 13, 1, 11),
(162, 'Unguento Tóxico de Dreno', 'Veneno', 'Unguento Tóxico de Dreno. Substância proibida aplicada em lâminas ou comida.', 345, 0.41, 0.1, 1, 0, 0, 18, 1, 12),
(163, 'Soro Corrosivo de Paralisia', 'Veneno', 'Soro Corrosivo de Paralisia. Substância proibida aplicada em lâminas ou comida.', 399, 0.25, 0.13, 1, 0, 0, 13, 1, 11),
(164, 'Essência Venenosa de Dreno', 'Veneno', 'Essência Venenosa de Dreno. Substância proibida aplicada em lâminas ou comida.', 271, 0.56, 0.09, 1, 0, 0, 18, 1, 10),
(165, 'Soro Corrosivo de Dreno', 'Veneno', 'Soro Corrosivo de Dreno. Substância proibida aplicada em lâminas ou comida.', 88, 0.33, 0.08, 1, 0, 0, 18, 1, 7),
(166, 'Unguento Tóxico de Náusea', 'Veneno', 'Unguento Tóxico de Náusea. Substância proibida aplicada em lâminas ou comida.', 391, 0.57, 0.04, 1, 0, 0, 2, 1, 4),
(167, 'Frasco de Veneno de Dreno', 'Veneno', 'Frasco de Veneno de Dreno. Substância proibida aplicada em lâminas ou comida.', 89, 0.5, 0.09, 1, 0, 0, 18, 1, 5),
(168, 'Frasco de Veneno de Sangramento', 'Veneno', 'Frasco de Veneno de Sangramento. Substância proibida aplicada em lâminas ou comida.', 383, 0.25, 0.08, 1, 16, 0, 12, 1, 9),
(169, 'Frasco de Veneno de Sangramento', 'Veneno', 'Frasco de Veneno de Sangramento. Substância proibida aplicada em lâminas ou comida.', 347, 0.32, 0.05, 1, 14, 0, 12, 1, 6),
(170, 'Essência Venenosa de Dreno', 'Veneno', 'Essência Venenosa de Dreno. Substância proibida aplicada em lâminas ou comida.', 154, 0.54, 0.08, 1, 0, 0, 18, 1, 11),
(171, 'Unguento Tóxico de Paralisia', 'Veneno', 'Unguento Tóxico de Paralisia. Substância proibida aplicada em lâminas ou comida.', 182, 0.43, 0.15, 1, 0, 0, 13, 1, 11),
(172, 'Frasco de Veneno de Sangramento', 'Veneno', 'Frasco de Veneno de Sangramento. Substância proibida aplicada em lâminas ou comida.', 54, 0.27, 0.14, 1, 10, 0, 12, 1, 8),
(173, 'Unguento Tóxico de Paralisia', 'Veneno', 'Unguento Tóxico de Paralisia. Substância proibida aplicada em lâminas ou comida.', 132, 0.55, 0.11, 1, 0, 0, 13, 1, 9),
(174, 'Frasco de Veneno de Náusea', 'Veneno', 'Frasco de Veneno de Náusea. Substância proibida aplicada em lâminas ou comida.', 364, 0.59, 0.04, 1, 0, 0, 2, 1, 11),
(175, 'Essência Venenosa de Dreno', 'Veneno', 'Essência Venenosa de Dreno. Substância proibida aplicada em lâminas ou comida.', 254, 0.38, 0.05, 1, 0, 0, 18, 1, 7),
(176, 'Unguento Tóxico de Paralisia', 'Veneno', 'Unguento Tóxico de Paralisia. Substância proibida aplicada em lâminas ou comida.', 66, 0.26, 0.14, 1, 0, 0, 13, 1, 3),
(177, 'Frasco de Veneno de Sangramento', 'Veneno', 'Frasco de Veneno de Sangramento. Substância proibida aplicada em lâminas ou comida.', 266, 0.46, 0.1, 1, 13, 0, 12, 1, 9),
(178, 'Unguento Tóxico de Náusea', 'Veneno', 'Unguento Tóxico de Náusea. Substância proibida aplicada em lâminas ou comida.', 302, 0.25, 0.09, 1, 0, 0, 2, 1, 7),
(179, 'Soro Corrosivo de Sangramento', 'Veneno', 'Soro Corrosivo de Sangramento. Substância proibida aplicada em lâminas ou comida.', 63, 0.29, 0.18, 1, 6, 0, 12, 1, 3),
(180, 'Essência Venenosa de Sangramento', 'Veneno', 'Essência Venenosa de Sangramento. Substância proibida aplicada em lâminas ou comida.', 148, 0.51, 0.14, 1, 10, 0, 12, 1, 8),
(181, 'Anel de Sorte', 'Acessório', 'Anel de Sorte. Adorno encantado que influencia atributos sutis.', 589, 0.62, 0.04, 128, 0, 8, 19, 0, 7),
(182, 'Faixa de Roubo de Vida', 'Acessório', 'Faixa de Roubo de Vida. Adorno encantado que influencia atributos sutis.', 153, 0.38, 0.12, 135, 0, 0, 17, 0, 11),
(183, 'Anel de Roubo de Vida', 'Acessório', 'Anel de Roubo de Vida. Adorno encantado que influencia atributos sutis.', 669, 0.4, 0.07, 161, 0, 6, 17, 0, 8),
(184, 'Anel de Carisma', 'Acessório', 'Anel de Carisma. Adorno encantado que influencia atributos sutis.', 101, 0.78, 0.04, 159, 0, 7, 20, 0, 9),
(185, 'Anel de Carisma', 'Acessório', 'Anel de Carisma. Adorno encantado que influencia atributos sutis.', 188, 0.27, 0.1, 147, 0, 1, 20, 0, 10),
(186, 'Pingente de Roubo de Vida', 'Acessório', 'Pingente de Roubo de Vida. Adorno encantado que influencia atributos sutis.', 306, 0.33, 0.04, 145, 0, 1, 17, 0, 12),
(187, 'Faixa de Velocidade', 'Acessório', 'Faixa de Velocidade. Adorno encantado que influencia atributos sutis.', 437, 0.35, 0.14, 162, 0, 2, 9, 0, 7),
(188, 'Anel de Defesa', 'Acessório', 'Anel de Defesa. Adorno encantado que influencia atributos sutis.', 342, 0.24, 0.1, 177, 0, 1, 8, 0, 6),
(189, 'Broche de Luz', 'Acessório', 'Broche de Luz. Adorno encantado que influencia atributos sutis.', 555, 0.63, 0.12, 137, 0, 5, 6, 0, 14),
(190, 'Pingente de Defesa', 'Acessório', 'Pingente de Defesa. Adorno encantado que influencia atributos sutis.', 530, 0.15, 0.08, 118, 0, 4, 8, 0, 13),
(191, 'Anel de Roubo de Vida', 'Acessório', 'Anel de Roubo de Vida. Adorno encantado que influencia atributos sutis.', 599, 0.15, 0.08, 84, 0, 0, 17, 0, 9),
(192, 'Pingente de Força', 'Acessório', 'Pingente de Força. Adorno encantado que influencia atributos sutis.', 172, 0.53, 0.09, 139, 0, 8, 7, 0, 4),
(193, 'Bracelete de Velocidade', 'Acessório', 'Bracelete de Velocidade. Adorno encantado que influencia atributos sutis.', 409, 0.52, 0.09, 87, 0, 7, 9, 0, 5),
(194, 'Pingente de Força', 'Acessório', 'Pingente de Força. Adorno encantado que influencia atributos sutis.', 596, 0.55, 0.03, 170, 0, 7, 7, 0, 11),
(195, 'Faixa de Defesa', 'Acessório', 'Faixa de Defesa. Adorno encantado que influencia atributos sutis.', 452, 0.36, 0.06, 132, 0, 5, 8, 0, 14),
(196, 'Faixa de Sorte', 'Acessório', 'Faixa de Sorte. Adorno encantado que influencia atributos sutis.', 422, 0.15, 0.03, 166, 0, 6, 19, 0, 8),
(197, 'Pingente de Defesa', 'Acessório', 'Pingente de Defesa. Adorno encantado que influencia atributos sutis.', 421, 0.16, 0.11, 197, 0, 5, 8, 0, 8),
(198, 'Broche de Carisma', 'Acessório', 'Broche de Carisma. Adorno encantado que influencia atributos sutis.', 212, 0.52, 0.14, 119, 0, 8, 20, 0, 10),
(199, 'Broche de Roubo de Vida', 'Acessório', 'Broche de Roubo de Vida. Adorno encantado que influencia atributos sutis.', 210, 0.57, 0.13, 174, 0, 8, 17, 0, 5),
(200, 'Broche de Carisma', 'Acessório', 'Broche de Carisma. Adorno encantado que influencia atributos sutis.', 600, 0.35, 0.07, 103, 0, 3, 20, 0, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mochila`
--

CREATE TABLE `mochila` (
  `id_mochila` int(10) UNSIGNED NOT NULL,
  `id_personagem` int(10) UNSIGNED NOT NULL,
  `capacidade_slots` int(10) UNSIGNED DEFAULT 20,
  `capacidade_peso` float DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personagem`
--

CREATE TABLE `personagem` (
  `id_personagem` int(10) UNSIGNED NOT NULL,
  `id_Classe` int(10) UNSIGNED DEFAULT NULL,
  `Nome` text NOT NULL,
  `Raça` text NOT NULL,
  `Idade` int(11) NOT NULL,
  `Força` float NOT NULL,
  `Defesa` float NOT NULL,
  `Vida` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `personagem`
--

INSERT INTO `personagem` (`id_personagem`, `id_Classe`, `Nome`, `Raça`, `Idade`, `Força`, `Defesa`, `Vida`) VALUES
(1, 2, 'Fabiano', 'DragonBorn', 36, 69.5, 10, 30),
(2, NULL, 'Miguel', 'Orc', 29, 26, 10, 30),
(3, NULL, 'Aria', 'Elfa', 120, 18, 10, 30),
(4, NULL, 'Brom', 'Anão', 65, 22, 10, 30),
(5, 5, 'Selene', 'Humana', 24, 14, 10, 30),
(6, NULL, 'Thorgar', 'Orc', 31, 27, 10, 30),
(7, NULL, 'Lyria', 'Elfa', 210, 20, 10, 30),
(8, 1, 'Kael', 'Humano', 28, 16, 2, 30),
(9, NULL, 'Morgash', 'Orc', 42, 30, 10, 30),
(10, NULL, 'Dain', 'Anão', 80, 25, 10, 30),
(11, 5, 'Isolde', 'Humana', 19, 13, 10, 30),
(12, NULL, 'Ragnar', 'Orc', 35, 28, 10, 30),
(13, NULL, 'Fiora', 'Elfa', 150, 19, 10, 30),
(14, 1, 'Baldur', 'Humano', 40, 20, 2, 30),
(15, NULL, 'Grom', 'Orc', 50, 32, 10, 30),
(16, 5, 'Helga', 'Humana', 33, 17, 10, 30),
(17, NULL, 'Thrain', 'Anão', 73, 26, 10, 30),
(18, NULL, 'Evelyn', 'Elfa', 102, 15, 10, 30),
(19, NULL, 'Orgrim', 'Orc', 44, 29, 10, 30),
(20, 1, 'Cedric', 'Humano', 27, 18, 2, 30),
(21, 5, 'Astrid', 'Humana', 21, 14, 10, 30),
(22, NULL, 'Vorgrim', 'Orc', 38, 31, 10, 30),
(23, NULL, 'Luthien', 'Elfa', 199, 21, 10, 30),
(24, NULL, 'Torin', 'Anão', 68, 23, 10, 30),
(25, 5, 'Mira', 'Humana', 25, 12, 10, 30),
(26, NULL, 'Zogar', 'Orc', 36, 28, 10, 30),
(27, NULL, 'Elira', 'Elfa', 130, 16, 10, 30),
(28, 1, 'Haldor', 'Humano', 32, 19, 2, 30),
(29, NULL, 'Krag', 'Orc', 47, 33, 10, 30),
(30, 5, 'Brynn', 'Humana', 22, 15, 10, 30),
(31, NULL, 'Durin', 'Anão', 85, 27, 10, 30),
(32, NULL, 'Seraphina', 'Elfa', 145, 18, 10, 30),
(33, NULL, 'Vargash', 'Orc', 40, 30, 10, 30),
(34, 1, 'Alaric', 'Humano', 29, 17, 2, 30),
(35, 5, 'Thyra', 'Humana', 34, 16, 10, 30),
(36, NULL, 'Korgan', 'Orc', 53, 34, 10, 30),
(37, NULL, 'Lyanna', 'Elfa', 118, 20, 10, 30),
(38, NULL, 'Borin', 'Anão', 71, 24, 10, 30),
(39, 5, 'Eira', 'Humana', 26, 14, 10, 30),
(40, NULL, 'Magnus', 'Orc', 39, 27, 10, 30),
(41, 1, 'Rowan', 'Humano', 31, 18, 2, 30),
(42, NULL, 'Sylvara', 'Elfa', 160, 19, 10, 30),
(43, 5, 'Hilda', 'Humana', 28, 15, 10, 30),
(44, NULL, 'Ulric', 'Anão', 78, 26, 10, 30),
(45, NULL, 'Gorthak', 'Orc', 41, 29, 10, 30),
(46, NULL, 'Marwen', 'Elfa', 200, 21, 10, 30),
(47, 1, 'Leif', 'Humano', 36, 19, 2, 30),
(48, 5, 'Zara', 'Humana', 23, 13, 10, 30),
(49, NULL, 'Thok', 'Orc', 48, 32, 10, 30),
(50, NULL, 'Aeliana', 'Elfa', 140, 18, 10, 30),
(51, 1, 'Eldric', 'Humano', 30, 17, 2, 30),
(52, NULL, 'Grimnar', 'Orc', 52, 35, 10, 30),
(53, NULL, 'Saulo', 'Gnomo', 35, 19, 21, 30),
(54, 2, 'Luciano', 'Dragonborn', 350, 29, 31, 30),
(55, NULL, 'Arthur', 'Sereia', 15, 9, 11, 30),
(56, 5, 'Kessy', 'Humana', 20, 20, 20, 30);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`);

--
-- Índices de tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices de tabela `mochila`
--
ALTER TABLE `mochila`
  ADD PRIMARY KEY (`id_mochila`),
  ADD UNIQUE KEY `uk_mochila_personagem` (`id_personagem`);

--
-- Índices de tabela `personagem`
--
ALTER TABLE `personagem`
  ADD PRIMARY KEY (`id_personagem`),
  ADD KEY `fk_personagem_classe` (`id_Classe`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `classe`
--
ALTER TABLE `classe`
  MODIFY `id_classe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `id_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de tabela `mochila`
--
ALTER TABLE `mochila`
  MODIFY `id_mochila` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `personagem`
--
ALTER TABLE `personagem`
  MODIFY `id_personagem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `mochila`
--
ALTER TABLE `mochila`
  ADD CONSTRAINT `fk_mochila_personagem` FOREIGN KEY (`id_personagem`) REFERENCES `personagem` (`id_personagem`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `personagem`
--
ALTER TABLE `personagem`
  ADD CONSTRAINT `fk_personagem_classe` FOREIGN KEY (`id_Classe`) REFERENCES `classe` (`id_classe`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
