-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 13 mars 2022 à 15:01
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mcn`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D4E6F81A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Visage'),
(2, 'Hygiène & Corps'),
(3, 'Hommes'),
(4, 'Fait-maison - Diy');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220103202956', '2022-01-03 20:32:06', 68),
('DoctrineMigrations\\Version20220103212005', '2022-01-03 21:20:35', 76),
('DoctrineMigrations\\Version20220113095304', '2022-01-13 09:53:46', 270),
('DoctrineMigrations\\Version20220113102008', '2022-01-13 10:20:23', 193),
('DoctrineMigrations\\Version20220203201033', '2022-02-03 20:10:56', 331);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `price`) VALUES
(2, 1, 'Baume Citron visage', 'baume-citron', '06ba362b60f6cbd08a2fbd798051aa501e055827.jpg', 'le baume citron parfait pour la peau', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et fermentum lacus, et semper enim. Phasellus varius quis elit imperdiet dignissim. Ut nec iaculis orci. Praesent massa tellus, rutrum ac auctor vel, auctor quis urna. Etiam laoreet nunc ut nunc vestibulum tincidunt. Fusce a velit vel quam viverra auctor id ut odio. Donec convallis consequat ipsum, non molestie purus feugiat quis. In hac habitasse platea dictumst.', 900),
(3, 1, 'Brosse visage', 'brosse-visage', 'aad2abea22fc0f7c1f6777c13de4247a99678dc9.jpg', 'La brosse parfaite pour le visage', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et fermentum lacus, et semper enim. Phasellus varius quis elit imperdiet dignissim. Ut nec iaculis orci. Praesent massa tellus, rutrum ac auctor vel, auctor quis urna. Etiam laoreet nunc ut nunc vestibulum tincidunt. Fusce a velit vel quam viverra auctor id ut odio. Donec convallis consequat ipsum, non molestie purus feugiat quis. In hac habitasse platea dictumst.', 900),
(4, 3, 'Crème à barbe et visage', 'creme-a-barbe', 'e1300c4aae0b37d846f30a659d6fedf201c78e2d.jpg', 'La crème pour la barbe et le visage', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et fermentum lacus, et semper enim. Phasellus varius quis elit imperdiet dignissim. Ut nec iaculis orci. Praesent massa tellus, rutrum ac auctor vel, auctor quis urna. Etiam laoreet nunc ut nunc vestibulum tincidunt. Fusce a velit vel quam viverra auctor id ut odio. Donec convallis consequat ipsum, non molestie purus feugiat quis. In hac habitasse platea dictumst.', 1000),
(5, 3, 'Huile à barbe', 'huile-barbe', '55b38b15be5d5dc00f94d71fc95a2517665b3c6d.jpg', 'l\'huile pour un entretien parfait de la barbe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et fermentum lacus, et semper enim. Phasellus varius quis elit imperdiet dignissim. Ut nec iaculis orci. Praesent massa tellus, rutrum ac auctor vel, auctor quis urna. Etiam laoreet nunc ut nunc vestibulum tincidunt. Fusce a velit vel quam viverra auctor id ut odio. Donec convallis consequat ipsum, non molestie purus feugiat quis. In hac habitasse platea dictumst.', 1000),
(6, 1, 'Gel nettoyant visage', 'gel-nettoyant-visage', 'e36079cea742d5833e18234482ab10f1d06fa682.jpg', 'le gel nettoyant visage', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et fermentum lacus, et semper enim. Phasellus varius quis elit imperdiet dignissim. Ut nec iaculis orci. Praesent massa tellus, rutrum ac auctor vel, auctor quis urna. Etiam laoreet nunc ut nunc vestibulum tincidunt. Fusce a velit vel quam viverra auctor id ut odio. Donec convallis consequat ipsum, non molestie purus feugiat quis. In hac habitasse platea dictumst.', 500),
(7, 2, 'Déodorant thé vert', 'deodorant-the-vert', '8d5efab2d5717331eb43e287581a30a61fd81986.jpg', 'le déodorant thé vert', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et fermentum lacus, et semper enim. Phasellus varius quis elit imperdiet dignissim. Ut nec iaculis orci. Praesent massa tellus, rutrum ac auctor vel, auctor quis urna. Etiam laoreet nunc ut nunc vestibulum tincidunt. Fusce a velit vel quam viverra auctor id ut odio. Donec convallis consequat ipsum, non molestie purus feugiat quis. In hac habitasse platea dictumst.', 800),
(8, 2, 'Gel douche abricot', 'gel-douche-abricot', '29b3592b3e36eb3445f03c2da849c7663eb89991.jpg', 'un gel douche saveur abricot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et fermentum lacus, et semper enim. Phasellus varius quis elit imperdiet dignissim. Ut nec iaculis orci. Praesent massa tellus, rutrum ac auctor vel, auctor quis urna. Etiam laoreet nunc ut nunc vestibulum tincidunt. Fusce a velit vel quam viverra auctor id ut odio. Donec convallis consequat ipsum, non molestie purus feugiat quis. In hac habitasse platea dictumst.', 500),
(9, 2, 'Gommage corporel fondant', 'gommage-corporel', '08d0128f4a4c34f303824670f7791dea6e955d3c.jpg', 'un gommage corporel fondant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et fermentum lacus, et semper enim. Phasellus varius quis elit imperdiet dignissim. Ut nec iaculis orci. Praesent massa tellus, rutrum ac auctor vel, auctor quis urna. Etiam laoreet nunc ut nunc vestibulum tincidunt. Fusce a velit vel quam viverra auctor id ut odio. Donec convallis consequat ipsum, non molestie purus feugiat quis. In hac habitasse platea dictumst.', 1200),
(10, 1, 'toto', 'toto', '24f8e7a7c8f3513d4549af209b81bc462daf7847.png', 'toto', 'KSJDHFKQJSHDGF', 1000);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(1, 'bernard@durand.fr', '[]', '1234', 'bernard', 'durand'),
(2, 'julien@juju.com', '[]', 'juju', 'julien', 'dupond'),
(3, 'jean@jacques.com', '[]', '$2y$13$L1wQOF32CdAfcM/Sd5EHh.Dd94s6tjo8NxqwHZKRqSuW/6D.5rGGq', 'jean-jacques', 'gouin'),
(5, 'john@doe.fr', '[]', '$2y$13$AS7ximXHlXLCNbQ6k/yGnud1YulfM2.4P1ABWZjaM9kQB6WlFn6mS', 'John', 'Doe'),
(6, 'juju@gmail.com', '[]', '$2y$13$7tjpcX.y4hxKnbSg59kmAeL6PsS/s8bR8STw3qjKT.Fu9Zcc4AS.6', 'juju', 'susu');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
