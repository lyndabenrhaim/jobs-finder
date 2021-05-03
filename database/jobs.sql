-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 04 mai 2021 à 01:35
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jobs`
--

-- --------------------------------------------------------

--
-- Structure de la table `emploi`
--

CREATE TABLE `emploi` (
  `id_emploi` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emploi`
--

INSERT INTO `emploi` (`id_emploi`, `title`, `mail`, `price`) VALUES
(16, 'UX/UI', 'Linda@isticbc.org', 3000),
(17, 'Frontend', 'Linda@isticbc.org', 1000),
(18, 'Backend', 'Linda@isticbc.org', 2000),
(19, 'Python', 'Linda@isticbc.org', 2000),
(20, 'full stack', 'Linda@isticbc.org', 3000),
(21, 'frontend', 'linedata@gmail.com', 1000),
(22, 'angular', 'linedata@gmail.com', 200);

-- --------------------------------------------------------

--
-- Structure de la table `field`
--

CREATE TABLE `field` (
  `id_field` int(11) NOT NULL,
  `field` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `field`
--

INSERT INTO `field` (`id_field`, `field`) VALUES
(1, 'finance'),
(2, 'frontend'),
(5, 'react'),
(6, 'graph Ql'),
(7, 'angular');

-- --------------------------------------------------------

--
-- Structure de la table `fieldassociation`
--

CREATE TABLE `fieldassociation` (
  `mail` varchar(45) NOT NULL,
  `id_field` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fieldassociation`
--

INSERT INTO `fieldassociation` (`mail`, `id_field`) VALUES
('Linda@isticbc.org', 5),
('Linda@isticbc.org', 6),
('benrhaim@isticbc.org', 6),
('benrhaim@isticbc.org', 2),
('benrhaim@isticbc.org', 7),
('benrhaim@isticbc.org', 1),
('benrhaim@isticbc.org', 5),
('user@isticbc.org', 1),
('user@isticbc.org', 2),
('user@isticbc.org', 5),
('user@isticbc.org', 7),
('user@isticbc.org', 6),
('linedata@gmail.com', 7),
('linedata@gmail.com', 2);

-- --------------------------------------------------------

--
-- Structure de la table `postulation`
--

CREATE TABLE `postulation` (
  `mail` varchar(45) NOT NULL,
  `id_emploi` int(11) NOT NULL,
  `description` text NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `postulation`
--

INSERT INTO `postulation` (`mail`, `id_emploi`, `description`, `response`) VALUES
('benrhaim@isticbc.org', 16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem ', 'accepted'),
('benrhaim@isticbc.org', 18, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem ', 'your request is not treated.'),
('benrhaim@isticbc.org', 19, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem ', 'your request is not treated.'),
('benrhaim@isticbc.org', 21, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem ', 'your request is not treated.'),
('user@isticbc.org', 16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem ', 'refused'),
('user@isticbc.org', 17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem '),
('user@isticbc.org', 18, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem '),
('user@isticbc.org', 22, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem ', 'your request is not treated.');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `mail` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(8) NOT NULL,
  `CIN` varchar(8) NOT NULL,
  `age` varchar(3) NOT NULL,
  `password` varchar(45) NOT NULL,
  `photo` longblob NOT NULL,
  `recruteur` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`mail`, `first_name`, `last_name`, `phone`, `CIN`, `age`, `password`, `photo`, `recruteur`) VALUES
('benrhaim@isticbc.org', 'linda', 'benrhaim', '666', '12345678', '20', '123', 0x70686f746f, 0),
('Linda@isticbc.org', 'Linda', 'Ben rhaim', '666', '12345678', '20', '123', 0x70686f746f, 1),
('linedata@gmail.com', 'so', 'linedata', '666', '12345678', '10', '123', 0x70686f746f, 1),
('user@isticbc.org', 'user', 'test', '666', '12345678', '20', '123', 0x70686f746f, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emploi`
--
ALTER TABLE `emploi`
  ADD PRIMARY KEY (`id_emploi`),
  ADD KEY `mail` (`mail`);

--
-- Index pour la table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id_field`);

--
-- Index pour la table `fieldassociation`
--
ALTER TABLE `fieldassociation`
  ADD KEY `f2` (`id_field`),
  ADD KEY `f3` (`mail`);

--
-- Index pour la table `postulation`
--
ALTER TABLE `postulation`
  ADD PRIMARY KEY (`mail`,`id_emploi`),
  ADD KEY `f7` (`id_emploi`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`mail`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emploi`
--
ALTER TABLE `emploi`
  MODIFY `id_emploi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `field`
--
ALTER TABLE `field`
  MODIFY `id_field` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emploi`
--
ALTER TABLE `emploi`
  ADD CONSTRAINT `emploi_ibfk_1` FOREIGN KEY (`mail`) REFERENCES `user` (`mail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `fieldassociation`
--
ALTER TABLE `fieldassociation`
  ADD CONSTRAINT `f2` FOREIGN KEY (`id_field`) REFERENCES `field` (`id_field`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `f3` FOREIGN KEY (`mail`) REFERENCES `user` (`mail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `postulation`
--
ALTER TABLE `postulation`
  ADD CONSTRAINT `f6` FOREIGN KEY (`mail`) REFERENCES `user` (`mail`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `f7` FOREIGN KEY (`id_emploi`) REFERENCES `emploi` (`id_emploi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
