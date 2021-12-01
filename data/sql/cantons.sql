-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2021 at 03:04 AM
-- Server version: 10.3.31-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `togo_subdivisions`
--

-- --------------------------------------------------------

--
-- Table structure for table `cantons`
--

CREATE TABLE `cantons` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prefecture_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cantons`
--

INSERT INTO `cantons` (`id`, `nom`, `prefecture_id`) VALUES
(1, 'Amoutivé', 35),
(2, 'Bè', 35),
(3, 'Baguida', 35),
(4, 'Aflao – Gakli', 35),
(5, 'Aflao – Sagbado', 35),
(6, 'Adétikopé', 32),
(7, 'Agoè – Nyivé', 32),
(8, 'Sanguéra', 32),
(9, 'Togblékopé', 32),
(10, 'Légbassito', 32),
(11, 'Vakpossito', 32),
(12, 'Aného (LAWSON)', 36),
(13, 'Aného (ADJIGO)', 36),
(14, 'Agbodrafo', 36),
(15, 'Glidji', 36),
(16, 'Aklakou', 36),
(17, 'Anfoin', 36),
(18, 'Fiata', 36),
(19, 'Agouègan', 36),
(20, 'Ganavé', 36),
(21, 'Afagnagan', 34),
(22, 'Agomé – Glouzou', 34),
(23, 'Attitogon', 34),
(24, 'Afagnan – Gbléta', 34),
(25, 'Hompou', 34),
(26, 'Agbétiko', 34),
(27, 'Kpétsou', 34),
(28, 'Vogan', 37),
(29, 'Togoville', 37),
(30, 'Anyronkopé', 37),
(31, 'Akoumapé', 37),
(32, 'Vo – Koutimé', 37),
(33, 'Dzrékpo', 37),
(34, 'Dagbati', 37),
(35, 'Sévagan', 37),
(36, 'Momé – Hounkpati', 37),
(37, 'Hahotoé', 37),
(38, 'Tabligbo', 38),
(39, 'Kouvé', 38),
(40, 'Gboto', 38),
(41, 'Ahépé', 38),
(42, 'Tokpli', 38),
(43, 'Tokpli', 38),
(44, 'Sédomé', 38),
(45, 'Zafi', 38),
(46, 'Kini – Kondji', 38),
(47, 'Amoussimé', 38),
(48, 'Essè – Godjin', 38),
(49, 'Tométy – Kondji', 38),
(50, 'Tsévié', 39),
(51, 'Davié', 39),
(52, 'Gblainvié', 39),
(53, 'Dalavé', 39),
(54, 'Kpomé', 39),
(55, 'Gbatopé', 39),
(56, 'Gapé – Centre', 39),
(57, 'Bolou', 39),
(58, 'Agbélouvé', 39),
(59, 'Mission – Tové', 39),
(60, 'Wli', 39),
(61, 'Abobo', 39),
(62, 'Kovié', 39),
(63, 'Gamé – Sèva', 39),
(64, 'Gapé – Kpodji', 39),
(65, 'Djagblé', 39),
(66, 'Kévé', 33),
(67, 'Assahoun', 33),
(68, 'Badja', 33),
(69, 'Aképé', 33),
(70, 'Zolo', 33),
(71, 'Noépé', 33),
(72, 'Tovégan', 33),
(73, 'Ando', 33),
(74, 'Edji', 33),
(75, 'Gnagna', 30),
(76, 'Djama', 30),
(77, 'Woudou', 30),
(78, 'Katoré', 30),
(79, 'Gléï', 30),
(80, 'Ountivou', 30),
(81, 'Akparé', 30),
(82, 'Datcha', 30),
(83, 'Anié', 23),
(84, 'Pallakoko', 23),
(85, 'Kolo – Kopé', 23),
(86, 'Adogbénou', 23),
(87, 'Glitto', 23),
(88, 'Atchinèdji', 23),
(89, 'Elavagnon', 25),
(90, 'Nyamassila', 25),
(91, 'Kamina', 25),
(92, 'Morétan – Igbérioko', 25),
(93, 'Kpéssi', 25),
(94, 'Gbadjahè', 25),
(95, 'Badin – Copé', 25),
(96, 'Kpalimé', 27),
(97, 'Agomé – Yoh', 27),
(98, 'Lanvié', 27),
(99, 'Hanyigba', 27),
(100, 'Tové', 27),
(101, 'Kpadapé', 27),
(102, 'Gbalavé', 27),
(103, 'Kuma', 27),
(104, 'Kpimé', 27),
(105, 'Woamé', 27),
(106, 'Tomé', 27),
(107, 'Agomé – Tomégbé', 27),
(108, 'Lavié – Apédomé', 27),
(109, 'Yokélé', 27),
(110, 'Danyi – Atigba', 24),
(111, 'Ahlon', 24),
(112, 'Danyi – Kakpa', 24),
(113, 'Yikpa', 24),
(114, 'Danyi – Kpéto – Evita', 24),
(115, 'Danyi – Elavagnon', 24),
(116, 'Agou – Tavié', 20),
(117, 'Agou – Nyogbo', 20),
(118, 'Agotimé – Nord', 20),
(119, 'Agotimé – Sud', 20),
(120, 'Assahoun – Fiagbé', 20),
(121, 'Gadja', 20),
(122, 'Agou – Iboè', 20),
(123, 'Agou – Akplolo', 20),
(124, 'Agou – Kébo', 20),
(125, 'Agou – Atigbé', 20),
(126, 'Amoussoukopé', 20),
(127, 'Agou – Nyogbo – Agbétiko', 20),
(128, 'Kati', 20),
(129, 'Notsé', 26),
(130, 'Wahala', 26),
(131, 'Ayito', 26),
(132, 'Assrama', 26),
(133, 'Kpédomé', 26),
(134, 'Dalia', 26),
(135, 'Atsavé', 26),
(136, 'Djéméni', 26),
(137, 'Akpakpapé', 26),
(138, 'Hahomégbé', 26),
(139, 'Tohoun', 29),
(140, 'Kpékplémé', 29),
(141, 'Tado', 29),
(142, 'Saligbè', 29),
(143, 'Ahassomé', 29),
(144, 'Katomé', 29),
(145, 'Zogbégan', 31),
(146, 'Badou', 31),
(147, 'Tomégbé', 31),
(148, 'Kpété – Bena', 31),
(149, 'Gobé', 31),
(150, 'Klabè – Efoukpa', 31),
(151, 'Ekéto', 31),
(152, 'Ounabé', 31),
(153, 'Késsibo', 31),
(154, 'Gbadi – N’Kugna', 31),
(155, 'Doumé', 31),
(156, 'Ouma (Amlamé)', 22),
(157, 'Logbo (Témédja)', 22),
(158, 'Ikponou (Akposso – Nord) Otadi', 22),
(159, 'Amou – Oblo', 22),
(160, 'Ekpégnon', 22),
(161, 'Kpatégan', 22),
(162, 'Hihéatro', 22),
(163, 'Gamé', 22),
(164, 'Imlé', 22),
(165, 'Avédji – Itadi', 22),
(166, 'Adiva', 22),
(167, 'Evou', 22),
(168, 'Okpahoé', 22),
(169, 'Sodo', 22),
(170, 'Kougnohou', 21),
(171, 'Djon', 21),
(172, 'Gbendé', 21),
(173, 'Sérégbéné', 21),
(174, 'Yalla', 21),
(175, 'Kamina – Akébou', 21),
(176, 'Vèh', 21),
(177, 'Kpalavé', 21),
(178, 'Kpélé – Akata', 28),
(179, 'Kpélé – Goudévé', 28),
(180, 'Kpélé – Kamè', 28),
(181, 'Kpélé – Nord', 28),
(182, 'Kpélé – Novivé', 28),
(183, 'Kpélé – Govié', 28),
(184, 'Kpélé – Dawlotu', 28),
(185, 'Kpélé – Gbalédzé', 28),
(186, 'Kpélé – Dutoè', 28),
(187, 'Blitta', 15),
(188, 'Langabou', 15),
(189, 'Pagala – Gare', 15),
(190, 'Yégué', 15),
(191, 'Tcharé – Baou', 15),
(192, 'M’Poti', 15),
(193, 'Diguengué', 15),
(194, 'Tintchro', 15),
(195, 'Pagala – Village', 15),
(196, 'Atchintsé', 15),
(197, 'Welly', 15),
(198, 'Agbandi', 15),
(199, 'Yaloumbé', 15),
(200, 'Tchaloudè', 15),
(201, 'Blitta – Village', 15),
(202, 'Doufouli', 15),
(203, 'Tchifama', 15),
(204, 'Dikpéléou', 15),
(205, 'Djarkpanga', 19),
(206, 'Tindjasse', 19),
(207, 'Kaningbara', 19),
(208, 'Boulohou', 19),
(209, 'Saïboudè', 19),
(210, 'Sotouboua', 16),
(211, 'Adjengré', 16),
(212, 'Tchébébé', 16),
(213, 'Aouda', 16),
(214, 'Fazao', 16),
(215, 'Titigbé', 16),
(216, 'Kaniamboua', 16),
(217, 'Bodjondé', 16),
(218, 'Sassaro', 16),
(219, 'Kazaboua', 16),
(220, 'Tabindè', 16),
(221, 'Kériadè', 16),
(222, 'Kériadè', 17),
(223, 'Tchamba', 16),
(224, 'Koussountou', 16),
(225, 'Adjéidè (Kri – Kri)', 16),
(226, 'Kaboli', 16),
(227, 'Balanka', 16),
(228, 'Alibi', 16),
(229, 'Affem', 16),
(230, 'Larini', 16),
(231, 'Bago', 16),
(232, 'Goubi', 16),
(233, 'Komah', 18),
(234, 'Kéméni', 18),
(235, 'Agoulou', 18),
(236, 'Wassarabo', 18),
(237, 'Aléhéridè', 18),
(238, 'Kadambara', 18),
(239, 'Lama – Tessi', 18),
(240, 'Kolina', 18),
(241, 'Kpangalam', 18),
(242, 'Tchalo', 18),
(243, 'Kpassouadè', 18),
(244, 'Amaïdè', 18),
(245, 'Bafilo', 8),
(246, 'Dako', 8),
(247, 'Koumondè', 8),
(248, 'Soudou', 8),
(249, 'Alédjo', 8),
(250, 'Bouladè', 8),
(251, 'Guérin – Kouka', 11),
(252, 'Bapuré', 11),
(253, 'Nandouta', 11),
(254, 'Kidjaboum', 11),
(255, 'Namon', 11),
(256, 'Nawaré', 11),
(257, 'Katchamba', 11),
(258, 'Nampoch', 11),
(259, 'Natchiboré', 11),
(260, 'Natchitikpi', 11),
(261, 'Koulfièkou', 11),
(262, 'Koutchichéou', 11),
(263, 'Bassar', 9),
(264, 'Kabou', 9),
(265, 'Bitchabé', 9),
(266, 'Dimouri', 9),
(267, 'Sanda – Kagbanda', 9),
(268, 'Bangéli', 9),
(269, 'Baghan', 9),
(270, 'Sanda – Afowou', 9),
(271, 'Manga', 9),
(272, 'Kalanga', 9),
(273, 'Lama', 14),
(274, 'Lassa', 14),
(275, 'Landa', 14),
(276, 'Kouméa', 14),
(277, 'Tcharé', 14),
(278, 'Pya', 14),
(279, 'Tchitchao', 14),
(280, 'Sarakawa', 14),
(281, 'Yadé', 14),
(282, 'Bohou', 14),
(283, 'Landa – Kpinzindè', 14),
(284, 'Djamdè', 14),
(285, 'Atchangbadè', 14),
(286, 'Awandjélo', 14),
(287, 'Pagouda', 10),
(288, 'Kétao', 10),
(289, 'Pessaré', 10),
(290, 'Lama – Dessi', 10),
(291, 'Boufalé', 10),
(292, 'Solla', 10),
(293, 'Sirka', 10),
(294, 'Kémérida', 10),
(295, 'Pitikita', 10),
(296, 'Niamtougou', 12),
(297, 'Siou', 12),
(298, 'Défalé', 12),
(299, 'Alloum', 12),
(300, 'Massédéna', 12),
(301, 'Kadjalla', 12),
(302, 'Pouda', 12),
(303, 'Léon', 12),
(304, 'Agbandé – Yaka', 12),
(305, 'Baga', 12),
(306, 'Ténéga', 12),
(307, 'Kpaha', 12),
(308, 'Koka', 12),
(309, 'Tchoré', 12),
(310, 'Kantè', 13),
(311, 'Atalotè', 13),
(312, 'Pessidè', 13),
(313, 'Tamberma – Est (Koutougou)', 13),
(314, 'Tamberma – Ouest (Nadoba)', 13),
(315, 'Hélota', 13),
(316, 'Warengo', 13),
(317, 'Akponté', 13),
(318, 'Ossacré', 13),
(319, 'Mango', 4),
(320, 'Nagbéni', 4),
(321, 'Tchanaga', 4),
(322, 'Galangashie', 4),
(323, 'Barkoissi', 4),
(324, 'Faré', 4),
(325, 'Loko', 4),
(326, 'Sadori', 4),
(327, 'Gando', 5),
(328, 'Mogou', 5),
(329, 'Sagbièbou', 5),
(330, 'Koumongou', 5),
(331, 'Takpamba', 5),
(332, 'Kountoiré', 5),
(333, 'Nali', 5),
(334, 'Tchamonga', 5),
(335, 'Bogou', 6),
(336, 'Bombouaka', 6),
(337, 'Tamongou', 6),
(338, 'Nandoga', 6),
(339, 'Loko', 6),
(340, 'Sissiak', 6),
(341, 'Tampialime', 6),
(342, 'Doukpergou', 6),
(343, 'Goundoga', 6),
(344, 'Lokpanou', 6),
(345, 'Nano', 6),
(346, 'Pligou', 6),
(347, 'Boulogou', 6),
(348, 'Mamproug', 6),
(349, 'Bagou', 6),
(350, 'Sangou', 6),
(351, 'Mandouri', 2),
(352, 'Koundjoaré', 2),
(353, 'Borgou', 2),
(354, 'Tambigou', 2),
(355, 'Namondjoga', 2),
(356, 'Pogno', 3),
(357, 'Naki – Est', 3),
(358, 'Ogaro', 3),
(359, 'Nayéga', 3),
(360, 'Papri', 3),
(361, 'Tambonga', 3),
(362, 'Dapaong', 7),
(363, 'Kantindi', 7),
(364, 'Bidjenga', 7),
(365, 'Tami', 7),
(366, 'Lotogou', 7),
(367, 'Warkambou', 7),
(368, 'Nanergou', 7),
(369, 'Nioukpourma', 7),
(370, 'Pana', 7),
(371, 'Naki – Ouest', 7),
(372, 'Korbongou', 7),
(373, 'Kourientré', 7),
(374, 'Namaré', 7),
(375, 'Louanga', 7),
(376, 'Toaga', 7),
(377, 'Poissongui', 7),
(378, 'Sanfatoute', 7),
(379, 'Natigou', 7),
(380, 'Cinkassé', 1),
(381, 'Biankouri', 1),
(382, 'Nadjoundi', 1),
(383, 'Boadé', 1),
(384, 'Samnaba', 1),
(385, 'Noaga', 1),
(386, 'Gouloungoussi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cantons`
--
ALTER TABLE `cantons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prefecture_id` (`prefecture_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cantons`
--
ALTER TABLE `cantons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cantons`
--
ALTER TABLE `cantons`
  ADD CONSTRAINT `cantons_ibfk_1` FOREIGN KEY (`prefecture_id`) REFERENCES `prefectures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;