-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 09 mai 2025 à 11:56
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `plantiplantes`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`) VALUES
(1, 'fleur', NULL),
(2, 'table', NULL),
(3, 'velo', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `price` decimal(10,2) NOT NULL,
  `stock` int DEFAULT '0',
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `name`, `image`, `description`, `price`, `stock`, `category_id`) VALUES
(2, 'Crocus', 'crocusB', 'Jolie Crocus Bleu des iles', '59.99', 0, 1),
(3, 'Fleur 1', 'fleur1', 'Merveilleuse Fleur premier du nom', '4.99', 0, 1),
(4, 'Fleur Rose', 'fleurRose', 'Petite fleur rose qui fleurit en rose', '4.99', 0, 1),
(5, 'Hermosas', 'hermosasR', 'Sublime hermosas des Galapagos ', '59.99', 0, 1),
(6, 'Lotus', 'lotusR', 'Lotus rose tout droit importé d\'Asie ', '79.99', 0, 1),
(7, 'Lys', 'lysR', 'Fleur de Lys royalement royal ', '29.99', 0, 1),
(8, 'Marguerite Saumon', 'margueriteSaumon', 'Splendite Marguerite couleur saumon de saumure', '29.99', 0, 1),
(9, 'Nymphaea Odorata', 'nymphaeaOdorata', 'Merveilleuse Nympheae Odorata du sud du Bresil Atlantique', '79.99', 0, 1),
(10, 'Pensé', 'penseV', 'Petite pensé violette mais avec un peu de jaune au milieu pour etre un peu plus floresque', '4.99', 0, 1),
(11, 'Rose', 'rose', 'C\'est une rose rose', '4.99', 0, 1),
(12, 'Tulipe', 'tulipeR', 'Tulipe Rouge toute belle toute pimpante', '4.99', 0, 1),
(13, 'Table Basse ', 'tableBasse', 'Super table basse, elle est basse et peut servir de table', '119.99', 0, 2),
(14, 'Table Basse Industrielle', 'tableBasseS', 'Une table basse dans un ton sombre et industrielle, c\'est dans le nom', '149.99', 0, 2),
(15, 'Table en bois massif', 'tableBM', 'Grand table de salle a manger en bois massif bien galbé et congestionné', '749.99', 0, 2),
(16, 'Table de Conférence', 'tableConf', 'Table de salle de conference et de reunion professionnelle', '229.99', 0, 2),
(17, 'Table Moderne', 'tableM', 'Une table dans toute la modernité et la tablité attendu par une table', '249.99', 0, 2),
(18, 'Grande Table Moderne', 'tableMRN', 'Table de salle a manger noir moderne, tres spacieuse et tableuse', '679.99', 0, 2),
(19, 'Table Rectangulaire', 'tableRect', 'Table de taille moyenne, fonctionne super pour poser des objets et décorer un espace', '189.99', 0, 2),
(20, 'Table Ronde et Petit', 'tableRP', 'Petite table ronde, parfait pour meubler des petits espaces dans le besoin d\'une table', '119.99', 0, 2),
(21, 'Velo Classique (Vintage)', 'veloC', 'Bicyclette tout ce qu\'il y a de plus Classique, deux roues, un guidon, et roulez jeunesse ! ', '3700.00', 0, 3),
(22, 'Velo de Course Vintage', 'veloCC', 'Bicyclette de course d\'antan, ca roule vite et fort ', '3500.00', 0, 3),
(23, 'Velo de Course Vintage Bleu', 'veloCCB', 'Velo de course vintage mais en bleu, il roule comme les velo pas bleus, mais celui ci est bleu', '3600.00', 0, 3),
(24, 'Velo Electrique Blanc', 'veloEB', 'Velo motorisé electriquement, une sorte de mobilette des temps mordernes ', '5499.99', 0, 3),
(25, 'Velo Electrique Tout Terrain', 'veloET', 'Une sorte de mobilette electrique cross pour les petits foufou de la montagne et des sensations fortes !', '4799.99', 0, 3),
(26, 'Velo Noir un peu Sport', 'veloNoir', 'Velo classique noir avec un guidon de course, version lowcost des autres modèles ', '159.99', 0, 3),
(27, 'Velo Orange', 'veloO', 'Une bicyclette orange tout ce qu\'il y a de plus classique', '349.99', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateheure` datetime NOT NULL,
  `status` enum('en attente','confirmé','annulé','en cours','terminé') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_terrain` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_terrain` (`id_terrain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `nom`) VALUES
(1, 'Administrateur\r\n'),
(2, 'Moderateur'),
(3, 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_role` int NOT NULL DEFAULT '3',
  `is_connected` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `id_role` (`id_role`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `nom`, `prenom`, `tel`, `id_role`, `is_connected`) VALUES
(9, 'mimiche@email.com', '$2y$10$LpmnNSF1OW8BM92CT8yz.eNQ9Y9fgozTWpiQr8Wyo72qVV463enmu', 'Michon', 'Michel', '0708090405', 3, 1),
(8, 'jean@email.com', '$2y$10$/mBReSU3SQtIOpWU5ZkET.aw6Y1zs/H7FnIvmJ5vUSIlWDmLJMis6', 'Bonnet', 'Jean', '0624255875', 3, 0),
(7, 'F/admin@email.com', '$2y$10$Zbvu0qtRyEv1HoRrR/Ijze3k9HfcBwe2ZG6UCxwwHnZQZ/cFF565m', 'Admin', 'Admin', '0000000000', 1, 1),
(10, 'juju@email.com', '$2y$10$DbcciIaGRok8eOu/i.gZeugvydXXaE9sFwh3n7BhyBQ8T5S6EbVc2', 'Richon', 'Juliette', '0102030405', 3, 1),
(86, 'user1@email.com', 'mot_de_passe_hashé_1', 'Nom1', 'Prenom1', '0123456789', 2, 0),
(87, 'user2@email.com', 'mot_de_passe_hashé_2', 'Nom2', 'Prenom2', '0123456790', 3, 0),
(88, 'user3@email.com', 'mot_de_passe_hashé_3', 'Nom3', 'Prenom3', '0123456791', 3, 0),
(89, 'user4@email.com', 'mot_de_passe_hashé_4', 'Nom4', 'Prenom4', '0123456792', 3, 0),
(90, 'user5@email.com', 'mot_de_passe_hashé_5', 'Nom5', 'Prenom5', '0123456793', 3, 0),
(91, 'user6@email.com', 'mot_de_passe_hashé_6', 'Nom6', 'Prenom6', '0123456794', 3, 1),
(92, 'user7@email.com', 'mot_de_passe_hashé_7', 'Nom7', 'Prenom7', '0123456795', 3, 0),
(93, 'user8@email.com', 'mot_de_passe_hashé_8', 'Nom8', 'Prenom8', '0123456796', 3, 0),
(94, 'user9@email.com', 'mot_de_passe_hashé_9', 'Nom9', 'Prenom9', '0123456797', 3, 0),
(95, 'user10@email.com', 'mot_de_passe_hashé_10', 'Nom10', 'Prenom10', '0123456798', 3, 1),
(97, 'charliedavis1@example.com', 'password', 'Davis', 'Charlie', '0782697308', 2, 0),
(98, 'alicejones2@example.com', 'password', 'Jones', 'Alice', '0782258752', 2, 0),
(99, 'jacksmith3@example.com', 'password', 'Smith', 'Jack', '0718737016', 2, 0),
(100, 'alicesmith4@example.com', 'password', 'Smith', 'Alice', '0789219531', 2, 0),
(101, 'dianawilson5@example.com', 'password', 'Wilson', 'Diana', '0754711137', 2, 0),
(102, 'ivybrown6@example.com', 'password', 'Brown', 'Ivy', '0733074307', 3, 0),
(103, 'bobdavis7@example.com', 'password', 'Davis', 'Bob', '0782944791', 3, 1),
(104, 'hankdavis8@example.com', 'password', 'Davis', 'Hank', '0750935078', 3, 0),
(105, 'dianawilliams9@example.com', 'password', 'Williams', 'Diana', '0796297323', 3, 0),
(106, 'evelopez10@example.com', 'password', 'Lopez', 'Eve', '0786498138', 3, 1),
(107, 'frankdavis11@example.com', 'password', 'Davis', 'Frank', '0762303692', 3, 1),
(108, 'bobjones12@example.com', 'password', 'Jones', 'Bob', '0737004449', 3, 0),
(109, 'jackwilson13@example.com', 'password', 'Wilson', 'Jack', '0742791138', 3, 0),
(110, 'charliejones14@example.com', 'password', 'Jones', 'Charlie', '0743663554', 3, 0),
(111, 'franksmith15@example.com', 'password', 'Smith', 'Frank', '0762070319', 3, 0),
(112, 'jackwilson16@example.com', 'password', 'Wilson', 'Jack', '0794991135', 3, 0),
(113, 'jackgarcia17@example.com', 'password', 'Garcia', 'Jack', '0762308850', 3, 0),
(114, 'gracemartinez18@example.com', 'password', 'Martinez', 'Grace', '0768082591', 3, 0),
(115, 'charliegarcia19@example.com', 'password', 'Garcia', 'Charlie', '0730069264', 3, 0),
(116, 'evebrown20@example.com', 'password', 'Brown', 'Eve', '0771415017', 3, 0),
(117, 'hankwilliams21@example.com', 'password', 'Williams', 'Hank', '0766352812', 3, 0),
(118, 'alicelopez22@example.com', 'password', 'Lopez', 'Alice', '0744828294', 3, 0),
(119, 'evejones23@example.com', 'password', 'Jones', 'Eve', '0791395764', 3, 0),
(120, 'frankjones24@example.com', 'password', 'Jones', 'Frank', '0794218003', 3, 0),
(121, 'franksmith25@example.com', 'password', 'Smith', 'Frank', '0752261340', 3, 0),
(122, 'dianajones26@example.com', 'password', 'Jones', 'Diana', '0780316633', 3, 0),
(123, 'bobgarcia27@example.com', 'password', 'Garcia', 'Bob', '0732520301', 3, 0),
(124, 'bobmartinez28@example.com', 'password', 'Martinez', 'Bob', '0744371108', 3, 0),
(125, 'gracedavis29@example.com', 'password', 'Davis', 'Grace', '0750606268', 3, 0),
(126, 'charlielopez30@example.com', 'password', 'Lopez', 'Charlie', '0755851165', 3, 0),
(127, 'dianajohnson31@example.com', 'password', 'Johnson', 'Diana', '0767738026', 3, 0),
(128, 'charliebrown32@example.com', 'password', 'Brown', 'Charlie', '0755427123', 3, 0),
(129, 'alicewilliams33@example.com', 'password', 'Williams', 'Alice', '0729753929', 3, 0),
(130, 'charliewilson34@example.com', 'password', 'Wilson', 'Charlie', '0793419726', 3, 0),
(131, 'frankmartinez35@example.com', 'password', 'Martinez', 'Frank', '0765912086', 3, 0),
(132, 'hankjones36@example.com', 'password', 'Jones', 'Hank', '0712971339', 3, 0),
(133, 'charliemartinez37@example.com', 'password', 'Martinez', 'Charlie', '0712313441', 3, 0),
(134, 'charlielopez38@example.com', 'password', 'Lopez', 'Charlie', '0714821437', 3, 0),
(135, 'gracesmith39@example.com', 'password', 'Smith', 'Grace', '0740139036', 3, 0),
(136, 'alicewilson40@example.com', 'password', 'Wilson', 'Alice', '0717658550', 3, 0),
(137, 'bobgarcia41@example.com', 'password', 'Garcia', 'Bob', '0796097000', 3, 0),
(138, 'jackgarcia42@example.com', 'password', 'Garcia', 'Jack', '0715961630', 3, 0),
(139, 'charlielopez43@example.com', 'password', 'Lopez', 'Charlie', '0716255215', 3, 0),
(140, 'gracemartinez44@example.com', 'password', 'Martinez', 'Grace', '0718478076', 3, 0),
(141, 'ivysmith45@example.com', 'password', 'Smith', 'Ivy', '0744357764', 3, 0),
(142, 'dianajones46@example.com', 'password', 'Jones', 'Diana', '0782351858', 3, 0),
(143, 'evejones47@example.com', 'password', 'Jones', 'Eve', '0760140065', 3, 0),
(144, 'evelopez48@example.com', 'password', 'Lopez', 'Eve', '0756857402', 3, 0),
(145, 'alicesmith49@example.com', 'password', 'Smith', 'Alice', '0730299421', 3, 0),
(146, 'hanklopez50@example.com', 'password', 'Lopez', 'Hank', '0748880930', 3, 0),
(147, 'xdress@mail.com', '$2y$10$byOZ4h2VrI46z/0DUQWZeesftnMtN.hFJVkYfLWeaI2iy.FdvB7Eu', 'x', 'x', '0908070405', 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
CREATE TABLE IF NOT EXISTS `user_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `action` enum('connexion','deconnexion') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `action`, `timestamp`) VALUES
(1, 7, 'deconnexion', '2024-10-29 15:40:07'),
(2, 10, 'connexion', '2024-10-29 15:40:35'),
(3, 10, 'deconnexion', '2024-10-29 15:40:39'),
(4, 9, 'connexion', '2024-10-29 15:40:47'),
(5, 9, 'deconnexion', '2024-10-29 15:40:50'),
(6, 7, 'connexion', '2024-10-29 15:40:57'),
(7, 7, 'connexion', '2024-10-31 09:31:42'),
(8, 7, 'connexion', '2024-11-04 14:09:54'),
(9, 7, 'connexion', '2024-11-04 15:23:35'),
(10, 7, 'deconnexion', '2024-11-04 17:00:06'),
(11, 7, 'connexion', '2024-11-05 09:16:49'),
(12, 7, 'deconnexion', '2024-11-06 09:35:38'),
(13, 7, 'connexion', '2024-11-06 09:36:53'),
(14, 7, 'deconnexion', '2024-11-06 09:37:18'),
(15, 7, 'connexion', '2024-11-07 11:38:19'),
(16, 7, 'deconnexion', '2024-11-07 11:38:24'),
(17, 7, 'connexion', '2024-11-07 12:05:13'),
(18, 7, 'deconnexion', '2024-11-07 12:07:56'),
(19, 7, 'connexion', '2024-11-07 12:08:03'),
(20, 7, 'connexion', '2024-11-07 12:08:21'),
(21, 7, 'connexion', '2024-11-07 12:08:37'),
(22, 7, 'connexion', '2024-11-07 12:09:16'),
(23, 7, 'deconnexion', '2024-11-07 12:09:23'),
(24, 9, 'connexion', '2024-11-07 12:09:37'),
(25, 9, 'deconnexion', '2024-11-07 12:09:51'),
(26, 7, 'connexion', '2024-11-07 12:09:58'),
(27, 7, 'deconnexion', '2024-11-07 13:30:20'),
(28, 7, 'connexion', '2024-11-07 13:31:19'),
(29, 7, 'deconnexion', '2024-11-07 15:44:40'),
(30, 12, 'deconnexion', '2024-11-07 15:45:14'),
(31, 13, 'deconnexion', '2024-11-07 15:45:48'),
(32, 7, 'connexion', '2024-11-07 15:46:11'),
(33, 7, 'deconnexion', '2024-11-07 15:47:47'),
(34, 7, 'connexion', '2024-11-07 16:31:00'),
(35, 7, 'deconnexion', '2024-11-07 16:34:10'),
(36, 7, 'connexion', '2024-11-07 16:34:50'),
(37, 7, 'deconnexion', '2024-11-07 16:51:33'),
(38, 7, 'connexion', '2024-11-07 16:51:40'),
(39, 7, 'connexion', '2024-11-08 10:11:16'),
(40, 7, 'deconnexion', '2024-11-08 10:28:42'),
(41, 7, 'connexion', '2024-11-08 10:28:48'),
(42, 7, 'deconnexion', '2024-11-08 10:32:51'),
(43, 7, 'connexion', '2024-11-08 10:33:11'),
(44, 7, 'deconnexion', '2024-11-08 10:39:09'),
(45, 7, 'connexion', '2024-11-08 10:39:20'),
(46, 7, 'deconnexion', '2024-11-08 11:14:58'),
(47, 7, 'connexion', '2024-11-08 11:15:04'),
(48, 7, 'deconnexion', '2024-11-08 11:56:31'),
(49, 7, 'connexion', '2024-11-08 12:01:11'),
(50, 7, 'deconnexion', '2024-11-08 12:01:15'),
(51, 7, 'connexion', '2024-11-08 12:03:37'),
(52, 7, 'deconnexion', '2024-11-08 12:04:19'),
(53, 7, 'connexion', '2024-11-08 12:04:29'),
(54, 7, 'deconnexion', '2024-11-08 12:15:41'),
(55, 7, 'connexion', '2024-11-08 13:30:31'),
(56, 7, 'deconnexion', '2024-11-08 13:31:36'),
(57, 7, 'connexion', '2024-11-08 13:31:49'),
(58, 7, 'deconnexion', '2024-11-08 13:34:55'),
(59, 7, 'connexion', '2024-11-08 13:35:06'),
(60, 7, 'deconnexion', '2024-11-08 13:36:36'),
(61, 7, 'connexion', '2024-11-08 13:36:51'),
(62, 7, 'deconnexion', '2024-11-08 13:36:55'),
(63, 7, 'connexion', '2024-11-08 13:38:00'),
(64, 7, 'deconnexion', '2024-11-08 13:38:19'),
(65, 7, 'connexion', '2024-11-08 13:38:52'),
(66, 7, 'deconnexion', '2024-11-08 13:50:45'),
(67, 10, 'connexion', '2024-11-08 13:51:17'),
(68, 10, 'deconnexion', '2024-11-08 13:56:08'),
(69, 7, 'connexion', '2024-11-08 13:56:20'),
(70, 7, 'deconnexion', '2024-11-18 15:31:18'),
(71, 7, 'connexion', '2024-11-18 15:41:34'),
(72, 7, 'deconnexion', '2024-11-19 11:03:14'),
(73, 7, 'connexion', '2024-11-19 11:03:35'),
(74, 7, 'deconnexion', '2024-11-19 11:10:55'),
(75, 7, 'deconnexion', '2024-11-19 11:10:58'),
(76, 7, 'deconnexion', '2024-11-19 11:10:58'),
(77, 7, 'deconnexion', '2024-11-19 11:13:00'),
(78, 7, 'connexion', '2024-11-19 11:13:49'),
(79, 7, 'deconnexion', '2024-11-19 11:14:30'),
(80, 7, 'connexion', '2024-11-19 11:14:48'),
(81, 7, 'deconnexion', '2024-11-19 11:14:57'),
(82, 7, 'connexion', '2024-11-19 11:16:41'),
(83, 7, 'deconnexion', '2024-11-19 11:16:49'),
(84, 7, 'connexion', '2024-11-19 11:26:39'),
(85, 7, 'deconnexion', '2024-11-19 11:50:33'),
(86, 7, 'connexion', '2024-11-19 11:50:56'),
(87, 10, 'connexion', '2024-11-19 11:52:03'),
(88, 10, 'deconnexion', '2024-11-19 11:52:23'),
(89, 7, 'connexion', '2024-11-21 10:16:03'),
(90, 7, 'deconnexion', '2024-11-21 11:31:47'),
(91, 7, 'connexion', '2024-11-21 11:32:21'),
(92, 7, 'connexion', '2024-11-26 09:30:13'),
(93, 7, 'connexion', '2024-11-27 09:42:50'),
(94, 147, 'deconnexion', '2024-11-27 11:52:23'),
(95, 7, 'connexion', '2024-11-27 11:52:58'),
(96, 7, 'connexion', '2025-01-09 10:56:27'),
(97, 7, 'connexion', '2025-01-22 15:29:06'),
(98, 7, 'connexion', '2025-03-26 11:44:19'),
(99, 7, 'connexion', '2025-04-10 14:49:08'),
(100, 7, 'deconnexion', '2025-04-10 14:52:18'),
(101, 7, 'connexion', '2025-04-10 14:52:36'),
(102, 7, 'deconnexion', '2025-04-10 14:52:43'),
(103, 7, 'connexion', '2025-05-09 13:56:15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
