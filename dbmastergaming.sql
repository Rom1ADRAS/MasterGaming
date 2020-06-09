-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 09 Juin 2020 à 10:32
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dbmastergaming`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacter`
--

CREATE TABLE `contacter` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `sujet` varchar(100) NOT NULL,
  `msg` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contacter`
--

INSERT INTO `contacter` (`id`, `nom`, `prenom`, `mail`, `sujet`, `msg`) VALUES
(1, 'roux', 'toto', 'gho@gmail.com', 'battlefield 6', 'a'),
(2, '', '', '', '', ''),
(3, 'non', 'oui', 'ggghfjgfd@gmail.com', 'stage', 'ouais'),
(4, 'ADRAS', 'Romain', 'thedark97450@hotmail.fr', 'bug', 'ouais');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `num` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `datenaiss` date NOT NULL,
  `email` varchar(25) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `mdp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inscription`
--

INSERT INTO `inscription` (`num`, `nom`, `prenom`, `datenaiss`, `email`, `pseudo`, `mdp`) VALUES
(1, 'rouxette', 'oui', '2019-03-29', 'toto@gmail.com', 'toto', '987');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id`, `nom`, `prenom`, `age`, `pseudo`, `email`, `mdp`) VALUES
(1, 'cicatrice', 'Zola', 18, 'Zolabeille', 'zola@gmail.com', '4dd019df9383d64247a7854e11362d0652e99577'),
(2, 'wilon', 'derion', 45, 'tyuiop', 'iop@gmail.com', '5cee68d5847dff97099c4b1c295bb858a6bcd169'),
(3, 'Thomas', 'MAHON', 56, 'Titouan2Brain', 'toto@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, 'George', 'WBush', 50, 'GeorgeWbush', 'GB@gmail.com', '51eac6b471a284d3341d8c0c63d0f1a286262a18'),
(5, 'assousamypalani', 'noooooon', 16, 'ouais', 'xo@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'ADRAS', 'Romain', 20, 'Ketriix974', 'romainadras66@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(8, 'GARNIER', 'Wilson', 21, 'wilwil974', 'wilson@gmail.com', 'd8105747facd7558aca4559169590ada33e4aca0');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `panier`
--

INSERT INTO `panier` (`id`, `nom`, `prix`) VALUES
(1, 'Fifa 19', 19.99),
(2, 'Battlefield 1', 15.99),
(3, 'Grand theft auto V', 9.99),
(4, 'Rust', 19.99);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `contacter`
--
ALTER TABLE `contacter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `contacter`
--
ALTER TABLE `contacter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
