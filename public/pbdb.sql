-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 19, 2019 at 10:09 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bdepartments`
--

CREATE TABLE `bdepartments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bdepartments`
--

INSERT INTO `bdepartments` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Automobilindustrie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Baugewerbe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bergbau', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Biotechnologie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Chemische Stoffe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Dienstleistungsbranche', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Elektrische Geräte', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Energieversorgung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Energiewirtschaft', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Erziehung und Unterricht', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Finanz- und Versicherungsdienstleister', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Gesundheits- und Sozialwesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Grundstücks- und Wohnungswesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Handel', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Hotel und Gastronomie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'IT-Branche', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Kosmetika', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Kunst, Unterhaltung und Erholung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Land- und Forstwirtschaft, Fischerei', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Lebensmittelindustrie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Logistikbranche', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Luft- und Raumfahrt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Medizintechnik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Pharmabranche', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Öffentliche Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Schiffbau und Meerestechnik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Spielzeugbranche', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Telekommunikationsbranche', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Textil- und Bekleidungsbranche', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Verkehr und Lagerei', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Wasser, Abwasser und Entsorgung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'sdfasdfasdfasdf', NULL, '2019-10-10 13:55:50', '2019-10-10 13:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Erfurt', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Suhl', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Berlin', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Leipzig', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Dresden', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Chemnitz', 6, '2019-09-10 07:36:05', '2019-09-10 07:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `city_praktikum`
--

CREATE TABLE `city_praktikum` (
  `id` int(11) NOT NULL,
  `praktikum_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_praktikum`
--

INSERT INTO `city_praktikum` (`id`, `praktikum_id`, `city_id`, `created_at`, `updated_at`) VALUES
(116, 33, 1, '2019-10-19 14:43:59', '2019-10-19 14:43:59'),
(117, 34, 4, '2019-10-19 15:17:46', '2019-10-19 15:17:46'),
(120, 35, 4, '2019-10-19 16:06:58', '2019-10-19 16:06:58'),
(121, 35, 5, '2019-10-19 16:06:58', '2019-10-19 16:06:58'),
(122, 36, 4, '2019-10-19 19:00:36', '2019-10-19 19:00:36'),
(124, 37, 5, '2019-10-19 19:56:42', '2019-10-19 19:56:42'),
(125, 38, 2, '2019-10-19 20:00:45', '2019-10-19 20:00:45'),
(126, 39, 3, '2019-10-19 20:05:00', '2019-10-19 20:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `communications`
--

CREATE TABLE `communications` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `contact_type_id` int(11) DEFAULT NULL,
  `contact_reason_id` int(11) DEFAULT NULL,
  `participant` text DEFAULT NULL,
  `memo` text NOT NULL,
  `praktikum_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `profession_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `deleted _at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communications`
--

INSERT INTO `communications` (`id`, `date`, `contact_type_id`, `contact_reason_id`, `participant`, `memo`, `praktikum_id`, `contact_id`, `profession_id`, `created_by`, `deleted _at`, `created_at`, `updated_at`) VALUES
(12, '2019-10-18 00:00:00', NULL, 1, 'TestTeilnehmer', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 33, 42, 100, 11, NULL, '2019-10-19 13:07:58', '2019-10-19 13:07:58'),
(14, '2019-10-18 00:00:00', NULL, 2, 'Mehmet', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,', 34, 43, 101, 14, NULL, '2019-10-19 13:21:33', '2019-10-19 13:21:33'),
(15, '2017-06-16 00:00:00', NULL, 1, 'LoremIpsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia ipsum illo autem, iste voluptatum repudiandae adipisci reprehenderit vel, praesentium ad obcaecati corrupti perspiciatis dolore, beatae iusto ducimus. Dolor ea quaerat nemo est similique, autem pariatur porro nostrum distinctio illo eligendi placeat itaque fugit vero cupiditate aut veniam, labore impedit. Blanditiis exercitationem fuga molestiae cumque. Similique corrupti animi ex pariatur odio!', 38, 45, 59, 12, NULL, '2019-10-19 18:02:30', '2019-10-19 18:02:30'),
(16, '2019-10-24 00:00:00', NULL, 1, 'berliner', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia ipsum illo autem, iste voluptatum repudiandae adipisci reprehenderit vel, praesentium ad obcaecati corrupti perspiciatis dolore, beatae iusto ducimus. Dolor ea quaerat nemo est similique, autem pariatur porro nostrum distinctio illo eligendi placeat itaque fugit vero cupiditate aut veniam, labore impedit. Blanditiis exercitationem fuga molestiae cumque. Similique corrupti animi ex pariatur odio!', 39, 46, 171, 13, NULL, '2019-10-19 18:06:32', '2019-10-19 18:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `communication_contact_type`
--

CREATE TABLE `communication_contact_type` (
  `id` int(11) NOT NULL,
  `contact_type_id` int(11) NOT NULL,
  `communication_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communication_contact_type`
--

INSERT INTO `communication_contact_type` (`id`, `contact_type_id`, `communication_id`, `created_at`, `updated_at`) VALUES
(1, 2, 13, '2019-10-19 15:12:13', '2019-10-19 15:12:13'),
(2, 3, 13, '2019-10-19 15:12:14', '2019-10-19 15:12:14'),
(3, 3, 14, '2019-10-19 15:21:34', '2019-10-19 15:21:34'),
(4, 4, 14, '2019-10-19 15:21:34', '2019-10-19 15:21:34'),
(5, 1, 15, '2019-10-19 20:02:31', '2019-10-19 20:02:31'),
(6, 2, 15, '2019-10-19 20:02:31', '2019-10-19 20:02:31'),
(7, 3, 15, '2019-10-19 20:02:31', '2019-10-19 20:02:31'),
(8, 2, 16, '2019-10-19 20:06:33', '2019-10-19 20:06:33'),
(9, 3, 16, '2019-10-19 20:06:33', '2019-10-19 20:06:33'),
(10, 4, 16, '2019-10-19 20:06:33', '2019-10-19 20:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `fname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `fax` text DEFAULT NULL,
  `praktikum_id` int(11) DEFAULT NULL,
  `status_id` text NOT NULL,
  `note` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `name`, `fname`, `email`, `phone`, `fax`, `praktikum_id`, `status_id`, `note`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(42, 'Frau', 'Loreme', 'Ipsum', 'Lorem@gmail.com', '321654', '321564', 33, 'Inaktiv', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 11, NULL, '2019-10-19 15:01:27', '2019-10-19 15:14:09'),
