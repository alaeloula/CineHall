-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 15 fév. 2023 à 15:12
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinehall`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id_f` int NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `date_f` date NOT NULL,
  `id_s` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_f`, `nom`, `image`, `date_f`, `id_s`) VALUES
(2, 'spider man', '[value-3]', '2023-02-04', 1),
(3, 'super man', '[value-3]', '2023-02-04', 2),
(4, 'marvel', '[value-3]', '2023-02-04', 3),
(8, 'joker', '[value-2]', '2023-02-06', 1),
(9, 'joker 2', '[value-2]', '2023-02-06', 2),
(10, 'joker 3', '[value-2]', '2023-02-06', 3),
(11, 'chawchank 1', '[value-2]', '2023-02-07', 1),
(12, 'chawchank 2', '[value-2]', '2023-02-07', 2),
(13, 'chawchank 3', '[value-2]', '2023-02-07', 3),
(17, 'film 1', NULL, '2023-02-08', 1),
(18, 'film 2', NULL, '2023-02-08', 2),
(19, 'dilm ghda', NULL, '2023-02-09', 2);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_res` int NOT NULL,
  `date_res` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_f` int DEFAULT NULL,
  `num_place` int DEFAULT NULL,
  `token` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id_res`, `date_res`, `id_f`, `num_place`, `token`) VALUES
