-- phpMyAdmin SQL Dump
-- version 6.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Hôte : 192.168.30.23
-- Généré le : Sam. 16 mars 2024 à 10:25
-- Version du serveur : 8.0.18
-- Version de PHP : 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `CINEBASE`
--

-- --------------------------------------------------------

--
-- Structure de la table `CINEMA`
--

CREATE TABLE `CINEMA` (
  `idCinema` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `CINEMA`
--

INSERT INTO `CINEMA` (`idCinema`, `nom`, `adresse`) VALUES
(1, 'Le Fontenelle', 'Aokas'),
(2, 'Le Palace', 'Bejaia'),
(3, 'Le Majestic', 'Alger'),
(4, 'Le Rivoli', 'Paris'),
(5, 'Le Paradis', 'Aokas'),
(6, 'L\'Éden', 'Bejaia'),
(7, 'L\'Oasis', 'Alger'),
(8, 'Le Palais', 'Paris'),
(9, 'Le Rivage', 'Tizi Ouzou');

-- --------------------------------------------------------

--
-- Structure de la table `FILM`
--

CREATE TABLE `FILM` (
  `idFilm` int(11) NOT NULL,
  `idRealisateur` int(11) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `annee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `FILM`
--

INSERT INTO `FILM` (`idFilm`, `idRealisateur`, `titre`, `genre`, `annee`) VALUES
(1, 3, 'Melancholia', 'Drame', 2011),
(2, 3, 'Dogville', 'Drame', 2003),
(3, 8, 'Jurassic Park', 'Science-fiction', 1993),
(4, 9, 'Le Parrain', 'Drame', 1972),
(5, 3, 'Breaking the Waves', 'Drame', 1996),
(6, 9, 'Apocalypse Now', 'Drame', 1979),
(7, 3, 'Dancer in the Dark', 'Drame', 2000),
(8, 8, 'E.T. the Extra-Terrestrial', 'Science-fiction', 1982),
(9, 8, 'Indiana Jones and the Last Crusade', 'Aventure', 1989),
(10, 8, 'Saving Private Ryan', 'Drame', 1998),
(11, 3, 'Antichrist', 'Horreur', 2009),
(12, 9, 'The Godfather: Part II', 'Drame', 1974),
(13, 3, 'Nymphomaniac', 'Drame', 2013),
(14, 8, 'Schindler\'s List', 'Biographie', 1993),
(15, 9, 'The Godfather', 'Drame', 1972),
(16, 3, 'Melancholia', 'Drame', 2011),
(17, 8, 'Jaws', 'Thriller', 1975),
(18, 9, 'Apocalypse Now', 'Drame', 1979),
(19, 3, 'Dogville', 'Drame', 2003),
(20, 8, 'E.T. the Extra-Terrestrial', 'Science-fiction', 1982),
(21, 9, 'The Conversation', 'Mystère', 1974),
(22, 3, 'Breaking the Waves', 'Drame', 1996),
(23, 8, 'Raiders of the Lost Ark', 'Aventure', 1981),
(24, 9, 'The Godfather: Part III', 'Drame', 1990),
(25, 3, 'Dancer in the Dark', 'Drame', 2000),
(26, 8, 'Close Encounters of the Third Kind', 'Science-fiction', 1977),
(27, 9, 'Dracula', 'Horreur', 1992),
(28, 3, 'The House That Jack Built', 'Horreur', 2018),
(29, 8, 'Jurassic Park', 'Science-fiction', 1993),
(30, 9, 'Bram Stoker\'s Dracula', 'Horreur', 1992),
(31, 3, 'The Element of Crime', 'Drame', 1984),
(32, 8, 'Indiana Jones and the Last Crusade', 'Aventure', 1989),
(33, 9, 'The Outsiders', 'Drame', 1983),
(34, 3, 'Europa', 'Drame', 1991),
(35, 8, 'Empire of the Sun', 'Drame', 1987),
(36, 9, 'The Rainmaker', 'Drame', 1997),
(37, 3, 'Manderlay', 'Drame', 2005),
(38, 8, 'War Horse', 'Drame', 2011),
(39, 9, 'Tetro', 'Drame', 2009),
(40, 3, 'The Boss of It All', 'Comédie', 2006),
(41, 8, 'Lincoln', 'Biographie', 2012),
(42, 9, 'The Cotton Club', 'Crime', 1984),
(43, 3, 'Medea', 'Drame', 1988),
(44, 8, 'A.I. Artificial Intelligence', 'Drame', 2001),
(45, 9, 'One from the Heart', 'Drame', 1982),
(46, 3, 'The Idiots', 'Comédie', 1998),
(47, 8, 'Catch Me If You Can', 'Biographie', 2002),
(48, 9, 'Youth Without Youth', 'Drame', 2007),
(49, 3, 'Dancers in the Dark', 'Drame', 1995),
(50, 8, 'The Terminal', 'Comédie', 2004);

-- --------------------------------------------------------

--
-- Structure de la table `JOUER`
--

CREATE TABLE `JOUER` (
  `idActeur` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `JOUER`
--

INSERT INTO `JOUER` (`idActeur`, `idFilm`, `role`) VALUES
(2, 1, 'Claire'),
(4, 4, 'Kay Adams'),
(4, 6, 'Rex'),
(4, 7, 'Becky'),
(4, 9, 'Willie Scott'),
(5, 3, 'Dr. Alan Grant'),
(5, 6, 'Captain Benjamin L. Willard'),
(6, 2, 'Grace Margaret Mulligan'),
(7, 2, 'Selma Jezkova'),
(10, 10, 'Private James Francis Ryan'),
(11, 11, 'She'),
(12, 12, 'Young Vito Corleone'),
(13, 13, 'Joe'),
(14, 14, 'Helen Hirsch'),
(15, 15, 'Michael Corleone'),
(16, 16, 'Justine'),
(17, 17, 'Chief Martin Brody'),
(18, 18, 'Lieutenant Colonel Bill Kilgore'),
(19, 19, 'Tom Edison'),
(20, 20, 'Elliott'),
(21, 21, 'Harry Caul'),
(22, 22, 'Bess McNeill'),
(23, 23, 'Indiana Jones'),
(24, 24, 'Mary Corleone'),
(25, 25, 'Selma Jezkova'),
(26, 26, 'Roy Neary'),
(27, 27, 'Dracula'),
(28, 28, 'Jack'),
(29, 29, 'Dr. Alan Grant'),
(30, 30, 'Mina Murray / Elisabeta'),
(31, 31, 'Inspector'),
(32, 32, 'Dr. Henry Jones, Sr.'),
(33, 33, 'Richard Karlsen'),
(34, 34, 'Leo Aragorn'),
(35, 35, 'Jim Graham'),
(36, 36, 'Rudy Baylor'),
(37, 37, 'Grace Margaret Mulligan'),
(38, 38, 'Albert Narracott'),
(39, 39, 'Angelo \'Tetro\' Tetrocini'),
(40, 40, 'Kristoffer'),
(41, 41, 'Abraham Lincoln'),
(42, 42, 'Dixie Dwyer'),
(43, 43, 'Jason Medea'),
(44, 44, 'Gigolo Joe'),
(45, 45, 'Frannie'),
(46, 46, 'The Idiot'),
(47, 47, 'Frank Abagnale Jr.'),
(48, 48, 'Dominic Matei'),
(49, 49, 'Karen'),
(50, 50, 'Viktor Navorski');

-- --------------------------------------------------------

--
-- Structure de la table `PERSONNE`
--

CREATE TABLE `PERSONNE` (
  `idPersonne` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `PERSONNE`
--

INSERT INTO `PERSONNE` (`idPersonne`, `nom`, `prenom`) VALUES
(1, 'Smith', 'John'),
(2, 'Doe', 'Jane'),
(3, 'Von Trier', 'Lars'),
(4, 'Kidman', 'Nicole'),
(5, 'Bale', 'Christian'),
(6, 'Winslet', 'Kate'),
(7, 'Cotillard', 'Marion'),
(8, 'Spielberg', 'Steven'),
(9, 'Coppola', 'Francis Ford'),
(10, 'Johnson', 'Sarah'),
(11, 'Brown', 'Michael'),
(12, 'Anderson', 'Emily'),
(13, 'Martinez', 'David'),
(14, 'Taylor', 'Jessica'),
(15, 'Thomas', 'Daniel'),
(16, 'Hernandez', 'Samantha'),
(17, 'Young', 'Matthew'),
(18, 'King', 'Olivia'),
(19, 'Lee', 'Christopher'),
(20, 'Garcia', 'Ava'),
(21, 'Lewis', 'Joshua'),
(22, 'Allen', 'Sophia'),
(23, 'Hall', 'James'),
(24, 'Scott', 'Isabella'),
(25, 'Green', 'Jacob'),
(26, 'Adams', 'Emma'),
(27, 'Baker', 'Alexander'),
(28, 'Clark', 'Madison'),
(29, 'Davis', 'Ethan'),
(30, 'Evans', 'Chloe'),
(31, 'Ford', 'Noah'),
(32, 'Hill', 'Lily'),
(33, 'Jackson', 'William'),
(34, 'Moore', 'Emily'),
(35, 'Nelson', 'Daniel'),
(36, 'Parker', 'Grace'),
(37, 'Ramirez', 'Christopher'),
(38, 'Reed', 'Avery'),
(39, 'Roberts', 'Mason'),
(40, 'Russell', 'Hannah'),
(41, 'Sanchez', 'Elijah'),
(42, 'Stewart', 'Sophie'),
(43, 'Turner', 'Natalie'),
(44, 'Ward', 'Jack'),
(45, 'White', 'Aubrey'),
(46, 'Wood', 'Gabriel'),
(47, 'Cooper', 'Charlotte'),
(48, 'Morris', 'Lucas'),
(49, 'Murphy', 'Zoe'),
(50, 'Peterson', 'Ryan');

-- --------------------------------------------------------

--
-- Structure de la table `PROJECTION`
--

CREATE TABLE `PROJECTION` (
  `idCinema` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `jour` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `PROJECTION`
--

INSERT INTO `PROJECTION` (`idCinema`, `idFilm`, `jour`) VALUES
(1, 1, '2023-01-01'),
(1, 2, '2023-02-15'),
(1, 3, '2002-05-10'),
(2, 4, '2023-03-20'),
(2, 5, '2002-07-05'),
(2, 6, '2002-11-11'),
(3, 7, '2002-09-30'),
(3, 8, '2002-08-25'),
(3, 9, '2002-12-01'),
(5, 16, '2023-01-01'),
(5, 21, '2002-11-11'),
(5, 26, '2023-01-10'),
(5, 31, '2023-03-01'),
(5, 36, '2002-08-10'),
(5, 41, '2023-08-15'),
(5, 46, '2023-02-01'),
(6, 17, '2023-02-15'),
(6, 22, '2002-09-30'),
(6, 27, '2023-02-20'),
(6, 32, '2002-01-30'),
(6, 37, '2023-04-15'),
(6, 42, '2002-09-20'),
(6, 47, '2023-03-15'),
(7, 18, '2002-05-10'),
(7, 23, '2002-08-25'),
(7, 28, '2002-06-15'),
(7, 33, '2002-03-10'),
(7, 38, '2023-05-20'),
(7, 43, '2002-10-25'),
(7, 48, '2002-04-30'),
(8, 19, '2023-03-20'),
(8, 24, '2002-12-01'),
(8, 29, '2002-10-05'),
(8, 34, '2023-03-05'),
(8, 39, '2002-06-30'),
(8, 44, '2023-11-30'),
(8, 49, '2023-05-05'),
(9, 20, '2002-07-05'),
(9, 25, '2023-01-05'),
(9, 30, '2023-02-25'),
(9, 35, '2002-04-20'),
(9, 40, '2023-07-10'),
(9, 45, '2002-12-10'),
(9, 50, '2002-06-20');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `CINEMA`
--
ALTER TABLE `CINEMA`
  ADD PRIMARY KEY (`idCinema`);

--
-- Index pour la table `FILM`
--
ALTER TABLE `FILM`
  ADD PRIMARY KEY (`idFilm`),
  ADD KEY `idRealisateur` (`idRealisateur`);

--
-- Index pour la table `JOUER`
--
ALTER TABLE `JOUER`
  ADD PRIMARY KEY (`idActeur`,`idFilm`),
  ADD KEY `idFilm` (`idFilm`);

--
-- Index pour la table `PERSONNE`
--
ALTER TABLE `PERSONNE`
  ADD PRIMARY KEY (`idPersonne`);

--
-- Index pour la table `PROJECTION`
--
ALTER TABLE `PROJECTION`
  ADD PRIMARY KEY (`idCinema`,`idFilm`),
  ADD KEY `idFilm` (`idFilm`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `FILM`
--
ALTER TABLE `FILM`
  ADD CONSTRAINT `FILM_ibfk_1` FOREIGN KEY (`idRealisateur`) REFERENCES `PERSONNE` (`idPersonne`);

--
-- Contraintes pour la table `JOUER`
--
ALTER TABLE `JOUER`
  ADD CONSTRAINT `JOUER_ibfk_1` FOREIGN KEY (`idActeur`) REFERENCES `PERSONNE` (`idPersonne`),
  ADD CONSTRAINT `JOUER_ibfk_2` FOREIGN KEY (`idFilm`) REFERENCES `FILM` (`idFilm`);

--
-- Contraintes pour la table `PROJECTION`
--
ALTER TABLE `PROJECTION`
  ADD CONSTRAINT `PROJECTION_ibfk_1` FOREIGN KEY (`idCinema`) REFERENCES `CINEMA` (`idCinema`),
  ADD CONSTRAINT `PROJECTION_ibfk_2` FOREIGN KEY (`idFilm`) REFERENCES `FILM` (`idFilm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
