-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 30 avr. 2020 à 08:47
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `coache`
--

CREATE TABLE `coache` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coache`
--

INSERT INTO `coache` (`id`, `nom`, `adresse`, `email`, `num`, `icone`, `image`, `updated_at`, `created_at`) VALUES
(6, 'hbu', 'jkv', 'jkjhv@klbd.com', '2345678', 's1.jpg', 's11.jpg', '2020-04-28 04:44:19', '2020-04-28 04:44:18');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) DEFAULT NULL,
  `ent_general` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debutant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent_personnel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `musculation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_basique` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `nom`, `prix`, `ent_general`, `debutant`, `ent_personnel`, `musculation`, `form_basique`) VALUES
(1, 'standard', 10, 'fa fa-check', 'fa fa-times', 'fa fa-times', 'fa fa-times', 'fa fa-times'),
(2, 'Popular', 20, 'fa fa-check', 'fa fa-check', 'fa fa-times', 'fa fa-times', 'fa fa-times'),
(3, 'Golden', 30, 'fa fa-check', 'fa fa-check', 'fa fa-check', 'fa fa-times', 'fa fa-times'),
(4, 'regular', 40, 'fa fa-check', 'fa fa-check', 'fa fa-check', 'fa fa-check', 'fa fa-times'),
(5, 'Professional', 50, 'fa fa-check', 'fa fa-check', 'fa fa-check', 'fa fa-check', 'fa fa-check');

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

CREATE TABLE `materiel` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `icone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`id`, `nom`, `description`, `image`, `updated_at`, `created_at`, `icone`) VALUES
(3, 'xcvbn', 'xcwv:;jbvdjhbjnkcncbhvxjkchjkbcn,knvbcwhxjwcvbvx ;,nd:jcdidhcudv', 'sport1.jpg', '2020-04-30 00:34:49', '2020-04-30 00:34:49', 'sport1.jpg'),
(4, ',nc;vhcjld', 'jgvkcjvhdjvjfvgfq belugreoifcglrniyngoqgggtogètgogtogteogiytg', 'sport2.jpg', '2020-04-30 00:35:08', '2020-04-30 00:35:08', 'sport2.jpg'),
(5, 'gfhjbljnkhgkvj', 'gfcjhvjbkngfcjhvjbklfjchgkvjk', 'sport1.jpg', '2020-04-30 00:36:07', '2020-04-30 00:36:07', 'sport1.jpg'),
(6, 'fdhcjgvhblkjnmlk', 'gfcjvhjbkkgf hjk', 'sport2.jpg', '2020-04-30 00:36:26', '2020-04-30 00:36:26', 'sport2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200222204736', '2020-02-22 20:48:02'),
('20200305123039', '2020-03-05 12:31:00'),
('20200305124540', '2020-03-05 12:45:52'),
('20200310125841', '2020-03-10 12:59:10'),
('20200311171045', '2020-03-11 17:13:25'),
('20200311172241', '2020-03-11 17:23:00'),
('20200311172504', '2020-03-11 17:25:12'),
('20200311172900', '2020-03-11 17:29:07'),
('20200311173235', '2020-03-11 17:32:44'),
('20200311181342', '2020-03-11 18:13:50'),
('20200327191604', '2020-03-27 19:16:23'),
('20200428035406', '2020-04-28 03:54:51'),
('20200429144738', '2020-04-29 14:47:59'),
('20200429151645', '2020-04-29 15:16:54');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `cours_id` int(11) DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `cours_id`, `email`, `roles`, `password`, `username`) VALUES
(13, NULL, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=65536,t=4,p=1$NUsuUXVoRjFORGxQRnBWTQ$FFCNYbDdO6uvnVN0hH2aIXyetHsXy7jXxtwY84O/LLE', 'admin'),
(14, 1, 'mom@gmail.com', '[\"ROLE_USER\"]', '$argon2i$v=19$m=65536,t=4,p=1$Q2hacVRpRGdkRU9SODlybQ$bRTcQbRsn+Qc+HtWB3qaZk9cpxj5wZd3RDeOTN+OOlo', 'mom');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `coache`
--
ALTER TABLE `coache`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D6497ECF78B0` (`cours_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `coache`
--
ALTER TABLE `coache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6497ECF78B0` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