(38, '2023-02-06 00:00:00', 9, 4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJzaW1vIiwiZW1haWwiOiJzaW1vQGdtYWlsLkNvbSJ9.ilzUSkfDHhi_p1C0WkILZoX6To3tDaF_7F27oWnytYM'),
(39, '2023-02-06 00:00:00', 9, 3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJzaW1vIiwiZW1haWwiOiJzaW1vQGdtYWlsLkNvbSJ9.ilzUSkfDHhi_p1C0WkILZoX6To3tDaF_7F27oWnytYM'),
(42, '2023-02-07 00:00:00', 13, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJtb2tobGlzIiwiZW1haWwiOiJtb2tobGlzQGdtYWlsLmNvbSJ9.0tLree_HPshvBx8xHaBquo--EMQ0uQX-DOSk9trm4gE'),
(43, '2023-02-08 00:00:00', 18, 16, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJhbGFlIiwiZW1haWwiOiJhbGFlQGdtYWlsLmNvbSJ9.w1O8Pe2t0FhQWxq07k9CPO3a0qS_g4t62hmzFMlQH5M'),
(46, '2023-02-08 00:00:00', 19, 4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJhbGFlIiwiZW1haWwiOiJhbGFlQGdtYWlsLmNvbSJ9.w1O8Pe2t0FhQWxq07k9CPO3a0qS_g4t62hmzFMlQH5M'),
(47, '2023-02-08 00:00:00', 19, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJhbGFlIiwiZW1haWwiOiJhbGFlQGdtYWlsLmNvbSJ9.w1O8Pe2t0FhQWxq07k9CPO3a0qS_g4t62hmzFMlQH5M'),
(48, '2023-02-08 00:00:00', 19, 7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJhbGFlIiwiZW1haWwiOiJhbGFlQGdtYWlsLmNvbSJ9.w1O8Pe2t0FhQWxq07k9CPO3a0qS_g4t62hmzFMlQH5M'),
(49, '2023-02-08 00:00:00', 19, 8, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJhbGFlIiwiZW1haWwiOiJhbGFlQGdtYWlsLmNvbSJ9.w1O8Pe2t0FhQWxq07k9CPO3a0qS_g4t62hmzFMlQH5M'),
(50, '2023-02-08 00:00:00', 18, 5, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJhbGFlIiwiZW1haWwiOiJhbGFlQGdtYWlsLmNvbSJ9.w1O8Pe2t0FhQWxq07k9CPO3a0qS_g4t62hmzFMlQH5M'),
(51, '2023-02-08 00:00:00', 18, 4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJhbGFlIiwiZW1haWwiOiJhbGFlQGdtYWlsLmNvbSJ9.w1O8Pe2t0FhQWxq07k9CPO3a0qS_g4t62hmzFMlQH5M');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id_s` int NOT NULL,
  `nom` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id_s`, `nom`) VALUES
(1, 'Alan turing'),
(2, 'margaret hamilton'),
(3, 'ada lovelace');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `token` varchar(225) NOT NULL,
  `nom` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`token`, `nom`, `email`) VALUES
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJhbGFlIiwiZW1haWwiOiJhbGFlQGdtYWlsLmNvbSJ9.w1O8Pe2t0FhQWxq07k9CPO3a0qS_g4t62hmzFMlQH5M', 'alae', 'alae@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJtb2tobGlzIiwiZW1haWwiOiJtb2tobGlzQGdtYWlsLmNvbSJ9.0tLree_HPshvBx8xHaBquo--EMQ0uQX-DOSk9trm4gE', 'mokhlis', 'mokhlis@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJvdXNzYW1hIiwiZW1haWwiOiJvdXNzbWFAZ21haWwuY29tIn0.UzAGFastxnWOIi-ED2BLVRapQZqTQbziSU2oKDkuBNY', 'oussama', 'oussma@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJub20iOiJzaW1vIiwiZW1haWwiOiJzaW1vQGdtYWlsLkNvbSJ9.ilzUSkfDHhi_p1C0WkILZoX6To3tDaF_7F27oWnytYM', 'simo', 'simo@gmail.Com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoia2Fuc2lyb3UiLCJlbWFpbCI6ImphbWFhQGdtYWlsLmNvbSJ9.96-LdOiMKrGFLdWp3HXODF00S60URmqubqHOuHXPwHU', 'kansirou', 'jamaa@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiaGFtZWwiLCJlbWFpbCI6ImhhbWVsQGdtYWlsLmNvbSJ9.7PFnjQ2sHJJs-X-1FKVPsJMqOV9tbFOKFz1AXehLQgk', 'hamel', 'hamel@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoicWVzcmR0ZnlnaiIsImVtYWlsIjoieGZjZ3ZuaGJAZ21haWwuY29tIn0.t9Fm-Uq6nE9eJnm5WjpSETpv2F3gXPNE2mibXbJOfgo', 'qesrdtfygj', 'xfcgvnhb@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoicXNkZmciLCJlbWFpbCI6Im5zYWJAZ21haWwuY29tIn0.5Ktg22sc7Xe1STBq8TH5G3pontqYZJEPDHFI9z-pb_c', 'qsdfg', 'nsab@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoicXNkZmciLCJlbWFpbCI6InFzZGZnaEBnbWFpbC5jb20ifQ.sTwiZyG8vTOyhavno5u16splFNVSRrfUnL4mZadIju8', 'qsdfg', 'qsdfgh@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiemVyZyIsImVtYWlsIjoic2RmQGdtYWlsLmNvbSJ9.rJaCRZBjXg24pmRme_2nKV2h9qNFz2InLdBbsPM8_1w', 'zerg', 'sdf@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiYWIiLCJlbWFpbCI6ImFiQGdtYWlsLmNvbSJ9.-0DPLrNT9Gnh9B-t0Nw0FdnvnQ5sAAry9tyWnQB-pbY', 'ab', 'ab@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiYWMiLCJlbWFpbCI6ImFjQGdtYWlsLmNvbSJ9.QssqvyqfWfOoq0ul2mir2_cZ724vGoWQ_qRwkKgVOHQ', 'ac', 'ac@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiYWQiLCJlbWFpbCI6ImFkQGdtYWlsLmNvbSJ9.3vB6YcF2i0rjY3Pac7ObC8Cvpq-AmarxHdB5ciHwzuA', 'ad', 'ad@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiYWxhYSIsImVtYWlsIjoiYWxhYWVsb3VsYUBnbWFpbC5jb20ifQ.0e7S4iAr8kxy07BdxyKYFvZqoKqPXnnG3s_GEcVOCOo', 'alaa', 'alaaeloula@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiZGZnaGoiLCJlbWFpbCI6ImRmZ2hAZ21haWwuY29tIn0.JySW4auWcGfmdsrm1UR_Ug66-xUQ6QYjCwABb6dARIU', 'dfghj', 'dfgh@gmail.com'),
('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjpudWxsLCJlbWFpbCI6bnVsbH0.qFuN3YcewFNBK2Q-uMkIvVElYkWFN2DIQ9vIIVy530U', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_f`),
  ADD KEY `id_s` (`id_s`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_res`),
  ADD KEY `fk_user` (`token`),
  ADD KEY `fk_film` (`id_f`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id_s`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`token`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id_f` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_res` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id_s` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_s`) REFERENCES `salle` (`id_s`),
  ADD CONSTRAINT `fk_id_s` FOREIGN KEY (`id_s`) REFERENCES `salle` (`id_s`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_s` FOREIGN KEY (`id_s`) REFERENCES `salle` (`id_s`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_film` FOREIGN KEY (`id_f`) REFERENCES `film` (`id_f`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`token`) REFERENCES `user` (`token`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