(43, 'Herr', 'Lorem', 'ipsum', 'ipsum@gmail.com', '321654', NULL, 34, 'Aktiv', 'Lorem ipsum dolor sit amet,', 14, NULL, '2019-10-19 15:18:52', '2019-10-19 15:18:52'),
(44, 'Herr', 'Test', 'test', 'test@test.test', '321654', '321654', 34, 'Inaktiv', NULL, 14, '2019-10-19 13:27:17', '2019-10-19 15:27:10', '2019-10-19 15:27:17'),
(45, 'Frau', 'Test', 'tester', 'test@lorem.com', '321654', '321654', 38, 'Aktiv', 'Lorem ipsum dolor sit amet', 12, NULL, '2019-10-19 20:01:40', '2019-10-19 20:01:40'),
(46, 'Frau', 'Müller', 'Sofia', 'sofia@sofio.com', '0123456', '01645987631', 39, 'Aktiv', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia ipsum illo autem, iste voluptatum repudiandae adipisci reprehenderit vel, praesentium ad obcaecati corrupti perspiciatis dolore, beatae iusto ducimus. Dolor ea quaerat nemo est similique, autem pariatur porro nostrum distinctio illo eligendi placeat itaque fugit vero cupiditate aut veniam, labore impedit. Blanditiis exercitationem fuga molestiae cumque. Similique corrupti animi ex pariatur odio!', 13, NULL, '2019-10-19 20:05:44', '2019-10-19 20:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `contact_reasons`
--

CREATE TABLE `contact_reasons` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_reasons`
--

INSERT INTO `contact_reasons` (`id`, `name`, `created_at`, `updated_id`) VALUES
(1, 'Anfrage Praktikum', '2019-10-08 13:25:29', '0000-00-00 00:00:00'),
(2, 'Allgemeine Anfrage', '2019-10-08 13:25:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact_types`
--

CREATE TABLE `contact_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_types`
--

INSERT INTO `contact_types` (`id`, `name`, `created_at`, `updated_id`) VALUES
(1, 'Telefon', '2019-10-08 13:18:20', '0000-00-00 00:00:00'),
(2, 'Mail', '2019-10-08 13:18:20', '0000-00-00 00:00:00'),
(3, 'Brief', '2019-10-08 13:19:12', '0000-00-00 00:00:00'),
(4, 'Fax', '2019-10-08 13:19:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `firma_titles`
--

CREATE TABLE `firma_titles` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firma_titles`
--

INSERT INTO `firma_titles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'GmbH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Einzel­unternehmen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Stille Gesellschaft', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'OHG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'GbR (BGB-Gesellschaft)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'KgaA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'eG', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bdepartment_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `bdepartment_id`, `created_at`, `updated_at`) VALUES
(1, ' Büro, Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 'Abfalltransporte', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 'administrativer Bereich, Büro, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 'Alltagsbegleiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 'Alltagsbegleiter, Demenzbegleiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 'Alltagsbegleiter, Hauswirtschaft', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 'Alltagsbegleiter/Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 'Alltagsbegleitung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 'Alltagsbegleitung, Wäscherei', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 'Alltagsbegleitung/Demenzbetreuung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 'Altenpflege, Krankenschwester', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 'Anlagenbauer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 'Anlagenbediener', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 'Anwendungsentwickler', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 'Arbeitsmedizin - BGM', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 'Arbeitsmedizinischer Assistent', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 'Arbeitsvermittler (Leiharbeit, Zeitarbeit)', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 'Architekt, Bauingenieur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 'Archiv', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 'Archiv und Besucherservice', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 'Archiv und Besucherservice, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 'Archiv, Aktenvernichtung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 'Archiv/Sekretariat / Hausmeister', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 'Arzthelferin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 'Arzthelferin, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 'Assembling', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 'Assistent Personalwesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 'Auktionator', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 'Aushilfe Lebensmittel', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 'Außendienstmitarbeiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 'Außerdendienst-Vermessung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 'Automobilverkäufer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 'Autovermietung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 'Autowäsche, Hausmeisterdienste', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 'Bankkaufmann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 'Bau', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 'Baugewerbe, Büro, Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 'Baugewerbe/ Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 'Bauhelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 'Bauingenieur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 'Bauleiter Bauwesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 'Bauleitung, Projektsteuerung, Bauplanung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 'Baustatik und Brandschutz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 'Baustelle', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 'Baustoffprüfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 'Bautechniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 'Bautechniker, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 'Bauzeichner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 'Behindertenwerkstatt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 'behinderter Mitarbeiter in WfbM', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 'Berater', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 'Beratung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 'Beratung, Betreuung, Organisation', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 'Beratung, Telefon', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 'Berufskraftfahrer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 'Besucherservice', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 'Besucherservice, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 'Betreuung, Begleitung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 'Betreuung, Begleitung, Fahrdienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 'BGM', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 'Bibliothek, Archiv, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 'Bibliothekar/Bibliotheksassistenz/Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 'Bildungsunternehmen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 'Brandschutz/Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 'Briefsortierer, Kommissionierung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 'Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 'Buchhaltung, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 'Buchhaltung, Büro, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 'Buchhaltung, Controlling', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 'Buchhaltung, Lohnsteuer,', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 'Buchhaltung, Verkehr', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 'Buchhaltung+Lohn, Büro, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 'Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 'Büro , aber auch Service mgl.', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 'Büro / Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 'Büro / IT / Elektronik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 'Büro / Kundendienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 'Büro / Lager', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 'Büro / Produktion / IT / Mediengestaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 'Büro / Sprechstundenhilfe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 'Büro / Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 'Büro / Verwaltung / Lohnbuchhaltung / Personal', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 'Büro / Verwaltung / Qualiprüfung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 'Büro / Verwaltung /Industriekaufmännisch', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 'Büro / Verwaltung,  IT Branche, Eventmanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 'Büro Assistenz Kundenberatung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 'Büro Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 'Büro, Bau', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 'Büro, Bauzeichner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 'Büro, Buchhaltung, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 'Büro, Immobilien', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 'Büro, Kalkulation', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 'büro, kaufmännischer Bereich', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 'Büro, Managment, Service', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 'Büro, Marketing', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 'Büro, Organisation', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 'Büro, usw', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 'Büro, Verpackungstätigkeit', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 'Büro, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 'Büro, Verwaltung, Empfang', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 'Büro, Verwaltung, Event', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 'Büro, Verwaltung, Kalkulation', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 'Büro, Verwaltung, Organisation', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 'Büro, Verwaltung, Physiotherapie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 'Büro, Werkstatt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 'Büro/ Statik/ Konstruktion/ Brandschutz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 'Büro/ Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 'Büro/Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 'Büro/Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 'Büro/Verwaltung/Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 'Büro/Verwaltung/Werkstatt/Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 'Büroassistent', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 'Bürohelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 'Bürohelfer, Datenerfasser', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 'Bürohelfer, Hausmeister denkbar', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 'Bürokauffrau/-mann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 'Bürokauffrau/-mann, KFZ', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 'Büromanagement, Verwaltung, Personalwesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 'Busfahrer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 'Callcenteragent', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 'Callcenteragent, Sachbearbeiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 'CNC-Dreher', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 'Computer/ IT', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 'Consulting / Fachinformatiker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 'Dach Klempnerarbeiten', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 'Datenerfasser', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 'Dekoration, Bühnenbild', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 'Demenzbetreuer, Alltagsbegleiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 'Design', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 'Design, Handwerk', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 'Designer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 'Diätassistenz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 'Diplom-Kaufmann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 'Disponent', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 'Dozententätigkeit', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 'Druck- und Verlagsassistenz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 'Eingabe nicht mehr erforderlich', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 'Einzelhandel, Verkauf, Bio', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 'Elektriker, Kundendienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 'Elektriker, Kundendienst, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 'Elektro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 'Elektromonteur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 'Elektroniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 'Elektroniker / Chemisch-technische Assistenz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 'Elektrotechniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 'Empfang', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 'Empfang  / Service', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 'Empfang / Koch', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 'Empfang / Rezeption', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 'Empfang / Service', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 'Empfang / Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 'Empfang beim Friseur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 'Empfang, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 'Empfang, Verwaltungn Archiv', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 'Empfang, Zimmerreinigung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 'Empfang,Reinigung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 'Empfang,Rezeption', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 'Empfang/Rezeption', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 'Empfangsmitarbeiterin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 'Ernährungsberatung, Hauswirtschaft', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 'Erzieher', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 'Erzieher, Hortbetreuung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 'Erzieher, Hortbetreuung, Verwaltung, Fremdsprachen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 'Event', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 'Ezeitarbeitsfirma, Produktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 'FA f. Allgemeinmedizin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 'FÄ f. Allgemeinmedizin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 'FA f. Innere / FÄ f. Allgemeinmedizin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 'FA f. Innere Medizin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 'FÄ f. Innere Medizini / Hausärztin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 'Fachinformatiker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 'Fachinformatiker/Einkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 'Fachwirt / Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 'Fahrdienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 'Fahrdienst, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 'Fahrdienst, Büro, Logistik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 'Fahrdienst, Kurierdienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 'Fahrdienst, Produktionshelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 'Fahrdienst, Sicherheitsservice', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 'Fahrdienst/ Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 'Fahrer, Mitarbeiter Vermietung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 'Fahrradmontage', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 'Fahrzeuginnenausstatter, Produktion, Näherin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 'Fahrzeugpfleger', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 'Fenski Torsten Dipl. med. Praxis', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 'Fertigung, Montage', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 'Fertigung, Montage, Medien', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 'Fertigung, Montage, Verkauf, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 'Finanzbuchhalter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 'Fitnesstrainer Fitnesskaufmann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 'Fliesenleger', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 'Floristik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 'Friedhofsgärtner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 'Friseur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 'Frühstücksmitarbeiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 'Fuhrparkmanager, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 'Gartenbauhelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 'Gartenbauhelfer, Pflanzentechnologe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 'Gärtner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 'Gästebetreuung, Empfang', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 'Geschäftsführer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, 'Geschäftsführerin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 'Geschäftsführerin Pirna/Sebnitz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 'Gestaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 'Grafikdesign', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 'Handwerk', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 'Hausmeister', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 'Hausmeister / Pflege Garten', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 'Hausmeister, Elektro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 'Hausmeister, Grünpflege', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 'Hausmeister, Pflegekraft', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 'Hausmeister, Reinigung, Handwerk', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 'Hausmeisterhelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 'Hausmeisterservice', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 'Hausverwalter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 'Hauswirtschaftshilfe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 'Hauswirtschaftshilfe, Reingung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 'Heilpraktiker, Büro, Empfang', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 'Heimleiterin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 'Helfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 'Helfer Bühnenaufbau', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 'Helfer Druckerei', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 'Helfer Markt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 'Helfer Produktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 'Helfer, Lager, Waren', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 'Helferin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 'Hilfskraft Produktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 'Höhen dienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 'Hörakustiker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 'Hostess/Kellner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 'Hotelempfang, Gästebetreuung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 'Hotelempfang, Gästebetreuung, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 'Immobilienkaufmann, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 'Industriekaufmann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 'Informatiker, Kommunikationselektroniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 'Ingenieur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 'Ingenieur, Architekt, Bauplanung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 'Ingenieur, Verwaltung, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 'Innenarchitekt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 'Integrationshelfer / Schulbegleitung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 'Inventurhelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 'IT', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 'IT Systemadministrator', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 'IT, Digitalisierung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 'IT, Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 'IT-Systemelektroniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 'Kankenschwester', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 'Kartographierung/Datenverarbeitung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 'Kauffrau für Büromanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 'Kauffrau für Versicherungen und Finanzen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 'Kauffrau im Gesundheitswesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 'Kaufmann Automobil', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 'Kaufmann Büromanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 'kaufmännisch / Projektmanagement Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 'Kaufmännisch, Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 'Kaufmännisch, Buchhaltung, Facilitymanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 'Key Account Manager, CRM, Qualitätssicherung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 'Kfz-Mechaniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 'Kinderarztpraxis / Sprechstundenhilfe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 'Kinderbetreuung/Tagesmutti', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 'Kindergarten', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 'Kindertagesstätte', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 'Kindertagesstätte und Hort', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 'Koch / Hotelfachmann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 'Koch / Hotelfachmann/Refa', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 'Kommissionierer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 'Kommissionierung, Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 'Konstrukteur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 'Konstrukteur & Projektmanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 'Konstrukteur / Qualitätsmanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 'Konstrukteur, Technischer Zeichner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 'Konstrukteur/in', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 'Korbmacher', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 'Krankenpflege, Alternpflege', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 'Küche, Bar, Kellner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 'Küchenhelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 'Küchenhelfer, Hausmeisterhelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 'Küchenhelfer,Koch', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 'Küchenhilfe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 'Küchenhilfe in Salatküche', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 'Kundenberater, Autovermietung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 'Kundenberater, Elektronik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 'Kundenbetreuuer, Personalservice', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 'Kunsthandwerk', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 'Künstlerin, Grafikerin, Gärtnerin, Kräuterfrau', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 'Kurierfahrer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 'Labor', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 'Laboratorium Laborhygiene', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 'Laden / Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 'Lager', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 'Lager / Logistik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 'Lager / Logistik /Helfer Produktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 'Lager / Logistik, Büro, Lieferservice, Montage', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 'Lager, Helfer, Transport, Versand', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 'Lager, Logistik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 'Lager, Logistik, Büro, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 'Lager, Logistik, Dokumentationsassistentin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 'Lager, Staplerfahrer, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 'Lager, Versand, Marketing, Fotografie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 'Lager, Warenannahme, Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 'Lager/Archiv', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 'Lager/Versand', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 'Lagerarbeiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 'Lagerhelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 'Lagerist/Verkäufer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 'Lagerlogistik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 'Lagerlogistik/Lackierer/Mechatroniker/Werkstatt (nur FOSI)', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 'Lagerlogistik/Pharmazie (FOSI)', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 'Lagerverwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 'Lagerverwaltung, Projektassistenz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 'Landarbeit', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 'Lebensmitteltechnik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, 'Logistik / Disposition', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, 'Logopäde', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, 'Logopädie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 'Maler, Fliesenleger', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, 'Maler, Fliesenleger, Sanitär', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 'Maler, Lackierer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 'Malermeister', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 'Marketing / PR', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 'Marketing / PR, Event', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 'Marketing / PR, Event, Logistik, Fahrzeugpfleger', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 'Marketing / Vertrieb, BWL', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 'Markt / Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 'Maschinenbau', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, 'Mechaniker, Mechatroniker, Elektriker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, 'Mechankiker, Mechatroniker, Elektriker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, 'Medien, Bodenleger, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 'mediengestaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(856, 'Medienkaufmann/-frau', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 'Medizinische Fachangestellte', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 'Medizinische Fachangestellte / Arzthelferin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 'Medizinische Mitarbeiterin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 'medizinische Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 'Melkerin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 'Mercedes Dresden /Daimler', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 'Messtechniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, 'Metallbearbeitung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, 'Mitarbeit in der Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 'Mitarbeit in der Verwaltung + Erzieher', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, 'Mitarbeiter kaufmännischer Bereich', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, 'Modulassistentin/ Versorgungsassistenz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, 'Monitor- und Parkhausüberwachung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, 'Montage, Konstruktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(871, 'Museologe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, 'Netzwerke, Server, IT-Lösungen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, 'Obstbauer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, 'Ofenbauer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, 'Officemanager, Kundenberatung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, 'Online Marketing', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, 'Online Redaktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(878, 'Online Redaktion/Webshop', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(879, 'Online Versand Sitzmöbel', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(880, 'Operator Notrufzentrale', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(881, 'Operator Waferprocessing', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(882, 'Personal, Büromanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, 'Personal, Service, Empfang', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, 'Personalbüro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(885, 'Personaldienstleister, kaufmännische Abteilung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, 'Personalfirma', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, 'Personalservice u.a.', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, 'Personalwesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, 'Pflege', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, 'Pflege, Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, 'Pflege/Ergo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, 'Pflege/Hausmeister', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, 'Physiotherapie, Empfang', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, 'Physiotherapie, Ergotherapie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(895, 'Physotherapie, Ergotherapie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(896, 'Physotherapie, Ergotherapie, Büromanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(897, 'Post', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(898, 'Praktikum Astronomie, Fotografie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, 'Praktikum Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, 'Praktikum Verwaltung / Unterstützung Verleih', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(901, 'Praktikum Verwaltung, Personal, Marketing', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, 'Praktikumsvergabe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(903, 'Produktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, 'Produktion, Instandhalter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, 'Produktion, Lackierer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, 'Produktion, Lebensmitteltechnik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, 'Produktion, Verwaltung, Büro, Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, 'Produktion/Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, 'Produktionsarbeit', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, 'Produktionsarbeit, IT', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, 'Produktionshelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, 'Produktionshelfer, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, 'Projekt-, Eventmanagement', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, 'Projektingenieur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(915, 'Projektleiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, 'Projektmanager', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, 'Projektmitarbeiterin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, 'Prokura/Personalleitung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, 'Prüfer ortsveränderlicher Geräte', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(920, 'Qualitätsmanager', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(921, 'Qualitätsprüfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(922, 'Redaktion (Büro)', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, 'Reinigung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, 'Reisebüro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, 'Reitlehrer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, 'Requisite, Organisation, Verwaltender Bereich', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, 'Retail Recruitment Manager', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(928, 'Rezeption / Empfang / Housekeeping', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(929, 'Rezeption / Koch / Hauswirtschaft / Housekeeping', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, 'Rezeption / MDA', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, 'Rezeption / Reinigung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, 'Rezeption / Verwaltung /Beratung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, 'Rezeption/ Empfang', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, 'Rezeptionistin, Arzthelferin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, 'Sachbearbeiter/in', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, 'Sachbearbeiter/in Förderanträge', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, 'Sachbearbeiterin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(938, 'Sachbearbeitung, Disponent, Bürokaufm.', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(939, 'Schädlingsbekämpfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(940, 'Schmuckdesigner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, 'Schmuckgestaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, 'Schneiderin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, 'Schreibkraft', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, 'Schweißer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, 'Sekretärin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, 'Seniorenbetreuung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, 'Service, Event, Lager, etc.', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, 'Service, Küchenhilfe, Essensausgabe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, 'Service, Restaurant, Kasse', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, 'Servicefahrer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, 'Servicekraft an Rezeption', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(952, 'Servicetechniker/ Technik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(953, 'sicherheit und wachschutz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, 'Sicherheit und Werttransportdienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(955, 'Sicherungsposten', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, 'Softwareentwicklung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, 'Sozialarbeiterin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, 'Sozialdienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, 'Sozialdienst, Logistik, Sterilisation', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, 'Sozialdienst, Rechnungswesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, 'soziale Ferienbetreuung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962, 'soziale Projekte', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(963, 'Sozialpädagogen, Verwaltung, Hauswirtschaft', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, 'Sozialpädagogen, Verwaltung, Hauswirtschaft, Therapie, Redaktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(965, 'Spedition / Logistik / Kfm.', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, 'Sport- und Fitnesskaufmann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, 'Sprechstundenhilfe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, 'Sprechstundenhilfe, Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(969, 'Steuerberatung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(970, 'Steuerberatung, Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(971, 'Steuerberatung, Rechtsberatung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(972, 'Steuerberatungs', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(973, 'Steuerberatungsgesellschaft', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(974, 'Steuerbüro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(975, 'Steuern, Finanzen,', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(976, 'Strom, Gas, Wasser, Wärme; Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(977, 'Study Nurse - Assistenz', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(978, 'Systemelektriker / Techniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(979, 'Techniker Automatisierung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(980, 'Techniker, CAD', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(981, 'Technische Hilfstätigkeiten', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(982, 'Textilreiniger', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(983, 'Ticketverkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(984, 'Tierarzt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(985, 'Tierarzt, Hospitation, Unterstützung Tierpflege', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(986, 'Tierpfleger', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(987, 'Tischler', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(988, 'Übersetzung, Dolmetschen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(989, 'Übersetzung, Dolmetschen, Ehrenamt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(990, 'Überwachung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(991, 'Universitätsprofessor für Elektrische Maschinen und Antriebe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(992, 'Unternehmensberater', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(993, 'Veranstaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(994, 'Veranstaltung, Kultur, Event', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(995, 'Veranstaltungstechniker Helfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(996, 'Verkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(997, 'Verkauf / Lager', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(998, 'Verkauf Haarpflegeprodukte', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(999, 'Verkauf Unterhaltungselektronik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000, 'Verkauf, E-Commerce', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1001, 'Verkauf, Reparatur', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1002, 'Verkauf/ Werkstatt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1003, 'Verkauf/Bäcker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1004, 'Verkäufer, Werkstatt', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1005, 'Verkäufer/Helfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1006, 'VerkäuferIn', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1007, 'VerkäuferIn - Helfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1008, 'VerkäuferIn, Berufskraftfahrer, MA Kostenrechnung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1009, 'Verkäuferin, Küchenhilfe im Bistro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1010, 'VerkäuferIn, OrthopädietechnikerIn', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1011, 'VerkäuferIn, OrthopädietechnikerIn, Produktionshelfer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1012, 'Verpacker, Lagerist', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1013, 'Verpacker, Lagerist, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1014, 'Versicherungsfachmann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1015, 'Vertrieb, Einkauf', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1016, 'Vertriebsmarketing', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1017, 'Verwaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1018, 'Verwaltung / Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1019, 'Verwaltung / Büro / Lager', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1020, 'Verwaltung / Büro/Forschung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1021, 'Verwaltung / Büro/Steuerberatung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1022, 'Verwaltung / Büro/Wirtschaftsprüfung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1023, 'Verwaltung / QM / Konstruktion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1024, 'Verwaltung Büro Industriekaufmann', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1025, 'Verwaltung Büro Maler Lackierer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1026, 'Verwaltung Büro Personal', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1027, 'Verwaltung d. Lager / Logistik', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1028, 'Verwaltung und Ansprechpartner', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1029, 'Verwaltung, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1030, 'Verwaltung, Büro, Buchhaltung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1031, 'Verwaltung, Empfang', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1032, 'Verwaltung, Fahrdienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1033, 'Verwaltung, Physiotherapie', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1034, 'Verwaltung/Personalwesen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1035, 'Verwaltung/Pflege', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1036, 'Wachdienst', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1037, 'Wachschutz, Büro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1038, 'Wächter/Aufsicht', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1039, 'Warenhausdetektiv_in', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1040, 'Wellness', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1041, 'Werbung, Web-Design', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1042, 'Werkleiter', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1043, 'Werkzeugmacher', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1044, 'Winzer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1045, 'Zahnartzhelferin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1046, 'Zahntechniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1047, 'Zeitarbeitsfirma', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1048, 'Zerspanung', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1049, 'Zimmerer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1050, 'Zweiradmechaniker', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1051, 'ssdfasdfas', NULL, '2019-10-11 08:53:51', '2019-10-11 08:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `job_praktikum`
--

CREATE TABLE `job_praktikum` (
  `id` int(11) NOT NULL,
  `praktikum_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_praktikum`
--

INSERT INTO `job_praktikum` (`id`, `praktikum_id`, `job_id`, `updated_at`, `created_at`) VALUES
(24, 33, 649, '2019-10-19 14:44:00', '2019-10-19 14:44:00'),
(25, 34, 562, '2019-10-19 15:17:46', '2019-10-19 15:17:46'),
(26, 34, 564, '2019-10-19 15:17:47', '2019-10-19 15:17:47'),
(29, 35, 770, '2019-10-19 16:06:58', '2019-10-19 16:06:58'),
(30, 35, 771, '2019-10-19 16:06:58', '2019-10-19 16:06:58'),
(31, 36, 732, '2019-10-19 19:00:37', '2019-10-19 19:00:37'),
(33, 37, 769, '2019-10-19 19:56:42', '2019-10-19 19:56:42'),
(34, 38, 559, '2019-10-19 20:00:45', '2019-10-19 20:00:45'),
(35, 38, 584, '2019-10-19 20:00:45', '2019-10-19 20:00:45'),
(36, 39, 859, '2019-10-19 20:05:00', '2019-10-19 20:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_12_104638_create_towers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `praktikums`
--

CREATE TABLE `praktikums` (
  `id` int(10) UNSIGNED NOT NULL,
  `praktikumid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firma_title_id` int(11) NOT NULL,
  `bdepartment_id` int(11) DEFAULT NULL,
  `profession_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `praktikums`
--

INSERT INTO `praktikums` (`id`, `praktikumid`, `firma_title_id`, `bdepartment_id`, `profession_id`, `address`, `address2`, `state_id`, `zipcode`, `phone`, `fax`, `email`, `website`, `status_id`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `notes`) VALUES
(33, 'Erfurt firma 1', 1, 16, 100, 'Lorem ipsum dolor sit amet', 'dolor sit amet', 1, '321654', '321654987', '32165497', 'test@test.com', 'www.egal.com', 1, 11, 11, NULL, '2019-10-19 11:30:11', '2019-10-19 14:43:59', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'),
(34, 'Leipzig Firma 1', 2, 3, 100, 'Lorem ipsum dolor sit amet,', 'Lorem ipsum dolor sit amet,', 6, '99089', '231654987', '321654987', 'test@test.com', 'www.egal.com', 8, 14, NULL, NULL, '2019-10-19 15:17:45', '2019-10-19 15:17:45', 'Lorem ipsum dolor sit amet,'),
(35, 'Leipzig Dresden Firma 1', 1, 16, 100, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 6, '21654', '231654321', '321321654', NULL, NULL, 1, 14, 15, NULL, '2019-10-19 16:02:59', '2019-10-19 16:06:58', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'),
(36, 'Leipzig', 3, 14, 140, 'Lorem ipsum dolor sit   12', '12', 6, '98484', '21654321', '321231321', NULL, NULL, 9, 15, NULL, NULL, '2019-10-19 19:00:36', '2019-10-19 19:00:36', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia ipsum illo autem, iste voluptatum repudiandae adipisci reprehenderit vel, praesentium ad obcaecati corrupti perspiciatis dolore, beatae iusto ducimus. Dolor ea quaerat nemo est similique, autem pariatur porro nostrum distinctio illo eligendi placeat itaque fugit vero cupiditate aut veniam, labore impedit. Blanditiis exercitationem fuga molestiae cumque. Similique corrupti animi ex pariatur odio!'),
(37, 'Dresden 1', 5, 16, 59, 'Lorem ipsum dolor sit amet,', 'Lorem ipsum dolor sit', 6, '899898', NULL, NULL, 'dresden@miqr.de', NULL, 10, 15, 15, NULL, '2019-10-19 19:02:57', '2019-10-19 19:56:40', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia ipsum illo autem, iste voluptatum repudiandae adipisci reprehenderit vel, praesentium ad obcaecati corrupti perspiciatis dolore, beatae iusto ducimus. Dolor ea quaerat nemo est similique, autem pariatur porro nostrum distinctio illo eligendi placeat itaque fugit vero cupiditate aut veniam, labore impedit. Blanditiis exercitationem fuga molestiae cumque. Similique corrupti animi ex pariatur odio!'),
(38, 'Suhl 1', 8, 25, 33, 'Lorem ipsum dolor sit', 'lorem ipsum dolor', 1, '231654', '321321', '321321321', '32132121', 'www.egal.com', 1, 12, NULL, NULL, '2019-10-19 20:00:44', '2019-10-19 20:00:44', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia ipsum illo autem, iste voluptatum repudiandae adipisci reprehenderit vel, praesentium ad obcaecati corrupti perspiciatis dolore, beatae iusto ducimus. Dolor ea quaerat nemo est similique, autem pariatur porro nostrum distinctio illo eligendi placeat itaque fugit vero cupiditate aut veniam, labore impedit. Blanditiis exercitationem fuga molestiae cumque. Similique corrupti animi ex pariatur odio!'),
(39, 'Berlin 1', 5, 23, 171, 'Lorem ipsum dolor sit   12', 'lorem ipsum dolor', 2, '784521', '987654321', '897654321', 'berlin@berlin.com', 'www.berlin.com', 1, 13, NULL, NULL, '2019-10-19 20:05:00', '2019-10-19 20:05:00', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia ipsum illo autem, iste voluptatum repudiandae adipisci reprehenderit vel, praesentium ad obcaecati corrupti perspiciatis dolore, beatae iusto ducimus. Dolor ea quaerat nemo est similique, autem pariatur porro nostrum distinctio illo eligendi placeat itaque fugit vero cupiditate aut veniam, labore impedit. Blanditiis exercitationem fuga molestiae cumque. Similique corrupti animi ex pariatur odio!');

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Altenpflegehelfer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(2, 'Altenpfleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(3, 'Anästhesietechnische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(4, 'Änderungsschneider/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(5, 'Amtliche/r Fachassistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(6, 'Anlagenmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(7, 'Anlagenmechaniker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(8, 'Artist/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(9, 'Asphaltbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(10, 'Assistent/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(11, 'Atem-, Sprech- und Stimmlehrer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(12, 'Aufbereitungsmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(13, 'Augenoptiker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(14, 'Ausbaufacharbeiter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(15, 'Automatenfachmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(16, 'Automobilkaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(17, 'Bäcker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(18, 'Bankkaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(19, 'Baugeräteführer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(20, 'Baustoffprüfer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(21, 'Bauwerksabdichter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(22, 'Bauwerksmechaniker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(23, 'Bauzeichner/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(24, 'Beamt(er/in) ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(25, 'Behälter- und Apparatebauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(26, 'Bekleidungsnäher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(27, 'Bekleidungstechnische/r Assistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(28, 'Berg- und Maschinenmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(29, 'Bergbautechnologe/-technologin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(30, 'Berufsflugzeugführer/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(31, 'Berufshubschrauberführer/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(32, 'Berufskraftfahrer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(33, 'Bestattungsfachkraft', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(34, 'Beton, Stahlbetonbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(35, 'Betonfertigteilbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(36, 'Binnenschiffer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(37, 'Biologielaborant/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(38, 'Biologiemodellmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(39, 'Bodenleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(40, 'Bogenmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(41, 'Bootsbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(42, 'Böttcher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(43, 'Brauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(44, 'Brenner/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(45, 'Brunnenbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(46, 'Buchbinder/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(47, 'Buchhändler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(48, 'Büchsenmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(49, 'Bühnenmaler/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(50, 'Bühnentänzer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(51, 'Bürsten, Pinselmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(52, 'Chemielaborant/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(53, 'Chemielaborjungwerker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(54, 'Chemikant/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(55, 'Chemisch-technische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(56, 'Chirurgiemechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(57, 'Dachdecker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(58, 'Denkmaltechnische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(59, 'Designer/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(60, 'Destillateur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(61, 'Diätassistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(62, 'Dolmetscher/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(63, 'Drechsler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(64, 'Drogist/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(65, 'Edelmetallprüfer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(66, 'Edelsteinfasser/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(67, 'Edelsteinschleifer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(68, 'Eisenbahner/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(69, 'Elektro, Schutzgasschweißer/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(70, 'Elektroanlagenmonteur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(71, 'Elektroniker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(72, 'Ensembleleiter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(73, 'Ergotherapeut/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(74, 'Erzieher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(75, 'Erzieher/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(76, 'Estrichleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(77, 'Fachangestellte/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(78, 'Fachinformatiker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(79, 'Fachkraft ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(80, 'Fachlagerist/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(81, 'Fachlehrer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(82, 'Fachmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(83, 'Fachpraktiker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(84, 'Fachunteroffizier ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(85, 'Fachverkäufer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(86, 'Fachwerker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(87, 'Fahrradmonteur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(88, 'Fahrzeuginnenausstatter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(89, 'Fahrzeuglackierer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(90, 'Fassadenmonteur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(91, 'Feinoptiker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(92, 'Feinpolierer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(93, 'Feinwerkmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(94, 'Feldwebel ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(95, 'Fertigungsmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(96, 'Feuerungs,Schornsteinbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(97, 'Figurenkeramformer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(98, 'Film- und Videoeditor/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(99, 'Fischwirt/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(100, 'Flachglastechnologe/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(101, 'Flechtwerkgestalter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(102, 'Fleischer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(103, 'Fliesen-, Platten- und Mosaikleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(104, 'Florist/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(105, 'Flugdienstberater/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(106, 'Fluggerätelektroniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(107, 'Fluggerätmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(108, 'Förderlehrer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(109, 'Forstwirt/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(110, 'Fotograf/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(111, 'Fotomedienfachmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(112, 'Foto, medientechnische/r Assistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(113, 'Fremdsprachenkorrespondent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(114, 'Fremdsprachensekretär/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(115, 'Friseur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(116, 'Gärtner/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(117, 'Gastronomische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(118, 'Gebäudereiniger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(119, 'Geigenbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(120, 'Geomatiker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(121, 'Gerüstbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(122, 'Gestalter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(123, 'Gestaltungstechnische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(124, 'Kinderkrankenpfleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(125, 'Krankenpflegehelfer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(126, 'Krankenpfleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(127, 'Gesundheitsaufseher/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(128, 'Hygienekontrolleur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(129, 'Gießereimechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(130, 'Glas- und Porzellanmaler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(131, 'Glasapparatebauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(132, 'Glasbläser/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(133, 'Glaser/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(134, 'Glasmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(135, 'Glasveredler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(136, 'Gleisbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(137, 'Goldschmied/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(138, 'Graveur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(139, 'Gymnastiklehrer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(140, 'Hafenschiffer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(141, 'Handzuginstrumentenmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(142, 'Haus, Familienpfleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(143, 'Hauswirtschafter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(144, 'Hauswirtschaftshelfer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(145, 'Hebamme/Entbindungspfleger', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(146, 'Heilerziehungspflegehelfer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(147, 'Heilerziehungspfleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(148, 'Hochbaufacharbeiter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(149, 'Holz- und Bautenschützer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(150, 'Holzbearbeitungsmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(151, 'Holzbildhauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(152, 'Holzblasinstrumentenmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(153, 'Holzmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(154, 'Holzspielzeugmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(155, 'Hörakustiker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(156, 'Hotelfachmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(157, 'Hotelkaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(158, 'Immobilienkaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(159, 'Industrieelektriker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(160, 'Industriefachhelfer/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(161, 'Industrie-Isolierer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(162, 'Industriekaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(163, 'Industriekeramiker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(164, 'Industriemechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(165, 'Informatikkaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(166, 'Informationselektroniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(167, 'Internationale/r Luftverkehrsassistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(168, 'Investmentfondskaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(169, 'Isolierfacharbeiter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(170, 'Elektroniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(171, 'Kaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(172, 'Justizfachangestellte/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(173, 'Justizwachtmeister/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(174, 'Kanalbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(175, 'Karosserie- und Fahrzeugbaumechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(176, 'Karosseriebearbeiter/in (§66 BBiG/§42m HwO)', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(177, 'Kaufmännische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(178, 'Kaufmännische/r Assistent/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(179, 'Wirtschaftsassistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(180, 'Keramiker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(181, 'Kerzenhersteller/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(182, 'Wachsbildner/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(183, 'Klavier, Cembalobauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(184, 'Klempner/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(185, 'Koch/Köchin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(186, 'Konditor/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(187, 'Konstruktionsmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(188, 'Flechtwerker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(189, 'Kosmetiker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(190, 'Kosmetiker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(191, 'Kraftfahrzeugmechatroniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(192, 'Kürschner/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(193, 'Lacklaborant/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(194, 'Baumaschinenmechatroniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(195, 'Landwirt/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(196, 'Lasertechnische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(197, 'Lebensmitteltechnische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(198, 'Leichtflugzeugbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(199, 'Leuchtröhrenglasbläser/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(200, 'Logopäde/Logopädin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(201, 'Luftverkehrskaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(202, 'Maler/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(203, 'Lackierer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(204, 'Management-/Direktionsassistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(205, 'Manufakturporzellanmaler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(206, 'Marketingfachkraft', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(207, 'Maschinen', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(208, 'Maskenbildner/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(209, 'Masseur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(210, 'Bademeister/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(211, 'Maßschneider/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(212, 'Maßschuhmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(213, 'Mathematisch-technische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(214, 'Mathematisch-technische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(215, 'Softwareentwickler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(216, 'Maurer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(217, 'Mechaniker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(218, 'Mechatroniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(219, 'Mechatroniker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(220, 'Mediengestalter/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(221, 'Medienkaufmann/-frau ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(222, 'Medientechnologe', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(223, 'Medizinisch-technische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(224, 'Medizinische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(225, 'Metall- und Glockengießer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(226, 'Metallbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(227, 'Metallbildner/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(228, 'Metallblasinstrumentenmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(229, 'Metallwerker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(230, 'Mikrotechnologe/-technologin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(231, 'Milchwirtschaftliche/r Laborant/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(232, 'Modist/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(233, 'Musiker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(234, 'Musikfachhändler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(235, 'Musiklehrer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(236, 'Näher/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(237, 'Naturwerksteinmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(238, 'Notarfachangestellte/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(239, 'Notfallsanitäter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(240, 'Oberflächenbeschichter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(241, 'Luftheizungsbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(242, 'Operationstechnische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(243, 'Operationstechnische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(244, 'Orgelbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(245, 'Orthopädieschuhmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(246, 'Orthopädietechnik', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(247, 'Orthoptist/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(248, 'Packmitteltechnologe/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(249, 'Papiertechnologe/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(250, 'Parkettleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(251, 'Patentanwaltsfachangestellte/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(252, 'Pelzveredler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(253, 'Personaldienstleistungskaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(254, 'Pferdewirt/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(255, 'Pflanzentechnologe/-technologin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(256, 'Pflegefachmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(257, 'Pharmakant/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(258, 'Pharmazeutisch-kaufmännische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(259, 'Pharmazeutisch-technische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(260, 'Physikalisch-technische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(261, 'Physiklaborant/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(262, 'Physiotherapeut/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(263, 'Podologe/Podologin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(264, 'Polizeivollzugsbeamt(er/in) ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(265, 'Polster- und Dekorationsnaeher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(266, 'Polsterer/Polsterin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(267, 'Präparationstechnische/r Assistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(268, 'Präzisionswerkzeugmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(269, 'Produktgestalter/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(270, 'Produktionsfachkraft Chemie', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(271, 'Produktionsmechaniker/in -', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(272, 'Produktionstechnologe/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(273, 'Produktprüfer/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(274, 'Produktveredler/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(275, 'Prüftechnologe/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(276, 'Raumausstatter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(277, 'Raumausstatterwerker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(278, 'Rechtsanwalts', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(279, 'Rechtsanwaltsfachangestellte/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(280, 'Restaurantfachmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(281, 'Revierjäger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(282, 'Rohrleitungsbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(283, 'Rollladen', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(284, 'Sänger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(285, 'Sattler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(286, 'Schädlingsbekämpfer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(287, 'Schäftemacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(288, 'Schauspieler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(289, 'Schifffahrtskaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(290, 'Schiffsmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(291, 'Schilder- und Lichtreklamehersteller/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(292, 'Schmuckwerker/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(293, 'Schornsteinfeger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(294, 'Schuhfertiger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(295, 'Schweißwerker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(296, 'Segelmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(297, 'Seiler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(298, 'Servicefachkraft ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(299, 'Servicefahrer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(300, 'Servicekaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(301, 'Servicekraft', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(302, 'Silberschmied/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(303, 'Sozialassistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(304, 'Sozialpädagogische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(305, 'Sozialversicherungsfachangestellte/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(306, 'Spezialtiefbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(307, 'Spielzeughersteller/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(308, 'Sport, Fitnesskaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(309, 'Sportassistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(310, 'Sportfachmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(311, 'Sportlehrer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(312, 'Umformmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(313, 'Steinmetz/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(314, 'Steuerfachangestellte/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(315, 'Straßenbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(316, 'Straßenwärter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(317, 'Stuckateur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(318, 'Süßwarentechnologe/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(319, 'Systemelektroniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(320, 'Tankwart/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(321, 'Technische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(322, 'Technisch-kaufmännische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(323, 'Telefonist/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(324, 'Textil', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(325, 'Textilgestalter/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(326, 'Textillaborant/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(327, 'Textilreiniger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(328, 'Thermometermacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(329, 'Tiefbaufacharbeiter/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(330, 'Tiermedizinische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(331, 'Tierpfleger/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(332, 'Tierwirt/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(333, 'Tischler/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(334, 'Tourismuskaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(335, 'Touristikassistent/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(336, 'Trockenbaumonteur/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(337, 'Uhrmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(338, 'Umweltschutztechnische/r ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(339, 'Veranstaltungskaufmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(340, 'Verfahrensmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(341, 'Verfahrenstechnologe', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(342, 'Vergolder/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(343, 'Verkäufer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(344, 'Verkehrsflugzeugführer/in ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(345, 'Vermessungstechniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(346, 'Verwaltungsfachangestellte/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(347, 'Veterinärmedizinisch-technische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(348, 'Video-Journalist/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(349, 'Vorpolierer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(350, 'Wärme', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(351, 'Wasserbauer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(352, 'Weintechnologe/-technologin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(353, 'Werkfeuerwehrmann/-frau', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(354, 'Werkgehilfe/-gehilfin ', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(355, 'Werksteinhersteller/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(356, 'Werkstoffprüfer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(357, 'Werkzeugmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(358, 'Winzer/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(359, 'Zahnmedizinische/r', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(360, 'Zahntechniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(361, 'Zerspanungsmechaniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(362, 'Zimmerer/Zimmerin', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(363, 'Zupfinstrumentenmacher/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(364, 'Zweiradmechanikerwerker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00'),
(365, 'Zweiradmechatroniker/in', '2019-09-02 01:00:00', '2019-09-02 01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thüringen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Berlin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Sachsen', '2019-08-22 14:23:41', '2019-08-22 14:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Aktiv', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Interessent', '2019-08-22 14:21:23', '2019-08-22 14:21:23'),
(9, 'Gesperrt', '2019-10-02 08:12:29', '2019-10-02 08:12:29'),
(10, 'Inaktiv', '2019-10-02 08:12:47', '2019-10-02 08:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `city_id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Erfurt', 1, 'erfurt@miqr.de', '$2y$10$YrsPAiHNJt1HGgGFWjCVwu90xO9ftu3rBItWLSiuCyEof8j7NNnrW', 'C6l8kgU7omqziBjjkHDlj8NjsG8WWZYHrzElFJplatuL9a1hSpYfyO6MCff8', '2019-09-29 17:25:47', '2019-09-29 17:25:47'),
(12, 'Suhl', 2, 'suhl@miqr.de', '$2y$10$LNm0WeyIjpydtSMFPCsoRe7W2VG.fVPTHJ2rY.DumvQcbnd5eLKK6', 'bAiZiryq1fyUDGenLjuqUweA0KymcENQted70feC4bJGb55eJgKnRmdOPSBC', '2019-09-29 17:27:00', '2019-09-29 17:27:00'),
(13, 'Berlin', 3, 'berlin@miqr.de', '$2y$10$LoSpv1FFexHoF0rzPKRF1el9KyT5Wd2oYhXiLPUPFbCPN8wmIk.H.', 'j1qMmqEkYAAEupF1PvYjPXVZfdfJrhuvRMukDnzdkRZ9nzFPySPBY1GOSGOJ', '2019-09-29 17:29:35', '2019-09-29 17:29:35'),
(14, 'Leipzig', 4, 'leipzig@miqr.de', '$2y$10$Om.VTS0yN9nGbfYOUnq9veVf.UhVs.YQ1QcRB/SWMtAQ7yVyqkB0q', 'Rmn7jdYT4xR2zMBt3WZYF4H0geOZ1RX37ErUrUc3HuTtF2pu4OGoqYiHQrLm', '2019-09-29 17:33:24', '2019-09-29 17:33:24'),
(15, 'Dresden', 5, 'dresden@miqr.de', '$2y$10$PVE9fKLpsouTQRJJlwu7IOXLZ0zHGVLB83omCDprfuZWOSPTqPIXe', 'pOqXLTY0vOe7A2figdAtRfJmhGH0AXN8mWc3kFK0BVqLiuqR4YtSvYsqMY6Z', '2019-09-29 17:34:47', '2019-09-29 17:34:47'),
(16, 'Chemnitz', 10, 'chemnitz@miqr.de', '$2y$10$HMIE8.QfvqFR0fGqVTSXK.YrPmKGY9SBd7l3EjbVQpd5DouNQ/kTy', 'Y0inQbZLROOeffTrO4TLzIqthftfnrmKSXniupj8HIeZxYpyD9l9m2BUlhL6', '2019-09-29 17:36:13', '2019-09-29 17:36:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bdepartments`
--
ALTER TABLE `bdepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_praktikum`
--
ALTER TABLE `city_praktikum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parktikum_id` (`praktikum_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `communications`
--
ALTER TABLE `communications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_contact_type`
--
ALTER TABLE `communication_contact_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_type_id` (`contact_type_id`),
  ADD KEY `communication_id` (`communication_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_reasons`
--
ALTER TABLE `contact_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_types`
--
ALTER TABLE `contact_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firma_titles`
--
ALTER TABLE `firma_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_praktikum`
--
ALTER TABLE `job_praktikum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `praktikum_id` (`praktikum_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `praktikums`
--
ALTER TABLE `praktikums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bdepartments`
--
ALTER TABLE `bdepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city_praktikum`
--
ALTER TABLE `city_praktikum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `communications`
--
ALTER TABLE `communications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `communication_contact_type`
--
ALTER TABLE `communication_contact_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `contact_reasons`
--
ALTER TABLE `contact_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_types`
--
ALTER TABLE `contact_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `firma_titles`
--
ALTER TABLE `firma_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1052;

--
-- AUTO_INCREMENT for table `job_praktikum`
--
ALTER TABLE `job_praktikum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `praktikums`
--
ALTER TABLE `praktikums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
