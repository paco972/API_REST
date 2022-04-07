-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 24 mars 2022 à 20:52
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lycee`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `idEtudiant` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `Tel` varchar(11) NOT NULL,
  `Pseudo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`idEtudiant`, `nom`, `prenom`, `Tel`, `Pseudo`) VALUES
(1, 'MARTON COULIS', 'Wendy', '0696192279', 'icetoice'),
(2, 'HILLION', 'Yannik', '0696393833', 'Leygoman_972'),
(3, 'LAGRAND', 'Mathis', '0767522009', 'xl_GhxstBlack'),
(4, 'MAUGEE', 'Killian', '0696016389', 'KIKI_972'),
(5, 'LENROUILLY', 'Kylian', '0696104413', 'FindZzz'),
(6, 'THIVET VALBON', 'Kyllian', '0696502453', 'IIqpmxII'),
(7, 'OLIVIERI', 'Kenji', '0696899972', 'LeKen'),
(8, 'SAINTE ROSE', 'Simeon', '0696748702', 'X-INSOLANT97-X'),
(9, 'JUHEL', 'Yanis', '0696025244', 'AoYanis'),
(10, 'LAMON', 'Noorham', '0696555646', 'TOP_BOYY97'),
(11, 'VATON', 'Melvyn', '0696047254', 'Melo');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idEtudiant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idEtudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
